#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
using namespace cv;



//-----------------------------------��ShowHelpText( )������-----------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�79������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");
}


//--------------------------------------��main( )������-----------------------------------------
//          ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main( )
{

	//��1������Դͼ��ת��ΪHSV��ɫģ��
	Mat srcImage, hsvImage;
	srcImage=imread("1.jpg");
	cvtColor(srcImage,hsvImage, CV_BGR2HSV);

	system("color 2F");
	ShowHelpText();

	//��2������׼��
	//��ɫ������Ϊ30���ȼ��������Ͷ�����Ϊ32���ȼ�
	int hueBinNum = 30;//ɫ����ֱ��ͼֱ������
	int saturationBinNum = 32;//���Ͷȵ�ֱ��ͼֱ������
	int histSize[ ] = {hueBinNum, saturationBinNum};
	// ����ɫ���ı仯��ΧΪ0��179
	float hueRanges[] = { 0, 180 };
	//���履�Ͷȵı仯��ΧΪ0���ڡ��ס��ң���255����������ɫ��
	float saturationRanges[] = { 0, 256 };
	const float* ranges[] = { hueRanges, saturationRanges };
	MatND dstHist;
	//����׼����calcHist�����н������0ͨ���͵�1ͨ����ֱ��ͼ
	int channels[] = {0, 1};

	//��3����ʽ����calcHist������ֱ��ͼ����
	calcHist( &hsvImage,//���������
		1, //�������Ϊ1
		channels,//ͨ������
		Mat(), //��ʹ����Ĥ
		dstHist, //�����Ŀ��ֱ��ͼ
		2, //��Ҫ�����ֱ��ͼ��ά��Ϊ2
		histSize, //���ÿ��ά�ȵ�ֱ��ͼ�ߴ������
		ranges,//ÿһά��ֵ��ȡֵ��Χ����
		true, // ָʾֱ��ͼ�Ƿ���ȵı�ʶ����true��ʾ���ȵ�ֱ��ͼ
		false );//�ۼƱ�ʶ����false��ʾֱ��ͼ�����ý׶λᱻ����

	//��4��Ϊ����ֱ��ͼ׼������
	double maxValue=0;//���ֵ
	minMaxLoc(dstHist, 0, &maxValue, 0, 0);//����������������ȫ����Сֵ�����ֵ����maxValue��
	int scale = 10;
	Mat histImg = Mat::zeros(saturationBinNum*scale, hueBinNum*10, CV_8UC3);

	//��5��˫��ѭ��������ֱ��ͼ����
	for( int hue = 0; hue < hueBinNum; hue++ )
		for( int saturation = 0; saturation < saturationBinNum; saturation++ )
		{
			float binValue = dstHist.at<float>(hue, saturation);//ֱ��ͼ����ֵ
			int intensity = cvRound(binValue*255/maxValue);//ǿ��

			//��ʽ���л���
			rectangle( histImg, Point(hue*scale, saturation*scale),
				Point( (hue+1)*scale - 1, (saturation+1)*scale - 1),
				Scalar::all(intensity),
				CV_FILLED );
		}

		//��6����ʾЧ��ͼ
		imshow( "�ز�ͼ", srcImage );
		imshow( "H-S ֱ��ͼ", histImg );

		waitKey();
}