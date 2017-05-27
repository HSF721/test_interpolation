// 3_Axis_controlDlg.cpp : implementation file
//

#include "stdafx.h"
#include "3_Axis_control.h"
#include "3_Axis_controlDlg.h"
#include "head.h"
#include "gts.h"
#include <string>
#include "string.h"
#include "math.h"
//#include "stack.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

struct my_data
{
	float acc;
	float dis;
};
my_data  data_axis1;
my_data  data_axis2;
my_data  data_axis3;
/******************************自定义全局变量****************************************************/
int flag_stop=0;
int flag = 0;
int flag_stop_P2P_move = 1;//为1的时候运动，为0的时候停止
BOOL flag_move_by_key = 0;//为1时表示启用键盘调整位置，为0时表示关闭
BOOL flag_servo_on=0;//为0表示关闭，为1表示开启
int AXIS=2;
double k=0,j=0;//onTimer里的变量
//volatile 作用是告诉编译器不用做任何优化，即无需将它放到一个寄存器中，并且该值可被外部改变
volatile BOOL flag_stop_P2P1=1;//为1表示不用结束，为0表示要结束 1轴的标志位
volatile BOOL flag_stop_P2P2=1;//为1表示不用结束，为0表示要结束 2轴的标志位
volatile BOOL flag_stop_P2P3=1;//为1表示不用结束，为0表示要结束 3轴的标志位
int position_x=0;
int position_y=0;
double distance_value_global=0;
struct destination_point
		{
			int x;
			int y;
		};
destination_point new_line_point;//直线插补的终点坐标（结构体类型）

struct inf_circle_interpolation
{
	//沿逆时针方向运动
	int R;//半径
	double angle;//角度
};
inf_circle_interpolation new_inf_circle_interpolation;
/******************************自定义全局变量****************************************************/

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMy3_Axis_controlDlg dialog

CMy3_Axis_controlDlg::CMy3_Axis_controlDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CMy3_Axis_controlDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CMy3_Axis_controlDlg)
	m_distance_value = 0.0f;
	m_acc_dcc_value = 0.0f;
	m_step_distance = 0.0f;
	m_step_speed = 0.0f;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CMy3_Axis_controlDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CMy3_Axis_controlDlg)
	DDX_Control(pDX, IDC_AXIS_NUM, m_axis_num);
	DDX_Text(pDX, IDC_DISTANCE, m_distance_value);
	DDX_Text(pDX, IDC_ACC_and_DCC, m_acc_dcc_value);
	DDX_Text(pDX, IDC_step_distance, m_step_distance);
	DDX_Text(pDX, IDC_step_speed, m_step_speed);
	DDX_Control(pDX, IDC_TCHART1, m_TeeChart);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CMy3_Axis_controlDlg, CDialog)
	//{{AFX_MSG_MAP(CMy3_Axis_controlDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_INIT, OnInit)
	ON_BN_CLICKED(IDC_SHUTDOWN_SERVO, OnShutdownServo)
	ON_BN_CLICKED(IDC_QUIT, OnQuit)
	ON_BN_CLICKED(IDC_X_PLUS, OnXPlus)
	ON_BN_CLICKED(IDC_X_MINUS, OnXMinus)
	ON_BN_CLICKED(IDC_Y_PLUS, OnYPlus)
	ON_BN_CLICKED(IDC_Y_MINUS, OnYMinus)
	ON_BN_CLICKED(IDC_Z_PLUS, OnZPlus)
	ON_BN_CLICKED(IDC_Z_MINUS, OnZMinus)
	ON_BN_CLICKED(IDC_START_PROCESS, OnStartProcess)
	ON_BN_CLICKED(IDC_STOP_PROCESS, OnStopProcess)
	ON_BN_CLICKED(IDC_STOP_ALL_AXIS, OnStopAllAxis)
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_StopDrawing, OnStopDrawing)
	ON_BN_CLICKED(IDC_CleanPicture, OnCleanPicture)
	ON_BN_CLICKED(IDC_StartDrawing, OnStartDrawing)
	ON_BN_CLICKED(IDC_PROCESS_H, OnProcessH)
	ON_BN_CLICKED(IDC_PROCESS_I, OnProcessI)
	ON_BN_CLICKED(IDC_PROCESS_T, OnProcessT)
	ON_BN_CLICKED(IDC_STOPHIT, OnStophit)
	ON_BN_CLICKED(IDC_TEST_LINE_INTERPOLATION, OnTestLineInterpolation)
	ON_BN_CLICKED(IDC_TEST_CIRCLE_INTERPOLATION, OnTestCircleInterpolation)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMy3_Axis_controlDlg message handlers

