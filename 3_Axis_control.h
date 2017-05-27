// 3_Axis_control.h : main header file for the 3_AXIS_CONTROL application
//

#if !defined(AFX_3_AXIS_CONTROL_H__88895A43_425B_429F_B554_7D0CC031B614__INCLUDED_)
#define AFX_3_AXIS_CONTROL_H__88895A43_425B_429F_B554_7D0CC031B614__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CMy3_Axis_controlApp:
// See 3_Axis_control.cpp for the implementation of this class
//

class CMy3_Axis_controlApp : public CWinApp
{
public:
	CMy3_Axis_controlApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMy3_Axis_controlApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CMy3_Axis_controlApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_3_AXIS_CONTROL_H__88895A43_425B_429F_B554_7D0CC031B614__INCLUDED_)
