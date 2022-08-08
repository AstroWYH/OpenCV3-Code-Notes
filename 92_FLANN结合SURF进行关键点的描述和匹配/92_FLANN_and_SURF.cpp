#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/nonfree/features2d.hpp>
#include <opencv2/features2d/features2d.hpp>
using namespace cv;
using namespace std;


//-----------------------------------��ShowHelpText( )������-----------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�92������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
}


//--------------------------------------��main( )������-----------------------------------------
//          ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main( ) 
{
	//��0���ı�console������ɫ
	system("color 6F"); 

	void ShowHelpText();

	//��1������ͼ����ʾ��ת��Ϊ�Ҷ�ͼ
	Mat trainImage = imread("1.bmp"), trainImage_gray;
	imshow("ԭʼͼ",trainImage);
	cvtColor(trainImage, trainImage_gray, CV_BGR2GRAY);

	//��2�����Surf�ؼ��㡢��ȡѵ��ͼ��������
	vector<KeyPoint> train_keyPoint;
	Mat trainDescriptor;
	SurfFeatureDetector featureDetector(80);
	featureDetector.detect(trainImage_gray, train_keyPoint);
	SurfDescriptorExtractor featureExtractor;
	featureExtractor.compute(trainImage_gray, train_keyPoint, trainDescriptor);

	//��3����������FLANN��������ƥ�����
	FlannBasedMatcher matcher;
	vector<Mat> train_desc_collection(1, trainDescriptor);
	matcher.add(train_desc_collection);
	matcher.train();

	//��4��������Ƶ���󡢶���֡��
	VideoCapture cap(0);
	unsigned int frameCount = 0;//֡��

	//��5������ѭ����ֱ��q��������
	while(char(waitKey(1)) != 'q')
	{
		//<1>��������
		int64 time0 = getTickCount();
		Mat testImage, testImage_gray;
		cap >> testImage;//�ɼ���Ƶ��testImage��
		if(testImage.empty())
			continue;

		//<2>ת��ͼ�񵽻Ҷ�
		cvtColor(testImage, testImage_gray, CV_BGR2GRAY);

		//<3>���S�ؼ��㡢��ȡ����ͼ��������
		vector<KeyPoint> test_keyPoint;
		Mat testDescriptor;
		featureDetector.detect(testImage_gray, test_keyPoint);
		featureExtractor.compute(testImage_gray, test_keyPoint, testDescriptor);

		//<4>ƥ��ѵ���Ͳ���������
		vector<vector<DMatch> > matches;
		matcher.knnMatch(testDescriptor, matches, 2);

		// <5>���������㷨��Lowe's algorithm�����õ������ƥ���
		vector<DMatch> goodMatches;
		for(unsigned int i = 0; i < matches.size(); i++)
		{
			if(matches[i][0].distance < 0.6 * matches[i][1].distance)
				goodMatches.push_back(matches[i][0]);
		}

		//<6>����ƥ��㲢��ʾ����
		Mat dstImage;
		drawMatches(testImage, test_keyPoint, trainImage, train_keyPoint, goodMatches, dstImage);
		imshow("ƥ�䴰��", dstImage);

		//<7>���֡����Ϣ
		cout << "��ǰ֡��Ϊ��" << getTickFrequency() / (getTickCount() - time0) << endl;
	}

	return 0;
}
