#include <opencv2\opencv.hpp>  
using namespace cv;  


int main1( )  
{  
	//��1��������ͷ������Ƶ
	VideoCapture capture(0);

	//��2��ѭ����ʾÿһ֡
	while(1)  
	{  
		Mat frame;  //����һ��Mat���������ڴ洢ÿһ֡��ͼ��
		capture>>frame;  //��ȡ��ǰ֡
		Mat grayImage;
		cvtColor(frame, grayImage, CV_BGR2GRAY);
		imshow("��ȡ��Ƶ", grayImage);
		imshow("��ȡ��Ƶ",frame);  //��ʾ��ǰ֡
		

		waitKey(40);  //��ʱ30ms
	}  
	return 0;     
}  
