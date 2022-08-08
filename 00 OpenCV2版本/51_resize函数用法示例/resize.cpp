#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
using namespace cv;
using namespace std;

//-----------------------------------【main( )函数】--------------------------------------------
//		描述：控制台应用程序的入口函数，我们的程序从这里开始
//-----------------------------------------------------------------------------------------------
int main( )
{
	//载入原始图   
	Mat srcImage = imread("1.jpg");  //工程目录下应该有一张名为1.jpg的素材图
	Mat tmpImage,dstImage1,dstImage2;//临时变量和目标图的定义
	tmpImage=srcImage;//将原始图赋给临时变量
	
	cout <<"tmpImage Size:" <<tmpImage.size<< endl;
	Mat dstImage3;
	//显示原始图  
	//imshow("【原始图】", srcImage);  

	//进行尺寸调整操作
	resize(tmpImage,dstImage1,Size( tmpImage.cols/2, tmpImage.rows/2 ),(0.0),(0.0),3);	
	//resize(tmpImage,dstImage2,Size( tmpImage.cols*2, tmpImage.rows*2 ),(0.0),(0.0),3);
	resize(tmpImage, dstImage3, Size(tmpImage.cols / 2, tmpImage.rows / 2),0,0,1);

	//显示效果图  
	imshow("【效果图】之1", dstImage1);  
	//imshow("【效果图】之2", dstImage2);  
	imshow("【效果图】之3", dstImage3);

	waitKey(0);  
	return 0;  
}