BOOL CMy3_Axis_controlDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Add "About..." menu item to system menu.

	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	m_axis_num.SetCurSel(0);
	m_acc_dcc_value = 0.1;
	m_distance_value = 1000;

	m_step_speed = 0.5;
	m_step_distance = 1000;

	UpdateData(false);
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CMy3_Axis_controlDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CMy3_Axis_controlDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CMy3_Axis_controlDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CMy3_Axis_controlDlg::OnInit() 
{
	// TODO: Add your control notification handler code here
	short sRtn,sRtn1,sRtn2,sRtn3;
	long lAxisStatus;
	CString str,str1;
	// 打开运动控制器
	sRtn = GT_Open();
	if (sRtn != 0)
	{
		MessageBox("GT_Open faild");
	}
	sRtn = GT_Reset();
	if (sRtn != 0)
	{
		MessageBox("GT_Reset faild");
	}
//	sRtn = GT_LoadConfig ("3_axis.cfg");
	sRtn = GT_LoadConfig ("3_axis_lim_change3_to_4.cfg");
	if (sRtn != 0)
	{
		MessageBox("GT_LoadConfig faild");
	}
	sRtn = GT_EncOn(1);
	sRtn = GT_EncOn(2);
	sRtn = GT_EncOn(4);
	// 配置完成后要更新状态
	sRtn = GT_ClrSts(4);
	sRtn = GT_ClrSts(2);
	sRtn = GT_ClrSts(1);	
	// 轴1伺服使能
	TPid m_Pid;	
	sRtn=GT_GetPid(2,1,&m_Pid);
	m_Pid.kp=1;
	m_Pid.ki=0;
	m_Pid.kd=3;
	sRtn1=GT_SetPid(1,1,&m_Pid);
	sRtn1 = GT_AxisOn(1);

	sRtn2=GT_SetPid(2,1,&m_Pid);
	sRtn2 = GT_AxisOn(2);

	sRtn3=GT_SetPid(4,1,&m_Pid);
	sRtn3 = GT_AxisOn(4);

	if (sRtn1 == 0 && sRtn2 == 0 && sRtn3 == 0)
	{
		MessageBox("三轴伺服均开启成功！");
		flag_servo_on = 1;
	}
	
	else MessageBox("伺服开启失败！");
	
}

void CMy3_Axis_controlDlg::OnShutdownServo() 
{
	// TODO: Add your control notification handler code here
	short sRtn1,sRtn2,sRtn3;
	sRtn1 = GT_AxisOff(1);
	sRtn2 = GT_AxisOff(2);
	sRtn3 = GT_AxisOff(4);

	if(sRtn1 != 0)
	{
		MessageBox("伺服轴 1 关闭失败！");
	}
	else if(sRtn2 != 0)
	{
		MessageBox("伺服轴 2 关闭失败！");
	}
	else if(sRtn3 != 0)
	{
		MessageBox("伺服轴 3 关闭失败！");
	}	
	else 
	{
		MessageBox("伺服关闭成功！");
		flag_servo_on = 0;
	}
	sRtn3 = GT_Close();
}

void CMy3_Axis_controlDlg::OnQuit() 
{
	// TODO: Add your control notification handler code here
	DestroyWindow( ); 
}

void CMy3_Axis_controlDlg::OnXPlus() 
{
	short sRtn;
	TTrapPrm trap;
	long sts;
	double prfPos;
	int new_axis = 1;
	UpdateData(true);
	// TODO: Add your control notification handler code here
	// 位置清零
	sRtn = GT_ZeroPos(new_axis);
	// AXIS轴规划位置清零
	sRtn = GT_SetPrfPos(new_axis, 0);
	// 将AXIS轴设为点位模式
	sRtn = GT_PrfTrap(new_axis);
	// 读取点位运动参数
	sRtn = GT_GetTrapPrm(new_axis, &trap);
	trap.acc = m_step_speed;
	trap.dec = m_step_speed;
	trap.smoothTime = 25;
	// 设置点位运动参数
	sRtn = GT_SetTrapPrm(new_axis, &trap);
	// 设置AXIS轴的目标位置
	sRtn = GT_SetPos(new_axis, m_step_distance);
	// 设置AXIS轴的目标速度
	sRtn = GT_SetVel(new_axis, 1);
	// 启动AXIS轴的运动
	sRtn = GT_Update(1<<(new_axis-1));
	do
	{
		// 读取AXIS轴的状态
		sRtn = GT_GetSts(new_axis, &sts);
		// 读取AXIS轴的规划位置
		sRtn = GT_GetPrfPos(new_axis, &prfPos);
	}while(sts&0x400); // 等待AXIS轴规划停止
	UpdateData(false);
}

