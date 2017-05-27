#if !defined(AFX_ROTATETOOL_H__4C684D2E_2E73_4E1F_9F9C_EFA41E7E479A__INCLUDED_)
#define AFX_ROTATETOOL_H__4C684D2E_2E73_4E1F_9F9C_EFA41E7E479A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


// Dispatch interfaces referenced by this interface
class CPen1;

/////////////////////////////////////////////////////////////////////////////
// CRotateTool wrapper class

class CRotateTool : public COleDispatchDriver
{
public:
	CRotateTool() {}		// Calls COleDispatchDriver default constructor
	CRotateTool(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CRotateTool(const CRotateTool& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	BOOL GetActive();
	void SetActive(BOOL bNewValue);
	long GetButton();
	void SetButton(long nNewValue);
	CString Description();
	CPen1 GetOutline();
	short GetCursor();
	void SetCursor(short nNewValue);
	long GetInertia();
	void SetInertia(long nNewValue);
	BOOL GetInverted();
	void SetInverted(BOOL bNewValue);
	long GetSpeed();
	void SetSpeed(long nNewValue);
	long GetStyle();
	void SetStyle(long nNewValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ROTATETOOL_H__4C684D2E_2E73_4E1F_9F9C_EFA41E7E479A__INCLUDED_)