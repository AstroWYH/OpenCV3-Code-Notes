#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
using namespace cv;
using namespace std;

//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-----------------------------------------------------------------------------------------------
int main( )
{
	//����ԭʼͼ   
	Mat srcImage = imread("1.jpg");  //����Ŀ¼��Ӧ����һ����Ϊ1.jpg���ز�ͼ
	Mat tmpImage,dstImage1,dstImage2;//��ʱ������Ŀ��ͼ�Ķ���
	tmpImage=srcImage;//��ԭʼͼ������ʱ����
	
	cout <<"tmpImage Size:" <<tmpImage.size<< endl;
	Mat dstImage3;
	//��ʾԭʼͼ  
	//imshow("��ԭʼͼ��", srcImage);  

	//���гߴ��������
	resize(tmpImage,dstImage1,Size( tmpImage.cols/2, tmpImage.rows/2 ),(0.0),(0.0),3);	
	//resize(tmpImage,dstImage2,Size( tmpImage.cols*2, tmpImage.rows*2 ),(0.0),(0.0),3);
	resize(tmpImage, dstImage3, Size(tmpImage.cols / 2, tmpImage.rows / 2),0,0,1);

	//��ʾЧ��ͼ  
	imshow("��Ч��ͼ��֮1", dstImage1);  
	//imshow("��Ч��ͼ��֮2", dstImage2);  
	imshow("��Ч��ͼ��֮3", dstImage3);

	waitKey(0);  
	return 0;  
}
