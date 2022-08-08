//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������78
//		����������ͼ���޲�ʾ��
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
#include "opencv2/photo/photo.hpp"
#include <iostream>
using namespace cv;
using namespace std;


//-----------------------------------���궨�岿�֡�-------------------------------------------- 
//  ����������һЩ������ 
//----------------------------------------------------------------------------------------------
#define WINDOW_NAME0 "��ԭʼͼ�ο���"        //Ϊ���ڱ��ⶨ��ĺ� 
#define WINDOW_NAME1 "��ԭʼͼ��"        //Ϊ���ڱ��ⶨ��ĺ� 
#define WINDOW_NAME2 "���޲����Ч��ͼ��"        //Ϊ���ڱ��ⶨ��ĺ� 


//-----------------------------------��ȫ�ֱ����������֡�--------------------------------------
//          ������ȫ�ֱ�������
//-----------------------------------------------------------------------------------------------
Mat srcImage0,srcImage1, inpaintMask;
Point previousPoint(-1,-1);//ԭ���ĵ�����


//-----------------------------------��ShowHelpText( )������----------------------------------
//          ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
static void ShowHelpText( )
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV3��ĵ�78������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");

	//���һЩ������Ϣ
	printf("\n\n\n\t��ӭ������ͼ���޸���ʾ������~\n"); 
	printf(  "\n\t���ڽ���ͼ���޸�����֮ǰ���ڡ�ԭʼͼ�������н��������Ļ���" 
		"\n\n\t��������˵��: \n\n" 
		"\t\t����������-��ͼ���ϻ��ư�ɫ����\n\n"
		"\t\t���̰�����ESC��- �˳�����\n\n" 
		"\t\t���̰�����1����SPACE��-����ͼ���޸����� \n\n"   );  
}


//-----------------------------------��On_Mouse( )������--------------------------------
//          ��������Ӧ�����Ϣ�Ļص�����
//----------------------------------------------------------------------------------------------
static void On_Mouse( int event, int x, int y, int flags, void* )
{
	//������������Ϣ
	if( event == EVENT_LBUTTONUP || !(flags & EVENT_FLAG_LBUTTON) )
		previousPoint = Point(-1,-1);
	//������������Ϣ
	else if( event == EVENT_LBUTTONDOWN )
		previousPoint = Point(x,y);
	//��갴�²��ƶ������л���
	else if( event == EVENT_MOUSEMOVE && (flags & EVENT_FLAG_LBUTTON) )
	{
		Point pt(x,y);
		if( previousPoint.x < 0 )
			previousPoint = pt;
		//���ư�ɫ����
		line( inpaintMask, previousPoint, pt, Scalar::all(255), 5, 8, 0 );
		line( srcImage1, previousPoint, pt, Scalar::all(255), 5, 8, 0 );
		previousPoint = pt;
		imshow(WINDOW_NAME1, srcImage1);
	}
}


//--------------------------------------��main( )������-----------------------------------------
//          ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main( int argc, char** argv )
{
	//�ı�console������ɫ
	system("color 2F"); 

	//��ʾ��������
	ShowHelpText();

	//����ԭʼͼ��������Ĥ�ĳ�ʼ��
	Mat srcImage = imread("1.jpg", -1);
	if(!srcImage.data ) { printf("��ȡͼƬ������ȷ��Ŀ¼���Ƿ���imread����ָ��ͼƬ����~�� \n"); return false; } 
	srcImage0 = srcImage.clone();
	srcImage1 = srcImage.clone();
	inpaintMask = Mat::zeros(srcImage1.size(), CV_8U);

	//��ʾԭʼͼ�ο�
	imshow(WINDOW_NAME0, srcImage0);
	//��ʾԭʼͼ
	imshow(WINDOW_NAME1, srcImage1);
	//�������ص���Ϣ
	setMouseCallback( WINDOW_NAME1, On_Mouse, 0 );

	//��ѯ���������ݲ�ͬ�İ������д���
	while (1)
	{
		//��ȡ������ֵ
		char c = (char)waitKey();

		//��ֵΪESC�������˳�
		if( c == 27 )
			break;

		//��ֵΪ2���ָ���ԭʼͼ��
		if( c == '2' )
		{
			inpaintMask = Scalar::all(0);
			srcImage.copyTo(srcImage1);
			imshow(WINDOW_NAME1, srcImage1);
		}

		//��ֵΪ1���߿ո񣬽���ͼ���޲�����
		if( c == '1' || c == ' ' )
		{
			Mat inpaintedImage;
			inpaint(srcImage1, inpaintMask, inpaintedImage, 3, INPAINT_TELEA);
			imshow(WINDOW_NAME2, inpaintedImage);
		}
	}

	return 0;
}
