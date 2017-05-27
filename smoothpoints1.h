#if !defined(AFX_SMOOTHPOINTS1_H__598F7009_ACCF_4FBE_98D6_00E37E45B6BE__INCLUDED_)
#define AFX_SMOOTHPOINTS1_H__598F7009_ACCF_4FBE_98D6_00E37E45B6BE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CSmoothPoints wrapper class

class CSmoothPoints : public COleDispatchDriver
{
public:
	CSmoothPoints() {}		// Calls COleDispatchDriver default constructor
	CSmoothPoints(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CSmoothPoints(const CSmoothPoints& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	BOOL GetActive();
	void SetActive(BOOL bNewValue);
	BOOL GetInterpolate();
	void SetInterpolate(BOOL bNewValue);
	long GetFactor();
	void SetFactor(long nNewValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SMOOTHPOINTS1_H__598F7009_ACCF_4FBE_98D6_00E37E45B6BE__INCLUDED_)