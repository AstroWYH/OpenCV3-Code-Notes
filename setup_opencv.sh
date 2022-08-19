#!/bin/bash
# Copyright 2022 AstroWYH
# =========================================================================
# To have a full installation:
# $ sh ./setup_opencv.sh

set -e

echo "Installing OpenCV from source"
if [[ -x "$(command -v apt)" ]]; then
    sudo apt update && sudo apt install build-essential git
    sudo apt install cmake ffmpeg libavformat-dev libdc1394-22-dev libgtk2.0-dev \
                    libjpeg-dev libpng-dev libswscale-dev libtbb2 libtbb-dev \
                    libtiff-dev
elif [[ -x "$(command -v dnf)" ]]; then
    sudo dnf update && sudo dnf install cmake gcc gcc-c git
    sudo dnf install ffmpeg-devel libdc1394-devel gtk2-devel \
                    libjpeg-turbo-devel libpng-devel tbb-devel \
                    libtiff-devel
fi
rm -rf /tmp/build_opencv
mkdir /tmp/build_opencv
cd /tmp/build_opencv
git clone https://github.com/opencv/opencv_contrib.git
git clone https://github.com/opencv/opencv.git
mkdir opencv/release
cd opencv_contrib
git checkout 4.x
cd ../opencv
git checkout 4.x
cd release
cmake .. -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/usr/local \
        -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DBUILD_opencv_ts=OFF \
        -DOPENCV_EXTRA_MODULES_PATH=/tmp/build_opencv/opencv_contrib/modules \
        -DBUILD_opencv_aruco=OFF -DBUILD_opencv_bgsegm=OFF -DBUILD_opencv_bioinspired=OFF \
        -DBUILD_opencv_ccalib=OFF -DBUILD_opencv_datasets=OFF -DBUILD_opencv_dnn=OFF \
        -DBUILD_opencv_dnn_objdetect=OFF -DBUILD_opencv_dpm=OFF -DBUILD_opencv_face=OFF \
        -DBUILD_opencv_fuzzy=OFF -DBUILD_opencv_hfs=OFF -DBUILD_opencv_img_hash=OFF \
        -DBUILD_opencv_js=OFF -DBUILD_opencv_line_descriptor=OFF -DBUILD_opencv_phase_unwrapping=OFF \
        -DBUILD_opencv_plot=OFF -DBUILD_opencv_quality=OFF -DBUILD_opencv_reg=OFF \
        -DBUILD_opencv_rgbd=OFF -DBUILD_opencv_saliency=OFF -DBUILD_opencv_shape=OFF \
        -DBUILD_opencv_structured_light=OFF -DBUILD_opencv_surface_matching=OFF \
        -DBUILD_opencv_world=OFF -DBUILD_opencv_xobjdetect=OFF -DBUILD_opencv_xphoto=OFF \
        -DCV_ENABLE_INTRINSICS=ON -DWITH_EIGEN=ON -DWITH_PTHREADS=ON -DWITH_PTHREADS_PF=ON \
        -DWITH_JPEG=ON -DWITH_PNG=ON -DWITH_TIFF=ON
make -j 16
sudo make install
rm -rf /tmp/build_opencv
echo "OpenCV has been built. You can find the header files and libraries in /usr/local/include/opencv2/ and /usr/local/lib"
