# Install script for directory: /software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/RooUnfoldConfig.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD" TYPE FILE FILES "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/RooUnfoldConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRooUnfold.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRooUnfold.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRooUnfold.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/libRooUnfold.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRooUnfold.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRooUnfold.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRooUnfold.so"
         OLD_RPATH "/software/users/alice/yasp/software/root/default/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRooUnfold.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/libRooUnfold_rdict.pcm")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/RooUnfold.h"
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/RooUnfoldBayes.h"
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/RooUnfoldBinByBin.h"
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/RooUnfoldErrors.h"
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/RooUnfoldIds.h"
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/RooUnfoldInvert.h"
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/RooUnfoldParms.h"
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/RooUnfoldResponse.h"
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/RooUnfoldSvd.h"
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/RooUnfoldTUnfold.h"
    "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD/src/TSVDUnfold_local.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldExample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldExample")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldExample"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/RooUnfoldExample")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldExample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldExample")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldExample"
         OLD_RPATH "/software/users/alice/yasp/software/root/default/lib:/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldExample")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/RooUnfoldTest")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest"
         OLD_RPATH "/software/users/alice/yasp/software/root/default/lib:/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest2D" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest2D")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest2D"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/RooUnfoldTest2D")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest2D" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest2D")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest2D"
         OLD_RPATH "/software/users/alice/yasp/software/root/default/lib:/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest2D")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest3D" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest3D")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest3D"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/RooUnfoldTest3D")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest3D" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest3D")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest3D"
         OLD_RPATH "/software/users/alice/yasp/software/root/default/lib:/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RooUnfoldTest3D")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/software/users/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
