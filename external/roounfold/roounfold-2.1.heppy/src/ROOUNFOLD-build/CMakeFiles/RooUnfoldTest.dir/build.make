# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build

# Include any dependencies generated for this target.
include CMakeFiles/RooUnfoldTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RooUnfoldTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RooUnfoldTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RooUnfoldTest.dir/flags.make

CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.o: CMakeFiles/RooUnfoldTest.dir/flags.make
CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.o: /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/examples/RooUnfoldTest.cxx
CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.o: CMakeFiles/RooUnfoldTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.o -MF CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.o.d -o CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.o -c /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/examples/RooUnfoldTest.cxx

CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/examples/RooUnfoldTest.cxx > CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.i

CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/examples/RooUnfoldTest.cxx -o CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.s

# Object files for target RooUnfoldTest
RooUnfoldTest_OBJECTS = \
"CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.o"

# External object files for target RooUnfoldTest
RooUnfoldTest_EXTERNAL_OBJECTS =

RooUnfoldTest: CMakeFiles/RooUnfoldTest.dir/examples/RooUnfoldTest.cxx.o
RooUnfoldTest: CMakeFiles/RooUnfoldTest.dir/build.make
RooUnfoldTest: libRooUnfold.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libCore.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libImt.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libRIO.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libNet.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libHist.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libGraf.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libGraf3d.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libGpad.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libROOTDataFrame.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libTree.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libTreePlayer.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libRint.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libPostscript.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libMatrix.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libPhysics.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libMathCore.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libThread.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libMultiProc.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libROOTVecOps.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libUnfold.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libRooFitCore.so
RooUnfoldTest: /software/users/alice/yasp/software/root/default/lib/libRooFit.so
RooUnfoldTest: CMakeFiles/RooUnfoldTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RooUnfoldTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RooUnfoldTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RooUnfoldTest.dir/build: RooUnfoldTest
.PHONY : CMakeFiles/RooUnfoldTest.dir/build

CMakeFiles/RooUnfoldTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RooUnfoldTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RooUnfoldTest.dir/clean

CMakeFiles/RooUnfoldTest.dir/depend:
	cd /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/CMakeFiles/RooUnfoldTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RooUnfoldTest.dir/depend

