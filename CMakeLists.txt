cmake_minimum_required(VERSION 2.8)
project(Opencv-AstroWYH)
find_package(OpenCV 3 REQUIRED)

message(STATUS "OpenCV_DIR = ${OpenCV_DIR}")
message(STATUS "OpenCV_INCLUDE_DIRS = ${OpenCV_INCLUDE_DIRS}")
message(STATUS "OpenCV_LIBS = ${OpenCV_LIBS}")
include_directories(${OPENCV_INCLUDE_DIRS})

foreach(i RANGE 1 88 1)
    if(${i} LESS 10)
    set(num 0${i})
    else()
        set(num ${i})
    endif()

    if(${i} EQUAL 12)
    elseif(${i} EQUAL 13)
    else()
        file(GLOB src "${CMAKE_CURRENT_SOURCE_DIR}/${num}_*/*.cpp")
        file(GLOB install "${CMAKE_CURRENT_SOURCE_DIR}/${num}_*/")

        message("src ${num} : ${src}")
        message("install ${num} : ${install}")

        add_executable(opencv_test_${num} ${src})
        target_link_libraries(opencv_test_${num} ${OpenCV_LIBS})

        set(CMAKE_INSTALL_PREFIX ${install})
        install(TARGETS opencv_test_${num} DESTINATION ${install})
    endif()
endforeach(i)



