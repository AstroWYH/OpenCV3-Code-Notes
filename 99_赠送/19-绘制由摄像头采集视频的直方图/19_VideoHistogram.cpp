
//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������19
//		��������������������ͷ�ɼ���Ƶ��ֱ��ͼ
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	2.4.9
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------


//---------------------------------��ͷ�ļ��������ռ�������֡�-----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//-------------------------------------------------------------------------------------------------
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <stdio.h>
using namespace cv;
using namespace std;



//-----------------------------------��ȫ�ֱ����������֡�---------------------------------------
//		����������ȫ�ֱ���
//---------------------------------------------------------------------------------------------------
int nFrame_num=0;
bool pause=false;
bool tracking=false;
Rect preselectROI,selectROI;//���ڴ����ѡ�ľ���
bool comp=true;

Mat rhist,ghist,bhist;
int channels[]={0,1,2};
//const int histsize[]={256,256,256};
const int histsize[]={16,16,16};
const int histsize1=16;
float rranges[]={0,255};
float granges[]={0,255};
float branges[]={0,255};
float range[]={0,255};
const float *ranges1={range};//�����ranges���൱��һ��˫ָ����
const float *ranges[]={rranges,granges,branges};//ranges�Ǹ�˫ָ�룬��ǰ��һ��Ҫ��const�������ɸı䳣������߳���Ŀɶ��Ժ��Ƚ���
//const float *ranges[]={{0,255},{0,255},{0,255}};



//-----------------------------------��onMouse( )������--------------------------------------
//		���������ص�����
//-------------------------------------------------------------------------------------------------
void onMouse(int event,int x,int y,int,void *)
{
    if(event==CV_EVENT_LBUTTONDOWN)
    {
        selectROI.x=x;
        selectROI.y=y;
        tracking=false;
    }
    else if(event==CV_EVENT_LBUTTONUP)
    {
        selectROI.width=x-selectROI.x;
        selectROI.height=y-selectROI.y;
        tracking=true;
        comp=true;
        nFrame_num++;//ѡ����������������ϵĵ�һ֡
        if(nFrame_num>=10)nFrame_num=10;//��ֹnFrame_num���
    }
}

