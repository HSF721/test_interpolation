#if !defined(AFX_CCIFUNCTION1_H__C6F678B9_BEFA_4001_80F7_04C642EC4643__INCLUDED_)
#define AFX_CCIFUNCTION1_H__C6F678B9_BEFA_4001_80F7_04C642EC4643__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CCCIFunction wrapper class

class CCCIFunction : public COleDispatchDriver
{
public:
	CCCIFunction() {}		// Calls COleDispatchDriver default constructor
	CCCIFunction(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CCCIFunction(const CCCIFunction& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	double GetConstant();
	void SetConstant(double newValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CCIFUNCTION1_H__C6F678B9_BEFA_4001_80F7_04C642EC4643__INCLUDED_)
