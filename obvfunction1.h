#if !defined(AFX_OBVFUNCTION1_H__0B54217C_5B16_443A_BA67_3DBDFD6BBD79__INCLUDED_)
#define AFX_OBVFUNCTION1_H__0B54217C_5B16_443A_BA67_3DBDFD6BBD79__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// COBVFunction wrapper class

class COBVFunction : public COleDispatchDriver
{
public:
	COBVFunction() {}		// Calls COleDispatchDriver default constructor
	COBVFunction(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	COBVFunction(const COBVFunction& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:

// Operations
public:
	VARIANT GetVolume();
	void SetVolume(const VARIANT& newValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_OBVFUNCTION1_H__0B54217C_5B16_443A_BA67_3DBDFD6BBD79__INCLUDED_)
