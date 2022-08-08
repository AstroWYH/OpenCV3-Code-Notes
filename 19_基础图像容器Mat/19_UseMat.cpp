//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV3���鱾����ʾ������19
//		��������������ͼ������Mat���ʹ��
//		�����������ò���ϵͳ�� Windows 7 64bit
//		������������IDE�汾��Visual Studio 2010
//		������������OpenCV�汾��	3.0 beta
//		2014��11�� Created by @ǳī_ë����
//		2014��12�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------



//---------------------------------��ͷ�ļ��������ռ�������֡�---------------------------
//          ����������������ʹ�õ�ͷ�ļ��������ռ�
//-----------------------------------------------------------------------------------------------
#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <iostream>
using namespace std;
using namespace cv;



//-----------------------------��ShowHelpText( )������--------------------------------------
//		���������������Ϣ
//-------------------------------------------------------------------------------------------------
static void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV3��ĵ�19������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n");

	//���һЩ������Ϣ
	printf("\n\n\n\t��ӭ����������ͼ������-Mat�ࡿʾ������~\n\n"); 	
	printf("\n\n\t����˵����\n\n\t��ʾ������������ʾMat��ĸ�ʽ��������ܣ��������Ϊ��");
	printf("\n\n\n\t��1��OpenCVĬ�Ϸ��");
	printf("\n\n\t��2��Python���");
	printf("\n\n\t��3�����ŷָ����");
	printf("\n\n\t��4��Numpy���");
	printf("\n\n\t��5��C���Է��\n\n");
	printf("\n  --------------------------------------------------------------------------\n");



}


//--------------------------------------��main( )������-----------------------------------------
//          ����������̨Ӧ�ó������ں��������ǵĳ�������￪ʼִ��
//-----------------------------------------------------------------------------------------------
int main(int,char**)
{
	//�ı����̨��ǰ��ɫ�ͱ���ɫ
	system("color 8F"); 

	//��ʾ��������
	ShowHelpText();

	Mat I = Mat::eye(4, 4, CV_64F);
	I.at<double>(1,1) = CV_PI;
	cout << "\nI = " << I << ";\n" << endl;

	Mat r = Mat(10, 3, CV_8UC3);
	randu(r, Scalar::all(0), Scalar::all(255));

	//�˶δ����OpenCV2��Ϊ��
	//cout << "r (OpenCVĬ�Ϸ��) = " << r << ";" << endl << endl;
	//cout << "r (Python���) = " << format(r,"python") << ";" << endl << endl;
	//cout << "r (Numpy���) = " << format(r,"numpy") << ";" << endl << endl;
	//cout << "r (���ŷָ����) = " << format(r,"csv") << ";" << endl<< endl;
	//cout << "r (C���Է��) = " << format(r,"C") << ";" << endl << endl;
	//�˶δ����OpenCV3��Ϊ��
	cout << "r (OpenCVĬ�Ϸ��) = " << r << ";" << endl << endl;
	cout << "r (Python���) = " << format(r, Formatter::FMT_PYTHON) << ";" << endl << endl;
	cout << "r (Numpy���) = " <<  format(r, Formatter::FMT_NUMPY )<< ";" << endl << endl;
	cout << "r (���ŷָ����) = " << format(r, Formatter::FMT_CSV   )<< ";" << endl<< endl;
	cout << "r (C���Է��) = " <<  format(r, Formatter::FMT_C     ) << ";" << endl << endl;


	Point2f p(6, 2);
	cout << "��2ά�㡿p = " << p << ";\n" << endl;

	Point3f p3f(8, 2, 0);
	cout << "��3ά�㡿p3f = " << p3f << ";\n" << endl;

	vector<float> v;
	v.push_back(3);
	v.push_back(5);
	v.push_back(7);

	cout << "������Mat��vector��shortvec = " << Mat(v) << ";\n"<<endl;

	vector<Point2f> points(20);
	for (size_t i = 0; i < points.size(); ++i)
		points[i] = Point2f((float)(i * 5), (float)(i % 7));

	cout << "����ά��������points = " << points<<";";

	getchar();//��������˳�

	return 0;


}
