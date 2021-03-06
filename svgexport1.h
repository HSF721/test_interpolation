#if !defined(AFX_SVGEXPORT1_H__796A7DC4_CCA0_4FFF_8CC3_1D1815AA2270__INCLUDED_)
#define AFX_SVGEXPORT1_H__796A7DC4_CCA0_4FFF_8CC3_1D1815AA2270__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CSVGExport wrapper class

class CSVGExport : public COleDispatchDriver
{
public:
	CSVGExport() {}		// Calls COleDispatchDriver default constructor
	CSVGExport(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CSVGExport(const CSVGExport& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	long GetWidth();
	void SetWidth(long nNewValue);
	long GetHeight();
	void SetHeight(long nNewValue);
	void SaveToFile(LPCTSTR FileName);
	VARIANT SaveToStream();
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SVGEXPORT1_H__796A7DC4_CCA0_4FFF_8CC3_1D1815AA2270__INCLUDED_)
