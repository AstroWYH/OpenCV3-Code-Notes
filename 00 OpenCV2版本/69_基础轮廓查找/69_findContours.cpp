#include <opencv2/opencv.hpp>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
using namespace cv;


//-----------------------------------��main( )������--------------------------------------------

//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main( int argc, char** argv )
{
	// ��1������ԭʼͼ���ұ����Զ�ֵͼģʽ����
	Mat srcImage=imread("1.jpg", 0);
	imshow("ԭʼͼ",srcImage);

	//��2����ʼ�����ͼ
	Mat dstImage = Mat::zeros(srcImage.rows, srcImage.cols, CV_8UC3);

	//��3��srcImageȡ������ֵ119���ǲ���
	srcImage = srcImage > 119;
	imshow( "ȡ��ֵ���ԭʼͼ", srcImage );

	//��4�����������Ͳ�νṹ
	vector<vector<Point> > contours;
	vector<Vec4i> hierarchy;

	//��5����������
	findContours( srcImage, contours, hierarchy,
		CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE );

	// ��6���������ж���������� �������ɫ���Ƴ�ÿ�����������ɫ
	int index = 0;
	for( ; index >= 0; index = hierarchy[index][0] )
	{
		Scalar color( rand()&255, rand()&255, rand()&255 );
		drawContours( dstImage, contours, index, color, CV_FILLED, 8, hierarchy );
	}

	//��7����ʾ��������ͼ
	imshow( "����ͼ", dstImage );

	waitKey(0);

}