#if !defined(AFX_MARKSCALLOUT1_H__0CCAA48B_7FF5_42EC_A19E_EEECE69ED801__INCLUDED_)
#define AFX_MARKSCALLOUT1_H__0CCAA48B_7FF5_42EC_A19E_EEECE69ED801__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


// Dispatch interfaces referenced by this interface
class CBrush1;
class CPen1;
class CGradient;
class CTeeShadow;

/////////////////////////////////////////////////////////////////////////////
// CMarksCallout wrapper class

class CMarksCallout : public COleDispatchDriver
{
public:
	CMarksCallout() {}		// Calls COleDispatchDriver default constructor
	CMarksCallout(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CMarksCallout(const CMarksCallout& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	CBrush1 GetBrush();
	BOOL GetDraw3D();
	void SetDraw3D(BOOL bNewValue);
	long GetHorizontalSize();
	void SetHorizontalSize(long nNewValue);
	long GetVerticalSize();
	void SetVerticalSize(long nNewValue);
	BOOL GetInflateMargins();
	void SetInflateMargins(BOOL bNewValue);
	CPen1 GetPen();
	long GetStyle();
	void SetStyle(long nNewValue);
	BOOL GetVisible();
	void SetVisible(BOOL bNewValue);
	BOOL GetDark3D();
	void SetDark3D(BOOL bNewValue);
	void DrawPointer(long DC, BOOL Is3D, long px, long py, long tmpHoriz, long tmpVert, unsigned long AColor, long AStyle);
	CGradient GetGradient();
	long GetTransparency();
	void SetTransparency(long nNewValue);
	CTeeShadow GetShadow();
	CPen1 GetArrow();
	long GetArrowHead();
	void SetArrowHead(long nNewValue);
	long GetArrowHeadSize();
	void SetArrowHeadSize(long nNewValue);
	long GetDistance();
	void SetDistance(long nNewValue);
	long GetLength();
	void SetLength(long nNewValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MARKSCALLOUT1_H__0CCAA48B_7FF5_42EC_A19E_EEECE69ED801__INCLUDED_)
