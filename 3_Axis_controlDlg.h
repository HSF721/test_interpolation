// 3_Axis_controlDlg.h : header file
//
//{{AFX_INCLUDES()
#include "tchart1.h"
//}}AFX_INCLUDES

#if !defined(AFX_3_AXIS_CONTROLDLG_H__C60F4CF7_8011_4781_A9C4_FEFEF3800D3C__INCLUDED_)
#define AFX_3_AXIS_CONTROLDLG_H__C60F4CF7_8011_4781_A9C4_FEFEF3800D3C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CMy3_Axis_controlDlg dialog

class CMy3_Axis_controlDlg : public CDialog
{
// Construction
public:
	CMy3_Axis_controlDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CMy3_Axis_controlDlg)
	enum { IDD = IDD_MY3_AXIS_CONTROL_DIALOG };
	CComboBox	m_axis_num;
	float	m_distance_value;
	float	m_acc_dcc_value;
	float	m_step_distance;
	float	m_step_speed;
	CTChart	m_TeeChart;

	
	//}}AFX_DATA
//	void x_plus(int len);
//	void y_plus(int len);
	void x_minus(int len);
	void y_minus(int len);
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMy3_Axis_controlDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;
	HANDLE hThread;
	HANDLE hThread1;
	HANDLE hThread2;
	HANDLE hThread3;
	HANDLE hThread4;
	HANDLE hThread5;
	HANDLE hThread6;
	HANDLE hThread_line_interpolation;
	HANDLE hThread_circle_interpolation;

	DWORD ThreadID;
	DWORD ThreadID1;
	DWORD ThreadID2;
	DWORD ThreadID3;
	DWORD ThreadID4;
	DWORD ThreadID5;
	DWORD ThreadID6;
	DWORD ThreadID_line_interpolation;
	DWORD ThreadID_circle_interpolation;
	// Generated message map functions
	//{{AFX_MSG(CMy3_Axis_controlDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnInit();
	afx_msg void OnShutdownServo();
	afx_msg void OnQuit();
	afx_msg void OnXPlus();
	afx_msg void OnXMinus();
	afx_msg void OnYPlus();
	afx_msg void OnYMinus();
	afx_msg void OnZPlus();
	afx_msg void OnZMinus();
	afx_msg void OnStartProcess();
	afx_msg void OnStopProcess();
	afx_msg void OnStopAllAxis();
	afx_msg void OnButton1();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnStopDrawing();
	afx_msg void OnCleanPicture();
	afx_msg void OnStartDrawing();
	afx_msg void OnProcessH();
	afx_msg void OnProcessI();
	afx_msg void OnProcessT();
	afx_msg void OnStophit();
	afx_msg void OnTestLineInterpolation();
	afx_msg void OnTestCircleInterpolation();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_3_AXIS_CONTROLDLG_H__C60F4CF7_8011_4781_A9C4_FEFEF3800D3C__INCLUDED_)
