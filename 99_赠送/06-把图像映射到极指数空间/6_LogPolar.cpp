//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������06
//		������������ͼ��ӳ�䵽��ָ���ռ� 
//		�������ò���ϵͳ�� Windows 7 64bit
//		��������IDE�汾��Visual Studio 2010
//		��������OpenCV�汾��	2.4.9
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------

/*Authors
* Manuela Chessa, Fabio Solari, Fabio Tatti, Silvio P. Sabatini
*
* manuela.chessa@unige.it, fabio.solari@unige.it
*
* PSPC-lab - University of Genoa
*/

//---------------------------------��ͷ�ļ��������ռ�������֡�----------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------
#include "opencv2/opencv.hpp"
#include <iostream>
#include <cmath>
using namespace cv;
using namespace std;


//-----------------------------------��help( )������----------------------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
static void help( )
{
	cout << "\n\n\t�˳������ڰ�ͼ��ӳ�䵽��ָ���ռ�,���������ַ�ʽ��ѡ��\n"<<
		"\n\n\t��n��-�������ڽ����ؼ�����nearest pixel technique��"<<
		"\n\n\t��b��-����˫���Բ�ֵ������bilinear interpolation technique��"<<
		"\n\n\t��o��-ʹ���ص���Բ�εĽ�����overlapping circular receptive fields��"<<
		"\n\n\t��a��-ʹ�����ڵĽ�����adjacent receptive fields��";

}


//-----------------------------------��main( )������--------------------------------------------
//		����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼ
//-------------------------------------------------------------------------------------------------
int main(int argc, char** argv)
{
	//����ͼƬ
	Mat img = imread("1.jpg",1); 
	if(img.empty()) 
	{
		cout << "can not load image\n";
		return 0;
	}

	help();

	Size s=img.size();
	int w=s.width, h=s.height;
	int ro0=3; //�뾶��ä�㣨radius of the blind spot��
	int R=120;  //����������number of rings��

	//Creation of the four different objects that implement the four log-polar transformations
	//���߼��㣨Off-line computation��
	Point2i center(w/2,h/2);
	LogPolar_Interp nearest(w, h, center, R, ro0, INTER_NEAREST);
	LogPolar_Interp bilin(w,h, center,R,ro0);
	LogPolar_Overlapping overlap(w,h,center,R,ro0);
	LogPolar_Adjacent adj(w,h,center,R,ro0,0.25);

	namedWindow("Cartesian",1);
	namedWindow("retinal",1);
	namedWindow("cortical",1);
	int wk='n';
	Mat Cortical, Retinal;

	//���߼��㣨On-line computation��
	for(;;)
	{
		if(wk=='n')
		{
			Cortical=nearest.to_cortical(img);
			Retinal=nearest.to_cartesian(Cortical);
		}
		else if (wk=='b')
		{
			Cortical=bilin.to_cortical(img);
			Retinal=bilin.to_cartesian(Cortical);
		}
		else if (wk=='o')
		{
			Cortical=overlap.to_cortical(img);
			Retinal=overlap.to_cartesian(Cortical);
		}
		else if (wk=='a')
		{
			Cortical=adj.to_cortical(img);
			Retinal=adj.to_cartesian(Cortical);
		}

		imshow("Cartesian", img);
		imshow("cortical", Cortical);
		imshow("retinal", Retinal);

		int c=waitKey(0);
		if (c>0) wk=c;
		if(wk =='q' || (wk & 255) == 27) break;
	}

	return 0;
}