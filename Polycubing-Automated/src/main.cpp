#define VOXEL_RES 0.5

#include <string>
#include <iostream>
#include <igl/opengl/glfw/Viewer.h>
#include <igl/readOFF.h>
#include <igl/readOBJ.h>
#include <igl/writeSTL.h>
#include <igl/mat_max.h>
#include <igl/per_vertex_normals.h>
#include <igl/per_face_normals.h>
#include <igl/per_corner_normals.h>
#include <igl/edges.h>
#include <igl/jet.h>
#include <iostream>
#include <Eigen/Geometry>
#include <Eigen/Dense>
#include <Eigen/IterativeLinearSolvers>
#include <fstream>
#include <boost/filesystem.hpp>
#include <cstdio>

#define VOXELIZER_IMPLEMENTATION

#include "voxelizer.h"

using namespace Eigen;
using namespace std;


// input mesh
Eigen::MatrixXd V,U;
Eigen::MatrixXi F;
std::vector<std::vector<double> > A;

// voxelized mesh
Eigen::MatrixXd U_;
Eigen::MatrixXi F_;

Eigen::MatrixXd color_map;
Eigen::MatrixXd target_vertices;

Eigen::VectorXd RHS_x;
Eigen::VectorXd RHS_y;
Eigen::VectorXd RHS_z;

Eigen::SparseMatrix<double> lap,LHS;

void space()
{
    // Compute per-vertex normals
    Eigen::MatrixXd normals_vertices;
    //igl::PerVertexNormalsWeightingType weighting = igl::PER_VERTEX_NORMALS_WEIGHTING_TYPE_UNIFORM;
    igl::per_vertex_normals(U,F, normals_vertices);
    
    // Compute closest axis
    Eigen::VectorXi maxIndices;
    Eigen::VectorXf maxVals;
    igl::mat_max(normals_vertices.cwiseAbs(),2,maxVals,maxIndices);
    Eigen::MatrixXd target_vertices = Eigen::MatrixXd::Zero(normals_vertices.rows(),normals_vertices.cols());
    for (int i = 0; i < normals_vertices.rows(); i++)
    {
        target_vertices(i,maxIndices(i)) = (normals_vertices(i,maxIndices(i)) > 0) ? 1.0 : -1.0;
    }
    // Smooth field out
    for (int j = 0; j < 2; j++)
    {
        for (int i = 0; i < 3; i++)
        {
            target_vertices.col(i) += lap* target_vertices.col(i);
        }
    }
    
    // Compute rotation field
    std::vector<Eigen::MatrixXd> rotations;
    for (int i = 0; i < normals_vertices.rows(); i++)
    {
        Eigen::VectorXd n = normals_vertices.row(i);
        Eigen::VectorXd t = target_vertices.row(i);
        Eigen::Quaterniond Q = Eigen::Quaterniond().setFromTwoVectors(n,t);
        Eigen::Matrix3d R = Q.toRotationMatrix();
        rotations.push_back(R);
    }
    
    
    // Assemble Linear Systems
    
    RHS_x = Eigen::VectorXd::Ones(normals_vertices.rows());
    RHS_y = Eigen::VectorXd::Ones(normals_vertices.rows());
    RHS_z = Eigen::VectorXd::Ones(normals_vertices.rows());
    
    // Pin vertex to make system solvable
    int pinned_i = 0;
    for (int i = 0; i < normals_vertices.rows(); i++)
    {
        if (i != pinned_i)
        {
            int N = A[i].size();
            Eigen::VectorXd sum_lhs = Eigen::VectorXd::Zero(normals_vertices.cols());
            for (int j : A[i] )
            {
                sum_lhs += (rotations[i] + rotations[j])*((U.row(i) - U.row(j)).transpose());
            }
            RHS_x(i) = (0.5/N)*sum_lhs(0);
            RHS_y(i) = (0.5/N)*sum_lhs(1);
            RHS_z(i) = (0.5/N)*sum_lhs(2);
        }
    }
    
    // Solve sparse linear systems
    Eigen::BiCGSTAB<SparseMatrix<double> >  BCGST;
    BCGST.compute(LHS);
    //cout << RHS_x << endl;
    
    Eigen::VectorXd x = BCGST.solve(RHS_x);
    Eigen::VectorXd y = BCGST.solve(RHS_y);
    Eigen::VectorXd z = BCGST.solve(RHS_z);
    
    // Update mesh
    U.col(0) = x;
    U.col(1) = y;
    U.col(2) = z;
}

