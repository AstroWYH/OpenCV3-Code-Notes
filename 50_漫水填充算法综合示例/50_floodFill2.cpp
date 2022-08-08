
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV3���鱾����ʾ������50
//		������������ˮ����㷨�ۺ�ʾ��
//		�����������ò���ϵͳ�� Windows 7 64bit
//		������������IDE�汾��Visual Studio 2010
//		������������OpenCV�汾��	3.0 beta
//		2014��11�� Created by @ǳī_ë����
//		2014��12�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------


//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <iostream>
using namespace cv;
using namespace std;


//-----------------------------------��ȫ�ֱ����������֡�--------------------------------------  
//      ������ȫ�ֱ�������  
//-----------------------------------------------------------------------------------------------  
Mat g_srcImage, g_dstImage, g_grayImage, g_maskImage;//����ԭʼͼ��Ŀ��ͼ���Ҷ�ͼ����ģͼ
int g_nFillMode = 1;//��ˮ����ģʽ
int g_nLowDifference = 20, g_nUpDifference = 20;//�������ֵ���������ֵ
int g_nConnectivity = 4;//��ʾfloodFill������ʶ���Ͱ�λ����ֵͨ
int g_bIsColor = true;//�Ƿ�Ϊ��ɫͼ�ı�ʶ������ֵ
bool g_bUseMask = false;//�Ƿ���ʾ��Ĥ���ڵĲ���ֵ
int g_nNewMaskVal = 255;//�µ����»��Ƶ�����ֵ


//-----------------------------------��ShowHelpText( )������----------------------------------  
//      ���������һЩ������Ϣ  
//----------------------------------------------------------------------------------------------  
static void ShowHelpText()  
{  
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV3��ĵ�50������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");

	//���һЩ������Ϣ  
	printf("\n\n\t��ӭ������ˮ���ʾ������~");  
	printf("\n\n\t��ʾ���������ѡȡ�ĵ�����ͼ������֮��ɫ����ĵ㣬���ò�ͬ��ɫ��ע��");  
	
	printf( "\n\n\t��������˵��: \n\n"  
		"\t\t�����ͼ������- ������ˮ������\n"  
		"\t\t���̰�����ESC��- �˳�����\n"  
		"\t\t���̰�����1��-  �л���ɫͼ/�Ҷ�ͼģʽ\n"  
		"\t\t���̰�����2��- ��ʾ/������Ĥ����\n"  
		"\t\t���̰�����3��- �ָ�ԭʼͼ��\n"  
		"\t\t���̰�����4��- ʹ�ÿշ�Χ����ˮ���\n"  
		"\t\t���̰�����5��- ʹ�ý��䡢�̶���Χ����ˮ���\n"  
		"\t\t���̰�����6��- ʹ�ý��䡢������Χ����ˮ���\n"  
		"\t\t���̰�����7��- ������־���ĵͰ�λʹ��4λ������ģʽ\n"  
		"\t\t���̰�����8��- ������־���ĵͰ�λʹ��8λ������ģʽ\n\n" 	);  
}  