void CMy3_Axis_controlDlg::OnXMinus() 
{
	// TODO: Add your control notification handler code here
	UpdateData(true);
	short sRtn;
	TTrapPrm trap;
	long sts;
	double prfPos;
	int new_axis = 1;
	// TODO: Add your control notification handler code here
	// 位置清零
	sRtn = GT_ZeroPos(new_axis);
	// AXIS轴规划位置清零
	sRtn = GT_SetPrfPos(new_axis, 0);
	// 将AXIS轴设为点位模式
	sRtn = GT_PrfTrap(new_axis);
	// 读取点位运动参数
	sRtn = GT_GetTrapPrm(new_axis, &trap);
	trap.acc = m_step_speed;
	trap.dec = m_step_speed;
	trap.smoothTime = 25;
	// 设置点位运动参数
	sRtn = GT_SetTrapPrm(new_axis, &trap);
	// 设置AXIS轴的目标位置
	sRtn = GT_SetPos(new_axis, -m_step_distance);
	// 设置AXIS轴的目标速度
	sRtn = GT_SetVel(new_axis, 1);
	// 启动AXIS轴的运动
	sRtn = GT_Update(1<<(new_axis-1));
	do
	{
		// 读取AXIS轴的状态
		sRtn = GT_GetSts(new_axis, &sts);
		// 读取AXIS轴的规划位置
		sRtn = GT_GetPrfPos(new_axis, &prfPos);
	}while(sts&0x400); // 等待AXIS轴规划停止
	UpdateData(false);
}

void CMy3_Axis_controlDlg::OnYPlus() 
{
	// TODO: Add your control notification handler code here
	UpdateData(true);
	short sRtn;
	TTrapPrm trap;
	long sts;
	double prfPos;
	int new_axis = 2;
	// TODO: Add your control notification handler code here
	// 位置清零
	sRtn = GT_ZeroPos(new_axis);
	// AXIS轴规划位置清零
	sRtn = GT_SetPrfPos(new_axis, 0);
	// 将AXIS轴设为点位模式
	sRtn = GT_PrfTrap(new_axis);
	// 读取点位运动参数
	sRtn = GT_GetTrapPrm(new_axis, &trap);
	trap.acc = m_step_speed;
	trap.dec = m_step_speed;
	trap.smoothTime = 25;
	// 设置点位运动参数
	sRtn = GT_SetTrapPrm(new_axis, &trap);
	// 设置AXIS轴的目标位置
	sRtn = GT_SetPos(new_axis, m_step_distance);
	// 设置AXIS轴的目标速度
	sRtn = GT_SetVel(new_axis, 1);
	// 启动AXIS轴的运动
	sRtn = GT_Update(1<<(new_axis-1));
	do
	{
		// 读取AXIS轴的状态
		sRtn = GT_GetSts(new_axis, &sts);
		// 读取AXIS轴的规划位置
		sRtn = GT_GetPrfPos(new_axis, &prfPos);
	}while(sts&0x400); // 等待AXIS轴规划停止
	UpdateData(false);
}

