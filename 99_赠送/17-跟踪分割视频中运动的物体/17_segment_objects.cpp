
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������17
//		�������������ٷָ��˶��е�����
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	2.4.9
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------


//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/video/background_segm.hpp"
#include <stdio.h>
#include <string>
using namespace cv;


//--------------------------------------��help( )������--------------------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
static void help()
{
	printf("\n"
		"\n\n\t�˳�����ʾ��һ��Ѱ�������������������������ļ򵥷�����ʵ�ָ��ٷָ���Ƶ���˶�������\n"
		"\n\n\t�������п�ʼ�󣬱㿪ʼ��ѧϰ������.\n"
		"\n\n\t����ͨ����Space���ո�����л��Ƿ�򿪡�����ѧϰ��������\n");

}


//--------------------------------------��refineSegments( )������-------------------------
//		 ����������Ƭ�ε�����
//----------------------------------------------------------------------------------------------
static void refineSegments(const Mat& img, Mat& mask, Mat& dst)
{
	int niters = 3;

	vector<vector<Point> > contours;
	vector<Vec4i> hierarchy;

	Mat temp;

	dilate(mask, temp, Mat(), Point(-1,-1), niters);
	erode(temp, temp, Mat(), Point(-1,-1), niters*2);
	dilate(temp, temp, Mat(), Point(-1,-1), niters);

	findContours( temp, contours, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE );

	dst = Mat::zeros(img.size(), CV_8UC3);

	if( contours.size() == 0 )
		return;

	// iterate through all the top-level contours,
	// draw each connected component with its own random color
	int idx = 0, largestComp = 0;
	double maxArea = 0;

	for( ; idx >= 0; idx = hierarchy[idx][0] )
	{
		const vector<Point>& c = contours[idx];
		double area = fabs(contourArea(Mat(c)));
		if( area > maxArea )
		{
			maxArea = area;
			largestComp = idx;
		}
	}
	Scalar color( 123, 0, 255 );
	drawContours( dst, contours, largestComp, color, CV_FILLED, 8, hierarchy );
}



//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main(int argc, char** argv)
{
	VideoCapture cap;
	bool update_bg_model = true;

	help();

	cap.open("1.avi");

	if( !cap.isOpened() )
	{
		printf("\nCan not open camera or video file\n");
		return -1;
	}

	Mat tmp_frame, bgmask, out_frame;

	cap >> tmp_frame;
	if(!tmp_frame.data)
	{
		printf("can not read data from the video source\n");
		return -1;
	}

	namedWindow("video", 1);
	namedWindow("segmented", 1);

	BackgroundSubtractorMOG bgsubtractor;
	bgsubtractor.set("noiseSigma", 10);

	for(;;)
	{
		cap >> tmp_frame;
		if( !tmp_frame.data )
			break;
		bgsubtractor(tmp_frame, bgmask, update_bg_model ? -1 : 0);
		refineSegments(tmp_frame, bgmask, out_frame);
		imshow("video", tmp_frame);
		imshow("segmented", out_frame);
		int keycode = waitKey(1);
		if( keycode == 27 )
			break;
		if( keycode == ' ' )
		{
			update_bg_model = !update_bg_model;
			printf("\n\t>������ѧϰ��������״̬ = %d\n",update_bg_model);
		}
	}

	return 0;
}
