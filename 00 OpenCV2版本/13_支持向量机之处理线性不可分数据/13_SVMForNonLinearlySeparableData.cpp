
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������13
//		��������������OpenCV��װĿ¼��Samples�ļ����еĹٷ�ʾ������-֧��������SVM֮�������Բ��ɷ�����
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	2.4.9
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------



//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include <iostream>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/ml/ml.hpp>

#define NTRAINING_SAMPLES   100         // ÿ��ѵ������������
#define FRAC_LINEAR_SEP     0.9f        //  ����(Fraction)���Կɷֵ�������ɲ���

using namespace cv;
using namespace std;




//-----------------------------------��ShowHelpText( )������----------------------------------
//          ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�13������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
}

//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main()
{
	//�����Ӿ����Ĳ���
	const int WIDTH = 512, HEIGHT = 512;
	Mat I = Mat::zeros(HEIGHT, WIDTH, CV_8UC3);
	ShowHelpText();

	//--------------------- ��1���������ѵ������ ---------------------------------------
	Mat trainData(2*NTRAINING_SAMPLES, 2, CV_32FC1);
	Mat labels   (2*NTRAINING_SAMPLES, 1, CV_32FC1);

	RNG rng(100); // �������ֵ

	//����ѵ�����ݵ����Կɷֵ���ɲ���
	int nLinearSamples = (int) (FRAC_LINEAR_SEP * NTRAINING_SAMPLES);

	// ΪClass1���������
	Mat trainClass = trainData.rowRange(0, nLinearSamples);
	// ���x����Ϊ[0,0.4)
	Mat c = trainClass.colRange(0, 1);
	rng.fill(c, RNG::UNIFORM, Scalar(1), Scalar(0.4 * WIDTH));
	// ���Y����Ϊ[0,1)
	c = trainClass.colRange(1,2);
	rng.fill(c, RNG::UNIFORM, Scalar(1), Scalar(HEIGHT));

	// ΪClass2���������
	trainClass = trainData.rowRange(2*NTRAINING_SAMPLES-nLinearSamples, 2*NTRAINING_SAMPLES);
	// ���x����Ϊ[0.6, 1]
	c = trainClass.colRange(0 , 1); 
	rng.fill(c, RNG::UNIFORM, Scalar(0.6*WIDTH), Scalar(WIDTH));
	// ���Y����Ϊ[0, 1)
	c = trainClass.colRange(1,2);
	rng.fill(c, RNG::UNIFORM, Scalar(1), Scalar(HEIGHT));

	//------------------����ѵ�����ݵķ����Կɷ���ɲ��� ---------------

	// �������Class1��Class2�ĵ�
	trainClass = trainData.rowRange(  nLinearSamples, 2*NTRAINING_SAMPLES-nLinearSamples);
	// ���x����Ϊ[0.4, 0.6)
	c = trainClass.colRange(0,1);
	rng.fill(c, RNG::UNIFORM, Scalar(0.4*WIDTH), Scalar(0.6*WIDTH)); 
	// ���y����Ϊ[0, 1)
	c = trainClass.colRange(1,2);
	rng.fill(c, RNG::UNIFORM, Scalar(1), Scalar(HEIGHT));

	//-------------------------�������ǩ ---------------------------------
	labels.rowRange(                0,   NTRAINING_SAMPLES).setTo(1);  // Class 1
	labels.rowRange(NTRAINING_SAMPLES, 2*NTRAINING_SAMPLES).setTo(2);  // Class 2

	//------------------------ 2. ����֧���������Ĳ��� --------------------
	CvSVMParams params;
	params.svm_type    = SVM::C_SVC;
	params.C           = 0.1;
	params.kernel_type = SVM::LINEAR;
	params.term_crit   = TermCriteria(CV_TERMCRIT_ITER, (int)1e7, 1e-6);

	//------------------------ 3. ѵ��֧�������� ----------------------------------------------------
	cout << "Starting training process" << endl;
	CvSVM svm;
	svm.train(trainData, labels, Mat(), Mat(), params);
	cout << "Finished training process" << endl;

	//------------------------ 4. �����������decision regions�� ----------------------------------------
	Vec3b green(0,100,0), blue (100,0,0);
	for (int i = 0; i < I.rows; ++i)
		for (int j = 0; j < I.cols; ++j)
		{
			Mat sampleMat = (Mat_<float>(1,2) << i, j);
			float response = svm.predict(sampleMat);

			if      (response == 1)    I.at<Vec3b>(j, i)  = green;
			else if (response == 2)    I.at<Vec3b>(j, i)  = blue;
		}

		//----------------------- 5. ��ʾѵ�����ݣ�training data�� --------------------------------------------
		int thick = -1;
		int lineType = 8;
		float px, py;
		// Class 1
		for (int i = 0; i < NTRAINING_SAMPLES; ++i)
		{
			px = trainData.at<float>(i,0);
			py = trainData.at<float>(i,1);
			circle(I, Point( (int) px,  (int) py ), 3, Scalar(0, 255, 0), thick, lineType);
		}
		// Class 2
		for (int i = NTRAINING_SAMPLES; i <2*NTRAINING_SAMPLES; ++i)
		{
			px = trainData.at<float>(i,0);
			py = trainData.at<float>(i,1);
			circle(I, Point( (int) px, (int) py ), 3, Scalar(255, 0, 0), thick, lineType);
		}

		//------------------------- 6. ��ʾ֧��������support vectors�� --------------------------------------------
		thick = 2;
		lineType  = 8;
		int x     = svm.get_support_vector_count();

		for (int i = 0; i < x; ++i)
		{
			const float* v = svm.get_support_vector(i);
			circle( I,  Point( (int) v[0], (int) v[1]), 6, Scalar(128, 128, 128), thick, lineType);
		}

		imwrite("result.png", I);                      //����ͼ���ļ�
		imshow("SVM for Non-Linear Training Data", I); // ��ʾ���մ���
		waitKey(0);
}