void CMy3_Axis_controlDlg::OnYMinus() 
{
	// TODO: Add your control notification handler code here
	UpdateData(true);
	short sRtn;
	TTrapPrm trap;
	long sts;
	double prfPos;
	int new_axis = 2;
	// TODO: Add your control notification handler code here
	// 位置清零
	sRtn = GT_ZeroPos(new_axis);
	// AXIS轴规划位置清零
	sRtn = GT_SetPrfPos(new_axis, 0);
	// 将AXIS轴设为点位模式
	sRtn = GT_PrfTrap(new_axis);
	// 读取点位运动参数
	sRtn = GT_GetTrapPrm(new_axis, &trap);
	trap.acc = m_step_speed;
	trap.dec = m_step_speed;
	trap.smoothTime = 25;
	// 设置点位运动参数
	sRtn = GT_SetTrapPrm(new_axis, &trap);
	// 设置AXIS轴的目标位置
	sRtn = GT_SetPos(new_axis, -m_step_distance);
	// 设置AXIS轴的目标速度
	sRtn = GT_SetVel(new_axis, 1);
	// 启动AXIS轴的运动
	sRtn = GT_Update(1<<(new_axis-1));
	do
	{
		// 读取AXIS轴的状态
		sRtn = GT_GetSts(new_axis, &sts);
		// 读取AXIS轴的规划位置
		sRtn = GT_GetPrfPos(new_axis, &prfPos);
	}while(sts&0x400); // 等待AXIS轴规划停止
	UpdateData(false);
}
void CMy3_Axis_controlDlg::OnZPlus() 
{
	// TODO: Add your control notification handler code here
	short sRtn;
	TTrapPrm trap;
	long sts;
	double prfPos;
	int new_axis = 4;
	UpdateData(true);
	// TODO: Add your control notification handler code here
	// 位置清零
	sRtn = GT_ZeroPos(new_axis);
	// AXIS轴规划位置清零
	sRtn = GT_SetPrfPos(new_axis, 0);
	// 将AXIS轴设为点位模式
	sRtn = GT_PrfTrap(new_axis);
	// 读取点位运动参数
	sRtn = GT_GetTrapPrm(new_axis, &trap);
	trap.acc = m_step_speed;
	trap.dec = m_step_speed;
	trap.smoothTime = 25;
	// 设置点位运动参数
	sRtn = GT_SetTrapPrm(new_axis, &trap);
	// 设置AXIS轴的目标位置
	sRtn = GT_SetPos(new_axis, m_step_distance);
	// 设置AXIS轴的目标速度
	sRtn = GT_SetVel(new_axis, 1);
	// 启动AXIS轴的运动
	sRtn = GT_Update(1<<(new_axis-1));
	do
	{
		// 读取AXIS轴的状态
		sRtn = GT_GetSts(new_axis, &sts);
		// 读取AXIS轴的规划位置
		sRtn = GT_GetPrfPos(new_axis, &prfPos);
	}while(sts&0x400); // 等待AXIS轴规划停止
	UpdateData(false);
}

void CMy3_Axis_controlDlg::OnZMinus() 
{
	// TODO: Add your control notification handler code here
	short sRtn;
	TTrapPrm trap;
	long sts;
	double prfPos;
	int new_axis = 4;
	UpdateData(true);
	// TODO: Add your control notification handler code here
	// 位置清零
	sRtn = GT_ZeroPos(new_axis);
	// AXIS轴规划位置清零
	sRtn = GT_SetPrfPos(new_axis, 0);
	// 将AXIS轴设为点位模式
	sRtn = GT_PrfTrap(new_axis);
	// 读取点位运动参数
	sRtn = GT_GetTrapPrm(new_axis, &trap);
	trap.acc = m_step_speed;
	trap.dec = m_step_speed;
	trap.smoothTime = 10;
	// 设置点位运动参数
	sRtn = GT_SetTrapPrm(new_axis, &trap);
	// 设置AXIS轴的目标位置
	sRtn = GT_SetPos(new_axis, -m_step_distance);
	// 设置AXIS轴的目标速度
	sRtn = GT_SetVel(new_axis, 1);
	// 启动AXIS轴的运动
	sRtn = GT_Update(1<<(new_axis-1));
	do
	{
		// 读取AXIS轴的状态
		sRtn = GT_GetSts(new_axis, &sts);
		// 读取AXIS轴的规划位置
		sRtn = GT_GetPrfPos(new_axis, &prfPos);
	}while(sts&0x400); // 等待AXIS轴规划停止
	UpdateData(false);
}

