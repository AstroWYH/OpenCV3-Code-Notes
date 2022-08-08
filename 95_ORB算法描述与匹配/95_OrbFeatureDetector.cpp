#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/nonfree/features2d.hpp>
#include <opencv2/features2d/features2d.hpp>
using namespace cv;
using namespace std;



//-----------------------------------��ShowHelpText( )������----------------------------------
//          ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
static void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�72������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
	//���һЩ������Ϣ
	printf("\n\t��ӭ������ORB�㷨������ȡ�����FLANN-LSH����ƥ�䡿ʾ������\n"); 
	printf( "\n\n\t��������˵��: \n\n" 
		"\t\t���̰�����ESC��- �˳�����\n" );
}


//--------------------------------------��main( )������-----------------------------------------
//          ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main(	) 
{
	//��0���ı�console������ɫ
	system("color 2F"); 

	//��0����ʾ��������
	ShowHelpText();

	//��0������Դͼ����ʾ��ת��Ϊ�Ҷ�ͼ
	Mat srcImage = imread("1.jpg");
	imshow("ԭʼͼ",srcImage);
	Mat grayImage;
	cvtColor(srcImage, grayImage, CV_BGR2GRAY);

	//------------------���SIFT�����㲢��ͼ������ȡ�����������----------------------

	//��1����������
	OrbFeatureDetector featureDetector;
	vector<KeyPoint> keyPoints;
	Mat descriptors;

	//��2������detect�������������ؼ��㣬������vector������
	featureDetector.detect(grayImage, keyPoints);

	//��3������������������������
	OrbDescriptorExtractor featureExtractor;
	featureExtractor.compute(grayImage, keyPoints, descriptors);

	//��4������FLANN������������ƥ��
	flann::Index flannIndex(descriptors, flann::LshIndexParams(12, 20, 2), cvflann::FLANN_DIST_HAMMING);

	//��5����ʼ����Ƶ�ɼ�����
	VideoCapture cap(0);

	unsigned int frameCount = 0;//֡��

	//��6����ѯ��ֱ������ESC���˳�ѭ��
	while(1)
	{
		double time0 = static_cast<double>(getTickCount( ));//��¼��ʼʱ��
		Mat  captureImage, captureImage_gray;//��������Mat������������Ƶ�ɼ�
		cap >>  captureImage;//�ɼ���Ƶ֡
		if( captureImage.empty())//�ɼ�Ϊ�յĴ���
			continue;

		//ת��ͼ�񵽻Ҷ�
		cvtColor( captureImage, captureImage_gray, CV_BGR2GRAY);//�ɼ�����Ƶ֡ת��Ϊ�Ҷ�ͼ

		//��7�����SIFT�ؼ��㲢��ȡ����ͼ���е�������
		vector<KeyPoint> captureKeyPoints;
		Mat captureDescription;

		//��8������detect�������������ؼ��㣬������vector������
		featureDetector.detect(captureImage_gray, captureKeyPoints);

		//��9������������
		featureExtractor.compute(captureImage_gray, captureKeyPoints, captureDescription);

		//��10��ƥ��Ͳ�������������ȡ�������ڽ���������
		Mat matchIndex(captureDescription.rows, 2, CV_32SC1), matchDistance(captureDescription.rows, 2, CV_32FC1);
		flannIndex.knnSearch(captureDescription, matchIndex, matchDistance, 2, flann::SearchParams());//����K�ڽ��㷨

		//��11�����������㷨��Lowe's algorithm��ѡ�������ƥ��
		vector<DMatch> goodMatches;
		for(int i = 0; i < matchDistance.rows; i++) 
		{
			if(matchDistance.at<float>(i, 0) < 0.6 * matchDistance.at<float>(i, 1)) 
			{
				DMatch dmatches(i, matchIndex.at<int>(i, 0), matchDistance.at<float>(i, 0));
				goodMatches.push_back(dmatches);
			}
		}

		//��12�����Ʋ���ʾƥ�䴰��
		Mat resultImage;
		drawMatches( captureImage, captureKeyPoints, srcImage, keyPoints, goodMatches, resultImage);
		imshow("ƥ�䴰��", resultImage);

		//��13����ʾ֡��
		cout << ">֡��= " << getTickFrequency() / (getTickCount() - time0) << endl;

		//����ESC����������˳�
		if(char(waitKey(1)) == 27) break;
	}

	return 0;
}


