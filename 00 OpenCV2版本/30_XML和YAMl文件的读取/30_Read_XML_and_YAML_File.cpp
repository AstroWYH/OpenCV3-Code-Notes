//--------------------------------------������˵����-------------------------------------------
//		����˵������OpenCV3������š�OpenCV2���鱾����ʾ������30
//		����������XML��YAML�ļ��Ķ�ȡ
//		�����������ò���ϵͳ�� Windows 7 64bit
//		������������IDE�汾��Visual Studio 2010
//		������������OpenCV�汾��	2.4.9
//		2014��06�� Created by @ǳī_ë����
//		2014��11�� Revised by @ǳī_ë����
//------------------------------------------------------------------------------------------------


//---------------------------------��ͷ�ļ��������ռ�������֡�-------------------------------
//		����������������ʹ�õ�ͷ�ļ��������ռ�
//------------------------------------------------------------------------------------------------       
#include "opencv2/opencv.hpp"  
#include <time.h>  
using namespace cv;  
using namespace std;  


//-----------------------------------��ShowHelpText( )������----------------------------------
//		 ���������һЩ������Ϣ
//----------------------------------------------------------------------------------------------
void ShowHelpText()
{
	//�����ӭ��Ϣ��OpenCV�汾
	printf("\n\n\t\t\t�ǳ���л����OpenCV3������š�һ�飡\n");
	printf("\n\n\t\t\t��Ϊ����OpenCV2��ĵ�30������ʾ������\n");
	printf("\n\n\t\t\t   ��ǰʹ�õ�OpenCV�汾Ϊ��" CV_VERSION );
	printf("\n\n  ----------------------------------------------------------------------------\n\n");
}




int main( )  
{  
	//�ı�console������ɫ
	system("color 6F"); 

	ShowHelpText();

	//��ʼ��
	FileStorage fs2("test.yaml", FileStorage::READ);  

	// ��һ�ַ�������FileNode����
	int frameCount = (int)fs2["frameCount"];  

	std::string date;  
	// �ڶ��ַ�����ʹ��FileNode�����> > 
	fs2["calibrationDate"] >> date;  

	Mat cameraMatrix2, distCoeffs2;  
	fs2["cameraMatrix"] >> cameraMatrix2;  
	fs2["distCoeffs"] >> distCoeffs2;  

	cout << "frameCount: " << frameCount << endl  
		<< "calibration date: " << date << endl  
		<< "camera matrix: " << cameraMatrix2 << endl  
		<< "distortion coeffs: " << distCoeffs2 << endl;  

	FileNode features = fs2["features"];  
	FileNodeIterator it = features.begin(), it_end = features.end();  
	int idx = 0;  
	std::vector<uchar> lbpval;  

	//ʹ��FileNodeIterator��������
	for( ; it != it_end; ++it, idx++ )  
	{  
		cout << "feature #" << idx << ": ";  
		cout << "x=" << (int)(*it)["x"] << ", y=" << (int)(*it)["y"] << ", lbp: (";  
		// ����Ҳ����ʹ��ʹ��filenode > > std::vector�����������׵Ķ���ֵ����
		(*it)["lbp"] >> lbpval;  
		for( int i = 0; i < (int)lbpval.size(); i++ )  
			cout << " " << (int)lbpval[i];  
		cout << ")" << endl;  
	}  
	fs2.release();  

	//������������һЩ��������
	printf("\n�ļ���ȡ��ϣ��������������������~");
	getchar();

	return 0;  
}  