static DWORD WINAPI ThreadFunc1(LPVOID pvoid)
{
	
	int j=1;
	short sRtn;
	long sts;
	double prfPos;
	do
	{
		j=-j;
		if(j==1)
		{
			sRtn = GT_SetPos(1, 0);
		}
		else
		{
			sRtn = GT_SetPos(1, data_axis1.dis);
		}
		// 设置AXIS轴的目标速度
		sRtn = GT_SetVel(1, 1);
		// 启动AXIS轴的运动
		sRtn = GT_Update(1<<(1-1));
		do
		{
			// 读取AXIS轴的状态
			sRtn = GT_GetSts(1, &sts);
			// 读取AXIS轴的规划位置
			sRtn = GT_GetPrfPos(1, &prfPos);
		}while(sts&0x400); // 等待AXIS轴规划停止
	}while(!(flag_stop_P2P1 == 0 && j == 1));
	return 0;
}
static DWORD WINAPI ThreadFunc2(LPVOID pvoid)
{
	int j=1;
	short sRtn;
	long sts;
	double prfPos;
	do
	{
		j=-j;
		if(j==1)
		{
			sRtn = GT_SetPos(2, 0);
		}
		else
		{
			sRtn = GT_SetPos(2, data_axis2.dis);
		}
		// 设置AXIS轴的目标速度
		sRtn = GT_SetVel(2, 1);
		// 启动AXIS轴的运动
		sRtn = GT_Update(1<<(2-1));
		do
		{
			// 读取AXIS轴的状态
			sRtn = GT_GetSts(2, &sts);
			// 读取AXIS轴的规划位置
			sRtn = GT_GetPrfPos(2, &prfPos);
		}while(sts&0x400); // 等待AXIS轴规划停止
	}while(!(flag_stop_P2P2 == 0 && j == 1));
	return 0;
}
static DWORD WINAPI ThreadFunc3(LPVOID pvoid)
{
	int j=1;
	short sRtn;
	long sts;
	double prfPos;
	do
	{
		j=-j;
		if(j==1)
		{
			sRtn = GT_SetPos(4, 0);
		}
		else
		{
			sRtn = GT_SetPos(4, data_axis3.dis);
		}
		// 设置AXIS轴的目标速度
		sRtn = GT_SetVel(4, 1);
		// 启动AXIS轴的运动
		sRtn = GT_Update(1<<(4-1));
		do
		{
			// 读取AXIS轴的状态
			sRtn = GT_GetSts(4, &sts);
			// 读取AXIS轴的规划位置
			sRtn = GT_GetPrfPos(4, &prfPos);
		}while(sts&0x400); // 等待AXIS轴规划停止
	}while(!(flag_stop_P2P3 == 0 && j == 1));
	return 0;
}
int change_axis_string2int(CString str)
{
	if (str=="1") return 1;
	else if (str=="2") return 2;
	else if (str=="3") return 3;
	else if (str=="4") return 4;
	else return 3;

}

void CMy3_Axis_controlDlg::OnStartProcess() 
{
	// TODO: Add your control notification handler code here
	
	CString strCBText,str;
	m_axis_num.GetLBText( m_axis_num.GetCurSel(), strCBText);
	AXIS = change_axis_string2int(strCBText);
	if (flag_servo_on == 1)
	{
		int cycle_time_temp;
		short sRtn;
		TTrapPrm trap;
		long sts;
		double prfPos;

		UpdateData(true);
		distance_value_global = m_distance_value;
//		cycle_time_temp = m_cycle_time;
		sRtn = GT_ZeroPos(AXIS);
		// AXIS轴规划位置清零
		sRtn = GT_SetPrfPos(AXIS, 0);
		// 将AXIS轴设为点位模式
		sRtn = GT_PrfTrap(AXIS);
		// 读取点位运动参数
		sRtn = GT_GetTrapPrm(AXIS, &trap);
		trap.acc = m_acc_dcc_value;
		trap.dec = m_acc_dcc_value;
		trap.smoothTime = 2;
		// 设置点位运动参数
		sRtn = GT_SetTrapPrm(AXIS, &trap);
		// 设置AXIS轴的目标位置
		int i=0,j=1;
//		for(i=0;i<50;i++)
		switch(AXIS)
		{
			case 1:
				flag_stop_P2P1 = 1;
				data_axis1.acc = m_acc_dcc_value;
				data_axis1.dis = m_distance_value;
				hThread1 = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)ThreadFunc1,&data_axis1,0,&ThreadID1);
				break;
			case 2:
				flag_stop_P2P2 = 1;
				data_axis2.acc = m_acc_dcc_value;
				data_axis2.dis = m_distance_value;
				hThread2 = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)ThreadFunc2,NULL,0,&ThreadID2);
				break;
			case 4:
				flag_stop_P2P3 = 1;
				data_axis3.acc = m_acc_dcc_value;
				data_axis3.dis = m_distance_value;
				hThread3 = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)ThreadFunc3,NULL,0,&ThreadID3);
				break;
		}
		
	}
	else MessageBox("请先点击初始化，开启控制卡及伺服轴！");
	UpdateData(false);
}

void CMy3_Axis_controlDlg::OnStopProcess() 
{
	// TODO: Add your control notification handler code here
//	flag_stop_P2P = 0;
	CString strCBText,str;
	m_axis_num.GetLBText( m_axis_num.GetCurSel(), strCBText);
	AXIS = change_axis_string2int(strCBText);
	switch(AXIS)
		{
			case 1:
				flag_stop_P2P1 = 0;
				break;
			case 2:
				flag_stop_P2P2 = 0;
				break;
			case 4:
				flag_stop_P2P3 = 0;
				break;
		}
}

