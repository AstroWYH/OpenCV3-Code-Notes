#include "opencv2/core/core.hpp"
#include "opencv2/features2d/features2d.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <opencv2/nonfree/nonfree.hpp>
#include<opencv2/legacy/legacy.hpp>
#include <iostream>
using namespace cv;
using namespace std;


//-----------------------------------��ȫ�ֺ����������֡�--------------------------------------    
//      ������ȫ�ֺ�������    
//----------------------------------------------------------------------------------------------- 
static void ShowHelpText( );


//-----------------------------------��main( )������--------------------------------------------
//   ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main( int argc, char** argv )
{
	//��0���ı�console������ɫ    
	system("color 4F");    

	//��0����ʾ��������  
	ShowHelpText();  

	//��1������ԴͼƬ
	Mat img_1 = imread("1.jpg", 1 );
	Mat img_2 = imread( "2.jpg", 1 );
	if( !img_1.data || !img_2.data ) { printf("��ȡͼƬimage0����~�� \n"); return false; }  

	//��2������SURF��������Ĺؼ���
	int minHessian = 300;
	SURF detector( minHessian );
	std::vector<KeyPoint> keypoints_1, keypoints_2;
	detector.detect( img_1, keypoints_1 );
	detector.detect( img_2, keypoints_2 );

	//��3������������������������
	SURF extractor;
	Mat descriptors_1, descriptors_2;
	extractor.compute( img_1, keypoints_1, descriptors_1 );
	extractor.compute( img_2, keypoints_2, descriptors_2 );

	//��4������FLANN�㷨ƥ������������
	FlannBasedMatcher matcher;
	std::vector< DMatch > matches;
	matcher.match( descriptors_1, descriptors_2, matches );
	double max_dist = 0; double min_dist = 100;

	//��5�����ټ���ؼ���֮���������С����
	for( int i = 0; i < descriptors_1.rows; i++ )
	{
		double dist = matches[i].distance;
		if( dist < min_dist ) min_dist = dist;
		if( dist > max_dist ) max_dist = dist;
	}
	//���������Ϣ
	printf("> �����루Max dist�� : %f \n", max_dist );
	printf("> ��С���루Min dist�� : %f \n", min_dist );

	//��6�����·���������ƥ�������������С��2* min_dist�ģ���ʹ��radiusMatchͬ������
	std::vector< DMatch > good_matches;
	for( int i = 0; i < descriptors_1.rows; i++ )
	{ 
		if( matches[i].distance < 2*min_dist )
		{ good_matches.push_back( matches[i]); }
	}

	//��7�����Ƴ�����������ƥ���
	Mat img_matches;
	drawMatches( img_1, keypoints_1, img_2, keypoints_2,
		good_matches, img_matches, Scalar::all(-1), Scalar::all(-1),
		vector<char>(), DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );

	//��8��������ƥ�����Ϣ
	for( int i = 0; i < good_matches.size(); i++ )
	{ printf( ">����������ƥ��� [%d] ������1: %d  -- ������2: %d  \n", i, good_matches[i].queryIdx, good_matches[i].trainIdx ); }

	//��9����ʾЧ��ͼ
	imshow( "ƥ��Ч��ͼ", img_matches );

	//��������˳�����
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
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�91������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
	//���һЩ������Ϣ  
	printf("\n\t��ӭ������FLNN����ƥ�䡿ʾ������\n\n");    
	printf( "\n\n\t��������˵��: \n\n"     
		"\t\t���̰��������- �˳�����\n\n" );

}