//-----------------------------------��onMouse( )������--------------------------------------  
//      �����������ϢonMouse�ص�����
//---------------------------------------------------------------------------------------------
static void onMouse( int event, int x, int y, int, void* )
{
	// ��������û�а��£��㷵��
	//�˾�����OpenCV2��Ϊ��
	//if( event != CV_EVENT_LBUTTONDOWN )
	//�˾�����OpenCV3��Ϊ��
	if( event != EVENT_LBUTTONDOWN )
		return;

	//-------------------��<1>����floodFill����֮ǰ�Ĳ���׼�����֡�---------------
	Point seed = Point(x,y);
	int LowDifference = g_nFillMode == 0 ? 0 : g_nLowDifference;//�շ�Χ����ˮ��䣬��ֵ��Ϊ0��������Ϊȫ�ֵ�g_nLowDifference
	int UpDifference = g_nFillMode == 0 ? 0 : g_nUpDifference;//�շ�Χ����ˮ��䣬��ֵ��Ϊ0��������Ϊȫ�ֵ�g_nUpDifference

	//��ʶ����0~7λΪg_nConnectivity��8~15λΪg_nNewMaskVal����8λ��ֵ��16~23λΪCV_FLOODFILL_FIXED_RANGE����0��
	//�˾�����OpenCV2��Ϊ��
	//int flags = g_nConnectivity + (g_nNewMaskVal << 8) +(g_nFillMode == 1 ? CV_FLOODFILL_FIXED_RANGE : 0);
	//�˾�����OpenCV3��Ϊ��
	int flags = g_nConnectivity + (g_nNewMaskVal << 8) +(g_nFillMode == 1 ? FLOODFILL_FIXED_RANGE : 0);

	//�������bgrֵ
	int b = (unsigned)theRNG() & 255;//�������һ��0~255֮���ֵ
	int g = (unsigned)theRNG() & 255;//�������һ��0~255֮���ֵ
	int r = (unsigned)theRNG() & 255;//�������һ��0~255֮���ֵ
	Rect ccomp;//�����ػ��������С�߽��������

	Scalar newVal = g_bIsColor ? Scalar(b, g, r) : Scalar(r*0.299 + g*0.587 + b*0.114);//���ػ��������ص���ֵ�����ǲ�ɫͼģʽ��ȡScalar(b, g, r)�����ǻҶ�ͼģʽ��ȡScalar(r*0.299 + g*0.587 + b*0.114)

	Mat dst = g_bIsColor ? g_dstImage : g_grayImage;//Ŀ��ͼ�ĸ�ֵ
	int area;

	//--------------------��<2>��ʽ����floodFill������-----------------------------
	if( g_bUseMask )
	{
		//�˾�����OpenCV2��Ϊ��
		//threshold(g_maskImage, g_maskImage, 1, 128, CV_THRESH_BINARY);
		//�˾�����OpenCV3��Ϊ��
		threshold(g_maskImage, g_maskImage, 1, 128, THRESH_BINARY);
		area = floodFill(dst, g_maskImage, seed, newVal, &ccomp, Scalar(LowDifference, LowDifference, LowDifference),
			Scalar(UpDifference, UpDifference, UpDifference), flags);
		imshow( "mask", g_maskImage );
	}
	else
	{
		area = floodFill(dst, seed, newVal, &ccomp, Scalar(LowDifference, LowDifference, LowDifference),
			Scalar(UpDifference, UpDifference, UpDifference), flags);
	}

	imshow("Ч��ͼ", dst);
	cout << area << " �����ر��ػ�\n";
}