void voxelize(string const& filename)
{
    Timer timer;
    string filenameNoExtension (filename.substr(0, filename.size()-4));
    cout << "filenameNoExtension = " << filenameNoExtension << endl;
    
    //Fixed grid size each time
    int gridSize = 32; //Cf Edoardo's ML file
    int numThread = 4; //atoi(argv[2]);
    string inputFile ("/Users/davidcleres/DeepShape/Polycubing-Automated/Generated-Cars/");
    inputFile += filename;
    cout << "openning " << inputFile << endl;
    string outputFileForView  ("/Users/davidcleres/DeepShape/Polycubing-Automated/Generated-Cars/");
    outputFileForView += filenameNoExtension+".binvox";
    
    timer.Restart();
    Voxelizer voxelizer(gridSize, inputFile, true);
    timer.Stop();
    cout << "voxelizer initialization "; timer.PrintTimeInS();
    cout << "-------------------------------------------" << endl;
    timer.Restart();
    voxelizer.VoxelizeSurface(numThread);
    timer.Stop();
    cout << "surface voxelization "; timer.PrintTimeInS();
    cout << "-------------------------------------------" << endl;
    timer.Restart();
    voxelizer.VoxelizeSolid(numThread);
    timer.Stop();
    cout << "solid voxelization "; timer.PrintTimeInS();
    cout << "-------------------------------------------" << endl;
    timer.Restart();
    
    voxelizer.buildBinaryTensor();
    voxelizer.WriteForView(outputFileForView);     //Enables to write a file in the binvox format
    
    int voting(5);
    int sliceNumber(17);
    
    voxelizer.writeTextFile(filenameNoExtension);
    /*voxelizer.writeSliceTextFile(sliceNumber);
    voxelizer.writeVotingToTextFile(voxelizer.voting(voting, voxelizer.getBinarytensor()));
    voxelizer.writeSliceVotingTextFile(sliceNumber, voxelizer.voting(voting, voxelizer.getBinarytensor()));
    voxelizer.writeSliceTextFile(voxelizer.findRegionalMaxima(3, voxelizer.voting(voting, voxelizer.getBinarytensor())), voting);
    voxelizer.writeTextFile(voxelizer.findRegionalMaxima(3, voxelizer.voting(voting, voxelizer.getBinarytensor())));*/
    
    timer.Stop();
    cout << "writing file ";
    timer.PrintTimeInS();
    cout << "-------------------------------------------" << endl;
    vector<vector<vector<int> > > counterMatrix = vector<vector<vector<int> > > (gridSize, vector<vector<int> >(gridSize, vector<int>(gridSize, 0)));
    vector<vector<vector<bool> > >correctedBinary = voxelizer.neighbourhoodCorrection(3, counterMatrix);
    vector<vector<vector<int> > > votingVector = voxelizer.voting(voting, correctedBinary);
    /*voxelizer.writeTextFile(correctedBinary, "neighbors");
    voxelizer.writeSliceTextFile(correctedBinary, sliceNumber, "neighbors");
    voxelizer.writeSliceVotingTextFile(sliceNumber, counterMatrix, "Counter");
    voxelizer.writeSliceVotingTextFile(sliceNumber, voxelizer.voting(voting, correctedBinary), "newVoting");
    voxelizer.writeSliceTextFile(voxelizer.findBorders(voxelizer.voting(voting, correctedBinary)), sliceNumber, "means");*/
    voxelizer.writeSliceTextFileXProj(votingVector, 17, "xproj");
    voxelizer.writeTextFileXProj(17);
    voxelizer.writeTextFile(voxelizer.findBorders(votingVector), "-final"); //Corners of the Polycube
    voxelizer.writeTextFile(voxelizer.buildPerfectPolyCube(voxelizer.findBorders(votingVector)), "-finalCubes"); //Polycube output file for pytorch
}

