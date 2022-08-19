# Install script for directory: /home/workspace/OpenCV3-Code-Notes

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/workspace/OpenCV3-Code-Notes/88_亚像素级角点检测")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/01_HelloOpenCV/opencv_test_01" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/01_HelloOpenCV/opencv_test_01")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/01_HelloOpenCV/opencv_test_01"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/01_HelloOpenCV/opencv_test_01")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/01_HelloOpenCV" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_01")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/01_HelloOpenCV/opencv_test_01" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/01_HelloOpenCV/opencv_test_01")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/01_HelloOpenCV/opencv_test_01"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/01_HelloOpenCV/opencv_test_01")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/02_图像显示/opencv_test_02" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/02_图像显示/opencv_test_02")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/02_图像显示/opencv_test_02"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/02_图像显示/opencv_test_02")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/02_图像显示" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_02")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/02_图像显示/opencv_test_02" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/02_图像显示/opencv_test_02")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/02_图像显示/opencv_test_02"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/02_图像显示/opencv_test_02")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/03_图像腐蚀/opencv_test_03" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/03_图像腐蚀/opencv_test_03")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/03_图像腐蚀/opencv_test_03"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/03_图像腐蚀/opencv_test_03")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/03_图像腐蚀" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_03")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/03_图像腐蚀/opencv_test_03" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/03_图像腐蚀/opencv_test_03")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/03_图像腐蚀/opencv_test_03"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/03_图像腐蚀/opencv_test_03")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/04_blur图像模糊/opencv_test_04" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/04_blur图像模糊/opencv_test_04")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/04_blur图像模糊/opencv_test_04"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/04_blur图像模糊/opencv_test_04")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/04_blur图像模糊" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_04")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/04_blur图像模糊/opencv_test_04" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/04_blur图像模糊/opencv_test_04")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/04_blur图像模糊/opencv_test_04"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/04_blur图像模糊/opencv_test_04")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/05_canny边缘检测/opencv_test_05" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/05_canny边缘检测/opencv_test_05")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/05_canny边缘检测/opencv_test_05"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/05_canny边缘检测/opencv_test_05")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/05_canny边缘检测" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_05")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/05_canny边缘检测/opencv_test_05" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/05_canny边缘检测/opencv_test_05")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/05_canny边缘检测/opencv_test_05"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/05_canny边缘检测/opencv_test_05")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/06_播放视频/opencv_test_06" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/06_播放视频/opencv_test_06")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/06_播放视频/opencv_test_06"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/06_播放视频/opencv_test_06")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/06_播放视频" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_06")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/06_播放视频/opencv_test_06" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/06_播放视频/opencv_test_06")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/06_播放视频/opencv_test_06"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/06_播放视频/opencv_test_06")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/07_调用摄像头/opencv_test_07" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/07_调用摄像头/opencv_test_07")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/07_调用摄像头/opencv_test_07"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/07_调用摄像头/opencv_test_07")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/07_调用摄像头" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_07")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/07_调用摄像头/opencv_test_07" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/07_调用摄像头/opencv_test_07")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/07_调用摄像头/opencv_test_07"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/07_调用摄像头/opencv_test_07")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/08_彩色目标跟踪/opencv_test_08" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/08_彩色目标跟踪/opencv_test_08")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/08_彩色目标跟踪/opencv_test_08"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/08_彩色目标跟踪/opencv_test_08")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/08_彩色目标跟踪" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_08")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/08_彩色目标跟踪/opencv_test_08" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/08_彩色目标跟踪/opencv_test_08")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/08_彩色目标跟踪/opencv_test_08"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/08_彩色目标跟踪/opencv_test_08")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/09_用光流法进行运动目标检测/opencv_test_09" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/09_用光流法进行运动目标检测/opencv_test_09")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/09_用光流法进行运动目标检测/opencv_test_09"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/09_用光流法进行运动目标检测/opencv_test_09")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/09_用光流法进行运动目标检测" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_09")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/09_用光流法进行运动目标检测/opencv_test_09" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/09_用光流法进行运动目标检测/opencv_test_09")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/09_用光流法进行运动目标检测/opencv_test_09"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/09_用光流法进行运动目标检测/opencv_test_09")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/10_点追踪/opencv_test_10" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/10_点追踪/opencv_test_10")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/10_点追踪/opencv_test_10"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/10_点追踪/opencv_test_10")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/10_点追踪" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_10")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/10_点追踪/opencv_test_10" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/10_点追踪/opencv_test_10")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/10_点追踪/opencv_test_10"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/10_点追踪/opencv_test_10")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/11_人脸识别/opencv_test_11" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/11_人脸识别/opencv_test_11")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/11_人脸识别/opencv_test_11"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/11_人脸识别/opencv_test_11")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/11_人脸识别" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_11")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/11_人脸识别/opencv_test_11" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/11_人脸识别/opencv_test_11")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/11_人脸识别/opencv_test_11"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/11_人脸识别/opencv_test_11")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/14_printf函数用法示例/opencv_test_14" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/14_printf函数用法示例/opencv_test_14")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/14_printf函数用法示例/opencv_test_14"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/14_printf函数用法示例/opencv_test_14")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/14_printf函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_14")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/14_printf函数用法示例/opencv_test_14" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/14_printf函数用法示例/opencv_test_14")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/14_printf函数用法示例/opencv_test_14"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/14_printf函数用法示例/opencv_test_14")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/15_利用imwrite生成透明png图像/opencv_test_15" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/15_利用imwrite生成透明png图像/opencv_test_15")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/15_利用imwrite生成透明png图像/opencv_test_15"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/15_利用imwrite生成透明png图像/opencv_test_15")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/15_利用imwrite生成透明png图像" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_15")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/15_利用imwrite生成透明png图像/opencv_test_15" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/15_利用imwrite生成透明png图像/opencv_test_15")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/15_利用imwrite生成透明png图像/opencv_test_15"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/15_利用imwrite生成透明png图像/opencv_test_15")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/16_图像的载入，显示和输出/opencv_test_16" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/16_图像的载入，显示和输出/opencv_test_16")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/16_图像的载入，显示和输出/opencv_test_16"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/16_图像的载入，显示和输出/opencv_test_16")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/16_图像的载入，显示和输出" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_16")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/16_图像的载入，显示和输出/opencv_test_16" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/16_图像的载入，显示和输出/opencv_test_16")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/16_图像的载入，显示和输出/opencv_test_16"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/16_图像的载入，显示和输出/opencv_test_16")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/17_为程序界面添加滑动条/opencv_test_17" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/17_为程序界面添加滑动条/opencv_test_17")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/17_为程序界面添加滑动条/opencv_test_17"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/17_为程序界面添加滑动条/opencv_test_17")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/17_为程序界面添加滑动条" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_17")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/17_为程序界面添加滑动条/opencv_test_17" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/17_为程序界面添加滑动条/opencv_test_17")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/17_为程序界面添加滑动条/opencv_test_17"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/17_为程序界面添加滑动条/opencv_test_17")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/18_基本鼠标操作/opencv_test_18" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/18_基本鼠标操作/opencv_test_18")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/18_基本鼠标操作/opencv_test_18"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/18_基本鼠标操作/opencv_test_18")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/18_基本鼠标操作" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_18")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/18_基本鼠标操作/opencv_test_18" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/18_基本鼠标操作/opencv_test_18")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/18_基本鼠标操作/opencv_test_18"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/18_基本鼠标操作/opencv_test_18")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/19_基础图像容器Mat/opencv_test_19" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/19_基础图像容器Mat/opencv_test_19")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/19_基础图像容器Mat/opencv_test_19"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/19_基础图像容器Mat/opencv_test_19")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/19_基础图像容器Mat" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_19")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/19_基础图像容器Mat/opencv_test_19" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/19_基础图像容器Mat/opencv_test_19")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/19_基础图像容器Mat/opencv_test_19"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/19_基础图像容器Mat/opencv_test_19")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/20_用OpenCV进行基本绘图/opencv_test_20" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/20_用OpenCV进行基本绘图/opencv_test_20")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/20_用OpenCV进行基本绘图/opencv_test_20"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/20_用OpenCV进行基本绘图/opencv_test_20")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/20_用OpenCV进行基本绘图" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_20")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/20_用OpenCV进行基本绘图/opencv_test_20" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/20_用OpenCV进行基本绘图/opencv_test_20")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/20_用OpenCV进行基本绘图/opencv_test_20"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/20_用OpenCV进行基本绘图/opencv_test_20")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/21_用指针访问像素/opencv_test_21" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/21_用指针访问像素/opencv_test_21")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/21_用指针访问像素/opencv_test_21"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/21_用指针访问像素/opencv_test_21")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/21_用指针访问像素" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_21")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/21_用指针访问像素/opencv_test_21" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/21_用指针访问像素/opencv_test_21")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/21_用指针访问像素/opencv_test_21"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/21_用指针访问像素/opencv_test_21")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/22_用迭代器访问像素/opencv_test_22" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/22_用迭代器访问像素/opencv_test_22")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/22_用迭代器访问像素/opencv_test_22"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/22_用迭代器访问像素/opencv_test_22")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/22_用迭代器访问像素" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_22")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/22_用迭代器访问像素/opencv_test_22" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/22_用迭代器访问像素/opencv_test_22")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/22_用迭代器访问像素/opencv_test_22"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/22_用迭代器访问像素/opencv_test_22")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/23_用动态地址计算配合at访问像素/opencv_test_23" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/23_用动态地址计算配合at访问像素/opencv_test_23")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/23_用动态地址计算配合at访问像素/opencv_test_23"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/23_用动态地址计算配合at访问像素/opencv_test_23")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/23_用动态地址计算配合at访问像素" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_23")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/23_用动态地址计算配合at访问像素/opencv_test_23" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/23_用动态地址计算配合at访问像素/opencv_test_23")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/23_用动态地址计算配合at访问像素/opencv_test_23"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/23_用动态地址计算配合at访问像素/opencv_test_23")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/24_遍历图像像素的14种方法/opencv_test_24" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/24_遍历图像像素的14种方法/opencv_test_24")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/24_遍历图像像素的14种方法/opencv_test_24"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/24_遍历图像像素的14种方法/opencv_test_24")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/24_遍历图像像素的14种方法" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_24")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/24_遍历图像像素的14种方法/opencv_test_24" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/24_遍历图像像素的14种方法/opencv_test_24")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/24_遍历图像像素的14种方法/opencv_test_24"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/24_遍历图像像素的14种方法/opencv_test_24")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/25_初级图像混合/opencv_test_25" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/25_初级图像混合/opencv_test_25")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/25_初级图像混合/opencv_test_25"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/25_初级图像混合/opencv_test_25")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/25_初级图像混合" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_25")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/25_初级图像混合/opencv_test_25" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/25_初级图像混合/opencv_test_25")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/25_初级图像混合/opencv_test_25"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/25_初级图像混合/opencv_test_25")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/26_多通道图像混合/opencv_test_26" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/26_多通道图像混合/opencv_test_26")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/26_多通道图像混合/opencv_test_26"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/26_多通道图像混合/opencv_test_26")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/26_多通道图像混合" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_26")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/26_多通道图像混合/opencv_test_26" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/26_多通道图像混合/opencv_test_26")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/26_多通道图像混合/opencv_test_26"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/26_多通道图像混合/opencv_test_26")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/27_图像对比度、亮度值调整/opencv_test_27" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/27_图像对比度、亮度值调整/opencv_test_27")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/27_图像对比度、亮度值调整/opencv_test_27"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/27_图像对比度、亮度值调整/opencv_test_27")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/27_图像对比度、亮度值调整" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_27")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/27_图像对比度、亮度值调整/opencv_test_27" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/27_图像对比度、亮度值调整/opencv_test_27")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/27_图像对比度、亮度值调整/opencv_test_27"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/27_图像对比度、亮度值调整/opencv_test_27")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/28_离散傅里叶变换/opencv_test_28" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/28_离散傅里叶变换/opencv_test_28")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/28_离散傅里叶变换/opencv_test_28"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/28_离散傅里叶变换/opencv_test_28")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/28_离散傅里叶变换" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_28")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/28_离散傅里叶变换/opencv_test_28" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/28_离散傅里叶变换/opencv_test_28")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/28_离散傅里叶变换/opencv_test_28"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/28_离散傅里叶变换/opencv_test_28")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/29_XML和YAMl文件的写入/opencv_test_29" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/29_XML和YAMl文件的写入/opencv_test_29")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/29_XML和YAMl文件的写入/opencv_test_29"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/29_XML和YAMl文件的写入/opencv_test_29")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/29_XML和YAMl文件的写入" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_29")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/29_XML和YAMl文件的写入/opencv_test_29" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/29_XML和YAMl文件的写入/opencv_test_29")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/29_XML和YAMl文件的写入/opencv_test_29"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/29_XML和YAMl文件的写入/opencv_test_29")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/30_XML和YAMl文件的读取/opencv_test_30" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/30_XML和YAMl文件的读取/opencv_test_30")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/30_XML和YAMl文件的读取/opencv_test_30"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/30_XML和YAMl文件的读取/opencv_test_30")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/30_XML和YAMl文件的读取" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_30")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/30_XML和YAMl文件的读取/opencv_test_30" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/30_XML和YAMl文件的读取/opencv_test_30")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/30_XML和YAMl文件的读取/opencv_test_30"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/30_XML和YAMl文件的读取/opencv_test_30")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/31_方框滤波boxFilter函数的使用/opencv_test_31" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/31_方框滤波boxFilter函数的使用/opencv_test_31")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/31_方框滤波boxFilter函数的使用/opencv_test_31"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/31_方框滤波boxFilter函数的使用/opencv_test_31")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/31_方框滤波boxFilter函数的使用" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_31")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/31_方框滤波boxFilter函数的使用/opencv_test_31" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/31_方框滤波boxFilter函数的使用/opencv_test_31")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/31_方框滤波boxFilter函数的使用/opencv_test_31"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/31_方框滤波boxFilter函数的使用/opencv_test_31")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/32_均值滤波blur函数的使用/opencv_test_32" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/32_均值滤波blur函数的使用/opencv_test_32")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/32_均值滤波blur函数的使用/opencv_test_32"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/32_均值滤波blur函数的使用/opencv_test_32")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/32_均值滤波blur函数的使用" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_32")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/32_均值滤波blur函数的使用/opencv_test_32" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/32_均值滤波blur函数的使用/opencv_test_32")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/32_均值滤波blur函数的使用/opencv_test_32"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/32_均值滤波blur函数的使用/opencv_test_32")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/33_高斯模糊GaussianBlur函数的用法/opencv_test_33" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/33_高斯模糊GaussianBlur函数的用法/opencv_test_33")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/33_高斯模糊GaussianBlur函数的用法/opencv_test_33"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/33_高斯模糊GaussianBlur函数的用法/opencv_test_33")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/33_高斯模糊GaussianBlur函数的用法" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_33")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/33_高斯模糊GaussianBlur函数的用法/opencv_test_33" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/33_高斯模糊GaussianBlur函数的用法/opencv_test_33")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/33_高斯模糊GaussianBlur函数的用法/opencv_test_33"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/33_高斯模糊GaussianBlur函数的用法/opencv_test_33")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/34_线性图像滤波综合示例/opencv_test_34" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/34_线性图像滤波综合示例/opencv_test_34")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/34_线性图像滤波综合示例/opencv_test_34"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/34_线性图像滤波综合示例/opencv_test_34")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/34_线性图像滤波综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_34")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/34_线性图像滤波综合示例/opencv_test_34" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/34_线性图像滤波综合示例/opencv_test_34")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/34_线性图像滤波综合示例/opencv_test_34"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/34_线性图像滤波综合示例/opencv_test_34")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/35_MedianBlur函数用法示例/opencv_test_35" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/35_MedianBlur函数用法示例/opencv_test_35")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/35_MedianBlur函数用法示例/opencv_test_35"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/35_MedianBlur函数用法示例/opencv_test_35")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/35_MedianBlur函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_35")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/35_MedianBlur函数用法示例/opencv_test_35" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/35_MedianBlur函数用法示例/opencv_test_35")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/35_MedianBlur函数用法示例/opencv_test_35"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/35_MedianBlur函数用法示例/opencv_test_35")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/36_双边滤波bilateralFilter函数使用示例/opencv_test_36" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/36_双边滤波bilateralFilter函数使用示例/opencv_test_36")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/36_双边滤波bilateralFilter函数使用示例/opencv_test_36"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/36_双边滤波bilateralFilter函数使用示例/opencv_test_36")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/36_双边滤波bilateralFilter函数使用示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_36")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/36_双边滤波bilateralFilter函数使用示例/opencv_test_36" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/36_双边滤波bilateralFilter函数使用示例/opencv_test_36")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/36_双边滤波bilateralFilter函数使用示例/opencv_test_36"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/36_双边滤波bilateralFilter函数使用示例/opencv_test_36")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/37_图像滤波综合示例/opencv_test_37" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/37_图像滤波综合示例/opencv_test_37")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/37_图像滤波综合示例/opencv_test_37"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/37_图像滤波综合示例/opencv_test_37")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/37_图像滤波综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_37")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/37_图像滤波综合示例/opencv_test_37" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/37_图像滤波综合示例/opencv_test_37")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/37_图像滤波综合示例/opencv_test_37"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/37_图像滤波综合示例/opencv_test_37")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/38_图像膨胀dilate函数用法示例/opencv_test_38" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/38_图像膨胀dilate函数用法示例/opencv_test_38")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/38_图像膨胀dilate函数用法示例/opencv_test_38"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/38_图像膨胀dilate函数用法示例/opencv_test_38")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/38_图像膨胀dilate函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_38")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/38_图像膨胀dilate函数用法示例/opencv_test_38" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/38_图像膨胀dilate函数用法示例/opencv_test_38")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/38_图像膨胀dilate函数用法示例/opencv_test_38"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/38_图像膨胀dilate函数用法示例/opencv_test_38")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/39_图像腐蚀erode函数用法示例/opencv_test_39" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/39_图像腐蚀erode函数用法示例/opencv_test_39")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/39_图像腐蚀erode函数用法示例/opencv_test_39"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/39_图像腐蚀erode函数用法示例/opencv_test_39")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/39_图像腐蚀erode函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_39")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/39_图像腐蚀erode函数用法示例/opencv_test_39" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/39_图像腐蚀erode函数用法示例/opencv_test_39")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/39_图像腐蚀erode函数用法示例/opencv_test_39"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/39_图像腐蚀erode函数用法示例/opencv_test_39")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/40_图像腐蚀与膨胀综合示例/opencv_test_40" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/40_图像腐蚀与膨胀综合示例/opencv_test_40")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/40_图像腐蚀与膨胀综合示例/opencv_test_40"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/40_图像腐蚀与膨胀综合示例/opencv_test_40")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/40_图像腐蚀与膨胀综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_40")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/40_图像腐蚀与膨胀综合示例/opencv_test_40" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/40_图像腐蚀与膨胀综合示例/opencv_test_40")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/40_图像腐蚀与膨胀综合示例/opencv_test_40"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/40_图像腐蚀与膨胀综合示例/opencv_test_40")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/41_用morphologyEx进行图像膨胀/opencv_test_41" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/41_用morphologyEx进行图像膨胀/opencv_test_41")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/41_用morphologyEx进行图像膨胀/opencv_test_41"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/41_用morphologyEx进行图像膨胀/opencv_test_41")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/41_用morphologyEx进行图像膨胀" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_41")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/41_用morphologyEx进行图像膨胀/opencv_test_41" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/41_用morphologyEx进行图像膨胀/opencv_test_41")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/41_用morphologyEx进行图像膨胀/opencv_test_41"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/41_用morphologyEx进行图像膨胀/opencv_test_41")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/42_用morphologyEx进行图像腐蚀/opencv_test_42" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/42_用morphologyEx进行图像腐蚀/opencv_test_42")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/42_用morphologyEx进行图像腐蚀/opencv_test_42"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/42_用morphologyEx进行图像腐蚀/opencv_test_42")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/42_用morphologyEx进行图像腐蚀" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_42")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/42_用morphologyEx进行图像腐蚀/opencv_test_42" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/42_用morphologyEx进行图像腐蚀/opencv_test_42")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/42_用morphologyEx进行图像腐蚀/opencv_test_42"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/42_用morphologyEx进行图像腐蚀/opencv_test_42")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/43_用morphologyEx进行图像开运算/opencv_test_43" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/43_用morphologyEx进行图像开运算/opencv_test_43")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/43_用morphologyEx进行图像开运算/opencv_test_43"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/43_用morphologyEx进行图像开运算/opencv_test_43")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/43_用morphologyEx进行图像开运算" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_43")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/43_用morphologyEx进行图像开运算/opencv_test_43" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/43_用morphologyEx进行图像开运算/opencv_test_43")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/43_用morphologyEx进行图像开运算/opencv_test_43"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/43_用morphologyEx进行图像开运算/opencv_test_43")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/44_用morphologyEx进行图像闭运算/opencv_test_44" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/44_用morphologyEx进行图像闭运算/opencv_test_44")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/44_用morphologyEx进行图像闭运算/opencv_test_44"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/44_用morphologyEx进行图像闭运算/opencv_test_44")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/44_用morphologyEx进行图像闭运算" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_44")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/44_用morphologyEx进行图像闭运算/opencv_test_44" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/44_用morphologyEx进行图像闭运算/opencv_test_44")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/44_用morphologyEx进行图像闭运算/opencv_test_44"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/44_用morphologyEx进行图像闭运算/opencv_test_44")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/45_用morphologyEx进行形态学梯度运算/opencv_test_45" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/45_用morphologyEx进行形态学梯度运算/opencv_test_45")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/45_用morphologyEx进行形态学梯度运算/opencv_test_45"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/45_用morphologyEx进行形态学梯度运算/opencv_test_45")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/45_用morphologyEx进行形态学梯度运算" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_45")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/45_用morphologyEx进行形态学梯度运算/opencv_test_45" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/45_用morphologyEx进行形态学梯度运算/opencv_test_45")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/45_用morphologyEx进行形态学梯度运算/opencv_test_45"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/45_用morphologyEx进行形态学梯度运算/opencv_test_45")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/46_用morphologyEx进行形态学顶帽运算/opencv_test_46" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/46_用morphologyEx进行形态学顶帽运算/opencv_test_46")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/46_用morphologyEx进行形态学顶帽运算/opencv_test_46"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/46_用morphologyEx进行形态学顶帽运算/opencv_test_46")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/46_用morphologyEx进行形态学顶帽运算" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_46")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/46_用morphologyEx进行形态学顶帽运算/opencv_test_46" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/46_用morphologyEx进行形态学顶帽运算/opencv_test_46")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/46_用morphologyEx进行形态学顶帽运算/opencv_test_46"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/46_用morphologyEx进行形态学顶帽运算/opencv_test_46")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/47_用morphologyEx进行形态学黑帽运算/opencv_test_47" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/47_用morphologyEx进行形态学黑帽运算/opencv_test_47")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/47_用morphologyEx进行形态学黑帽运算/opencv_test_47"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/47_用morphologyEx进行形态学黑帽运算/opencv_test_47")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/47_用morphologyEx进行形态学黑帽运算" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_47")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/47_用morphologyEx进行形态学黑帽运算/opencv_test_47" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/47_用morphologyEx进行形态学黑帽运算/opencv_test_47")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/47_用morphologyEx进行形态学黑帽运算/opencv_test_47"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/47_用morphologyEx进行形态学黑帽运算/opencv_test_47")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/48_形态学图像处理综合示例/opencv_test_48" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/48_形态学图像处理综合示例/opencv_test_48")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/48_形态学图像处理综合示例/opencv_test_48"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/48_形态学图像处理综合示例/opencv_test_48")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/48_形态学图像处理综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_48")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/48_形态学图像处理综合示例/opencv_test_48" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/48_形态学图像处理综合示例/opencv_test_48")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/48_形态学图像处理综合示例/opencv_test_48"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/48_形态学图像处理综合示例/opencv_test_48")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/49_漫水填充floodFill函数用法示例/opencv_test_49" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/49_漫水填充floodFill函数用法示例/opencv_test_49")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/49_漫水填充floodFill函数用法示例/opencv_test_49"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/49_漫水填充floodFill函数用法示例/opencv_test_49")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/49_漫水填充floodFill函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_49")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/49_漫水填充floodFill函数用法示例/opencv_test_49" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/49_漫水填充floodFill函数用法示例/opencv_test_49")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/49_漫水填充floodFill函数用法示例/opencv_test_49"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/49_漫水填充floodFill函数用法示例/opencv_test_49")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/50_漫水填充算法综合示例/opencv_test_50" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/50_漫水填充算法综合示例/opencv_test_50")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/50_漫水填充算法综合示例/opencv_test_50"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/50_漫水填充算法综合示例/opencv_test_50")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/50_漫水填充算法综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_50")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/50_漫水填充算法综合示例/opencv_test_50" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/50_漫水填充算法综合示例/opencv_test_50")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/50_漫水填充算法综合示例/opencv_test_50"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/50_漫水填充算法综合示例/opencv_test_50")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/51_resize函数用法示例/opencv_test_51" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/51_resize函数用法示例/opencv_test_51")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/51_resize函数用法示例/opencv_test_51"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/51_resize函数用法示例/opencv_test_51")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/51_resize函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_51")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/51_resize函数用法示例/opencv_test_51" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/51_resize函数用法示例/opencv_test_51")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/51_resize函数用法示例/opencv_test_51"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/51_resize函数用法示例/opencv_test_51")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/52_pyrUp函数用法示例/opencv_test_52" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/52_pyrUp函数用法示例/opencv_test_52")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/52_pyrUp函数用法示例/opencv_test_52"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/52_pyrUp函数用法示例/opencv_test_52")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/52_pyrUp函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_52")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/52_pyrUp函数用法示例/opencv_test_52" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/52_pyrUp函数用法示例/opencv_test_52")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/52_pyrUp函数用法示例/opencv_test_52"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/52_pyrUp函数用法示例/opencv_test_52")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/53_pyrDown函数用法示例/opencv_test_53" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/53_pyrDown函数用法示例/opencv_test_53")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/53_pyrDown函数用法示例/opencv_test_53"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/53_pyrDown函数用法示例/opencv_test_53")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/53_pyrDown函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_53")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/53_pyrDown函数用法示例/opencv_test_53" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/53_pyrDown函数用法示例/opencv_test_53")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/53_pyrDown函数用法示例/opencv_test_53"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/53_pyrDown函数用法示例/opencv_test_53")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/54_图像金字塔和resize综合示例/opencv_test_54" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/54_图像金字塔和resize综合示例/opencv_test_54")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/54_图像金字塔和resize综合示例/opencv_test_54"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/54_图像金字塔和resize综合示例/opencv_test_54")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/54_图像金字塔和resize综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_54")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/54_图像金字塔和resize综合示例/opencv_test_54" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/54_图像金字塔和resize综合示例/opencv_test_54")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/54_图像金字塔和resize综合示例/opencv_test_54"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/54_图像金字塔和resize综合示例/opencv_test_54")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/55_基本阈值操作/opencv_test_55" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/55_基本阈值操作/opencv_test_55")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/55_基本阈值操作/opencv_test_55"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/55_基本阈值操作/opencv_test_55")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/55_基本阈值操作" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_55")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/55_基本阈值操作/opencv_test_55" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/55_基本阈值操作/opencv_test_55")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/55_基本阈值操作/opencv_test_55"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/55_基本阈值操作/opencv_test_55")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/56_canny函数用法示例/opencv_test_56" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/56_canny函数用法示例/opencv_test_56")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/56_canny函数用法示例/opencv_test_56"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/56_canny函数用法示例/opencv_test_56")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/56_canny函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_56")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/56_canny函数用法示例/opencv_test_56" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/56_canny函数用法示例/opencv_test_56")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/56_canny函数用法示例/opencv_test_56"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/56_canny函数用法示例/opencv_test_56")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/57_sobel函数用法示例/opencv_test_57" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/57_sobel函数用法示例/opencv_test_57")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/57_sobel函数用法示例/opencv_test_57"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/57_sobel函数用法示例/opencv_test_57")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/57_sobel函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_57")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/57_sobel函数用法示例/opencv_test_57" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/57_sobel函数用法示例/opencv_test_57")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/57_sobel函数用法示例/opencv_test_57"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/57_sobel函数用法示例/opencv_test_57")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/58_Laplacian函数用法示例/opencv_test_58" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/58_Laplacian函数用法示例/opencv_test_58")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/58_Laplacian函数用法示例/opencv_test_58"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/58_Laplacian函数用法示例/opencv_test_58")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/58_Laplacian函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_58")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/58_Laplacian函数用法示例/opencv_test_58" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/58_Laplacian函数用法示例/opencv_test_58")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/58_Laplacian函数用法示例/opencv_test_58"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/58_Laplacian函数用法示例/opencv_test_58")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/59_Scharr函数用法示例/opencv_test_59" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/59_Scharr函数用法示例/opencv_test_59")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/59_Scharr函数用法示例/opencv_test_59"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/59_Scharr函数用法示例/opencv_test_59")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/59_Scharr函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_59")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/59_Scharr函数用法示例/opencv_test_59" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/59_Scharr函数用法示例/opencv_test_59")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/59_Scharr函数用法示例/opencv_test_59"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/59_Scharr函数用法示例/opencv_test_59")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/60_边缘检测综合示例/opencv_test_60" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/60_边缘检测综合示例/opencv_test_60")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/60_边缘检测综合示例/opencv_test_60"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/60_边缘检测综合示例/opencv_test_60")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/60_边缘检测综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_60")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/60_边缘检测综合示例/opencv_test_60" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/60_边缘检测综合示例/opencv_test_60")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/60_边缘检测综合示例/opencv_test_60"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/60_边缘检测综合示例/opencv_test_60")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/61_HoughLines函数用法示例/opencv_test_61" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/61_HoughLines函数用法示例/opencv_test_61")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/61_HoughLines函数用法示例/opencv_test_61"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/61_HoughLines函数用法示例/opencv_test_61")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/61_HoughLines函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_61")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/61_HoughLines函数用法示例/opencv_test_61" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/61_HoughLines函数用法示例/opencv_test_61")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/61_HoughLines函数用法示例/opencv_test_61"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/61_HoughLines函数用法示例/opencv_test_61")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/62_HoughLinesP函数用法示例/opencv_test_62" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/62_HoughLinesP函数用法示例/opencv_test_62")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/62_HoughLinesP函数用法示例/opencv_test_62"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/62_HoughLinesP函数用法示例/opencv_test_62")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/62_HoughLinesP函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_62")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/62_HoughLinesP函数用法示例/opencv_test_62" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/62_HoughLinesP函数用法示例/opencv_test_62")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/62_HoughLinesP函数用法示例/opencv_test_62"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/62_HoughLinesP函数用法示例/opencv_test_62")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/63_HoughCircles函数用法示例/opencv_test_63" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/63_HoughCircles函数用法示例/opencv_test_63")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/63_HoughCircles函数用法示例/opencv_test_63"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/63_HoughCircles函数用法示例/opencv_test_63")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/63_HoughCircles函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_63")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/63_HoughCircles函数用法示例/opencv_test_63" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/63_HoughCircles函数用法示例/opencv_test_63")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/63_HoughCircles函数用法示例/opencv_test_63"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/63_HoughCircles函数用法示例/opencv_test_63")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/64_霍夫线变换综合示例/opencv_test_64" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/64_霍夫线变换综合示例/opencv_test_64")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/64_霍夫线变换综合示例/opencv_test_64"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/64_霍夫线变换综合示例/opencv_test_64")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/64_霍夫线变换综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_64")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/64_霍夫线变换综合示例/opencv_test_64" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/64_霍夫线变换综合示例/opencv_test_64")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/64_霍夫线变换综合示例/opencv_test_64"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/64_霍夫线变换综合示例/opencv_test_64")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/65_remap函数用法示例/opencv_test_65" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/65_remap函数用法示例/opencv_test_65")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/65_remap函数用法示例/opencv_test_65"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/65_remap函数用法示例/opencv_test_65")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/65_remap函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_65")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/65_remap函数用法示例/opencv_test_65" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/65_remap函数用法示例/opencv_test_65")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/65_remap函数用法示例/opencv_test_65"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/65_remap函数用法示例/opencv_test_65")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/66_实现多种重映射综合示例/opencv_test_66" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/66_实现多种重映射综合示例/opencv_test_66")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/66_实现多种重映射综合示例/opencv_test_66"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/66_实现多种重映射综合示例/opencv_test_66")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/66_实现多种重映射综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_66")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/66_实现多种重映射综合示例/opencv_test_66" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/66_实现多种重映射综合示例/opencv_test_66")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/66_实现多种重映射综合示例/opencv_test_66"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/66_实现多种重映射综合示例/opencv_test_66")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/67_仿射变换综合示例/opencv_test_67" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/67_仿射变换综合示例/opencv_test_67")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/67_仿射变换综合示例/opencv_test_67"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/67_仿射变换综合示例/opencv_test_67")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/67_仿射变换综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_67")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/67_仿射变换综合示例/opencv_test_67" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/67_仿射变换综合示例/opencv_test_67")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/67_仿射变换综合示例/opencv_test_67"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/67_仿射变换综合示例/opencv_test_67")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/68_直方图均衡化/opencv_test_68" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/68_直方图均衡化/opencv_test_68")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/68_直方图均衡化/opencv_test_68"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/68_直方图均衡化/opencv_test_68")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/68_直方图均衡化" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_68")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/68_直方图均衡化/opencv_test_68" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/68_直方图均衡化/opencv_test_68")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/68_直方图均衡化/opencv_test_68"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/68_直方图均衡化/opencv_test_68")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/69_基础轮廓查找/opencv_test_69" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/69_基础轮廓查找/opencv_test_69")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/69_基础轮廓查找/opencv_test_69"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/69_基础轮廓查找/opencv_test_69")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/69_基础轮廓查找" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_69")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/69_基础轮廓查找/opencv_test_69" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/69_基础轮廓查找/opencv_test_69")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/69_基础轮廓查找/opencv_test_69"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/69_基础轮廓查找/opencv_test_69")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/70_查找并绘制轮廓综合示例/opencv_test_70" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/70_查找并绘制轮廓综合示例/opencv_test_70")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/70_查找并绘制轮廓综合示例/opencv_test_70"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/70_查找并绘制轮廓综合示例/opencv_test_70")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/70_查找并绘制轮廓综合示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_70")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/70_查找并绘制轮廓综合示例/opencv_test_70" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/70_查找并绘制轮廓综合示例/opencv_test_70")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/70_查找并绘制轮廓综合示例/opencv_test_70"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/70_查找并绘制轮廓综合示例/opencv_test_70")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/71_凸包检测基础/opencv_test_71" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/71_凸包检测基础/opencv_test_71")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/71_凸包检测基础/opencv_test_71"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/71_凸包检测基础/opencv_test_71")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/71_凸包检测基础" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_71")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/71_凸包检测基础/opencv_test_71" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/71_凸包检测基础/opencv_test_71")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/71_凸包检测基础/opencv_test_71"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/71_凸包检测基础/opencv_test_71")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/72_寻找和绘制物体的凸包/opencv_test_72" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/72_寻找和绘制物体的凸包/opencv_test_72")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/72_寻找和绘制物体的凸包/opencv_test_72"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/72_寻找和绘制物体的凸包/opencv_test_72")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/72_寻找和绘制物体的凸包" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_72")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/72_寻找和绘制物体的凸包/opencv_test_72" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/72_寻找和绘制物体的凸包/opencv_test_72")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/72_寻找和绘制物体的凸包/opencv_test_72"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/72_寻找和绘制物体的凸包/opencv_test_72")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/73_创建包围轮廓的矩形边界/opencv_test_73" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/73_创建包围轮廓的矩形边界/opencv_test_73")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/73_创建包围轮廓的矩形边界/opencv_test_73"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/73_创建包围轮廓的矩形边界/opencv_test_73")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/73_创建包围轮廓的矩形边界" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_73")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/73_创建包围轮廓的矩形边界/opencv_test_73" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/73_创建包围轮廓的矩形边界/opencv_test_73")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/73_创建包围轮廓的矩形边界/opencv_test_73"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/73_创建包围轮廓的矩形边界/opencv_test_73")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/74_创建包围轮廓的圆形边界/opencv_test_74" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/74_创建包围轮廓的圆形边界/opencv_test_74")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/74_创建包围轮廓的圆形边界/opencv_test_74"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/74_创建包围轮廓的圆形边界/opencv_test_74")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/74_创建包围轮廓的圆形边界" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_74")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/74_创建包围轮廓的圆形边界/opencv_test_74" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/74_创建包围轮廓的圆形边界/opencv_test_74")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/74_创建包围轮廓的圆形边界/opencv_test_74"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/74_创建包围轮廓的圆形边界/opencv_test_74")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/75_创建包围轮廓的矩形和圆形边界框/opencv_test_75" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/75_创建包围轮廓的矩形和圆形边界框/opencv_test_75")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/75_创建包围轮廓的矩形和圆形边界框/opencv_test_75"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/75_创建包围轮廓的矩形和圆形边界框/opencv_test_75")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/75_创建包围轮廓的矩形和圆形边界框" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_75")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/75_创建包围轮廓的矩形和圆形边界框/opencv_test_75" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/75_创建包围轮廓的矩形和圆形边界框/opencv_test_75")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/75_创建包围轮廓的矩形和圆形边界框/opencv_test_75"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/75_创建包围轮廓的矩形和圆形边界框/opencv_test_75")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/76_查找和绘制图片轮廓矩/opencv_test_76" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/76_查找和绘制图片轮廓矩/opencv_test_76")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/76_查找和绘制图片轮廓矩/opencv_test_76"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/76_查找和绘制图片轮廓矩/opencv_test_76")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/76_查找和绘制图片轮廓矩" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_76")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/76_查找和绘制图片轮廓矩/opencv_test_76" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/76_查找和绘制图片轮廓矩/opencv_test_76")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/76_查找和绘制图片轮廓矩/opencv_test_76"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/76_查找和绘制图片轮廓矩/opencv_test_76")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/77_分水岭算法/opencv_test_77" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/77_分水岭算法/opencv_test_77")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/77_分水岭算法/opencv_test_77"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/77_分水岭算法/opencv_test_77")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/77_分水岭算法" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_77")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/77_分水岭算法/opencv_test_77" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/77_分水岭算法/opencv_test_77")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/77_分水岭算法/opencv_test_77"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/77_分水岭算法/opencv_test_77")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/78_图像修补/opencv_test_78" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/78_图像修补/opencv_test_78")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/78_图像修补/opencv_test_78"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/78_图像修补/opencv_test_78")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/78_图像修补" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_78")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/78_图像修补/opencv_test_78" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/78_图像修补/opencv_test_78")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/78_图像修补/opencv_test_78"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/78_图像修补/opencv_test_78")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/79_H-S二维直方图的绘制/opencv_test_79" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/79_H-S二维直方图的绘制/opencv_test_79")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/79_H-S二维直方图的绘制/opencv_test_79"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/79_H-S二维直方图的绘制/opencv_test_79")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/79_H-S二维直方图的绘制" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_79")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/79_H-S二维直方图的绘制/opencv_test_79" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/79_H-S二维直方图的绘制/opencv_test_79")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/79_H-S二维直方图的绘制/opencv_test_79"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/79_H-S二维直方图的绘制/opencv_test_79")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/80_一维直方图的绘制/opencv_test_80" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/80_一维直方图的绘制/opencv_test_80")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/80_一维直方图的绘制/opencv_test_80"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/80_一维直方图的绘制/opencv_test_80")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/80_一维直方图的绘制" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_80")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/80_一维直方图的绘制/opencv_test_80" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/80_一维直方图的绘制/opencv_test_80")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/80_一维直方图的绘制/opencv_test_80"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/80_一维直方图的绘制/opencv_test_80")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/81_RGB三色直方图的绘制/opencv_test_81" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/81_RGB三色直方图的绘制/opencv_test_81")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/81_RGB三色直方图的绘制/opencv_test_81"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/81_RGB三色直方图的绘制/opencv_test_81")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/81_RGB三色直方图的绘制" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_81")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/81_RGB三色直方图的绘制/opencv_test_81" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/81_RGB三色直方图的绘制/opencv_test_81")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/81_RGB三色直方图的绘制/opencv_test_81"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/81_RGB三色直方图的绘制/opencv_test_81")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/82_直方图对比/opencv_test_82" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/82_直方图对比/opencv_test_82")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/82_直方图对比/opencv_test_82"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/82_直方图对比/opencv_test_82")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/82_直方图对比" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_82")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/82_直方图对比/opencv_test_82" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/82_直方图对比/opencv_test_82")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/82_直方图对比/opencv_test_82"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/82_直方图对比/opencv_test_82")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/83_反向投影/opencv_test_83" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/83_反向投影/opencv_test_83")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/83_反向投影/opencv_test_83"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/83_反向投影/opencv_test_83")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/83_反向投影" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_83")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/83_反向投影/opencv_test_83" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/83_反向投影/opencv_test_83")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/83_反向投影/opencv_test_83"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/83_反向投影/opencv_test_83")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/84_模板匹配/opencv_test_84" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/84_模板匹配/opencv_test_84")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/84_模板匹配/opencv_test_84"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/84_模板匹配/opencv_test_84")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/84_模板匹配" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_84")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/84_模板匹配/opencv_test_84" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/84_模板匹配/opencv_test_84")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/84_模板匹配/opencv_test_84"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/84_模板匹配/opencv_test_84")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/85_cornerHarris函数用法示例/opencv_test_85" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/85_cornerHarris函数用法示例/opencv_test_85")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/85_cornerHarris函数用法示例/opencv_test_85"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/85_cornerHarris函数用法示例/opencv_test_85")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/85_cornerHarris函数用法示例" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_85")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/85_cornerHarris函数用法示例/opencv_test_85" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/85_cornerHarris函数用法示例/opencv_test_85")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/85_cornerHarris函数用法示例/opencv_test_85"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/85_cornerHarris函数用法示例/opencv_test_85")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/86_Harris角点检测/opencv_test_86" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/86_Harris角点检测/opencv_test_86")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/86_Harris角点检测/opencv_test_86"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/86_Harris角点检测/opencv_test_86")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/86_Harris角点检测" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_86")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/86_Harris角点检测/opencv_test_86" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/86_Harris角点检测/opencv_test_86")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/86_Harris角点检测/opencv_test_86"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/86_Harris角点检测/opencv_test_86")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/87_Shi-Tomasi角点检测/opencv_test_87" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/87_Shi-Tomasi角点检测/opencv_test_87")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/87_Shi-Tomasi角点检测/opencv_test_87"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/87_Shi-Tomasi角点检测/opencv_test_87")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/87_Shi-Tomasi角点检测" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_87")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/87_Shi-Tomasi角点检测/opencv_test_87" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/87_Shi-Tomasi角点检测/opencv_test_87")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/87_Shi-Tomasi角点检测/opencv_test_87"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/87_Shi-Tomasi角点检测/opencv_test_87")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/88_亚像素级角点检测/opencv_test_88" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/88_亚像素级角点检测/opencv_test_88")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/88_亚像素级角点检测/opencv_test_88"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/workspace/OpenCV3-Code-Notes/88_亚像素级角点检测/opencv_test_88")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/workspace/OpenCV3-Code-Notes/88_亚像素级角点检测" TYPE EXECUTABLE FILES "/home/workspace/OpenCV3-Code-Notes/build/opencv_test_88")
  if(EXISTS "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/88_亚像素级角点检测/opencv_test_88" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/88_亚像素级角点检测/opencv_test_88")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/88_亚像素级角点检测/opencv_test_88"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/workspace/OpenCV3-Code-Notes/88_亚像素级角点检测/opencv_test_88")
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
file(WRITE "/home/workspace/OpenCV3-Code-Notes/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
