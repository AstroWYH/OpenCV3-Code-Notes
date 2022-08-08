

#include <opencv2/opencv.hpp> //头文件
using namespace cv; //包含cv命名空间

int main()
{
	// 【1】读入一张图片
	Mat img=imread("1.jpg");
	// 【2】在窗口中显示载入的图片
	imshow("【载入的图片】",img);
	// 【3】等待6000 ms后窗口自动关闭
	waitKey(6000);
}