void voxelizeIntialMesh(string const& filename)
{
    Timer timer;
    string filenameNoExtension (filename.substr(0, filename.size()-4));
    cout << "filenameNoExtension = " << filenameNoExtension << endl;
    
    //Fixed grid size each time
    int gridSize = 32; //Cf Edoardo's ML file
    int numThread = 4; //atoi(argv[2]);
    string inputFile ("/Users/davidcleres/DeepShape/Polycubing-Automated/voxelizedMeshes/");
    inputFile += filename;
    cout << "openning " << inputFile << endl;
    string outputFileForView  ("/Users/davidcleres/DeepShape/Polycubing-Automated/voxelizedMeshes/");
    outputFileForView += filenameNoExtension+".binvox";
    
    timer.Restart();
    Voxelizer voxelizer(gridSize, inputFile, true);
    timer.Stop();
    cout << "voxelizer initialization "; timer.PrintTimeInS();
    cout << "-------------------------------------------" << endl;
    timer.Restart();
    voxelizer.VoxelizeSurface(numThread);
    timer.Stop();
    cout << "surface voxelization "; timer.PrintTimeInS();
    cout << "-------------------------------------------" << endl;
    timer.Restart();
    voxelizer.VoxelizeSolid(numThread);
    timer.Stop();
    cout << "solid voxelization "; timer.PrintTimeInS();
    cout << "-------------------------------------------" << endl;
    timer.Restart();
    
    voxelizer.buildBinaryTensor();
    voxelizer.WriteForView(outputFileForView);     //Enables to write a file in the binvox format
    voxelizer.writeTextFile(filenameNoExtension); //Writes the binary tensor of the voxelized mesh so that it can be uploaded in the U-Net
    
    timer.Stop();
    cout << "writing file ";
}

struct path_leaf_string
{
    std::string operator()(const boost::filesystem::directory_entry& entry) const
    {
        return entry.path().leaf().string();
    }
};

void read_directory(const std::string& name, vector<string>& v)
{
    boost::filesystem::path p(name);
    boost::filesystem::directory_iterator start(p);
    boost::filesystem::directory_iterator end;
    std::transform(start, end, std::back_inserter(v), path_leaf_string());
}

int main(int argc, char *argv[])
{
    //FIND ALL THE .OBJ FILES
    string name("/Users/davidcleres/DeepShape/Polycubing-Automated/cars_library/");
    vector<string> v;
    read_directory(name, v);
    cout << "files found : " << v.size() << endl;
    
    for(auto const& element : v)
    {
        string filename = (name);
        filename += element;
        // Load a mesh in OFF format
        //igl::readOFF(filename, V, F);
        cout << "name is " << filename << endl;
        igl::readOBJ(filename, V, F);
        
        // compute adjacency list
        igl::adjacency_list(F,A);
        
        // assemble Laplacian Matrix
        lap = Eigen::SparseMatrix<double>(V.rows(),V.rows());
        lap.setIdentity();
        for (int i = 0; i < V.rows(); i++)
        {
            int N = A[i].size();
            for (int j : A[i] )
            {
                lap.insert(i,j) = -1.0/N;
            }
        }
        
        // assemble modified Laplacian for linear system
        LHS= Eigen::SparseMatrix<double>(V.rows(),V.rows());
        LHS.setIdentity();
        int pinned_i = 0;
        for (int i = 0; i < V.rows(); i++)
        {
            if(i!=pinned_i)
            {
                int N = A[i].size();
                for (int j : A[i] )
                {
                    LHS.insert(i,j) = -1.0/N;
                }
            }
        }
        
        U = V;
        
        bool saveVoxelizedMesh(true); //True if you want to voxelize the mesh
        bool saveVoxelizedNormalizedMesh(true); //True if you want to have the polycube structure also
        
        if(saveVoxelizedMesh)
        {
            cout << "Saving Voxelized mesh to STL." << endl; //Saves the displayed model to the build folder
            string outfile("/Users/davidcleres/DeepShape/Polycubing-Automated/voxelizedMeshes/");
            outfile += (element.substr(0, element.size()-4) + ".stl");
            igl::writeSTL(outfile, U,F);
            voxelizeIntialMesh(element.substr(0, element.size()-4) + ".stl");
            
            //removes the processed file from the cars_library folder
            if(!saveVoxelizedNormalizedMesh)
                std::remove(filename.c_str());
        }
        
        if(saveVoxelizedNormalizedMesh)
        {
            //"normalizes" the shape (like pressing 20 times on widespace
            for (int o(0); o < 21; o++)
            {
                space();
            }
            
            cout << "Saving to STL." << endl; //Saves the displayed model to the build folder
            string outfile("/Users/davidcleres/DeepShape/Polycubing-Automated/Generated-Cars/");
            outfile += (element.substr(0, element.size()-4) + ".stl");
            igl::writeSTL(outfile, U,F);
            voxelize(element.substr(0, element.size()-4) + ".stl");
            
            //removes the processed file
            std::remove(filename.c_str());
        }
    }
}
