#if !defined(AFX_GAUGEPOINTERRANGE_H__590DD8B9_CD2E_4EC2_B1E4_84E167FB71BA__INCLUDED_)
#define AFX_GAUGEPOINTERRANGE_H__590DD8B9_CD2E_4EC2_B1E4_84E167FB71BA__INCLUDED_

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
// CGaugePointerRange wrapper class

class CGaugePointerRange : public COleDispatchDriver
{
public:
	CGaugePointerRange() {}		// Calls COleDispatchDriver default constructor
	CGaugePointerRange(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CGaugePointerRange(const CGaugePointerRange& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

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
	long GetGaugeStyle();
	void SetGaugeStyle(long nNewValue);
	double GetEndValue();
	void SetEndValue(double newValue);
	double GetStartValue();
	void SetStartValue(double newValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_GAUGEPOINTERRANGE_H__590DD8B9_CD2E_4EC2_B1E4_84E167FB71BA__INCLUDED_)
