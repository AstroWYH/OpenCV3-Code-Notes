
//--------------------------------------【程序说明】-------------------------------------------
//		程序说明：《OpenCV3编程入门》OpenCV3版书本配套示例程序01
//		程序描述：OpenCV开发环境的配置，载入一张图片并显示
//		开发测试所用操作系统： Windows 7 64bit
//		开发测试所用IDE版本：Visual Studio 2010
//		开发测试所用OpenCV版本：	3.0 beta
//		2014年11月 Created by @浅墨_毛星云
//		2014年11月 Revised by @浅墨_毛星云
//------------------------------------------------------------------------------------------------
#if 1
#include <opencv2/opencv.hpp> //头文件
#include <iostream>
using namespace cv; //包含cv命名空间
using namespace std;

int main()
{
    // 【1】读入一张图片
    Mat img=imread("1.jpg");
    // 【2】在窗口中显示载入的图片
    imshow("【载入的图片】",img);
    // 【3】等待6000 ms后窗口自动关闭
    waitKey(6000);
    cout << "hello world" << endl;
}

#else

#include <cstdio>
#include <iostream>
#include <opencv2/opencv.hpp>
using namespace cv;
using namespace std;

int main() {
    cout << "hi you" << endl;
    Mat image;
    image = imread("1.jpg");

    if (!image.data) {
    printf("No image data\n");
    return -1;
    }

    namedWindow("Display Image", CV_WINDOW_AUTOSIZE);
    imshow("Display Image", image);
    waitKey(0);
    return 0;
}
#endif