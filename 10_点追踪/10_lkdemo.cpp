
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV3���鱾����ʾ������10
//		��������������OpenCV��װĿ¼��Samples�ļ����еĹٷ�ʾ������-��׷�ټ�����ʾ
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	3.0 beta
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------

//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//-------------------------------------------------------------------------------------------------
#include "opencv2/video/tracking.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"

#include <iostream>
#include <ctype.h>

using namespace cv;
using namespace std;



//--------------------------------��help( )������----------------------------------------------
//		���������������Ϣ
//-------------------------------------------------------------------------------------------------
static void help()
{
	//�����ӭ��Ϣ��OpenCV�汾
	cout <<"\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n"
		<<"\n\n\t\t\t��Ϊ����OpenCV3��ĵ�10������ʾ������\n"
		<<	"\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" << CV_VERSION 
		<<"\n\n  ----------------------------------------------------------------------------" ;
	cout	<< "\n\n\t��Demo��ʾ�� Lukas-Kanade���ڹ�����lkdemo\n";
	cout << "\n\t����Ĭ�ϴ�����ͷ������Ƶ�����԰����Ϊ����Ƶ�ļ�����ͼ��\n";
	cout << "\n\t����˵��: \n"
		"\t\tͨ�������ͼ�������/ɾ��������\n" 
		"\t\tESC - �˳�����\n"
		"\t\tr -�Զ�����׷��\n"
		"\t\tc - ɾ�����е�\n"
		"\t\tn - ��/��-ҹ��ģʽ\n"<< endl;
}

Point2f point;
bool addRemovePt = false;

//--------------------------------��onMouse( )�ص�������------------------------------------
//		�������������ص�
//-------------------------------------------------------------------------------------------------
static void onMouse( int event, int x, int y, int /*flags*/, void* /*param*/ )
{
	//�˾�����OpenCV2��Ϊ��
	//if( event == CV_EVENT_LBUTTONDOWN )
	//�˾�����OpenCV3��Ϊ��
	if( event == EVENT_LBUTTONDOWN )
	{
		point = Point2f((float)x, (float)y);
		addRemovePt = true;
	}
}

//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main( int argc, char** argv )
{
	help();

	VideoCapture cap;

	//�˾�����OpenCV2��Ϊ��
	//TermCriteria termcrit(CV_TERMCRIT_ITER|CV_TERMCRIT_EPS, 20, 0.03);
	//�˾�����OpenCV3��Ϊ��
	TermCriteria termcrit(TermCriteria::MAX_ITER|TermCriteria::EPS, 20, 0.03);
	Size subPixWinSize(10,10), winSize(31,31);

	const int MAX_COUNT = 500;
	bool needToInit = false;
	bool nightMode = false;


	cap.open(0);

	if( !cap.isOpened() )
	{
		cout << "Could not initialize capturing...\n";
		return 0;
	}

	namedWindow( "LK Demo", 1 );
	setMouseCallback( "LK Demo", onMouse, 0 );

	Mat gray, prevGray, image;
	vector<Point2f> points[2];

	for(;;)
	{
		Mat frame;
		cap >> frame;
		if( frame.empty() )
			break;

		frame.copyTo(image);
		cvtColor(image, gray, COLOR_BGR2GRAY);

		if( nightMode )
			image = Scalar::all(0);

		if( needToInit )
		{
			// �Զ���ʼ��
			goodFeaturesToTrack(gray, points[1], MAX_COUNT, 0.01, 10, Mat(), 3, 0, 0.04);
			cornerSubPix(gray, points[1], subPixWinSize, Size(-1,-1), termcrit);
			addRemovePt = false;
		}
		else if( !points[0].empty() )
		{
			vector<uchar> status;
			vector<float> err;
			if(prevGray.empty())
				gray.copyTo(prevGray);
			calcOpticalFlowPyrLK(prevGray, gray, points[0], points[1], status, err, winSize,
				3, termcrit, 0, 0.001);
			size_t i, k;
			for( i = k = 0; i < points[1].size(); i++ )
			{
				if( addRemovePt )
				{
					if( norm(point - points[1][i]) <= 5 )
					{
						addRemovePt = false;
						continue;
					}
				}

				if( !status[i] )
					continue;

				points[1][k++] = points[1][i];
				circle( image, points[1][i], 3, Scalar(0,255,0), -1, 8);
			}
			points[1].resize(k);
		}

		if( addRemovePt && points[1].size() < (size_t)MAX_COUNT )
		{
			vector<Point2f> tmp;
			tmp.push_back(point);

			//�˾�����OpenCV2��Ϊ��
			//cornerSubPix( gray, tmp, winSize, cvSize(-1,-1), termcrit);
			//�˾�����OpenCV3��Ϊ��
			cornerSubPix( gray, tmp, winSize, Size(-1,-1), termcrit);
			points[1].push_back(tmp[0]);
			addRemovePt = false;
		}

		needToInit = false;
		imshow("LK Demo", image);

		char c = (char)waitKey(10);
		if( c == 27 )
			break;
		switch( c )
		{
		case 'r':
			needToInit = true;
			break;
		case 'c':
			points[0].clear();
			points[1].clear();
			break;
		case 'n':
			nightMode = !nightMode;
			break;
		}

		std::swap(points[1], points[0]);
		cv::swap(prevGray, gray);
	}

	return 0;
}
