#if !defined(AFX_AXISTITLE1_H__F57EC83A_3F43_45B2_BB27_769DACFBF728__INCLUDED_)
#define AFX_AXISTITLE1_H__F57EC83A_3F43_45B2_BB27_769DACFBF728__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


// Dispatch interfaces referenced by this interface
class CTeeFont;

/////////////////////////////////////////////////////////////////////////////
// CAxisTitle wrapper class

class CAxisTitle : public COleDispatchDriver
{
public:
	CAxisTitle() {}		// Calls COleDispatchDriver default constructor
	CAxisTitle(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CAxisTitle(const CAxisTitle& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	long GetAngle();
	void SetAngle(long nNewValue);
	CString GetCaption();
	void SetCaption(LPCTSTR lpszNewValue);
	CTeeFont GetFont();
	BOOL GetVisible();
	void SetVisible(BOOL bNewValue);
	BOOL Clicked(long X, long Y);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_AXISTITLE1_H__F57EC83A_3F43_45B2_BB27_769DACFBF728__INCLUDED_)