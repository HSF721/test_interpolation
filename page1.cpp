// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


#include "stdafx.h"
#include "page1.h"


/////////////////////////////////////////////////////////////////////////////
// CPage properties

/////////////////////////////////////////////////////////////////////////////
// CPage operations

void CPage::Next()
{
	InvokeHelper(0x5, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
}

void CPage::Previous()
{
	InvokeHelper(0x6, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
}

long CPage::GetMaxPointsPerPage()
{
	long result;
	InvokeHelper(0x36, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

void CPage::SetMaxPointsPerPage(long nNewValue)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0x36, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 nNewValue);
}

long CPage::GetCurrent()
{
	long result;
	InvokeHelper(0x38, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

void CPage::SetCurrent(long nNewValue)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0x38, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 nNewValue);
}

BOOL CPage::GetScaleLastPage()
{
	BOOL result;
	InvokeHelper(0x39, DISPATCH_PROPERTYGET, VT_BOOL, (void*)&result, NULL);
	return result;
}

void CPage::SetScaleLastPage(BOOL bNewValue)
{
	static BYTE parms[] =
		VTS_BOOL;
	InvokeHelper(0x39, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 bNewValue);
}

long CPage::GetCount()
{
	long result;
	InvokeHelper(0x1, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

long CPage::GetFirstValueIndex()
{
	long result;
	InvokeHelper(0xc9, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

BOOL CPage::GetAutoScale()
{
	BOOL result;
	InvokeHelper(0xca, DISPATCH_PROPERTYGET, VT_BOOL, (void*)&result, NULL);
	return result;
}

void CPage::SetAutoScale(BOOL bNewValue)
{
	static BYTE parms[] =
		VTS_BOOL;
	InvokeHelper(0xca, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 bNewValue);
}