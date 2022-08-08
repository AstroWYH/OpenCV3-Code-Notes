
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������09
//		����������MeanShiftͼ��ָ�
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	2.4.9
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------



//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
using namespace cv;
using namespace std;


//--------------------------------------��help( )������--------------------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
static void help()
{
	cout << "\n\t�˳�����ʾ��OpenCV��MeanShiftͼ��ָ��ʹ�á�\n"
		<< "\n\t�������к����ǿ���ͨ��3�����������ڷָ�Ч�������ڻ���������ܻ���Щ���٣������ĵȴ�\n"
		<< "\n\t3������������Ĳ����ֱ�Ϊ�ռ䴰�İ뾶 ��spatialRad����ɫ�ʴ��İ뾶��colorRad�������ͼ�����������maxPyrLevel��\n"
		<< endl;
}


//This colors the segmentations
static void floodFillPostprocess( Mat& img, const Scalar& colorDiff=Scalar::all(1) )
{
	CV_Assert( !img.empty() );
	RNG rng = theRNG();
	Mat mask( img.rows+2, img.cols+2, CV_8UC1, Scalar::all(0) );
	for( int y = 0; y < img.rows; y++ )
	{
		for( int x = 0; x < img.cols; x++ )
		{
			if( mask.at<uchar>(y+1, x+1) == 0 )
			{
				Scalar newVal( rng(256), rng(256), rng(256) );
				floodFill( img, mask, Point(x,y), newVal, 0, colorDiff, colorDiff );
			}
		}
	}
}

string winName = "meanshift";
int spatialRad, colorRad, maxPyrLevel;
Mat img, res;



static void meanShiftSegmentation( int, void* )
{
	cout << "spatialRad=" << spatialRad << "; "
		<< "colorRad=" << colorRad << "; "
		<< "maxPyrLevel=" << maxPyrLevel << endl;
	pyrMeanShiftFiltering( img, res, spatialRad, colorRad, maxPyrLevel );
	floodFillPostprocess( res, Scalar::all(2) );
	imshow( winName, res );
}



//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main(int argc, char** argv)
{

	help();

	img = imread( "1.jpg" );
	if( img.empty() )
		return -1;
	imshow("ԭʼͼ",img);
	spatialRad = 10;
	colorRad = 10;
	maxPyrLevel = 1;

	namedWindow( winName, WINDOW_AUTOSIZE );

	createTrackbar( "spatialRad", winName, &spatialRad, 80, meanShiftSegmentation );
	createTrackbar( "colorRad", winName, &colorRad, 60, meanShiftSegmentation );
	createTrackbar( "maxPyrLevel", winName, &maxPyrLevel, 5, meanShiftSegmentation );

	meanShiftSegmentation(0, 0);
	waitKey();
	return 0;
}
