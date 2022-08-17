cmake_minimum_required(VERSION 2.8)
project(Opencv-AstroWYH)
find_package(OpenCV 3 REQUIRED)

message(STATUS "OpenCV_DIR = ${OpenCV_DIR}")
message(STATUS "OpenCV_INCLUDE_DIRS = ${OpenCV_INCLUDE_DIRS}")
message(STATUS "OpenCV_LIBS = ${OpenCV_LIBS}")
include_directories(${OPENCV_INCLUDE_DIRS})

foreach(i RANGE 1 3 1)
    file(GLOB src "${CMAKE_CURRENT_SOURCE_DIR}/${i}_*/*.cpp")
    file(GLOB install "${CMAKE_CURRENT_SOURCE_DIR}/${i}_*/")

    message("src ${i} : ${src}")
    message("install ${i} : ${install}")

    add_executable(opencv_test_${i} ${src})
    target_link_libraries(opencv_test_${i} ${OpenCV_LIBS})

    set(CMAKE_INSTALL_PREFIX ${install})
    install(TARGETS opencv_test_${i} DESTINATION ${install})
endforeach(i)



