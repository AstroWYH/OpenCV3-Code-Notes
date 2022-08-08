#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
using namespace cv;


//-----------------------------------��ShowHelpText( )������----------------------------------
//          ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
static void ShowHelpText()
{

	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�13������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");

	//���һЩ������Ϣ
	printf("\n\n\t\t\t��ӭ������Ѱ����С����İ�ΧԲ��ʾ������~\n"); 
	printf("\n\n\t��������˵��: \n\n" 
		"\t\t���̰�����ESC������Q������q��- �˳�����\n\n" 
		"\t\t���̰�������� - ������������㣬��Ѱ����С����İ�ΧԲ\n" );  
}

int main(  )
{
	//�ı�console������ɫ
	system("color 1F"); 

	//��ʾ��������
	ShowHelpText();

	//��ʼ�����������ֵ
	Mat image(600, 600, CV_8UC3);
	RNG& rng = theRNG();

	//ѭ��������ESC,Q,q�������˳��������м����±�һֱ����
	while(1)
	{
		//������ʼ��
		int count = rng.uniform(3, 103);//������ɵ������
		vector<Point> points;//��ֵ

		//������ɵ�����
		for(int  i = 0; i < count; i++ )
		{

			Point point;
			point.x = rng.uniform(image.cols/4, image.cols*3/4);
			point.y = rng.uniform(image.rows/4, image.rows*3/4);

			points.push_back(point);
		}

		//�Ը����� 2D �㼯��Ѱ����С����İ�ΧԲ
		Point2f center;
		float radius = 0;
		minEnclosingCircle(Mat(points), center, radius);

		//���Ƴ������ɫ�ĵ�
		image = Scalar::all(0);
		for( int i = 0; i < count; i++ )
			circle( image, points[i], 3, Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255)), CV_FILLED, CV_AA );


		//���Ƴ���С����İ�ΧԲ
		circle(image, center, cvRound(radius), Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255)), 2, CV_AA);

		//��ʾ����
		imshow( "Բ�ΰ�Χʾ��", image );

		//����ESC,Q,����q�������˳�
		char key = (char)waitKey();
		if( key == 27 || key == 'q' || key == 'Q' ) // 'ESC'
			break;
	}

	return 0;
}
