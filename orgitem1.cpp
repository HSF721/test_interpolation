// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


#include "stdafx.h"
#include "orgitem1.h"

// Dispatch interfaces referenced by this interface
#include "OrgShape1.h"


/////////////////////////////////////////////////////////////////////////////
// COrgItem properties

/////////////////////////////////////////////////////////////////////////////
// COrgItem operations

long COrgItem::AddChild(LPCTSTR Text)
{
	long result;
	static BYTE parms[] =
		VTS_BSTR;
	InvokeHelper(0xc9, DISPATCH_METHOD, VT_I4, (void*)&result, parms,
		Text);
	return result;
}

long COrgItem::AddBrother(LPCTSTR Text)
{
	long result;
	static BYTE parms[] =
		VTS_BSTR;
	InvokeHelper(0xca, DISPATCH_METHOD, VT_I4, (void*)&result, parms,
		Text);
	return result;
}

VARIANT COrgItem::GetSeries()
{
	VARIANT result;
	InvokeHelper(0xcb, DISPATCH_PROPERTYGET, VT_VARIANT, (void*)&result, NULL);
	return result;
}

long COrgItem::GetSuperior()
{
	long result;
	InvokeHelper(0xcc, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

void COrgItem::SetSuperior(long nNewValue)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0xcc, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 nNewValue);
}

CString COrgItem::GetText()
{
	CString result;
	InvokeHelper(0xcd, DISPATCH_PROPERTYGET, VT_BSTR, (void*)&result, NULL);
	return result;
}

void COrgItem::SetText(LPCTSTR lpszNewValue)
{
	static BYTE parms[] =
		VTS_BSTR;
	InvokeHelper(0xcd, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 lpszNewValue);
}

COrgShape COrgItem::GetFormat()
{
	LPDISPATCH pDispatch;
	InvokeHelper(0xce, DISPATCH_PROPERTYGET, VT_DISPATCH, (void*)&pDispatch, NULL);
	return COrgShape(pDispatch);
}