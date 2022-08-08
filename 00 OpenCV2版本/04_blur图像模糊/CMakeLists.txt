cmake_minimum_required (VERSION 2.8)
project (ShowImage)

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )

# add the executable
add_executable (4_BlurImage 4_BlurImage.cpp)
# target_link_libraries(4_BlurImage opencv_core opencv_highgui opencv_imgcodecs)
target_link_libraries(4_BlurImage ${OpenCV_LIBRARIES})