void CMy3_Axis_controlDlg::OnStopAllAxis() 
{
	// TODO: Add your control notification handler code here
	flag_stop_P2P1 = 0;
	flag_stop_P2P2 = 0;
	flag_stop_P2P3 = 0;
}

void CMy3_Axis_controlDlg::OnStartDrawing() 
{
	// TODO: Add your control notification handler code here
	flag_stop=0;
	
	for (int i1=0;i1<100;i1++)
	{
		m_TeeChart.Series(0).Add(0,"",NULL);
		m_TeeChart.Series(1).Add(0,"",NULL);

	}
	m_TeeChart.Series(0).SetTitle("目标轨迹");
	m_TeeChart.Series(1).SetTitle("实际轨迹");
	SetTimer(1,1,NULL);
}

void CMy3_Axis_controlDlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	
	short strn;
	CString strCBText,str;
	m_axis_num.GetLBText( m_axis_num.GetCurSel(), strCBText);
	AXIS = change_axis_string2int(strCBText);
	if (flag_stop==0 || flag_stop==1)
	{
		flag_stop++;
		strn=GT_GetAxisPrfPos(AXIS,&k);
		strn=GT_GetAxisEncPos(AXIS,&j);
		m_TeeChart.Series(0).Add(k,"",1);
		m_TeeChart.Series(1).Add(j,"",1);
		m_TeeChart.GetAxis().GetBottom().Scroll(1.0,TRUE);

	}
	else if (flag_stop<5000 && flag_stop>1)
	{
		flag_stop++;
		
		strn=GT_GetAxisEncPos(AXIS,&j);
		m_TeeChart.Series(0).Add(k,"",1);
		m_TeeChart.Series(1).Add(j,"",1);
		
		strn=GT_GetAxisPrfPos(AXIS,&k);
		m_TeeChart.GetAxis().GetBottom().Scroll(1.0,TRUE);

	}
	else
	{
		KillTimer(1);
	}
	CDialog::OnTimer(nIDEvent);
}

void CMy3_Axis_controlDlg::OnStopDrawing() 
{
	// TODO: Add your control notification handler code here
	flag_stop=5000;
}

