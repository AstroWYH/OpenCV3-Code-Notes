#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace cv;
using namespace std;


//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-----------------------------------------------------------------------------------------------
int main1( )
{
	//��1������ԭʼͼ��Mat��������   
	Mat srcImage = imread("1.jpg");  //����Ŀ¼��Ӧ����һ����Ϊ1.jpg���ز�ͼ
	Mat midImage,dstImage;//��ʱ������Ŀ��ͼ�Ķ���

	//��2�����б�Ե����ת��Ϊ�Ҷ�ͼ
	Canny(srcImage, midImage, 100, 200, 3);//����һ��canny��Ե���
	cvtColor(midImage,dstImage, CV_BGR2GRAY);//ת����Ե�����ͼΪ�Ҷ�ͼ

	//��3�����л����߱任
	vector<Vec2f> lines;//����һ��ʸ���ṹlines���ڴ�ŵõ����߶�ʸ������
	HoughLines(midImage, lines, 1, CV_PI/180, 200, 0, 0 );

	//��4��������ͼ�л��Ƴ�ÿ���߶�
	for( size_t i = 0; i < lines.size(); i++ )
	{
		float rho = lines[i][0], theta = lines[i][1];
		Point pt1, pt2;
		double a = cos(theta), b = sin(theta);
		double x0 = a*rho, y0 = b*rho;
		pt1.x = cvRound(x0 + 1000*(-b));
		pt1.y = cvRound(y0 + 1000*(a));
		pt2.x = cvRound(x0 - 1000*(-b));
		pt2.y = cvRound(y0 - 1000*(a));
		line( dstImage, pt1, pt2, Scalar(55,100,195), 1, CV_AA);
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


