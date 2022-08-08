

//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������04
//		����������������ɸ���ͼ���˲����������
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	2.4.9
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------


//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
using namespace std;
using namespace cv;



//-----------------------------------��ȫ�ֱ����������֡�---------------------------------------
//		����������ȫ�ֱ���
//---------------------------------------------------------------------------------------------------
int DELAY_CAPTION = 1500;
int DELAY_BLUR = 100;
int MAX_KERNEL_LENGTH = 31;
Mat src; Mat dst;
char window_name[] = "Filter Demo 1";



//-----------------------------------������ԭ���������֡�---------------------------------------
//		����������ԭ������
//---------------------------------------------------------------------------------------------------
int display_caption( char* caption );
int display_dst( int delay );


//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
 int main( int argc, char** argv )
 {
   namedWindow( window_name, CV_WINDOW_AUTOSIZE );

   // ����ԭͼ��
   src = imread( "pic1.jpg", 1 );

   if( display_caption( "Original Image" ) != 0 ) { return 0; }

   dst = src.clone();
   if( display_dst( DELAY_CAPTION ) != 0 ) { return 0; }

   // ʹ�� ��ֵƽ��
   if( display_caption( "Homogeneous Blur" ) != 0 ) { return 0; }

   for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
       { blur( src, dst, Size( i, i ), Point(-1,-1) );
         if( display_dst( DELAY_BLUR ) != 0 ) { return 0; } }

    // ʹ�ø�˹ƽ��
    if( display_caption( "Gaussian Blur" ) != 0 ) { return 0; }

    for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
        { GaussianBlur( src, dst, Size( i, i ), 0, 0 );
          if( display_dst( DELAY_BLUR ) != 0 ) { return 0; } }

     // ʹ����ֵƽ��
     if( display_caption( "Median Blur" ) != 0 ) { return 0; }

     for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
         { medianBlur ( src, dst, i );
           if( display_dst( DELAY_BLUR ) != 0 ) { return 0; } }

     // ʹ��˫��ƽ��
     if( display_caption( "Bilateral Blur" ) != 0 ) { return 0; }

     for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
         { bilateralFilter ( src, dst, i, i*2, i/2 );
           if( display_dst( DELAY_BLUR ) != 0 ) { return 0; } }

    // �ȴ��û�����
     display_caption( "End: Press a key!" );

     waitKey(0);
     return 0;
 }



 //-----------------------------------��display_caption( )������----------------------------
 //		 ��������ʾ����
 //----------------------------------------------------------------------------------------------
 int display_caption( char* caption )
 {
   dst = Mat::zeros( src.size(), src.type() );
   putText( dst, caption,
            Point( src.cols/4, src.rows/2),
            CV_FONT_HERSHEY_COMPLEX, 1, Scalar(255, 255, 255) );

   imshow( window_name, dst );
   int c = waitKey( DELAY_CAPTION );
   if( c >= 0 ) { return -1; }
   return 0;
  }


 //-----------------------------------��display_dst( )������---------------------------------
 //		 ��������ʾ����
 //----------------------------------------------------------------------------------------------
  int display_dst( int delay )
  {
    imshow( window_name, dst );
    int c = waitKey ( delay );
    if( c >= 0 ) { return -1; }
    return 0;
  }
