#if !defined(AFX_MOVINGAVGFUNCTION1_H__3F54173B_475A_460B_9CAC_7B51E937CDD9__INCLUDED_)
#define AFX_MOVINGAVGFUNCTION1_H__3F54173B_475A_460B_9CAC_7B51E937CDD9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CMovingAvgFunction wrapper class

class CMovingAvgFunction : public COleDispatchDriver
{
public:
	CMovingAvgFunction() {}		// Calls COleDispatchDriver default constructor
	CMovingAvgFunction(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CMovingAvgFunction(const CMovingAvgFunction& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	BOOL GetWeighted();
	void SetWeighted(BOOL bNewValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MOVINGAVGFUNCTION1_H__3F54173B_475A_460B_9CAC_7B51E937CDD9__INCLUDED_)