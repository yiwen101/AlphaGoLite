# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/softmark/Desktop/AlphaGoLite/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/softmark/Desktop/AlphaGoLite/cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/alphaGoLite.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/alphaGoLite.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/alphaGoLite.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/alphaGoLite.dir/flags.make

CMakeFiles/alphaGoLite.dir/game/board.cpp.o: CMakeFiles/alphaGoLite.dir/flags.make
CMakeFiles/alphaGoLite.dir/game/board.cpp.o: /Users/softmark/Desktop/AlphaGoLite/cpp/game/board.cpp
CMakeFiles/alphaGoLite.dir/game/board.cpp.o: CMakeFiles/alphaGoLite.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/softmark/Desktop/AlphaGoLite/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/alphaGoLite.dir/game/board.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/alphaGoLite.dir/game/board.cpp.o -MF CMakeFiles/alphaGoLite.dir/game/board.cpp.o.d -o CMakeFiles/alphaGoLite.dir/game/board.cpp.o -c /Users/softmark/Desktop/AlphaGoLite/cpp/game/board.cpp

CMakeFiles/alphaGoLite.dir/game/board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/alphaGoLite.dir/game/board.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/softmark/Desktop/AlphaGoLite/cpp/game/board.cpp > CMakeFiles/alphaGoLite.dir/game/board.cpp.i

CMakeFiles/alphaGoLite.dir/game/board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/alphaGoLite.dir/game/board.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/softmark/Desktop/AlphaGoLite/cpp/game/board.cpp -o CMakeFiles/alphaGoLite.dir/game/board.cpp.s

# Object files for target alphaGoLite
alphaGoLite_OBJECTS = \
"CMakeFiles/alphaGoLite.dir/game/board.cpp.o"

# External object files for target alphaGoLite
alphaGoLite_EXTERNAL_OBJECTS =

alphaGoLite: CMakeFiles/alphaGoLite.dir/game/board.cpp.o
alphaGoLite: CMakeFiles/alphaGoLite.dir/build.make
alphaGoLite: CMakeFiles/alphaGoLite.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/softmark/Desktop/AlphaGoLite/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable alphaGoLite"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alphaGoLite.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/alphaGoLite.dir/build: alphaGoLite
.PHONY : CMakeFiles/alphaGoLite.dir/build

CMakeFiles/alphaGoLite.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/alphaGoLite.dir/cmake_clean.cmake
.PHONY : CMakeFiles/alphaGoLite.dir/clean

CMakeFiles/alphaGoLite.dir/depend:
	cd /Users/softmark/Desktop/AlphaGoLite/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/softmark/Desktop/AlphaGoLite/cpp /Users/softmark/Desktop/AlphaGoLite/cpp /Users/softmark/Desktop/AlphaGoLite/cpp/build /Users/softmark/Desktop/AlphaGoLite/cpp/build /Users/softmark/Desktop/AlphaGoLite/cpp/build/CMakeFiles/alphaGoLite.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/alphaGoLite.dir/depend

