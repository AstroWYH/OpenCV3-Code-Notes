//-#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace cv;



//-----------------------------------��main( )������------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-----------------------------------------------------------------------------------------------
int main( )
{
	//����ԭʼͼ   
	Mat srcImage = imread("1.jpg");  //����Ŀ¼��Ӧ����һ����Ϊ1.jpg���ز�ͼ
	Mat tmpImage,dstImage;//��ʱ������Ŀ��ͼ�Ķ���
	tmpImage=srcImage;//��ԭʼͼ������ʱ����

	//��ʾԭʼͼ  
	imshow("��ԭʼͼ��", srcImage);  
	//��������ȡ������
	pyrUp( tmpImage, dstImage, Size( tmpImage.cols*2, tmpImage.rows*2 ) );
	//��ʾЧ��ͼ  
	imshow("��Ч��ͼ��", dstImage);  

	waitKey(0);  

	return 0;  
}
