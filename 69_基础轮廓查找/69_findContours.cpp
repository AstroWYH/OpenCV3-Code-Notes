
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV3���鱾����ʾ������69
//		���������������������ҡ���findContours+drawContours
//		�����������ò���ϵͳ�� Windows 7 64bit
//		������������IDE�汾��Visual Studio 2010
//		������������OpenCV�汾��	3.0 beta
//		2014��11�� Created by @ǳī_ë����
//		2014��12�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------



//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include <opencv2/opencv.hpp>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
using namespace cv;
using namespace std;

//-----------------------------------��main( )������--------------------------------------------

//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main( int argc, char** argv )
{
	// ��1������ԭʼͼ���ұ����Զ�ֵͼģʽ����
	Mat srcImage=imread("data/69.jpg", 0);
	imshow("ԭʼͼ",srcImage);

	//��2����ʼ�����ͼ
	Mat dstImage = Mat::zeros(srcImage.rows, srcImage.cols, CV_8UC3);

	//��3��srcImageȡ������ֵ119���ǲ���
	srcImage = srcImage > 128;
	imshow( "ȡ��ֵ���ԭʼͼ", srcImage );

	//��4�����������Ͳ�νṹ
	vector<vector<Point> > contours;
	vector<Vec4i> hierarchy;

	//��5����������
	//�˾�����OpenCV2��Ϊ��
	//findContours( srcImage, contours, hierarchy,CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE );
	//�˾�����OpenCV3��Ϊ��
	findContours( srcImage, contours, hierarchy,RETR_CCOMP, CHAIN_APPROX_SIMPLE );

	// ��6���������ж���������� �������ɫ���Ƴ�ÿ�����������ɫ
	int index = 0;
	for( ; index >= 0; index = hierarchy[index][0] )
	{
		Scalar color( rand()&255, rand()&255, rand()&255 );
		//�˾�����OpenCV2��Ϊ��
		//drawContours( dstImage, contours, index, color, CV_FILLED, 8, hierarchy );
		//�˾�����OpenCV3��Ϊ��
		drawContours( dstImage, contours, index, color, FILLED, 8, hierarchy );
	}

	//��7����ʾ��������ͼ
	imshow( "����ͼ", dstImage );

	waitKey(0);

}