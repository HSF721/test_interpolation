#if !defined(AFX_FRAMEBRUSH_H__BD02AA74_DA00_4EC6_9C04_00BE3908467A__INCLUDED_)
#define AFX_FRAMEBRUSH_H__BD02AA74_DA00_4EC6_9C04_00BE3908467A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


// Dispatch interfaces referenced by this interface
class CGradient;

/////////////////////////////////////////////////////////////////////////////
// CFrameBrush wrapper class

class CFrameBrush : public COleDispatchDriver
{
public:
	CFrameBrush() {}		// Calls COleDispatchDriver default constructor
	CFrameBrush(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CFrameBrush(const CFrameBrush& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	unsigned long GetColor();
	void SetColor(unsigned long newValue);
	long GetStyle();
	void SetStyle(long nNewValue);
	void LoadImage(LPCTSTR FileName);
	void AssignImage(long ImageHandle);
	void ClearImage();
	void ShowEditor();
	long GetHandle();
	unsigned long GetBackColor();
	void SetBackColor(unsigned long newValue);
	long GetBrushLink();
	CGradient GetGradient();
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FRAMEBRUSH_H__BD02AA74_DA00_4EC6_9C04_00BE3908467A__INCLUDED_)