//-----------------------------------��main( )������--------------------------------------------  
//      ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ  
//-----------------------------------------------------------------------------------------------  
int main( int argc, char** argv )
{
	//�ı�console������ɫ  
	system("color 2F");    

	//����ԭͼ
	g_srcImage = imread("1.jpg", 1);

	if( !g_srcImage.data ) { printf("��ȡͼƬimage0����~�� \n"); return false; }  

	//��ʾ��������
	ShowHelpText();

	g_srcImage.copyTo(g_dstImage);//����Դͼ��Ŀ��ͼ
	cvtColor(g_srcImage, g_grayImage, COLOR_BGR2GRAY);//ת����ͨ����image0���Ҷ�ͼ
	g_maskImage.create(g_srcImage.rows+2, g_srcImage.cols+2, CV_8UC1);//����image0�ĳߴ�����ʼ����Ĥmask

	//�˾�����OpenCV2��Ϊ��
	//namedWindow( "Ч��ͼ",CV_WINDOW_AUTOSIZE );
	//�˾�����OpenCV2��Ϊ��
	namedWindow( "Ч��ͼ",WINDOW_AUTOSIZE );


	//����Trackbar
	createTrackbar( "�������ֵ", "Ч��ͼ", &g_nLowDifference, 255, 0 );
	createTrackbar( "�������ֵ" ,"Ч��ͼ", &g_nUpDifference, 255, 0 );

	//���ص�����
	setMouseCallback( "Ч��ͼ", onMouse, 0 );

	//ѭ����ѯ����
	while(1)
	{
		//����ʾЧ��ͼ
		imshow("Ч��ͼ", g_bIsColor ? g_dstImage : g_grayImage);

		//��ȡ���̰���
		int c = waitKey(0);
		//�ж�ESC�Ƿ��£������±��˳�
		if( (c & 255) == 27 )
		{
			cout << "�����˳�...........\n";
			break;
		}

		//���ݰ����Ĳ�ͬ�����и��ֲ���
		switch( (char)c )
		{
			//������̡�1�������£�Ч��ͼ���ڻҶ�ͼ����ɫͼ֮�以��
		case '1':
			if( g_bIsColor )//��ԭ��Ϊ��ɫ��תΪ�Ҷ�ͼ�����ҽ���Ĥmask����Ԫ������Ϊ0
			{
				cout << "���̡�1�������£��л���ɫ/�Ҷ�ģʽ����ǰ����Ϊ������ɫģʽ���л�Ϊ���Ҷ�ģʽ��\n";
				cvtColor(g_srcImage, g_grayImage, COLOR_BGR2GRAY);
				g_maskImage = Scalar::all(0);	//��mask����Ԫ������Ϊ0
				g_bIsColor = false;	//����ʶ����Ϊfalse����ʾ��ǰͼ��Ϊ��ɫ�����ǻҶ�
			}
			else//��ԭ��Ϊ�Ҷ�ͼ���㽫ԭ���Ĳ�ͼimage0�ٴο�����image�����ҽ���Ĥmask����Ԫ������Ϊ0
			{
				cout << "���̡�1�������£��л���ɫ/�Ҷ�ģʽ����ǰ����Ϊ������ɫģʽ���л�Ϊ���Ҷ�ģʽ��\n";
				g_srcImage.copyTo(g_dstImage);
				g_maskImage = Scalar::all(0);
				g_bIsColor = true;//����ʶ����Ϊtrue����ʾ��ǰͼ��ģʽΪ��ɫ
			}
			break;
			//������̰�����2�������£���ʾ/������Ĥ����
		case '2':
			if( g_bUseMask )
			{
				destroyWindow( "mask" );
				g_bUseMask = false;
			}
			else
			{
				namedWindow( "mask", 0 );
				g_maskImage = Scalar::all(0);
				imshow("mask", g_maskImage);
				g_bUseMask = true;
			}
			break;
			//������̰�����3�������£��ָ�ԭʼͼ��
		case '3':
			cout << "������3�������£��ָ�ԭʼͼ��\n";
			g_srcImage.copyTo(g_dstImage);
			cvtColor(g_dstImage, g_grayImage, COLOR_BGR2GRAY);
			g_maskImage = Scalar::all(0);
			break;
			//������̰�����4�������£�ʹ�ÿշ�Χ����ˮ���
		case '4':
			cout << "������4�������£�ʹ�ÿշ�Χ����ˮ���\n";
			g_nFillMode = 0;
			break;
			//������̰�����5�������£�ʹ�ý��䡢�̶���Χ����ˮ���
		case '5':
			cout << "������5�������£�ʹ�ý��䡢�̶���Χ����ˮ���\n";
			g_nFillMode = 1;
			break;
			//������̰�����6�������£�ʹ�ý��䡢������Χ����ˮ���
		case '6':
			cout << "������6�������£�ʹ�ý��䡢������Χ����ˮ���\n";
			g_nFillMode = 2;
			break;
			//������̰�����7�������£�������־���ĵͰ�λʹ��4λ������ģʽ
		case '7':
			cout << "������7�������£�������־���ĵͰ�λʹ��4λ������ģʽ\n";
			g_nConnectivity = 4;
			break;
			//������̰�����8�������£�������־���ĵͰ�λʹ��8λ������ģʽ
		case '8':
			cout << "������8�������£�������־���ĵͰ�λʹ��8λ������ģʽ\n";
			g_nConnectivity = 8;
			break;
		}
	}

	return 0;
}
