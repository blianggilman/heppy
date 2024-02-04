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
CMAKE_COMMAND = /global/common/software/nersc/pm-2021q4/sw/cmake-3.22.0/bin/cmake

# The command to remove a file.
RM = /global/common/software/nersc/pm-2021q4/sw/cmake-3.22.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build

# Include any dependencies generated for this target.
include CMakeFiles/RooUnfoldTest2D.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RooUnfoldTest2D.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RooUnfoldTest2D.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RooUnfoldTest2D.dir/flags.make

CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.o: CMakeFiles/RooUnfoldTest2D.dir/flags.make
CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.o: /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/examples/RooUnfoldTest2D.cxx
CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.o: CMakeFiles/RooUnfoldTest2D.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.o"
	/opt/cray/pe/craype/2.7.20/bin/CC $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.o -MF CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.o.d -o CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.o -c /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/examples/RooUnfoldTest2D.cxx

CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.i"
	/opt/cray/pe/craype/2.7.20/bin/CC $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/examples/RooUnfoldTest2D.cxx > CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.i

CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.s"
	/opt/cray/pe/craype/2.7.20/bin/CC $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/examples/RooUnfoldTest2D.cxx -o CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.s

# Object files for target RooUnfoldTest2D
RooUnfoldTest2D_OBJECTS = \
"CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.o"

# External object files for target RooUnfoldTest2D
RooUnfoldTest2D_EXTERNAL_OBJECTS =

RooUnfoldTest2D: CMakeFiles/RooUnfoldTest2D.dir/examples/RooUnfoldTest2D.cxx.o
RooUnfoldTest2D: CMakeFiles/RooUnfoldTest2D.dir/build.make
RooUnfoldTest2D: libRooUnfold.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libCore.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libImt.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libRIO.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libNet.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libHist.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libGraf.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libGraf3d.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libGpad.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libROOTDataFrame.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libTree.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libTreePlayer.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libRint.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libPostscript.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libMatrix.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libPhysics.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libMathCore.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libThread.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libMultiProc.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libROOTVecOps.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libUnfold.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libRooFitCore.so
RooUnfoldTest2D: /global/cfs/cdirs/alice/heppy_soft/05-11-2023/yasp/software/root/6.28.00/lib/libRooFit.so
RooUnfoldTest2D: CMakeFiles/RooUnfoldTest2D.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RooUnfoldTest2D"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RooUnfoldTest2D.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RooUnfoldTest2D.dir/build: RooUnfoldTest2D
.PHONY : CMakeFiles/RooUnfoldTest2D.dir/build

CMakeFiles/RooUnfoldTest2D.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RooUnfoldTest2D.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RooUnfoldTest2D.dir/clean

CMakeFiles/RooUnfoldTest2D.dir/depend:
	cd /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build /global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/CMakeFiles/RooUnfoldTest2D.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RooUnfoldTest2D.dir/depend

