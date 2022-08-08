#include "opencv2/core/core.hpp"
#include "opencv2/features2d/features2d.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/nonfree/nonfree.hpp"
#include <iostream>
using namespace cv;


//-----------------------------------��ȫ�ֺ����������֡�--------------------------------------
//          ������ȫ�ֺ���������
//-----------------------------------------------------------------------------------------------
static void ShowHelpText( );//�����������

//-----------------------------------��main( )������--------------------------------------------
//   ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main( int argc, char** argv )
{
	//��0���ı�console������ɫ    
	system("color 2F");    

	//��0����ʾ��������  
	ShowHelpText( );  

	//��1������ԴͼƬ����ʾ
	Mat srcImage1 = imread("1.jpg", 1 );
	Mat srcImage2 = imread("2.jpg", 1 );
	if( !srcImage1.data || !srcImage2.data )//����Ƿ��ȡ�ɹ�
	{ printf("��ȡͼƬ������ȷ��Ŀ¼���Ƿ���imread����ָ�����Ƶ�ͼƬ����~�� \n"); return false; } 
	imshow("ԭʼͼ1",srcImage1);
	imshow("ԭʼͼ2",srcImage2);

	//��2��������Ҫ�õ��ı�������
	int minHessian = 400;//����SURF�е�hessian��ֵ������������
	SurfFeatureDetector detector( minHessian );//����һ��SurfFeatureDetector��SURF�� ������������
	std::vector<KeyPoint> keypoints_1, keypoints_2;//vectorģ�������ܹ�����������͵Ķ�̬���飬�ܹ����Ӻ�ѹ������

	//��3������detect��������SURF�����ؼ��㣬������vector������
	detector.detect( srcImage1, keypoints_1 );
	detector.detect( srcImage2, keypoints_2 );

	//��4�����������ؼ���.
	Mat img_keypoints_1; Mat img_keypoints_2;
	drawKeypoints( srcImage1, keypoints_1, img_keypoints_1, Scalar::all(-1), 0 );
	drawKeypoints( srcImage2, keypoints_2, img_keypoints_2, Scalar::all(-1), 0 );

	//��5����ʾЧ��ͼ
	imshow("��������Ч��ͼ1", img_keypoints_1 );
	imshow("��������Ч��ͼ2", img_keypoints_2 );

	waitKey(0);
	return 0;
}


//-----------------------------------��ShowHelpText( )������----------------------------------
//          ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
void ShowHelpText()
{ 
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�89������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
	//���һЩ������Ϣ  
	printf("\n\n\t��ӭ������SURF�������⡿ʾ������\n\n");     
	printf( "\n\t��������˵��: \n\n"     
		"\t\t���̰��������- �˳�����\n\n"    );

}
