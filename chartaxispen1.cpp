// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


#include "stdafx.h"
#include "chartaxispen1.h"


/////////////////////////////////////////////////////////////////////////////
// CChartAxisPen properties

/////////////////////////////////////////////////////////////////////////////
// CChartAxisPen operations

unsigned long CChartAxisPen::GetColor()
{
	unsigned long result;
	InvokeHelper(0x1, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

void CChartAxisPen::SetColor(unsigned long newValue)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0x1, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 newValue);
}

long CChartAxisPen::GetWidth()
{
	long result;
	InvokeHelper(0x2, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

void CChartAxisPen::SetWidth(long nNewValue)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0x2, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 nNewValue);
}

long CChartAxisPen::GetStyle()
{
	long result;
	InvokeHelper(0x3, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

void CChartAxisPen::SetStyle(long nNewValue)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0x3, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 nNewValue);
}

BOOL CChartAxisPen::GetVisible()
{
	BOOL result;
	InvokeHelper(0x4, DISPATCH_PROPERTYGET, VT_BOOL, (void*)&result, NULL);
	return result;
}

void CChartAxisPen::SetVisible(BOOL bNewValue)
{
	static BYTE parms[] =
		VTS_BOOL;
	InvokeHelper(0x4, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 bNewValue);
}

long CChartAxisPen::GetEndStyle()
{
	long result;
	InvokeHelper(0x5, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

void CChartAxisPen::SetEndStyle(long nNewValue)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0x5, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 nNewValue);
}

void CChartAxisPen::ShowEditor(BOOL HideColor, LPCTSTR Title)
{
	static BYTE parms[] =
		VTS_BOOL VTS_BSTR;
	InvokeHelper(0xc9, DISPATCH_METHOD, VT_EMPTY, NULL, parms,
		 HideColor, Title);
}

long CChartAxisPen::GetSmallSpace()
{
	long result;
	InvokeHelper(0xca, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

void CChartAxisPen::SetSmallSpace(long nNewValue)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0xca, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 nNewValue);
}

long CChartAxisPen::GetMode()
{
	long result;
	InvokeHelper(0xcb, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

void CChartAxisPen::SetMode(long nNewValue)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0xcb, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 nNewValue);
}

void CChartAxisPen::Show()
{
	InvokeHelper(0xcc, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
}

void CChartAxisPen::Hide()
{
	InvokeHelper(0xcd, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
}

long CChartAxisPen::GetLineMode()
{
	long result;
	InvokeHelper(0x12d, DISPATCH_PROPERTYGET, VT_I4, (void*)&result, NULL);
	return result;
}

void CChartAxisPen::SetLineMode(long nNewValue)
{
	static BYTE parms[] =
		VTS_I4;
	InvokeHelper(0x12d, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 nNewValue);
}