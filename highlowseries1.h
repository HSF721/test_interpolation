#if !defined(AFX_HIGHLOWSERIES1_H__0F90EEFA_288A_4040_B081_34ED2B8E411C__INCLUDED_)
#define AFX_HIGHLOWSERIES1_H__0F90EEFA_288A_4040_B081_34ED2B8E411C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


// Dispatch interfaces referenced by this interface
class CValueList;
class CBrush1;
class CPen1;

/////////////////////////////////////////////////////////////////////////////
// CHighLowSeries wrapper class

class CHighLowSeries : public COleDispatchDriver
{
public:
	CHighLowSeries() {}		// Calls COleDispatchDriver default constructor
	CHighLowSeries(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CHighLowSeries(const CHighLowSeries& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	long AddHighLow(double AX, double AHigh, double ALow, LPCTSTR AXLabel, unsigned long AColor);
	CValueList GetHighValues();
	CValueList GetLowValues();
	double MaxYValue();
	double MinYValue();
	CBrush1 GetHighBrush();
	CPen1 GetHighPen();
	CBrush1 GetLowBrush();
	CPen1 GetLowPen();
	CPen1 GetPen();
	long GetTransparency();
	void SetTransparency(long nNewValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_HIGHLOWSERIES1_H__0F90EEFA_288A_4040_B081_34ED2B8E411C__INCLUDED_)