#if !defined(AFX_FILTERITEMS_H__01EEA987_6A86_4BB9_AA1B_888C41E3D720__INCLUDED_)
#define AFX_FILTERITEMS_H__01EEA987_6A86_4BB9_AA1B_888C41E3D720__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


// Dispatch interfaces referenced by this interface
class CTeeFilter;

/////////////////////////////////////////////////////////////////////////////
// CFilterItems wrapper class

class CFilterItems : public COleDispatchDriver
{
public:
	CFilterItems() {}		// Calls COleDispatchDriver default constructor
	CFilterItems(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CFilterItems(const CFilterItems& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	long Add(long FilterClass);
	void LoadImage(LPCTSTR FileName);
	CTeeFilter GetItem(long Index);
	void AssignImage(long ImageHandle);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FILTERITEMS_H__01EEA987_6A86_4BB9_AA1B_888C41E3D720__INCLUDED_)
