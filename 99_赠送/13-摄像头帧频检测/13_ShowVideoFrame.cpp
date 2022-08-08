
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������13
//		��������������ͷ֡Ƶ���
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	2.4.9
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------
//Code to check the OpenCV installation on Raspberry Pi and mesaure frame rate
//Author: Samarth Manoj Brahmbhatt, University of Pennsyalvania


//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
using namespace std;
using namespace cv;


//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main()
{

	VideoCapture cap(0);
	cap.set(CV_CAP_PROP_FRAME_WIDTH, 800);
	cap.set(CV_CAP_PROP_FRAME_HEIGHT, 600);

	Mat im, im_g;
	double time = 0;
	unsigned int frames = 0;
	while(char(waitKey(1)) != 'q') {
		double t0 = getTickCount();
		cap >> im;
		cvtColor(im, im_g, CV_BGR2GRAY);
		frames++;
		imshow("cap1", im);
		imshow("cap2", im_g);
		time += (getTickCount() - t0) / getTickFrequency();
		cout << frames / time << " fps" << endl;
	}

	return 0;
}
