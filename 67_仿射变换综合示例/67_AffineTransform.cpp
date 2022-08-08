
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV3���鱾����ʾ������67
//		��������������任�ۺ�ʾ��
//		�����������ò���ϵͳ�� Windows 7 64bit
//		������������IDE�汾��Visual Studio 2010
//		������������OpenCV�汾��	3.0 beta
//		2014��11�� Created by @ǳī_ë����
//		2014��12�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------



//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
using namespace cv;
using namespace std;


//-----------------------------------���궨�岿�֡�-------------------------------------------- 
//		����������һЩ������ 
//------------------------------------------------------------------------------------------------ 
#define WINDOW_NAME1 "��ԭʼͼ���ڡ�"					//Ϊ���ڱ��ⶨ��ĺ� 
#define WINDOW_NAME2 "������Warp���ͼ��"        //Ϊ���ڱ��ⶨ��ĺ� 
#define WINDOW_NAME3 "������Warp��Rotate���ͼ��"        //Ϊ���ڱ��ⶨ��ĺ� 



//-----------------------------------��ȫ�ֺ����������֡�--------------------------------------
//		������ȫ�ֺ���������
//-----------------------------------------------------------------------------------------------
static void ShowHelpText( );


//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main(  )
{
	//��0���ı�console������ɫ
	system("color 1F"); 

	//��0����ʾ��ӭ�Ͱ�������
	ShowHelpText( );

	//��1������׼��
	//��������㣬��������������
	Point2f srcTriangle[3];
	Point2f dstTriangle[3];
	//����һЩMat����
	Mat rotMat( 2, 3, CV_32FC1 );
	Mat warpMat( 2, 3, CV_32FC1 );
	Mat srcImage, dstImage_warp, dstImage_warp_rotate;

	//��2������Դͼ����һЩ��ʼ��
	srcImage = imread( "1.jpg", 1 );
	if(!srcImage.data ) { printf("��ȡͼƬ������ȷ��Ŀ¼���Ƿ���imread����ָ����ͼƬ����~�� \n"); return false; } 
	// ����Ŀ��ͼ��Ĵ�С��������Դͼ��һ��
	dstImage_warp = Mat::zeros( srcImage.rows, srcImage.cols, srcImage.type() );

	//��3������Դͼ���Ŀ��ͼ���ϵ�������Լ������任
	srcTriangle[0] = Point2f( 0,0 );
	srcTriangle[1] = Point2f( static_cast<float>(srcImage.cols - 1), 0 );
	srcTriangle[2] = Point2f( 0, static_cast<float>(srcImage.rows - 1 ));

	dstTriangle[0] = Point2f( static_cast<float>(srcImage.cols*0.0), static_cast<float>(srcImage.rows*0.33));
	dstTriangle[1] = Point2f( static_cast<float>(srcImage.cols*0.65), static_cast<float>(srcImage.rows*0.35));
	dstTriangle[2] = Point2f( static_cast<float>(srcImage.cols*0.15), static_cast<float>(srcImage.rows*0.6));

	//��4����÷���任
	warpMat = getAffineTransform( srcTriangle, dstTriangle );

	//��5����Դͼ��Ӧ�øո���õķ���任
	warpAffine( srcImage, dstImage_warp, warpMat, dstImage_warp.size() );

	//��6����ͼ��������ź�����ת
	// ������ͼ���е�˳ʱ����ת50����������Ϊ0.6����ת����
	Point center = Point( dstImage_warp.cols/2, dstImage_warp.rows/2 );
	double angle = -50.0;
	double scale = 0.6;
	// ͨ���������תϸ����Ϣ�����ת����
	rotMat = getRotationMatrix2D( center, angle, scale );
	// ��ת�����ź��ͼ��
	warpAffine( dstImage_warp, dstImage_warp_rotate, rotMat, dstImage_warp.size() );


	//��7����ʾ���
	imshow( WINDOW_NAME1, srcImage );
	imshow( WINDOW_NAME2, dstImage_warp );
	imshow( WINDOW_NAME3, dstImage_warp_rotate );

	// �ȴ��û������ⰴ���˳�����
	waitKey(0);

	return 0;
}


//-----------------------------------��ShowHelpText( )������----------------------------------  
//      ���������һЩ������Ϣ  
//----------------------------------------------------------------------------------------------  
static void ShowHelpText()  
{  

	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV3��ĵ�67������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");

	//���һЩ������Ϣ  
	printf(   "\n\n\t\t��ӭ��������任�ۺ�ʾ������\n\n");  
	printf(  "\t\t���̰�����ESC��- �˳�����\n"  );  
}  

