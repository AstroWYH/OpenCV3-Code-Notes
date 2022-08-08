#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>

//-----------------------------------�������ռ��������֡�---------------------------------------
//	����������������ʹ�õ������ռ�
//-----------------------------------------------------------------------------------------------  
using namespace std;
using namespace cv;

//-----------------------------------��main( )������--------------------------------------------
//	����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-----------------------------------------------------------------------------------------------
int main(   )
{

	//����ԭͼ  
	Mat image = imread("1.jpg");

	//��������  
	namedWindow("��ԭͼ�����Ͳ���");
	namedWindow("��Ч��ͼ�����Ͳ���");

	//��ʾԭͼ
	imshow("��ԭͼ�����Ͳ���", image);

	//�������Ͳ��� 
	Mat element = getStructuringElement(MORPH_RECT, Size(3, 3));
	Mat out;
	dilate(image, out, element);

	//��ʾЧ��ͼ 
	imshow("��Ч��ͼ�����Ͳ���", out);

	waitKey(0); 

	return 0;
}