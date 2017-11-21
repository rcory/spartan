# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/daniel/software/find_apriltag_corners

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daniel/software/find_apriltag_corners/build

# Include any dependencies generated for this target.
include CMakeFiles/find_corners.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/find_corners.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/find_corners.dir/flags.make

CMakeFiles/find_corners.dir/find_corners.cpp.o: CMakeFiles/find_corners.dir/flags.make
CMakeFiles/find_corners.dir/find_corners.cpp.o: ../find_corners.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/software/find_apriltag_corners/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/find_corners.dir/find_corners.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/find_corners.dir/find_corners.cpp.o -c /home/daniel/software/find_apriltag_corners/find_corners.cpp

CMakeFiles/find_corners.dir/find_corners.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/find_corners.dir/find_corners.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/software/find_apriltag_corners/find_corners.cpp > CMakeFiles/find_corners.dir/find_corners.cpp.i

CMakeFiles/find_corners.dir/find_corners.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/find_corners.dir/find_corners.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/software/find_apriltag_corners/find_corners.cpp -o CMakeFiles/find_corners.dir/find_corners.cpp.s

CMakeFiles/find_corners.dir/find_corners.cpp.o.requires:

.PHONY : CMakeFiles/find_corners.dir/find_corners.cpp.o.requires

CMakeFiles/find_corners.dir/find_corners.cpp.o.provides: CMakeFiles/find_corners.dir/find_corners.cpp.o.requires
	$(MAKE) -f CMakeFiles/find_corners.dir/build.make CMakeFiles/find_corners.dir/find_corners.cpp.o.provides.build
.PHONY : CMakeFiles/find_corners.dir/find_corners.cpp.o.provides

CMakeFiles/find_corners.dir/find_corners.cpp.o.provides.build: CMakeFiles/find_corners.dir/find_corners.cpp.o


# Object files for target find_corners
find_corners_OBJECTS = \
"CMakeFiles/find_corners.dir/find_corners.cpp.o"

# External object files for target find_corners
find_corners_EXTERNAL_OBJECTS =

find_corners: CMakeFiles/find_corners.dir/find_corners.cpp.o
find_corners: CMakeFiles/find_corners.dir/build.make
find_corners: /home/daniel/software/apriltags-cpp/build/libapriltags.a
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_core.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_flann.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_ml.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_photo.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_superres.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_ts.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_video.so
find_corners: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so
find_corners: CMakeFiles/find_corners.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel/software/find_apriltag_corners/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable find_corners"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/find_corners.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/find_corners.dir/build: find_corners

.PHONY : CMakeFiles/find_corners.dir/build

CMakeFiles/find_corners.dir/requires: CMakeFiles/find_corners.dir/find_corners.cpp.o.requires

.PHONY : CMakeFiles/find_corners.dir/requires

CMakeFiles/find_corners.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/find_corners.dir/cmake_clean.cmake
.PHONY : CMakeFiles/find_corners.dir/clean

CMakeFiles/find_corners.dir/depend:
	cd /home/daniel/software/find_apriltag_corners/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/software/find_apriltag_corners /home/daniel/software/find_apriltag_corners /home/daniel/software/find_apriltag_corners/build /home/daniel/software/find_apriltag_corners/build /home/daniel/software/find_apriltag_corners/build/CMakeFiles/find_corners.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/find_corners.dir/depend

