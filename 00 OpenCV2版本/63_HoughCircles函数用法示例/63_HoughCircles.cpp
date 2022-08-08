#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace cv;
using namespace std;


int main( )
{
	//【1】载入原始图、Mat变量定义   
	Mat srcImage = imread("data/4.jpg");  
	Mat midImage,dstImage;//临时变量和目标图的定义

	//【2】显示原始图
	//imshow("srcImage", srcImage);  

	//【3】转为灰度图并进行图像平滑
	cvtColor(srcImage,midImage, CV_BGR2GRAY);//转化边缘检测后的图为灰度图
	GaussianBlur( midImage, midImage, Size(3, 3), 2, 2 );

	//【4】进行霍夫圆变换
	vector<Vec3f> circles;
	HoughCircles( midImage, circles, CV_HOUGH_GRADIENT,1, 10, 100, 25, 0, 50 );
	//HoughCircles(midImage, circles, HOUGH_GRADIENT, 1, 5, 100, 25, 0, 50);

	//【5】依次在图中绘制出圆
	for( size_t i = 0; i < circles.size(); i++ )
	{
		//参数定义
		Point center(cvRound(circles[i][0]), cvRound(circles[i][1]));
		int radius = cvRound(circles[i][2]);
		//绘制圆心
		circle( srcImage, center, 3, Scalar(0,255,0), -1, 8, 0 );
		//绘制圆轮廓
		circle( srcImage, center, radius, Scalar(155,50,255), 3, 8, 0 );
	}

	//【6】显示效果图  
	//imshow("midImage", midImage);
	imshow("circles", srcImage);  

	waitKey(0);  

	return 0;  
}


