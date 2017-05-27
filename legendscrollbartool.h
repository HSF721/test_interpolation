#if !defined(AFX_LEGENDSCROLLBARTOOL_H__5A682A81_4415_4A87_B0C7_6C92C7F7B3CA__INCLUDED_)
#define AFX_LEGENDSCROLLBARTOOL_H__5A682A81_4415_4A87_B0C7_6C92C7F7B3CA__INCLUDED_

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
class CScrollBarThumb;

/////////////////////////////////////////////////////////////////////////////
// CLegendScrollBarTool wrapper class

class CLegendScrollBarTool : public COleDispatchDriver
{
public:
	CLegendScrollBarTool() {}		// Calls COleDispatchDriver default constructor
	CLegendScrollBarTool(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CLegendScrollBarTool(const CLegendScrollBarTool& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	BOOL GetHorizontal();
	void SetHorizontal(BOOL bNewValue);
	long GetPosition();
	void SetPosition(long nNewValue);
	CBrush1 GetArrowBrush();
	BOOL GetAutoRepeat();
	void SetAutoRepeat(BOOL bNewValue);
	unsigned long GetBackColor();
	void SetBackColor(unsigned long newValue);
	long GetBevel();
	void SetBevel(long nNewValue);
	CBrush1 GetBrush();
	long GetInitialDelay();
	void SetInitialDelay(long nNewValue);
	CPen1 GetPen();
	long GetSize();
	void SetSize(long nNewValue);
	CBrush1 GetThumbBrush();
	long GetDrawStyle();
	void SetDrawStyle(long nNewValue);
	CGradient GetGradient();
	long GetMinThumbSize();
	void SetMinThumbSize(long nNewValue);
	long GetThumbSize();
	void SetThumbSize(long nNewValue);
	CScrollBarThumb GetThumb();
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_LEGENDSCROLLBARTOOL_H__5A682A81_4415_4A87_B0C7_6C92C7F7B3CA__INCLUDED_)