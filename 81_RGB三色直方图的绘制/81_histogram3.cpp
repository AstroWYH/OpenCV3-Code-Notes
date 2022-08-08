//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������81
//		��������������RGB��ɫ������ֱ��ͼ
//		�����������ò���ϵͳ�� Windows 7 64bit
//		������������IDE�汾��Visual Studio 2010
//		������������OpenCV�汾��	3.0 beta
//		2014��11�� Created by @ǳī_ë����
//		2014��12�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------



//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include <opencv2/opencv.hpp>  
#include <opencv2/imgproc/imgproc.hpp>  
using namespace cv;  



//-----------------------------------��ShowHelpText( )������-----------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV3��ĵ�81������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
}


//--------------------------------------��main( )������-----------------------------------------
//          ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main(  )
{

	//��1�������ز�ͼ����ʾ
	Mat srcImage;
	srcImage=imread("1.jpg");
	imshow( "�ز�ͼ", srcImage );

	system("color 3F");
	ShowHelpText();

	//��2������׼��
	int bins = 256;
	int hist_size[] = {bins};
	float range[] = { 0, 256 };
	const float* ranges[] = { range};
	MatND redHist,grayHist,blueHist;
	int channels_r[] = {0};

	//��3������ֱ��ͼ�ļ��㣨��ɫ�������֣�
	calcHist( &srcImage, 1, channels_r, Mat(), //��ʹ����Ĥ
		redHist, 1, hist_size, ranges,
		true, false );

	//��4������ֱ��ͼ�ļ��㣨��ɫ�������֣�
	int channels_g[] = {1};
	calcHist( &srcImage, 1, channels_g, Mat(), // do not use mask
		grayHist, 1, hist_size, ranges,
		true, // the histogram is uniform
		false );

	//��5������ֱ��ͼ�ļ��㣨��ɫ�������֣�
	int channels_b[] = {2};
	calcHist( &srcImage, 1, channels_b, Mat(), // do not use mask
		blueHist, 1, hist_size, ranges,
		true, // the histogram is uniform
		false );

	//-----------------------���Ƴ���ɫֱ��ͼ------------------------
	//����׼��
	double maxValue_red,maxValue_green,maxValue_blue;
	minMaxLoc(redHist, 0, &maxValue_red, 0, 0);
	minMaxLoc(grayHist, 0, &maxValue_green, 0, 0);
	minMaxLoc(blueHist, 0, &maxValue_blue, 0, 0);
	int scale = 1;
	int histHeight=256;
	Mat histImage = Mat::zeros(histHeight,bins*3, CV_8UC3);

	//��ʽ��ʼ����
	for(int i=0;i<bins;i++)
	{
		//����׼��
		float binValue_red = redHist.at<float>(i); 
		float binValue_green = grayHist.at<float>(i);
		float binValue_blue = blueHist.at<float>(i);
		int intensity_red = cvRound(binValue_red*histHeight/maxValue_red);  //Ҫ���Ƶĸ߶�
		int intensity_green = cvRound(binValue_green*histHeight/maxValue_green);  //Ҫ���Ƶĸ߶�
		int intensity_blue = cvRound(binValue_blue*histHeight/maxValue_blue);  //Ҫ���Ƶĸ߶�

		//���ƺ�ɫ������ֱ��ͼ
		rectangle(histImage,Point(i*scale,histHeight-1),
			Point((i+1)*scale - 1, histHeight - intensity_red),
			Scalar(255,0,0));

		//������ɫ������ֱ��ͼ
		rectangle(histImage,Point((i+bins)*scale,histHeight-1),
			Point((i+bins+1)*scale - 1, histHeight - intensity_green),
			Scalar(0,255,0));

		//������ɫ������ֱ��ͼ
		rectangle(histImage,Point((i+bins*2)*scale,histHeight-1),
			Point((i+bins*2+1)*scale - 1, histHeight - intensity_blue),
			Scalar(0,0,255));

	}

	//�ڴ�������ʾ�����ƺõ�ֱ��ͼ
	imshow( "ͼ���RGBֱ��ͼ", histImage );
	waitKey(0);
	return 0;
}