void CMy3_Axis_controlDlg::OnCleanPicture() 
{
	// TODO: Add your control notification handler code here
	flag_stop=5000;
	for (int i1=0;i1<m_TeeChart.GetSeriesCount();i1++)
	{
		m_TeeChart.Series(i1).Clear();//Clean()
		m_TeeChart.Series(i1).Clear();
//		m_TeeChart.Series(2).Add(0,"",NULL);
	}
}
void x_plus(int len)
{
	short sRtn;
	TTrapPrm trap;
	long sts;
	double prfPos;
	int new_axis = 1;
//	UpdateData(true);
	// TODO: Add your control notification handler code here
	// 位置清零
	sRtn = GT_ZeroPos(new_axis);
	// AXIS轴规划位置清零
	sRtn = GT_SetPrfPos(new_axis, 0);
	// 将AXIS轴设为点位模式
	sRtn = GT_PrfTrap(new_axis);
	// 读取点位运动参数
	sRtn = GT_GetTrapPrm(new_axis, &trap);
	trap.acc = 0.05;
	trap.dec = 0.05;
	trap.smoothTime = 25;
	// 设置点位运动参数
	sRtn = GT_SetTrapPrm(new_axis, &trap);
	// 设置AXIS轴的目标位置
	sRtn = GT_SetPos(new_axis, len);
	// 设置AXIS轴的目标速度
	sRtn = GT_SetVel(new_axis, 0.5);
	// 启动AXIS轴的运动
	sRtn = GT_Update(1<<(new_axis-1));
	do
	{
		// 读取AXIS轴的状态
		sRtn = GT_GetSts(new_axis, &sts);
		// 读取AXIS轴的规划位置
		sRtn = GT_GetPrfPos(new_axis, &prfPos);
	}while(sts&0x400); // 等待AXIS轴规划停止

}
void CMy3_Axis_controlDlg::x_minus(int len)
{
	UpdateData(true);
	short sRtn;
	TTrapPrm trap;
	long sts;
	double prfPos;
	int new_axis = 1;
	// TODO: Add your control notification handler code here
	// 位置清零
	sRtn = GT_ZeroPos(new_axis);
	// AXIS轴规划位置清零
	sRtn = GT_SetPrfPos(new_axis, 0);
	// 将AXIS轴设为点位模式
	sRtn = GT_PrfTrap(new_axis);
	// 读取点位运动参数
	sRtn = GT_GetTrapPrm(new_axis, &trap);
	trap.acc = m_step_speed;
	trap.dec = m_step_speed;
	trap.smoothTime = 25;
	// 设置点位运动参数
	sRtn = GT_SetTrapPrm(new_axis, &trap);
	// 设置AXIS轴的目标位置
	sRtn = GT_SetPos(new_axis, len);
	// 设置AXIS轴的目标速度
	sRtn = GT_SetVel(new_axis, 1);
	// 启动AXIS轴的运动
	sRtn = GT_Update(1<<(new_axis-1));
	do
	{
		// 读取AXIS轴的状态
		sRtn = GT_GetSts(new_axis, &sts);
		// 读取AXIS轴的规划位置
		sRtn = GT_GetPrfPos(new_axis, &prfPos);
	}while(sts&0x400); // 等待AXIS轴规划停止
	UpdateData(false);
}
void y_plus(int len)
{

	short sRtn;
	TTrapPrm trap;
	long sts;
	double prfPos;
	int new_axis = 2;
	// TODO: Add your control notification handler code here
	// 位置清零
	sRtn = GT_ZeroPos(new_axis);
	// AXIS轴规划位置清零
	sRtn = GT_SetPrfPos(new_axis, 0);
	// 将AXIS轴设为点位模式
	sRtn = GT_PrfTrap(new_axis);
	// 读取点位运动参数
	sRtn = GT_GetTrapPrm(new_axis, &trap);
	trap.acc = 0.05;
	trap.dec = 0.05;
	trap.smoothTime = 25;
	// 设置点位运动参数
	sRtn = GT_SetTrapPrm(new_axis, &trap);
	// 设置AXIS轴的目标位置
	sRtn = GT_SetPos(new_axis, len);
	// 设置AXIS轴的目标速度
	sRtn = GT_SetVel(new_axis, 1);
	// 启动AXIS轴的运动
	sRtn = GT_Update(1<<(new_axis-1));
	do
	{
		// 读取AXIS轴的状态
		sRtn = GT_GetSts(new_axis, &sts);
		// 读取AXIS轴的规划位置
		sRtn = GT_GetPrfPos(new_axis, &prfPos);
	}while(sts&0x400); // 等待AXIS轴规划停止

}

void CMy3_Axis_controlDlg::y_minus(int len)
{
	UpdateData(true);
	short sRtn;
	TTrapPrm trap;
	long sts;
	double prfPos;
	int new_axis = 2;
	// TODO: Add your control notification handler code here
	// 位置清零
	sRtn = GT_ZeroPos(new_axis);
	// AXIS轴规划位置清零
	sRtn = GT_SetPrfPos(new_axis, 0);
	// 将AXIS轴设为点位模式
	sRtn = GT_PrfTrap(new_axis);
	// 读取点位运动参数
	sRtn = GT_GetTrapPrm(new_axis, &trap);
	trap.acc = m_step_speed;
	trap.dec = m_step_speed;
	trap.smoothTime = 25;
	// 设置点位运动参数
	sRtn = GT_SetTrapPrm(new_axis, &trap);
	// 设置AXIS轴的目标位置
	sRtn = GT_SetPos(new_axis, len);
	// 设置AXIS轴的目标速度
	sRtn = GT_SetVel(new_axis, 1);
	// 启动AXIS轴的运动
	sRtn = GT_Update(1<<(new_axis-1));
	do
	{
		// 读取AXIS轴的状态
		sRtn = GT_GetSts(new_axis, &sts);
		// 读取AXIS轴的规划位置
		sRtn = GT_GetPrfPos(new_axis, &prfPos);
	}while(sts&0x400); // 等待AXIS轴规划停止
	UpdateData(false);
}

BOOL stop_hit = 0;//等于1表示要停止
BOOL process_h = 0;//正在加工H
BOOL process_i = 0;
BOOL process_t = 0;