//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int  main(int argc, const char* argv[])
{
    Mat frame,img;
    Mat staRoiHist;
    MatND RoiHist;
    int DRAW_H=400,DRAW_W=400;
    Mat draw(DRAW_W,DRAW_H,CV_8UC3,Scalar(0,0,0));//����һ����ʾֱ��ͼ��ͼƬ������Ϊ����ɫ
    int DRAW_BIN_W=cvRound(DRAW_W/histsize1);

    //������ͷ
    VideoCapture cam(0);
    if(!cam.isOpened())
        return -1;


	cout<<"\n\n\n\n\t�������гɹ�����������ڴ��������ο�ѡ��Ҫ����ֱ��ͼ������"<<endl;
    //��겶׽
    namedWindow("camera",1);
    namedWindow("rgb_hist",1);
    setMouseCallback("camera",onMouse,0);//�����õ�����������˼�룬ֻҪ����궯���ͻ���������Ӧ����

    while(1)
    {
        if(!pause)//��ͣ��ťֻ�������Ƶ�Ķ�ȡ
        {        
        cam>>frame;
        if(frame.empty())
            break;//break�˴���������while��䣬һ��������for��while��䣬��Ҫ���Ϊ����if���
        }

        if(tracking)
        {
            Mat RoiImage(frame,selectROI);

			//-------------------------------------------------------------------------------------------------------------------
			//	calcHist():����ͼ����ֱ��ͼ����                                  
			//	calcHist(),��1������Ϊԭ���������б��ڶ�������Ϊ�м��㼸��ԭ���飻����3Ϊ��Ҫͳ�Ƶ�ͨ��������������4Ϊ��������
			//	��5������Ϊ���Ŀ��ֱ��ͼ���󣻲���6Ϊ��Ҫ�����ֱ��ͼ��ά��������7Ϊÿһά��bin�ĸ���������8Ϊÿһά��ֵ��ȡֵ��Χ
            //	����10Ϊÿ��bin�Ĵ�С�Ƿ���ͬ�ı�־��Ĭ��Ϊ1����bin�Ĵ�С����ͬ������11Ϊֱ��ͼ����ʱ����ڴ�ۼ���־��Ĭ��Ϊ0�������
			//-------------------------------------------------------------------------------------------------------------------
            calcHist(&RoiImage,1,channels,Mat(),RoiHist,3,histsize,ranges);//ԭ��������RoiImage,1��Դ����Ҫͳ�Ƶ�ͨ������Ϊ{0,1,2},
                                                                            //Ŀ��ֱ��ͼRoiHist��3ά��ÿһά��bin��histsize,ȡֵ��ΧΪ
                                                                            //ranges,ʵ���ϼ������Ŀ���������һά����
                                                                            

            //---------------------------------------------------------------------------------------------------------------------
            //	normalize()������ĳ�ַ���������ֵ��Χ��һ������
            //	normalize(),����1��ʾ��Ҫ��һ�������飻����2Ϊ��һ�����Ŀ������;����3��ʾ�����ֵ����Сֵ/���ֵ���������ֵ�ķ���;
            //	����4��ʾ�����ֵ����Сֵ/���ֵ;����5��ʾ��һ������ʹ�õĹ�һ�����ͣ�Ĭ��ֵΪʹ��L2����;����6Ϊ��ӦԪ�ص���Ĥ����
            //	Ĭ��ֵΪ�գ�����������Ĥ����                                        
			//---------------------------------------------------------------------------------------------------------------------
            normalize(RoiHist,RoiHist);//ʹ��L2������RoiHistֱ��ͼԭ�ع�һ��

            vector<Mat> rgb_planes;//�����vectorΪ��������������������ΪMat�ṹ�壬�����ĳ���Ϊ3
            split(RoiImage,rgb_planes);//��rgbͼ�ֽ⵽rgb_planes����������
            calcHist(&rgb_planes[0],1,0,Mat(),rhist,1,&histsize1,&ranges1);
            normalize(rhist,rhist,0,DRAW_H,NORM_MINMAX);//���������Сֵ��һ��
            calcHist(&rgb_planes[1],1,0,Mat(),ghist,1,&histsize1,&ranges1);
            normalize(ghist,ghist,0,DRAW_H,NORM_MINMAX);
            calcHist(&rgb_planes[2],1,0,Mat(),bhist,1,&histsize1,&ranges1);
            normalize(bhist,bhist,0,DRAW_H,NORM_MINMAX);
            if(nFrame_num==1)
            {
//                preselectROI=selectROI;
                preselectROI.x=selectROI.x;
                preselectROI.y=selectROI.y;
                preselectROI.width=selectROI.width;
                preselectROI.height=selectROI.height;
                staRoiHist=RoiHist.clone();//��һ��ѡ��Ŀ�꣬��Ϊ��׼ģ��Ŀ��
            }
            else if(nFrame_num>1&&comp==true)
            {
            //---------------------------------------------------------------------------------------------------------------------
			//	compareHist():�Ƚ�2��ֱ��ͼ�����ƶ�
            //	compareHist()������1Ϊ�Ƚ����ƶȵ�ֱ��ͼ1������2Ϊ�Ƚ����ƶȵ�ֱ��ͼ2������3Ϊ���ƶȵļ��㷽ʽ�������֣�
            //	�ֱ�ΪCV_COMP_CORREL,CV_COMP_CHISQR,CV_COMP_INTERSECT,CV_COMP_BHATTACHARYYA   
            //---------------------------------------------------------------------------------------------------------------------
                double distence=compareHist(staRoiHist,RoiHist,CV_COMP_INTERSECT);//�������ѡ���������ѡ�������ƶȣ�ʹ��INTERSECT��ֵԽ��Խ����
                printf("\n\t>���1��ѡ����ͼ���������ƶ�Ϊ��%f\n",distence);//����Խ�����ƶ�Խ��

                //��ʾֱ��ͼ
                for(int i=1;i<histsize1;i++)
                {
                    //��ֱ����Ҫע��2�㣬��ΪͼƬ��ԭ�������Ͻǣ���ֱ��ͼ����ϵ��ԭ�������½ǣ����Ը߶�ֵ����Ҫ��ֱ��ͼͼֽ�߶ȼ���������ȡһάֱ��ͼʱֻ����at�����
                    line(draw,Point(DRAW_BIN_W*(i-1),DRAW_H-cvRound(rhist.at<float>((i-1)))),Point(DRAW_BIN_W*(i),DRAW_H-cvRound(rhist.at<float>(i))),Scalar(255,0,0),2,8,0);
                    line(draw,Point(DRAW_BIN_W*(i-1),DRAW_H-cvRound(ghist.at<float>((i-1)))),Point(DRAW_BIN_W*(i),DRAW_H-cvRound(ghist.at<float>(i))),Scalar(0,255,0),2,8,0);
                    line(draw,Point(DRAW_BIN_W*(i-1),DRAW_H-cvRound(bhist.at<float>((i-1)))),Point(DRAW_BIN_W*(i),DRAW_H-cvRound(bhist.at<float>(i))),Scalar(0,0,255),2,8,0);
                }
                imshow("rgb_hist",draw);
                draw=Mat::zeros(DRAW_W,DRAW_H,CV_8UC3);//ÿ����һ��ֱ��ͼ�󶼽���һ����0����
                comp=false;
            }
            rectangle(frame,selectROI,Scalar(0,255,0),2,8);//�ֶ�ѡ��һ�ξ���ʾһ��
        }//end tracking
        rectangle(frame,preselectROI,Scalar(0,0,255),5,8);//��ʼ��ѡ��Ŀ��һֱ����
        imshow("camera",frame);

        //������Ӧ
        char c = (char)waitKey(10);
        if( c == 27 )
            break;
        switch(c)
        {
        case 'p'://��ͣ��
            pause = !pause;
            break;
        default:
            ;
        }
    }//end while;
    return 0;
}