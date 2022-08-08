#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

//-----------------------------------�������ռ��������֡�--------------------------------------
//          ����������������ʹ�õ������ռ�
//-----------------------------------------------------------------------------------------------
using namespace cv;

//-----------------------------------���궨�岿�֡�-------------------------------------------- 
//  ����������һЩ������ 
//------------------------------------------------------------------------------------------------ 
#define WINDOW_NAME1 "��ԭʼͼ���ڡ�"        //Ϊ���ڱ��ⶨ��ĺ� 
#define WINDOW_NAME2 "��Ч��ͼ���ڡ�"        //Ϊ���ڱ��ⶨ��ĺ� 

//-----------------------------------��ȫ�ֱ����������֡�--------------------------------------
//  ������ȫ�ֱ���������
//-----------------------------------------------------------------------------------------------
Mat g_srcImage;
Mat g_grayImage;
int g_nThresh = 50;//��ֵ
int g_nMaxThresh = 255;//��ֵ���ֵ
RNG g_rng(12345);//�����������

//-----------------------------------��ȫ�ֺ����������֡�--------------------------------------
//   ������ȫ�ֺ���������
//-----------------------------------------------------------------------------------------------
void on_ContoursChange(int, void* );
static void ShowHelpText( );

//-----------------------------------��main( )������--------------------------------------------
//   ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main( )
{
	//��0���ı�console������ɫ
	system("color 1F"); 

	//��0����ʾ��ӭ�Ͱ�������
	ShowHelpText( );

	//��1������3ͨ����ԭͼ��
	g_srcImage = imread( "1.jpg", 1 );
	if(!g_srcImage.data ) { printf("��ȡͼƬ������ȷ��Ŀ¼���Ƿ���imread����ָ����ͼƬ����~�� \n"); return false; }  

	//��2���õ�ԭͼ�ĻҶ�ͼ�񲢽���ƽ��
	cvtColor( g_srcImage, g_grayImage, CV_BGR2GRAY );
	blur( g_grayImage, g_grayImage, Size(3,3) );

	//��3������ԭʼͼ���ڲ���ʾ
	namedWindow( WINDOW_NAME1, CV_WINDOW_AUTOSIZE );
	imshow( WINDOW_NAME1, g_srcImage );

	//��4�����ù�����������һ�λص�����
	createTrackbar( " ��ֵ:", WINDOW_NAME1, &g_nThresh, g_nMaxThresh, on_ContoursChange );
	on_ContoursChange( 0, 0 );

	waitKey(0);

	return(0);
}

//----------------------------��on_ContoursChange( )������---------------------------------
//      �������ص�����
//-------------------------------------------------------------------------------------------------  
void on_ContoursChange(int, void* )
{
	//����һЩ����
	Mat threshold_output;
	vector<vector<Point>> contours;
	vector<Vec4i> hierarchy;

	// ʹ��Threshold����Ե
	threshold( g_grayImage, threshold_output, g_nThresh, 255, THRESH_BINARY );

	// �ҳ�����
	findContours( threshold_output, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

	// ����αƽ����� + ��ȡ���κ�Բ�α߽��
	vector<vector<Point> > contours_poly( contours.size() );
	vector<Rect> boundRect( contours.size() );
	vector<Point2f>center( contours.size() );
	vector<float>radius( contours.size() );

	//һ��ѭ�����������в��֣����б���������ĵĲ���
	for( unsigned int i = 0; i < contours.size(); i++ )
	{ 
		approxPolyDP( Mat(contours[i]), contours_poly[i], 3, true );//��ָ�����ȱƽ���������� 
		boundRect[i] = boundingRect( Mat(contours_poly[i]) );//����㼯�������棨up-right�����α߽�
		minEnclosingCircle( contours_poly[i], center[i], radius[i] );//�Ը����� 2D�㼯��Ѱ����С����İ�ΧԲ�� 
	}

	// ���ƶ�������� + ��Χ�ľ��ο� + Բ�ο�
	Mat drawing = Mat::zeros( threshold_output.size(), CV_8UC3 );
	for( int unsigned i = 0; i<contours.size( ); i++ )
	{
		Scalar color = Scalar( g_rng.uniform(0, 255), g_rng.uniform(0,255), g_rng.uniform(0,255) );//���������ɫ
		drawContours( drawing, contours_poly, i, color, 1, 8, vector<Vec4i>(), 0, Point() );//��������
		rectangle( drawing, boundRect[i].tl(), boundRect[i].br(), color, 2, 8, 0 );//���ƾ���
		circle( drawing, center[i], (int)radius[i], color, 2, 8, 0 );//����Բ
	}

	// ��ʾЧ��ͼ����
	namedWindow( WINDOW_NAME2, CV_WINDOW_AUTOSIZE );
	imshow( WINDOW_NAME2, drawing );
}

//-----------------------------------��ShowHelpText( )������----------------------------------  
//      ���������һЩ������Ϣ  
//----------------------------------------------------------------------------------------------  
static void ShowHelpText()  
{  
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�75������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");

	//���һЩ������Ϣ  
	printf("\n\n\n\t��ӭ������������Χ�����ľ��κ�Բ�α߽��ʾ������~\n\n");  
	printf( "\n\n\t��������˵��: \n\n"  
		"\t\t���̰�����ESC��- �˳�����\n\n"  
		"\t\t���������� - �ı���ֵ\n\n");  
}  

