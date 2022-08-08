#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace std;
using namespace cv;

Mat g_srcImage, g_dstImage,g_midImage;//ԭʼͼ���м�ͼ��Ч��ͼ
vector<Vec4i> g_lines;//����һ��ʸ���ṹg_lines���ڴ�ŵõ����߶�ʸ������
//�������յ�TrackBarλ�ò���
int g_nthreshold=100;

//-----------------------------------��ȫ�ֺ����������֡�--------------------------------------
//		������ȫ�ֺ�������
//-----------------------------------------------------------------------------------------------

static void on_HoughLines(int, void*);//�ص�����
static void ShowHelpText();


//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-----------------------------------------------------------------------------------------------
int main( )
{
	//�ı�console������ɫ
	system("color 4F");  

	ShowHelpText();

	//����ԭʼͼ��Mat��������   
	Mat g_srcImage = imread("64.jpg");  

	//��ʾԭʼͼ  
	imshow("��ԭʼͼ��", g_srcImage);  

	//����������
	namedWindow("��Ч��ͼ��",1);
	createTrackbar("ֵ", "��Ч��ͼ��",&g_nthreshold,200,on_HoughLines);

	//���б�Ե����ת��Ϊ�Ҷ�ͼ
	Canny(g_srcImage, g_midImage, 50, 200, 3);//����һ��canny��Ե���
	cvtColor(g_midImage,g_dstImage, CV_GRAY2BGR);//ת����Ե�����ͼΪ�Ҷ�ͼ

	//����һ�λص�����������һ��HoughLinesP����
	on_HoughLines(g_nthreshold,0);
	HoughLinesP(g_midImage, g_lines, 1, CV_PI/180, 80, 50, 10 );

	//��ʾЧ��ͼ  
	imshow("��Ч��ͼ��", g_dstImage);  


	waitKey(0);  

	return 0;  

}


//-----------------------------------��on_HoughLines( )������--------------------------------
//		����������ñ����/��ñ���㡿���ڵĻص�����
//----------------------------------------------------------------------------------------------
static void on_HoughLines(int, void*)
{
	//����ֲ���������ȫ�ֱ���
	Mat dstImage=g_dstImage.clone();
	Mat midImage=g_midImage.clone();

	//����HoughLinesP����
	vector<Vec4i> mylines;
	HoughLinesP(midImage, mylines, 1, CV_PI/180, g_nthreshold+1, 50, 10 );

	//ѭ����������ÿһ���߶�
	for( size_t i = 0; i < mylines.size(); i++ )
	{
		Vec4i l = mylines[i];
		line( dstImage, Point(l[0], l[1]), Point(l[2], l[3]), Scalar(23,180,55), 1, CV_AA);
	}
	//��ʾͼ��
	imshow("��Ч��ͼ��",dstImage);
}

//-----------------------------------��ShowHelpText( )������----------------------------------
//		���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
static void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�64������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");

	//���һЩ������Ϣ
	printf("\n\n\n\t������������۲�ͼ��Ч��~\n\n");


}