//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV3���鱾����ʾ������85
//		����������cornerHarris�����÷�ʾ��
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
#include <opencv2/imgproc/imgproc.hpp>  
using namespace cv;  

int main()  
{  
	//�ԻҶ�ģʽ����ͼ����ʾ
	Mat srcImage = imread("1.jpg", 0);  
	imshow("ԭʼͼ", srcImage);  

	//����Harris�ǵ����ҳ��ǵ�
	Mat cornerStrength;  
	cornerHarris(srcImage, cornerStrength, 2, 3, 0.01);

	//�ԻҶ�ͼ������ֵ�������õ���ֵͼ����ʾ  
	Mat harrisCorner;  
	// ��������������ֵΪʲô��ôôС������
	threshold(cornerStrength, harrisCorner, 0.00001, 255, THRESH_BINARY); 
	imshow("�ǵ����Ķ�ֵЧ��ͼ", harrisCorner);  

	waitKey(0);  
	return 0;  
}  
