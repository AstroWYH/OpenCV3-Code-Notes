
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������21
//		������������˹������Ƶ�������˶���ǰ�������ָ�
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	2.4.9
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------


//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/video/background_segm.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <stdio.h>
using namespace std;
using namespace cv;


//--------------------------------------��help( )������--------------------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
static void help()
{
	printf("\n\n\n\t�˳���չʾ���ø�˹������ģ������Ƶ�ı������뷽��.\n\n\t��Ҫ����cvUpdateBGStatModel()����\n"
		"\n\t�������Ȼᡰѧϰ��������Ȼ����зָ\n"
		"\n\t�����ù���Space���ո���й����л���\n\n");
}


//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main(int argc, const char** argv)
{
	help();

	VideoCapture cap;
	bool update_bg_model = true;

	cap.open(0);
	if( !cap.isOpened() )
	{
		printf("can not open camera or video file\n");
		return -1;
	}

	namedWindow("image", WINDOW_AUTOSIZE);
	namedWindow("foreground mask", WINDOW_AUTOSIZE);
	namedWindow("foreground image", WINDOW_AUTOSIZE);
	namedWindow("mean background image", WINDOW_AUTOSIZE);

	BackgroundSubtractorMOG2 bg_model;//(100, 3, 0.3, 5);

	Mat img, fgmask, fgimg;

	for(;;)
	{
		cap >> img;

		if( img.empty() )
			break;

		//cvtColor(_img, img, COLOR_BGR2GRAY);

		if( fgimg.empty() )
			fgimg.create(img.size(), img.type());

		//����ģ��
		bg_model(img, fgmask, update_bg_model ? -1 : 0);

		fgimg = Scalar::all(0);
		img.copyTo(fgimg, fgmask);

		Mat bgimg;
		bg_model.getBackgroundImage(bgimg);

		imshow("image", img);
		imshow("foreground mask", fgmask);
		imshow("foreground image", fgimg);
		if(!bgimg.empty())
			imshow("mean background image", bgimg );

		char k = (char)waitKey(30);
		if( k == 27 ) break;
		if( k == ' ' )
		{
			update_bg_model = !update_bg_model;
			if(update_bg_model)
				printf("\t>��������(Background update)�Ѵ�\n");
			else
				printf("\t>��������(Background update)�ѹر�\n");
		}
	}

	return 0;
}
