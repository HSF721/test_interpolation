#if !defined(AFX_CLIPSERIESTOOL1_H__E8F9C274_5929_454A_AD9C_A7EB63B4CC57__INCLUDED_)
#define AFX_CLIPSERIESTOOL1_H__E8F9C274_5929_454A_AD9C_A7EB63B4CC57__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CClipSeriesTool wrapper class

class CClipSeriesTool : public COleDispatchDriver
{
public:
	CClipSeriesTool() {}		// Calls COleDispatchDriver default constructor
	CClipSeriesTool(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CClipSeriesTool(const CClipSeriesTool& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	VARIANT GetSeries();
	void SetSeries(const VARIANT& newValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CLIPSERIESTOOL1_H__E8F9C274_5929_454A_AD9C_A7EB63B4CC57__INCLUDED_)
