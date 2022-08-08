
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������26
//		����������������ɫͨ��&��ͨ��ͼ����
//		������������IDE�汾��Visual Studio 2010
//		������������OpenCV�汾��	3.0 beta
//		2014��11�� Created by @ǳī_ë����
//		2014��12�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------

//-----------------------------------��ͷ�ļ��������֡�---------------------------------------
//	����������������������ͷ�ļ�
//------------------------------------------------------------------------------------------------                                                                                     
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>

//-----------------------------------�������ռ��������֡�---------------------------------------
//	����������������ʹ�õ������ռ�
//-------------------------------------------------------------------------------------------------   
using namespace cv;
using namespace std;


//-----------------------------------��ȫ�ֺ����������֡�--------------------------------------
//	������ȫ�ֺ�������
//-----------------------------------------------------------------------------------------------
bool  MultiChannelBlending();
void ShowHelpText();


//-----------------------------------��main( )������------------------------------------------
//	����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-----------------------------------------------------------------------------------------------
int main(   )
{
	system("color 9F");

	ShowHelpText( );

	if(MultiChannelBlending( ))
	{
		cout<<endl<<"\n���гɹ����ó�����Ҫ��ͼ��~! ";
	}

	waitKey(0);
	return 0;
}



//-----------------------------------��ShowHelpText( )������----------------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV3��ĵ�26������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
}






//-----------------------------��MultiChannelBlending( )������--------------------------------
//	��������ͨ����ϵ�ʵ�ֺ���
//-----------------------------------------------------------------------------------------------
bool  MultiChannelBlending()
{
	//��0��������ر���
	Mat srcImage;
	Mat logoImage;
	vector<Mat> channels;
	Mat  imageBlueChannel;

	//=================����ɫͨ�����֡�=================
	//	��������ͨ�����-��ɫ��������
	//============================================

	// ��1������ͼƬ
	logoImage= imread("dota_logo.jpg",0);
	srcImage= imread("dota_jugg.jpg");

	if( !logoImage.data ) { printf("Oh��no����ȡlogoImage����~�� \n"); return false; }
	if( !srcImage.data ) { printf("Oh��no����ȡsrcImage����~�� \n"); return false; }

	//��2����һ��3ͨ��ͼ��ת����3����ͨ��ͼ��
	split(srcImage,channels);//����ɫ��ͨ��

	//��3����ԭͼ����ɫͨ�����÷��ظ�imageBlueChannel��ע�������ã��൱�����ߵȼۣ��޸�����һ����һ�����ű�
	imageBlueChannel= channels.at(0);
	//��4����ԭͼ����ɫͨ���ģ�500,250�����괦���·���һ�������logoͼ���м�Ȩ���������õ��Ļ�Ͻ���浽imageBlueChannel��
	addWeighted(imageBlueChannel(Rect(500,250,logoImage.cols,logoImage.rows)),1.0,
		logoImage,0.5,0,imageBlueChannel(Rect(500,250,logoImage.cols,logoImage.rows)));

	//��5����������ͨ�����ºϲ���һ����ͨ��
	merge(channels,srcImage);

	//��6����ʾЧ��ͼ
	namedWindow(" <1>��Ϸԭ��+logo��ɫͨ��");
	imshow(" <1>��Ϸԭ��+logo��ɫͨ��",srcImage);


	//=================����ɫͨ�����֡�=================
	//	��������ͨ�����-��ɫ��������
	//============================================

	//��0��������ر���
	Mat  imageGreenChannel;

	//��1�����¶���ͼƬ
	logoImage= imread("dota_logo.jpg",0);
	srcImage= imread("dota_jugg.jpg");

	if( !logoImage.data ) { printf("��ȡlogoImage����~�� \n"); return false; }
	if( !srcImage.data ) { printf("��ȡsrcImage����~�� \n"); return false; }

	//��2����һ����ͨ��ͼ��ת����������ͨ��ͼ��
	split(srcImage,channels);//����ɫ��ͨ��

	//��3����ԭͼ����ɫͨ�������÷��ظ�imageBlueChannel��ע�������ã��൱�����ߵȼۣ��޸�����һ����һ�����ű�
	imageGreenChannel= channels.at(1);
	//��4����ԭͼ����ɫͨ���ģ�500,250�����괦���·���һ�������logoͼ���м�Ȩ���������õ��Ļ�Ͻ���浽imageGreenChannel��
	addWeighted(imageGreenChannel(Rect(500,250,logoImage.cols,logoImage.rows)),1.0,
		logoImage,0.5,0.,imageGreenChannel(Rect(500,250,logoImage.cols,logoImage.rows)));

	//��5�������������ĵ�ͨ�����ºϲ���һ����ͨ��
	merge(channels,srcImage);

	//��6����ʾЧ��ͼ
	namedWindow("<2>��Ϸԭ��+logo��ɫͨ��");
	imshow("<2>��Ϸԭ��+logo��ɫͨ��",srcImage);



	//=================����ɫͨ�����֡�=================
	//	��������ͨ�����-��ɫ��������
	//============================================

	//��0��������ر���
	Mat  imageRedChannel;

	//��1�����¶���ͼƬ
	logoImage= imread("dota_logo.jpg",0);
	srcImage= imread("dota_jugg.jpg");

	if( !logoImage.data ) { printf("Oh��no����ȡlogoImage����~�� \n"); return false; }
	if( !srcImage.data ) { printf("Oh��no����ȡsrcImage����~�� \n"); return false; }

	//��2����һ����ͨ��ͼ��ת����������ͨ��ͼ��
	split(srcImage,channels);//����ɫ��ͨ��

	//��3����ԭͼ�ĺ�ɫͨ�����÷��ظ�imageBlueChannel��ע�������ã��൱�����ߵȼۣ��޸�����һ����һ�����ű�
	imageRedChannel= channels.at(2);
	//��4����ԭͼ�ĺ�ɫͨ���ģ�500,250�����괦���·���һ�������logoͼ���м�Ȩ���������õ��Ļ�Ͻ���浽imageRedChannel��
	addWeighted(imageRedChannel(Rect(500,250,logoImage.cols,logoImage.rows)),1.0,
		logoImage,0.5,0.,imageRedChannel(Rect(500,250,logoImage.cols,logoImage.rows)));

	//��5�������������ĵ�ͨ�����ºϲ���һ����ͨ��
	merge(channels,srcImage);

	//��6����ʾЧ��ͼ
	namedWindow("<3>��Ϸԭ��+logo��ɫͨ�� ");
	imshow("<3>��Ϸԭ��+logo��ɫͨ�� ",srcImage);

	return true;
}


