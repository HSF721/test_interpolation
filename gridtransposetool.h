#if !defined(AFX_GRIDTRANSPOSETOOL_H__99BA50A3_25BD_402F_A9F4_0971DF0EB143__INCLUDED_)
#define AFX_GRIDTRANSPOSETOOL_H__99BA50A3_25BD_402F_A9F4_0971DF0EB143__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CGridTransposeTool wrapper class

class CGridTransposeTool : public COleDispatchDriver
{
public:
	CGridTransposeTool() {}		// Calls COleDispatchDriver default constructor
	CGridTransposeTool(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CGridTransposeTool(const CGridTransposeTool& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	void Transpose();
	VARIANT GetSeries();
	void SetSeries(const VARIANT& newValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_GRIDTRANSPOSETOOL_H__99BA50A3_25BD_402F_A9F4_0971DF0EB143__INCLUDED_)
