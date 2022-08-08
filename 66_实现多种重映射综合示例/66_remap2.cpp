//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV3���鱾����ʾ������66
//		����������ʵ�ֶ�����ӳ���ۺ�ʾ��
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
//  ����������һЩ������ 
//------------------------------------------------------------------------------------------------ 
#define WINDOW_NAME "�����򴰿ڡ�"        //Ϊ���ڱ��ⶨ��ĺ� 


//-----------------------------------��ȫ�ֱ����������֡�--------------------------------------
//          ������ȫ�ֱ���������
//-----------------------------------------------------------------------------------------------
Mat g_srcImage, g_dstImage;
Mat g_map_x, g_map_y;


//-----------------------------------��ȫ�ֺ����������֡�--------------------------------------
//          ������ȫ�ֺ���������
//-----------------------------------------------------------------------------------------------
int update_map( int key);
static void ShowHelpText( );//�����������

//-----------------------------------��main( )������--------------------------------------------
//          ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main( int argc, char** argv )
{
	//�ı�console������ɫ
	system("color 5F"); 

	//��ʾ��������
	ShowHelpText();

	//��1������ԭʼͼ
	g_srcImage = imread( "1.jpg", 1 );
	if(!g_srcImage.data ) { printf("��ȡͼƬ������ȷ��Ŀ¼���Ƿ���imread����ָ����ͼƬ����~�� \n"); return false; }  
	imshow("ԭʼͼ",g_srcImage);

	//��2��������ԭʼͼһ����Ч��ͼ��x��ӳ��ͼ��y��ӳ��ͼ
	g_dstImage.create( g_srcImage.size(), g_srcImage.type() );
	g_map_x.create( g_srcImage.size(), CV_32FC1 );
	g_map_y.create( g_srcImage.size(), CV_32FC1 );

	//��3���������ڲ���ʾ
	namedWindow( WINDOW_NAME, WINDOW_AUTOSIZE );
	imshow(WINDOW_NAME,g_srcImage);

	//��4����ѯ����������map_x��map_y��ֵ��������ӳ���������ʾЧ��ͼ
	while( 1 )
	{
		//��ȡ���̰���  
		int key = waitKey(0);  

		//�ж�ESC�Ƿ��£������±��˳�  
		if( (key & 255) == 27 )  
		{  
			cout << "�����˳�...........\n";  
			break;  
		}  

		//���ݰ��µļ��̰��������� map_x & map_y��ֵ. Ȼ�����remap( )������ӳ��
		update_map(key);
		//�˾�����OpenCV2��Ϊ��
		//remap( g_srcImage, g_dstImage, g_map_x, g_map_y, CV_INTER_LINEAR, BORDER_CONSTANT, Scalar(0,0, 0) );
		//�˾�����OpenCV3��Ϊ��
		remap( g_srcImage, g_dstImage, g_map_x, g_map_y, INTER_LINEAR, BORDER_CONSTANT, Scalar(0,0, 0) );

		//��ʾЧ��ͼ
		imshow( WINDOW_NAME, g_dstImage );
	}
	return 0;
}

//-----------------------------------��update_map( )������--------------------------------
//          ���������ݰ���������map_x��map_x��ֵ
//----------------------------------------------------------------------------------------------
int update_map( int key )
{
	//˫��ѭ��������ÿһ�����ص�
	for( int j = 0; j < g_srcImage.rows;j++)
	{ 
		for( int i = 0; i < g_srcImage.cols;i++)
		{
			switch(key)
			{
			case '1': // ���̡�1�������£����е�һ����ӳ�����
				if( i > g_srcImage.cols*0.25 && i < g_srcImage.cols*0.75 && j > g_srcImage.rows*0.25 && j < g_srcImage.rows*0.75)
				{
					g_map_x.at<float>(j,i) = static_cast<float>(2*( i - g_srcImage.cols*0.25 ) + 0.5);
					g_map_y.at<float>(j,i) = static_cast<float>(2*( j - g_srcImage.rows*0.25 ) + 0.5);
				}
				else
				{ 
					g_map_x.at<float>(j,i) = 0;
					g_map_y.at<float>(j,i) = 0;
				}
				break;
			case '2':// ���̡�2�������£����еڶ�����ӳ�����
				g_map_x.at<float>(j,i) = static_cast<float>(i);
				g_map_y.at<float>(j,i) = static_cast<float>(g_srcImage.rows - j);
				break;
			case '3':// ���̡�3�������£����е�������ӳ�����
				g_map_x.at<float>(j,i) = static_cast<float>(g_srcImage.cols - i);
				g_map_y.at<float>(j,i) = static_cast<float>(j);
				break;
			case '4':// ���̡�4�������£����е�������ӳ�����
				g_map_x.at<float>(j,i) = static_cast<float>(g_srcImage.cols - i);
				g_map_y.at<float>(j,i) = static_cast<float>(g_srcImage.rows - j);
				break;
			} 
		}
	}
	return 1;
}

//-----------------------------------��ShowHelpText( )������----------------------------------  
//      ���������һЩ������Ϣ  
//----------------------------------------------------------------------------------------------  
static void ShowHelpText()  
{  
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV3��ĵ�66������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
	//���һЩ������Ϣ  
	printf("\n\t��ӭ������ӳ��ʾ������~\n\n");  
	printf( "\n\t��������˵��: \n\n"  
		"\t\t���̰�����ESC��- �˳�����\n"  
		"\t\t���̰�����1��-  ��һ��ӳ�䷽ʽ\n"  
		"\t\t���̰�����2��- �ڶ���ӳ�䷽ʽ\n"  
		"\t\t���̰�����3��- ������ӳ�䷽ʽ\n"  
		"\t\t���̰�����4��- ������ӳ�䷽ʽ\n" 	 );  
}  
