//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV3���鱾����ʾ������12
//		��������������OpenCV��װĿ¼��Samples�ļ����еĹٷ�ʾ������-֧��������SVM����
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		������������OpenCV�汾��	3.0 beta
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------

//˵�������ڴ˴�����OpenCV2��OpenCV3����ʱ�Ķ����Ƚϴ�OpenCV2�汾�Ĵ˴�����ο�������OpenCV2�汾���ڴ˲����г�

//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//-------------------------------------------------------------------------------------------------
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/ml/ml.hpp>
using namespace cv;

//OpenCV3�������룺
#include <opencv2/imgproc.hpp>
#include "opencv2/imgcodecs.hpp"
using namespace cv::ml;


//--------------------------------��help( )������----------------------------------------------
//		���������������Ϣ
//-------------------------------------------------------------------------------------------------

//-----------------------------------��ShowHelpText( )������----------------------------------
//          ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV3��ĵ�12������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
}

//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main()
{
	// �Ӿ�������ݵ����ã�Data for visual representation��
	int width = 512, height = 512;
	Mat image = Mat::zeros(height, width, CV_8UC3);

	//����ѵ�����ݣ� Set up training data��
	int labels[4] = {1, -1, -1, -1};
	Mat labelsMat(4, 1, CV_32SC1, labels);

	float trainingData[4][2] = { {501, 10}, {255, 10}, {501, 255}, {10, 501} };
	Mat trainingDataMat(4, 2, CV_32FC1, trainingData);

	ShowHelpText();

	//����֧���������Ĳ�����Set up SVM's parameters��
	SVM::Params params;
	params.svmType    = SVM::C_SVC;
	params.kernelType = SVM::LINEAR;
	params.termCrit   = TermCriteria(TermCriteria::MAX_ITER, 100, 1e-6);


	// ѵ��֧����������Train the SVM��
	Ptr<SVM> svm = StatModel::train<SVM>(trainingDataMat, ROW_SAMPLE, labelsMat, params);

	Vec3b green(0,255,0), blue (255,0,0);
	//��ʾ��SVM�����ľ������� ��Show the decision regions given by the SVM��
	for (int i = 0; i < image.rows; ++i)
		for (int j = 0; j < image.cols; ++j)
		{
			Mat sampleMat = (Mat_<float>(1,2) << j,i);
			float response = svm->predict(sampleMat);

			if (response == 1)
				image.at<Vec3b>(i,j)  = green;
			else if (response == -1)
				image.at<Vec3b>(i,j)  = blue;
		}

		//��ʾѵ������ ��Show the training data��
		int thickness = -1;
		int lineType = 8;
		circle( image, Point(501,  10), 5, Scalar(  0,   0,   0), thickness, lineType);
		circle( image, Point(255,  10), 5, Scalar(255, 255, 255), thickness, lineType);
		circle( image, Point(501, 255), 5, Scalar(255, 255, 255), thickness, lineType);
		circle( image, Point( 10, 501), 5, Scalar(255, 255, 255), thickness, lineType);

		//��ʾ֧������ ��Show support vectors��
		thickness = 2;
		lineType  = 8;
		Mat sv = svm->getSupportVectors();

		for (int i = 0; i < sv.rows; ++i)
		{
			const float* v = sv.ptr<float>(i);
			circle(	image,  Point( (int) v[0], (int) v[1]),   6,  Scalar(128, 128, 128), thickness, lineType);
		}

		imwrite("result.png", image);        // ����ͼ��

		imshow("SVM Simple Example", image); // ��ʾͼ��
		waitKey(0);

}