static DWORD WINAPI ThreadFunc4(LPVOID pvoid)
{
	int x_len = -1000*0.44;
	int y_len = -5000*0.44;
	while(stop_hit != 1)
		{
			y_plus(-y_len);
			y_plus(y_len/2);
			x_plus(x_len);
			y_plus(y_len/2);
			y_plus(-y_len);
			y_plus(y_len/2);
			x_plus(-x_len);
			y_plus(y_len/2);
		}
	return 0;
}
static DWORD WINAPI ThreadFunc5(LPVOID pvoid)
{
	int x_len = -1000*0.33;
	int y_len = -5000*0.44;
	while(stop_hit != 1)
		{
			
			x_plus(x_len);
			x_plus(-x_len/2);
			y_plus(-y_len);
			x_plus(-x_len/2);
			x_plus(x_len);
			x_plus(-x_len/2);
			y_plus(y_len);
			x_plus(-x_len/2);
		}
	return 0;
}
static DWORD WINAPI ThreadFunc6(LPVOID pvoid)
{
	int x_len = -1400*0.44;
	int y_len = -5000*0.44;
	while(stop_hit != 1)
		{
			x_plus(x_len);
			x_plus(-x_len/2);
			y_plus(-y_len);
			y_plus(y_len);
			x_plus(-x_len/2);
		}
	return 0;
}
void CMy3_Axis_controlDlg::OnProcessH() 
{
	// TODO: Add your control notification handler code here
	if (process_i == 1 || process_t == 1)
	{
		MessageBox("请先停止当前字母的加工！");
	}
	else
	{
		process_i == 1;
		process_t == 1;
		process_h == 1;
		stop_hit = 0;	
		hThread4 = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)ThreadFunc4,NULL,0,&ThreadID4);
	}
	
}

void CMy3_Axis_controlDlg::OnProcessI() 
{
	// TODO: Add your control notification handler code here
	if (process_h == 1 || process_t == 1)
	{
		MessageBox("请先停止当前字母的加工！");
	}
	else
	{
		process_h == 1;
		process_t == 1;
		process_i == 1;
		stop_hit = 0;
		hThread5 = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)ThreadFunc5,NULL,0,&ThreadID5);
		
	}
}
void CMy3_Axis_controlDlg::OnProcessT() 
{
	// TODO: Add your control notification handler code here
	if (process_h == 1 || process_i == 1)
	{
		MessageBox("请先停止当前字母的加工！");
	}
	else
	{
		process_h == 1;
		process_i == 1;
		process_t == 1;
		stop_hit = 0;
		hThread6 = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)ThreadFunc6,NULL,0,&ThreadID6);
		
	}
	
	
}

void CMy3_Axis_controlDlg::OnStophit() 
{
	// TODO: Add your control notification handler code here
	stop_hit = 1;
}
static DWORD WINAPI ThreadFunc_line_interpolation(LPVOID pvoid)
{
	int x_step_len = new_line_point.x/100;
	int y_step_len = new_line_point.y/100;
	int total_x_length = 0;//目前插补已走过的X方向的总路程
	int total_y_length = 0;
	while(stop_hit != 1 && total_x_length < new_line_point.x && total_y_length < new_line_point.y)
		{
			x_plus(x_step_len);
			total_x_length += x_step_len;
			y_plus(y_step_len);
			total_y_length += y_step_len;
		}
	return 0;
}
void CMy3_Axis_controlDlg::OnTestLineInterpolation() 
{
	// TODO: Add your control notification handler code here
	stop_hit = 0;
	new_line_point.x = 5000;
	new_line_point.y = 5000;
	hThread_line_interpolation = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)ThreadFunc_line_interpolation,NULL,0,&ThreadID_line_interpolation);
}
static DWORD WINAPI ThreadFunc_circle_interpolation(LPVOID pvoid)
{
	double step_angle = 2.0 * 2.0 * 3.1415926 / 360.0;
	int old_position_x = new_inf_circle_interpolation.R;//目前插补已走过的X方向的总路程
	int old_position_y = 0;
	
	int new_position_x = 0;
	int new_position_y = 0;
	double total_angle = 0;//已经走过的角度
	while(stop_hit != 1 && total_angle <= new_inf_circle_interpolation.angle)
		{
			new_position_x = new_inf_circle_interpolation.R * cos(total_angle);
			new_position_y = new_inf_circle_interpolation.R * sin(total_angle);

			x_plus(new_position_x - old_position_x);
			y_plus(2*(new_position_y - old_position_y));
			total_angle += step_angle;
			
			old_position_x = new_position_x;
			old_position_y = new_position_y;
		}
	return 0;
}
void CMy3_Axis_controlDlg::OnTestCircleInterpolation() 
{
	// TODO: Add your control notification handler code here
	stop_hit = 0;
	new_inf_circle_interpolation.R = 5000;
	new_inf_circle_interpolation.angle = 3.1415926/2;
	hThread_circle_interpolation = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)ThreadFunc_circle_interpolation,NULL,0,&ThreadID_circle_interpolation);
}
