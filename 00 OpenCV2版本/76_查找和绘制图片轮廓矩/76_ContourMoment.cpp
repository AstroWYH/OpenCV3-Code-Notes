#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
using namespace cv;
using namespace std;


//-----------------------------------���궨�岿�֡�-------------------------------------------- 
//		����������һЩ������ 
//------------------------------------------------------------------------------------------------ 
#define WINDOW_NAME1 "��ԭʼͼ��"					//Ϊ���ڱ��ⶨ��ĺ� 
#define WINDOW_NAME2 "��ͼ��������"        //Ϊ���ڱ��ⶨ��ĺ� 


//-----------------------------------��ȫ�ֱ����������֡�--------------------------------------
//		������ȫ�ֱ���������
//-----------------------------------------------------------------------------------------------
Mat g_srcImage; Mat g_grayImage;
int g_nThresh = 100;
int g_nMaxThresh = 255;
RNG g_rng(12345);
Mat g_cannyMat_output;
vector<vector<Point> > g_vContours;
vector<Vec4i> g_vHierarchy;

//-----------------------------------��ȫ�ֱ����������֡�--------------------------------------
//		������ȫ�ֱ���������
//-----------------------------------------------------------------------------------------------
void on_ThreshChange(int, void* );
static void ShowHelpText( );

//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main( int argc, char** argv )
{
	//��0���ı�console������ɫ
	system("color 71"); 

	ShowHelpText();
	// ����ԭͼ��, ����3ͨ��ͼ������
	g_srcImage = imread( "1.jpg", 1 );

	// ��ԭͼ��ת���ɻҶ�ͼ�񲢽���ƽ��
	cvtColor( g_srcImage, g_grayImage, CV_BGR2GRAY );
	blur( g_grayImage, g_grayImage, Size(3,3) );

	// �����´���
	namedWindow( WINDOW_NAME1, CV_WINDOW_AUTOSIZE );
	imshow( WINDOW_NAME1, g_srcImage );

	//���������������г�ʼ��
	createTrackbar( " ��ֵ", WINDOW_NAME1, &g_nThresh, g_nMaxThresh, on_ThreshChange );
	on_ThreshChange( 0, 0 );

	waitKey(0);
	return(0);
}

//-----------------------------------��on_ThreshChange( )������-------------------------------
//		�������ص�����
//-----------------------------------------------------------------------------------------------
void on_ThreshChange(int, void* )
{
	// ʹ��Canndy����Ե
	Canny( g_grayImage, g_cannyMat_output, g_nThresh, g_nThresh*2, 3 );

	// �ҵ�����
	findContours( g_cannyMat_output, g_vContours, g_vHierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

	// �����
	vector<Moments> mu(g_vContours.size() );
	for(unsigned int i = 0; i < g_vContours.size(); i++ )
	{ mu[i] = moments( g_vContours[i], false ); }

	//  �������ľ�
	vector<Point2f> mc( g_vContours.size() );
	for( unsigned int i = 0; i < g_vContours.size(); i++ )
	{ mc[i] = Point2f( static_cast<float>(mu[i].m10/mu[i].m00), static_cast<float>(mu[i].m01/mu[i].m00 )); }

	// ��������
	Mat drawing = Mat::zeros( g_cannyMat_output.size(), CV_8UC3 );
	for( unsigned int i = 0; i< g_vContours.size(); i++ )
	{
		Scalar color = Scalar( g_rng.uniform(0, 255), g_rng.uniform(0,255), g_rng.uniform(0,255) );//���������ɫֵ
		drawContours( drawing, g_vContours, i, color, 2, 8, g_vHierarchy, 0, Point() );//���������ڲ�����
		circle( drawing, mc[i], 4, color, -1, 8, 0 );;//����Բ
	}

	// ��ʾ��������
	namedWindow( WINDOW_NAME2, CV_WINDOW_AUTOSIZE );
	imshow( WINDOW_NAME2, drawing );

	// ͨ��m00��������������Һ�OpenCV�����Ƚ�
	printf("\t �������: �������������\n");
	for(unsigned  int i = 0; i< g_vContours.size(); i++ )
	{
		printf(" >ͨ��m00���������[%d]�����: (M_00) = %.2f \n OpenCV��������������=%.2f , ����: %.2f \n\n", i, mu[i].m00, contourArea(g_vContours[i]), arcLength( g_vContours[i], true ) );
		Scalar color = Scalar( g_rng.uniform(0, 255), g_rng.uniform(0,255), g_rng.uniform(0,255) );
		drawContours( drawing, g_vContours, i, color, 2, 8, g_vHierarchy, 0, Point() );
		circle( drawing, mc[i], 4, color, -1, 8, 0 );
	}
}


//-----------------------------------��ShowHelpText( )������-----------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�76������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
}