# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/davidcleres/DeepShape/voxelizer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/collisionChecker.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/collisionChecker.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/collisionChecker.dir/flags.make

test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o: test/CMakeFiles/collisionChecker.dir/flags.make
test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o: ../test/collisionChecker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o -c /Users/davidcleres/DeepShape/voxelizer/test/collisionChecker.cpp

test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionChecker.dir/collisionChecker.cpp.i"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/davidcleres/DeepShape/voxelizer/test/collisionChecker.cpp > CMakeFiles/collisionChecker.dir/collisionChecker.cpp.i

test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionChecker.dir/collisionChecker.cpp.s"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/davidcleres/DeepShape/voxelizer/test/collisionChecker.cpp -o CMakeFiles/collisionChecker.dir/collisionChecker.cpp.s

test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o.requires:

.PHONY : test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o.requires

test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o.provides: test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/collisionChecker.dir/build.make test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o.provides.build
.PHONY : test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o.provides

test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o.provides.build: test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o


test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o: test/CMakeFiles/collisionChecker.dir/flags.make
test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o: ../src/timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o -c /Users/davidcleres/DeepShape/voxelizer/src/timer.cpp

test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionChecker.dir/__/src/timer.cpp.i"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/davidcleres/DeepShape/voxelizer/src/timer.cpp > CMakeFiles/collisionChecker.dir/__/src/timer.cpp.i

test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionChecker.dir/__/src/timer.cpp.s"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/davidcleres/DeepShape/voxelizer/src/timer.cpp -o CMakeFiles/collisionChecker.dir/__/src/timer.cpp.s

test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o.requires:

.PHONY : test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o.requires

test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o.provides: test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/collisionChecker.dir/build.make test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o.provides.build
.PHONY : test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o.provides

test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o.provides.build: test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o


test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o: test/CMakeFiles/collisionChecker.dir/flags.make
test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o: ../src/voxelizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o -c /Users/davidcleres/DeepShape/voxelizer/src/voxelizer.cpp

test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.i"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/davidcleres/DeepShape/voxelizer/src/voxelizer.cpp > CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.i

test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.s"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/davidcleres/DeepShape/voxelizer/src/voxelizer.cpp -o CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.s

test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o.requires:

.PHONY : test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o.requires

test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o.provides: test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/collisionChecker.dir/build.make test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o.provides.build
.PHONY : test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o.provides

test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o.provides.build: test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o


test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o: test/CMakeFiles/collisionChecker.dir/flags.make
test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o: ../src/threadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o -c /Users/davidcleres/DeepShape/voxelizer/src/threadPool.cpp

test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.i"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/davidcleres/DeepShape/voxelizer/src/threadPool.cpp > CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.i

test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.s"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/davidcleres/DeepShape/voxelizer/src/threadPool.cpp -o CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.s

test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o.requires:

.PHONY : test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o.requires

test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o.provides: test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/collisionChecker.dir/build.make test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o.provides.build
.PHONY : test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o.provides

test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o.provides.build: test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o


test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o: test/CMakeFiles/collisionChecker.dir/flags.make
test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o: ../src/commons.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o -c /Users/davidcleres/DeepShape/voxelizer/src/commons.cpp

test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionChecker.dir/__/src/commons.cpp.i"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/davidcleres/DeepShape/voxelizer/src/commons.cpp > CMakeFiles/collisionChecker.dir/__/src/commons.cpp.i

test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionChecker.dir/__/src/commons.cpp.s"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/davidcleres/DeepShape/voxelizer/src/commons.cpp -o CMakeFiles/collisionChecker.dir/__/src/commons.cpp.s

test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o.requires:

.PHONY : test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o.requires

test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o.provides: test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/collisionChecker.dir/build.make test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o.provides.build
.PHONY : test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o.provides

test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o.provides.build: test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o


test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o: test/CMakeFiles/collisionChecker.dir/flags.make
test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o: ../src/triBox.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o -c /Users/davidcleres/DeepShape/voxelizer/src/triBox.cpp

test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.i"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/davidcleres/DeepShape/voxelizer/src/triBox.cpp > CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.i

test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.s"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/davidcleres/DeepShape/voxelizer/src/triBox.cpp -o CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.s

test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o.requires:

.PHONY : test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o.requires

test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o.provides: test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/collisionChecker.dir/build.make test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o.provides.build
.PHONY : test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o.provides

test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o.provides.build: test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o


# Object files for target collisionChecker
collisionChecker_OBJECTS = \
"CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o" \
"CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o" \
"CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o" \
"CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o" \
"CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o" \
"CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o"

# External object files for target collisionChecker
collisionChecker_EXTERNAL_OBJECTS =

test/collisionChecker: test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o
test/collisionChecker: test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o
test/collisionChecker: test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o
test/collisionChecker: test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o
test/collisionChecker: test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o
test/collisionChecker: test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o
test/collisionChecker: test/CMakeFiles/collisionChecker.dir/build.make
test/collisionChecker: /usr/local/lib/libboost_atomic-mt.dylib
test/collisionChecker: /usr/local/lib/libboost_system-mt.dylib
test/collisionChecker: /usr/local/lib/libboost_thread-mt.dylib
test/collisionChecker: /usr/local/lib/libboost_date_time-mt.dylib
test/collisionChecker: /usr/local/lib/libboost_unit_test_framework-mt.dylib
test/collisionChecker: test/CMakeFiles/collisionChecker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable collisionChecker"
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/collisionChecker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/collisionChecker.dir/build: test/collisionChecker

.PHONY : test/CMakeFiles/collisionChecker.dir/build

test/CMakeFiles/collisionChecker.dir/requires: test/CMakeFiles/collisionChecker.dir/collisionChecker.cpp.o.requires
test/CMakeFiles/collisionChecker.dir/requires: test/CMakeFiles/collisionChecker.dir/__/src/timer.cpp.o.requires
test/CMakeFiles/collisionChecker.dir/requires: test/CMakeFiles/collisionChecker.dir/__/src/voxelizer.cpp.o.requires
test/CMakeFiles/collisionChecker.dir/requires: test/CMakeFiles/collisionChecker.dir/__/src/threadPool.cpp.o.requires
test/CMakeFiles/collisionChecker.dir/requires: test/CMakeFiles/collisionChecker.dir/__/src/commons.cpp.o.requires
test/CMakeFiles/collisionChecker.dir/requires: test/CMakeFiles/collisionChecker.dir/__/src/triBox.cpp.o.requires

.PHONY : test/CMakeFiles/collisionChecker.dir/requires

test/CMakeFiles/collisionChecker.dir/clean:
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/collisionChecker.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/collisionChecker.dir/clean

test/CMakeFiles/collisionChecker.dir/depend:
	cd /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/davidcleres/DeepShape/voxelizer /Users/davidcleres/DeepShape/voxelizer/test /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test /Users/davidcleres/DeepShape/voxelizer/cmake-build-debug/test/CMakeFiles/collisionChecker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/collisionChecker.dir/depend

