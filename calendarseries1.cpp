// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


#include "stdafx.h"
#include "calendarseries1.h"

// Dispatch interfaces referenced by this interface
#include "calendarcell1.h"
#include "calendarcellupper1.h"


/////////////////////////////////////////////////////////////////////////////
// CCalendarSeries properties

/////////////////////////////////////////////////////////////////////////////
// CCalendarSeries operations

double CCalendarSeries::GetDate()
{
	double result;
	InvokeHelper(0x1, DISPATCH_PROPERTYGET, VT_R8, (void*)&result, NULL);
	return result;
}

void CCalendarSeries::SetDate(double newValue)
{
	static BYTE parms[] =
		VTS_R8;
	InvokeHelper(0x1, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 newValue);
}

CCalendarCell CCalendarSeries::GetDays()
{
	LPDISPATCH pDispatch;
	InvokeHelper(0x2, DISPATCH_PROPERTYGET, VT_DISPATCH, (void*)&pDispatch, NULL);
	return CCalendarCell(pDispatch);
}

CCalendarCellUpper CCalendarSeries::GetMonths()
{
	LPDISPATCH pDispatch;
	InvokeHelper(0x3, DISPATCH_PROPERTYGET, VT_DISPATCH, (void*)&pDispatch, NULL);
	return CCalendarCellUpper(pDispatch);
}

CCalendarCell CCalendarSeries::GetTrailing()
{
	LPDISPATCH pDispatch;
	InvokeHelper(0x4, DISPATCH_PROPERTYGET, VT_DISPATCH, (void*)&pDispatch, NULL);
	return CCalendarCell(pDispatch);
}

CCalendarCell CCalendarSeries::GetSunday()
{
	LPDISPATCH pDispatch;
	InvokeHelper(0x5, DISPATCH_PROPERTYGET, VT_DISPATCH, (void*)&pDispatch, NULL);
	return CCalendarCell(pDispatch);
}

CCalendarCell CCalendarSeries::GetToday()
{
	LPDISPATCH pDispatch;
	InvokeHelper(0x6, DISPATCH_PROPERTYGET, VT_DISPATCH, (void*)&pDispatch, NULL);
	return CCalendarCell(pDispatch);
}

CCalendarCellUpper CCalendarSeries::GetWeekdays()
{
	LPDISPATCH pDispatch;
	InvokeHelper(0x7, DISPATCH_PROPERTYGET, VT_DISPATCH, (void*)&pDispatch, NULL);
	return CCalendarCellUpper(pDispatch);
}

void CCalendarSeries::NextMonth()
{
	InvokeHelper(0x9, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
}

void CCalendarSeries::PreviousMonth()
{
	InvokeHelper(0xa, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
}

long CCalendarSeries::Rows()
{
	long result;
	InvokeHelper(0xc, DISPATCH_METHOD, VT_I4, (void*)&result, NULL);
	return result;
}

BOOL CCalendarSeries::GetNextButtonVisible()
{
	BOOL result;
	InvokeHelper(0x8, DISPATCH_PROPERTYGET, VT_BOOL, (void*)&result, NULL);
	return result;
}

void CCalendarSeries::SetNextButtonVisible(BOOL bNewValue)
{
	static BYTE parms[] =
		VTS_BOOL;
	InvokeHelper(0x8, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 bNewValue);
}

BOOL CCalendarSeries::GetPreviousButtonVisible()
{
	BOOL result;
	InvokeHelper(0xe, DISPATCH_PROPERTYGET, VT_BOOL, (void*)&result, NULL);
	return result;
}

void CCalendarSeries::SetPreviousButtonVisible(BOOL bNewValue)
{
	static BYTE parms[] =
		VTS_BOOL;
	InvokeHelper(0xe, DISPATCH_PROPERTYPUT, VT_EMPTY, NULL, parms,
		 bNewValue);
}

BOOL CCalendarSeries::ClickedDate(long X, long Y, DATE* ADate)
{
	BOOL result;
	static BYTE parms[] =
		VTS_I4 VTS_I4 VTS_PDATE;
	InvokeHelper(0xc9, DISPATCH_METHOD, VT_BOOL, (void*)&result, parms,
		X, Y, ADate);
	return result;
}
