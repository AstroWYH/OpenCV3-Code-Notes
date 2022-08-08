//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������14
//		������������Ƶ��ͼ
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	2.4.9
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------

/*
 * starter_video.cpp
 *
 *  Created on: Nov 23, 2010
 *      Author: Ethan Rublee
 *
 * A starter sample for using opencv, get a video stream and display the images
 * Use http://datamatrix.kaywa.com/  to generate datamatrix images using strings of length 3 or less.
 * easy as CV_PI right?
 */


//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include "opencv2/highgui/highgui.hpp"
#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include <vector>
#include <stdio.h>
using namespace cv;
using namespace std;



//--------------------------------------��process( )������----------------------------------
//		 ���������д���
//----------------------------------------------------------------------------------------------
int process(VideoCapture& capture)
{
    int n = 0;
    char filename[200];
    string window_name = "video | q or esc to quit";
    cout << " \n\t���¡�Space���ո�����Խ�ͼ��ͼƬ������ڹ���Ŀ¼�¡�\n\n\t��Esc���͡�q���� - �˳����� " << endl;
    namedWindow(window_name, CV_WINDOW_KEEPRATIO); //resizable window;
    Mat frame;
    for (;;)
    {
        capture >> frame;
        if (frame.empty())
            break;
        cv::Mat gray;
        cv::cvtColor(frame,gray,COLOR_RGB2GRAY);
        vector<string> codes;
        Mat corners;
        findDataMatrix(gray, codes, corners);
        drawDataMatrixCodes(frame, codes, corners);
        imshow(window_name, frame);
        char key = (char) waitKey(1); //delay N millis, usually long enough to display and capture input
        switch (key)
        {
            case 'q':
            case 'Q':
            case 27: //escape key
                return 0;
            case ' ': //Save an image
                sprintf(filename, "��Ƶ��ͼ%.3d.jpg", n++);
                imwrite(filename, frame);
                cout << "\n\t>������ " << filename <<"�ļ�������Ŀ¼��"<< endl;
                break;
            default:
                break;
        }
    }
    return 0;
}


//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main( )
{

    VideoCapture capture("1.avi"); //���ļ�������Ƶ
	//VideoCapture capture(0); //������ͷ������Ƶ
    if (!capture.isOpened())
    {
        cerr << "Failed to open a video device or video file!\n" << endl;
        return 1;
    }

    return process(capture);
}
