#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
using namespace cv;


//--------------------------------------��main( )������-----------------------------------------
//          ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main( )
{
	// ��1������Դͼ��
	Mat srcImage, dstImage;
	srcImage = imread( "1.jpg", 1 );
	if(!srcImage.data ) { printf("��ȡͼƬ������ȷ��Ŀ¼���Ƿ���imread����ָ��ͼƬ����~�� \n"); return false; } 

	// ��2��תΪ�Ҷ�ͼ����ʾ����
	cvtColor( srcImage, srcImage, CV_BGR2GRAY );
	imshow( "ԭʼͼ", srcImage );

	// ��3������ֱ��ͼ���⻯
	equalizeHist( srcImage, dstImage );

	// ��4����ʾ���
	imshow( "����ֱ��ͼ���⻯���ͼ", dstImage );

	// �ȴ��û������˳�����
	waitKey(0);
	return 0;

}