
if(NOT "/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-stamp/ROOUNFOLD-gitinfo.txt" IS_NEWER_THAN "/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-stamp/ROOUNFOLD-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-stamp/ROOUNFOLD-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --progress --config "advice.detachedHead=false" "https://gitlab.cern.ch/mploskon/RooUnfold.git" "ROOUNFOLD"
    WORKING_DIRECTORY "/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://gitlab.cern.ch/mploskon/RooUnfold.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout 2.1.heppy --
  WORKING_DIRECTORY "/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '2.1.heppy'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-stamp/ROOUNFOLD-gitinfo.txt"
    "/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-stamp/ROOUNFOLD-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/global/cfs/cdirs/alice/blianggi/mypyjetty/heppy/external/roounfold/roounfold-2.1.heppy/src/ROOUNFOLD-stamp/ROOUNFOLD-gitclone-lastrun.txt'")
endif()

