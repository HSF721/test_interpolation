#if !defined(AFX_IMPORT1_H__9114A585_F418_419A_AB11_A8B468BB3F95__INCLUDED_)
#define AFX_IMPORT1_H__9114A585_F418_419A_AB11_A8B468BB3F95__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CImport wrapper class

class CImport : public COleDispatchDriver
{
public:
	CImport() {}		// Calls COleDispatchDriver default constructor
	CImport(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CImport(const CImport& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	void LoadFromFile(LPCTSTR FileName);
	void LoadFromURL(LPCTSTR URL);
	void LoadFromStream(const VARIANT& AStream);
	void LoadFromBase64Stream(const VARIANT& AStream);
	BOOL GetV5TeeCompatible();
	void SetV5TeeCompatible(BOOL bNewValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_IMPORT1_H__9114A585_F418_419A_AB11_A8B468BB3F95__INCLUDED_)