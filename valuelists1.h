#if !defined(AFX_VALUELISTS1_H__BD0E1542_1EA5_4306_82C0_D0007F11076C__INCLUDED_)
#define AFX_VALUELISTS1_H__BD0E1542_1EA5_4306_82C0_D0007F11076C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


// Dispatch interfaces referenced by this interface
class CValueList;

/////////////////////////////////////////////////////////////////////////////
// CValueLists wrapper class

class CValueLists : public COleDispatchDriver
{
public:
	CValueLists() {}		// Calls COleDispatchDriver default constructor
	CValueLists(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CValueLists(const CValueLists& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	long GetCount();
	CValueList GetItems(long Index);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_VALUELISTS1_H__BD0E1542_1EA5_4306_82C0_D0007F11076C__INCLUDED_)