
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV3���鱾����ʾ������37
//		��������������ͼ���˲��ۺ�ʾ��
//		�����������ò���ϵͳ�� Windows 7 64bit
//		������������IDE�汾��Visual Studio 2010
//		������������OpenCV�汾��	3.0 beta
//		2014��11�� Created by @ǳī_ë����
//		2014��12�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------

//-----------------------------------��ͷ�ļ��������֡�---------------------------------------
//		����������������������ͷ�ļ�
//---------------------------------------------------------------------------------------------- 
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>

//-----------------------------------�������ռ��������֡�---------------------------------------
//		����������������ʹ�õ������ռ�
//-----------------------------------------------------------------------------------------------  
using namespace std;
using namespace cv;


//-----------------------------------��ȫ�ֱ����������֡�--------------------------------------
//		������ȫ�ֱ�������
//-----------------------------------------------------------------------------------------------
Mat g_srcImage,g_dstImage1,g_dstImage2,g_dstImage3,g_dstImage4,g_dstImage5;
int g_nBoxFilterValue=6;  //�����˲��ں�ֵ
int g_nMeanBlurValue=10;  //��ֵ�˲��ں�ֵ
int g_nGaussianBlurValue=6;  //��˹�˲��ں�ֵ
int g_nMedianBlurValue=10;  //��ֵ�˲�����ֵ
int g_nBilateralFilterValue=10;  //˫���˲�����ֵ


//-----------------------------------��ȫ�ֺ����������֡�--------------------------------------
//		������ȫ�ֺ�������
//-----------------------------------------------------------------------------------------------
//�켣���ص�����
static void on_BoxFilter(int, void *);		//�����˲�
static void on_MeanBlur(int, void *);		//��ֵ���˲���
static void on_GaussianBlur(int, void *);			//��˹�˲���
static void on_MedianBlur(int, void *);			//��ֵ�˲���
static void on_BilateralFilter(int, void *);			//˫���˲���
void ShowHelpText();


//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-----------------------------------------------------------------------------------------------
int main(   )
{
	system("color 4F");  

	ShowHelpText();	

	// ����ԭͼ
	g_srcImage = imread( "1.jpg", 1 );
	if( !g_srcImage.data ) { printf("��ȡsrcImage����~�� \n"); return false; }

	//��¡ԭͼ���ĸ�Mat������
	g_dstImage1 = g_srcImage.clone( );
	g_dstImage2 = g_srcImage.clone( );
	g_dstImage3 = g_srcImage.clone( );
	g_dstImage4 = g_srcImage.clone( );
	g_dstImage5 = g_srcImage.clone( );

	//��ʾԭͼ
	namedWindow("��<0>ԭͼ���ڡ�", 1);
	imshow("��<0>ԭͼ���ڡ�",g_srcImage);


	//=================��<1>�����˲���=========================
	//��������
	namedWindow("��<1>�����˲���", 1);
	//�����켣��
	createTrackbar("�ں�ֵ��", "��<1>�����˲���",&g_nBoxFilterValue, 50,on_BoxFilter );
	on_MeanBlur(g_nBoxFilterValue,0);
	imshow("��<1>�����˲���", g_dstImage1);
	//=====================================================


	//=================��<2>��ֵ�˲���==========================
	//��������
	namedWindow("��<2>��ֵ�˲���", 1);
	//�����켣��
	createTrackbar("�ں�ֵ��", "��<2>��ֵ�˲���",&g_nMeanBlurValue, 50,on_MeanBlur );
	on_MeanBlur(g_nMeanBlurValue,0);
	//======================================================


	//=================��<3>��˹�˲���===========================
	//��������
	namedWindow("��<3>��˹�˲���", 1);
	//�����켣��
	createTrackbar("�ں�ֵ��", "��<3>��˹�˲���",&g_nGaussianBlurValue, 50,on_GaussianBlur );
	on_GaussianBlur(g_nGaussianBlurValue,0);
	//=======================================================


	//=================��<4>��ֵ�˲���===========================
	//��������
	namedWindow("��<4>��ֵ�˲���", 1);
	//�����켣��
	createTrackbar("����ֵ��", "��<4>��ֵ�˲���",&g_nMedianBlurValue, 50,on_MedianBlur );
	on_MedianBlur(g_nMedianBlurValue,0);
	//=======================================================


	//=================��<5>˫���˲���===========================
	//��������
	namedWindow("��<5>˫���˲���", 1);
	//�����켣��
	createTrackbar("����ֵ��", "��<5>˫���˲���",&g_nBilateralFilterValue, 50,on_BilateralFilter);
	on_BilateralFilter(g_nBilateralFilterValue,0);
	//=======================================================


	//���һЩ������Ϣ
	cout<<endl<<"\t���гɹ���������������۲�ͼ��Ч��~\n\n"
		<<"\t���¡�q����ʱ�������˳���\n";
	while(char(waitKey(1)) != 'q') {}

	return 0;
}

//-----------------------------��on_BoxFilter( )������------------------------------------
//		�����������˲������Ļص�����
//-----------------------------------------------------------------------------------------------
static void on_BoxFilter(int, void *)
{
	//�����˲�����
	boxFilter( g_srcImage, g_dstImage1, -1,Size( g_nBoxFilterValue+1, g_nBoxFilterValue+1));
	//��ʾ����
	imshow("��<1>�����˲���", g_dstImage1);
}

//-----------------------------��on_MeanBlur( )������------------------------------------
//		��������ֵ�˲������Ļص�����
//-----------------------------------------------------------------------------------------------
static void on_MeanBlur(int, void *)
{
	blur( g_srcImage, g_dstImage2, Size( g_nMeanBlurValue+1, g_nMeanBlurValue+1), Point(-1,-1));
	imshow("��<2>��ֵ�˲���", g_dstImage2);

}

//-----------------------------��on_GaussianBlur( )������------------------------------------
//		��������˹�˲������Ļص�����
//-----------------------------------------------------------------------------------------------
static void on_GaussianBlur(int, void *)
{
	GaussianBlur( g_srcImage, g_dstImage3, Size( g_nGaussianBlurValue*2+1, g_nGaussianBlurValue*2+1 ), 0, 0);
	imshow("��<3>��˹�˲���", g_dstImage3);
}


//-----------------------------��on_MedianBlur( )������------------------------------------
//		��������ֵ�˲������Ļص�����
//-----------------------------------------------------------------------------------------------
static void on_MedianBlur(int, void *)
{
	medianBlur ( g_srcImage, g_dstImage4, g_nMedianBlurValue*2+1 );
	imshow("��<4>��ֵ�˲���", g_dstImage4);
}


//-----------------------------��on_BilateralFilter( )������------------------------------------
//		������˫���˲������Ļص�����
//-----------------------------------------------------------------------------------------------
static void on_BilateralFilter(int, void *)
{
	bilateralFilter ( g_srcImage, g_dstImage5, g_nBilateralFilterValue, g_nBilateralFilterValue*2, g_nBilateralFilterValue/2 );
	imshow("��<5>˫���˲���", g_dstImage5);
}

//-----------------------------------��ShowHelpText( )������-----------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV3��ĵ�37������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
}


