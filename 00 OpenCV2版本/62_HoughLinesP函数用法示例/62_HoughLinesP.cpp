#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace cv;
using namespace std;


//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main( )
{
	//��1������ԭʼͼ��Mat��������   
	Mat srcImage = imread("3.jpg");  //����Ŀ¼��Ӧ����һ����Ϊ1.jpg���ز�ͼ
	Mat midImage,dstImage;//��ʱ������Ŀ��ͼ�Ķ���

	//��2�����б�Ե����ת��Ϊ�Ҷ�ͼ
	Canny(srcImage, midImage, 150, 200, 3);//����һ��canny��Ե���
	cvtColor(midImage,dstImage, CV_GRAY2BGR);//ת����Ե�����ͼΪ�Ҷ�ͼ

	//��3�����л����߱任
	vector<Vec4i> lines;//����һ��ʸ���ṹlines���ڴ�ŵõ����߶�ʸ������
	HoughLinesP(midImage, lines, 1, CV_PI/180, 80, 100, 10 );

	//��4��������ͼ�л��Ƴ�ÿ���߶�
	for( size_t i = 0; i < lines.size(); i++ )
	{
		Vec4i l = lines[i];
		line( dstImage, Point(l[0], l[1]), Point(l[2], l[3]), Scalar(186,88,255), 1, CV_AA);
	}

	//��5����ʾԭʼͼ  
	imshow("��ԭʼͼ��", srcImage);  

	//��6����Ե�����ͼ 
	imshow("����Ե�����ͼ��", midImage);  

	//��7����ʾЧ��ͼ  
	imshow("��Ч��ͼ��", dstImage);  

	waitKey(0);  

	return 0;  
}


