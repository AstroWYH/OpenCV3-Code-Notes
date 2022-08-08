
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������18
//		������������������ͷ�ɼ���Ƶ��ֱ��ͼ��ͶӰ
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	2.4.9
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------
// Program to illustrate histogram backprojection 
// Author: Samarth Manoj Brahmbhatt, University of Pennsylvania


//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace cv;
using namespace std;


//-----------------------------------��ȫ�ֱ����������֡�---------------------------------------
//		����������ȫ�ֱ���
//---------------------------------------------------------------------------------------------------
Mat frame_hsv, frame, mask;
MatND hist; //2Dֱ��ͼ
int conn = 4, val = 255, flags = conn + (val << 8) + CV_FLOODFILL_MASK_ONLY;
bool selected = false;
// ֱ��ͼ��ز���
float hrange[] = {0, 179}, srange[] = {0, 255};
const float *ranges[] = {hrange, srange};


//-----------------------------------��on_mouse( )������-------------------------------------
//		���������ص�����
//-------------------------------------------------------------------------------------------------
void on_mouse(int event, int x, int y, int, void *) {
	if(event != EVENT_LBUTTONDOWN) return;

	selected = true;

	// floodFill
	Point p(x, y);
	mask = Scalar::all(0);
	floodFill(frame, mask, p, Scalar(255, 255, 255), 0, Scalar(10, 10, 10), Scalar(10, 10, 10), flags);
	Mat _mask = mask.rowRange(1, mask.rows-1).colRange(1, mask.cols-1);

	// number of bins in the histogram for each channel
	int histSize[] = {50, 50}, channels[] = {0, 1};

	// calculate and normalize histogram
	calcHist(&frame_hsv, 1, channels, _mask, hist, 2, histSize, ranges);
	normalize(hist, hist, 0, 255, NORM_MINMAX, -1, Mat());
}



//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main( ) 
{
	//������ͷ������Ƶ
	VideoCapture cap(0);

	//����Ƿ��ȡ�ɹ�
	if(!cap.isOpened()) {
		cout << "Capture could not be opened succesfully" << endl;
		return -1;
	}

	namedWindow("Video");
	namedWindow("Backprojection");

	setMouseCallback("Video", on_mouse);

	while(char(waitKey(1)) != 'q' && cap.isOpened()) {
		cap >> frame;
		if(!selected) mask.create(frame.rows+2, frame.cols+2, CV_8UC1);
		// Check if the video is over
		if(frame.empty()) {
			cout << "Video over" << endl;
			break;
		}
		cvtColor(frame, frame_hsv, CV_BGR2HSV);

		// backproject on the HSV image
		Mat frame_backprojected = Mat::zeros(frame.size(), CV_8UC1);        
		if(selected) {
			int channels[] = {0, 1};
			calcBackProject(&frame_hsv, 1, channels, hist, frame_backprojected, ranges);
		}

		imshow("Video", frame);
		imshow("Backprojection", frame_backprojected);
	}

	return 0;
}
