# Microsoft Developer Studio Project File - Name="3_Axis_control" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=3_Axis_control - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "3_Axis_control.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "3_Axis_control.mak" CFG="3_Axis_control - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "3_Axis_control - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "3_Axis_control - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "3_Axis_control - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x804 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "3_Axis_control - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR /Yu"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x804 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 gts.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "3_Axis_control - Win32 Release"
# Name "3_Axis_control - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\3_Axis_control.cpp
# End Source File
# Begin Source File

SOURCE=.\3_Axis_control.rc
# End Source File
# Begin Source File

SOURCE=.\3_Axis_controlDlg.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\3_Axis_control.h
# End Source File
# Begin Source File

SOURCE=.\3_Axis_controlDlg.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\3_Axis_control.ico
# End Source File
# Begin Source File

SOURCE=.\res\3_Axis_control.rc2
# End Source File
# Begin Source File

SOURCE=.\gts.dll
# End Source File
# Begin Source File

SOURCE=.\gts.lib
# End Source File
# End Group
# Begin Group "C_files"

# PROP Default_Filter "源文件"
# Begin Source File

SOURCE=.\adxfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\amountfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\annotationcallout1.cpp
# End Source File
# Begin Source File

SOURCE=.\annotationtool1.cpp
# End Source File
# Begin Source File

SOURCE=.\antialiastool1.cpp
# End Source File
# Begin Source File

SOURCE=.\areaseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\arrowseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\aspect1.cpp
# End Source File
# Begin Source File

SOURCE=.\averagefunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\axes1.cpp
# End Source File
# Begin Source File

SOURCE=.\axis1.cpp
# End Source File
# Begin Source File

SOURCE=.\axisarrowtool1.cpp
# End Source File
# Begin Source File

SOURCE=.\axisgridpen1.cpp
# End Source File
# Begin Source File

SOURCE=.\axislabels1.cpp
# End Source File
# Begin Source File

SOURCE=.\axislabelsitem1.cpp
# End Source File
# Begin Source File

SOURCE=.\axisscrolltool1.cpp
# End Source File
# Begin Source File

SOURCE=.\axistitle1.cpp
# End Source File
# Begin Source File

SOURCE=.\backimage1.cpp
# End Source File
# Begin Source File

SOURCE=.\bannertool1.cpp
# End Source File
# Begin Source File

SOURCE=.\bar3dseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\barjoinseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\barseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\bevelfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\bezierseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\blurfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\bmpexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\bollingerfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\boxplotseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\brightnessfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\brush1.cpp
# End Source File
# Begin Source File

SOURCE=.\bubble3dseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\bubbleseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\calendarcell1.cpp
# End Source File
# Begin Source File

SOURCE=.\calendarcellupper1.cpp
# End Source File
# Begin Source File

SOURCE=.\calendarseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\candleseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\canvas1.cpp
# End Source File
# Begin Source File

SOURCE=.\ccifunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\chartaxispen1.cpp
# End Source File
# Begin Source File

SOURCE=.\chartfont1.cpp
# End Source File
# Begin Source File

SOURCE=.\charthiddenpen1.cpp
# End Source File
# Begin Source File

SOURCE=.\chartimagetool1.cpp
# End Source File
# Begin Source File

SOURCE=.\circlelabels1.cpp
# End Source File
# Begin Source File

SOURCE=.\circulargauge1.cpp
# End Source File
# Begin Source File

SOURCE=.\clipseriestool1.cpp
# End Source File
# Begin Source File

SOURCE=.\clockseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\clvfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\colorbandtool1.cpp
# End Source File
# Begin Source File

SOURCE=.\colorfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\colorgridseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\colorlinetool1.cpp
# End Source File
# Begin Source File

SOURCE=.\compressfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\contourlevel1.cpp
# End Source File
# Begin Source File

SOURCE=.\contourlevels1.cpp
# End Source File
# Begin Source File

SOURCE=.\contourmarks1.cpp
# End Source File
# Begin Source File

SOURCE=.\contourseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\contrastfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\cropfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\cursortool1.cpp
# End Source File
# Begin Source File

SOURCE=.\curvefittingfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\custom3dpaletteseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\customfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\darvasseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\datatabletool1.cpp
# End Source File
# Begin Source File

SOURCE=.\deltapointseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\donutseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\downsamplingfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\dragmarkstool1.cpp
# End Source File
# Begin Source File

SOURCE=.\dragpointtool1.cpp
# End Source File
# Begin Source File

SOURCE=.\drawline1.cpp
# End Source File
# Begin Source File

SOURCE=.\drawlinelist1.cpp
# End Source File
# Begin Source File

SOURCE=.\drawlinetool1.cpp
# End Source File
# Begin Source File

SOURCE=.\embossfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\environment1.cpp
# End Source File
# Begin Source File

SOURCE=.\epsexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\errorbarseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\errorseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\expavgfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\explodedslices1.cpp
# End Source File
# Begin Source File

SOURCE=.\expmovavgfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\export1.cpp
# End Source File
# Begin Source File

SOURCE=.\extralegendtool1.cpp
# End Source File
# Begin Source File

SOURCE=.\fadertool1.cpp
# End Source File
# Begin Source File

SOURCE=.\fastlineseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\fibonacciitem1.cpp
# End Source File
# Begin Source File

SOURCE=.\fibonaccilevels1.cpp
# End Source File
# Begin Source File

SOURCE=.\fibonaccitool1.cpp
# End Source File
# Begin Source File

SOURCE=.\filteritems1.cpp
# End Source File
# Begin Source File

SOURCE=.\filterregion1.cpp
# End Source File
# Begin Source File

SOURCE=.\floatxyz1.cpp
# End Source File
# Begin Source File

SOURCE=.\framebrush1.cpp
# End Source File
# Begin Source File

SOURCE=.\framedborder1.cpp
# End Source File
# Begin Source File

SOURCE=.\frametool1.cpp
# End Source File
# Begin Source File

SOURCE=.\funnelseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\gammacorrectionfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\ganttseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\gantttool1.cpp
# End Source File
# Begin Source File

SOURCE=.\gaugepointerrange1.cpp
# End Source File
# Begin Source File

SOURCE=.\gaugeseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\gaugeseriespointer1.cpp
# End Source File
# Begin Source File

SOURCE=.\gifexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\gllightsource1.cpp
# End Source File
# Begin Source File

SOURCE=.\glposition1.cpp
# End Source File
# Begin Source File

SOURCE=.\gradient1.cpp
# End Source File
# Begin Source File

SOURCE=.\grayscalefilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\gridbandbrush1.cpp
# End Source File
# Begin Source File

SOURCE=.\gridbandtool1.cpp
# End Source File
# Begin Source File

SOURCE=.\gridtransposetool1.cpp
# End Source File
# Begin Source File

SOURCE=.\highlowlineseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\highlowseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\histogramfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\histogramseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\horizareaseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\horizbarseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\horizboxplotseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\horizhistogramseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\horizlineseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\htmlexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\huelumsatfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\imagebarseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\imagepointseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\import1.cpp
# End Source File
# Begin Source File

SOURCE=.\isosurfaceseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\jpegexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\kagiseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\legend1.cpp
# End Source File
# Begin Source File

SOURCE=.\legenditem1.cpp
# End Source File
# Begin Source File

SOURCE=.\legenditems1.cpp
# End Source File
# Begin Source File

SOURCE=.\legendpalettetool1.cpp
# End Source File
# Begin Source File

SOURCE=.\legendscrollbartool1.cpp
# End Source File
# Begin Source File

SOURCE=.\legendsymbol1.cpp
# End Source File
# Begin Source File

SOURCE=.\legendtitle1.cpp
# End Source File
# Begin Source File

SOURCE=.\levelsegment1.cpp
# End Source File
# Begin Source File

SOURCE=.\lighttool1.cpp
# End Source File
# Begin Source File

SOURCE=.\lineargauge1.cpp
# End Source File
# Begin Source File

SOURCE=.\lineseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\linktool1.cpp
# End Source File
# Begin Source File

SOURCE=.\macdfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\magnifytool1.cpp
# End Source File
# Begin Source File

SOURCE=.\mappolygon1.cpp
# End Source File
# Begin Source File

SOURCE=.\mappolygonlist1.cpp
# End Source File
# Begin Source File

SOURCE=.\mapseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\margins1.cpp
# End Source File
# Begin Source File

SOURCE=.\marks1.cpp
# End Source File
# Begin Source File

SOURCE=.\markscallout1.cpp
# End Source File
# Begin Source File

SOURCE=.\marksitem1.cpp
# End Source File
# Begin Source File

SOURCE=.\markssymbol1.cpp
# End Source File
# Begin Source File

SOURCE=.\markstiptool1.cpp
# End Source File
# Begin Source File

SOURCE=.\medianfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\metafileexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\mirrorfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\modefunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\mosaicfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\movingavgfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\nativeexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\nearesttool1.cpp
# End Source File
# Begin Source File

SOURCE=.\numericgauge1.cpp
# End Source File
# Begin Source File

SOURCE=.\numericmarker1.cpp
# End Source File
# Begin Source File

SOURCE=.\obvfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\orgitem1.cpp
# End Source File
# Begin Source File

SOURCE=.\orgitemcollection1.cpp
# End Source File
# Begin Source File

SOURCE=.\orgseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\orgshape1.cpp
# End Source File
# Begin Source File

SOURCE=.\page1.cpp
# End Source File
# Begin Source File

SOURCE=.\pagenumtool1.cpp
# End Source File
# Begin Source File

SOURCE=.\panel1.cpp
# End Source File
# Begin Source File

SOURCE=.\pcxexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\pdfexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\pen1.cpp
# End Source File
# Begin Source File

SOURCE=.\performancefunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\piemarks1.cpp
# End Source File
# Begin Source File

SOURCE=.\pieotherslice1.cpp
# End Source File
# Begin Source File

SOURCE=.\pieseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\pietool1.cpp
# End Source File
# Begin Source File

SOURCE=.\pngexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\point3dseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\pointarray1.cpp
# End Source File
# Begin Source File

SOURCE=.\pointer1.cpp
# End Source File
# Begin Source File

SOURCE=.\pointfigureseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\pointseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\polarbarseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\polargridseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\polarseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\printer1.cpp
# End Source File
# Begin Source File

SOURCE=.\printersettings1.cpp
# End Source File
# Begin Source File

SOURCE=.\pvofunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\pyramidseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\radarseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\rectangletool1.cpp
# End Source File
# Begin Source File

SOURCE=.\renkoseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\resizefilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\rmsfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\rotatefilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\rotatetool1.cpp
# End Source File
# Begin Source File

SOURCE=.\rsifunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\sarfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\scroll1.cpp
# End Source File
# Begin Source File

SOURCE=.\scrollbarthumb1.cpp
# End Source File
# Begin Source File

SOURCE=.\selectortool1.cpp
# End Source File
# Begin Source File

SOURCE=.\series1.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesanimationtool1.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesbandtool1.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesgroup1.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesgroups1.cpp
# End Source File
# Begin Source File

SOURCE=.\serieslist1.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesmarkposition1.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesmarkspositions1.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesregiontool1.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesstatstool1.cpp
# End Source File
# Begin Source File

SOURCE=.\shapeseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\sharpenfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\smithseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\smoothingfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\smoothpoints1.cpp
# End Source File
# Begin Source File

SOURCE=.\softenfilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\spacing1.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\stddeviationfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\strings1.cpp
# End Source File
# Begin Source File

SOURCE=.\subgradient1.cpp
# End Source File
# Begin Source File

SOURCE=.\subsetteefunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\surfacenearesttool1.cpp
# End Source File
# Begin Source File

SOURCE=.\surfaceseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\surfacesides1.cpp
# End Source File
# Begin Source File

SOURCE=.\svgexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\tablelegend1.cpp
# End Source File
# Begin Source File

SOURCE=.\tagcloudseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\tchart1.cpp
# End Source File
# Begin Source File

SOURCE=.\teecustomshape1.cpp
# End Source File
# Begin Source File

SOURCE=.\teefilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\teefont1.cpp
# End Source File
# Begin Source File

SOURCE=.\teefunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\teeopengl1.cpp
# End Source File
# Begin Source File

SOURCE=.\teepicture1.cpp
# End Source File
# Begin Source File

SOURCE=.\teepoint2d1.cpp
# End Source File
# Begin Source File

SOURCE=.\teepoint3d1.cpp
# End Source File
# Begin Source File

SOURCE=.\teerect1.cpp
# End Source File
# Begin Source File

SOURCE=.\teeshadow1.cpp
# End Source File
# Begin Source File

SOURCE=.\teeshape1.cpp
# End Source File
# Begin Source File

SOURCE=.\teeshapepanel1.cpp
# End Source File
# Begin Source File

SOURCE=.\text3dtool1.cpp
# End Source File
# Begin Source File

SOURCE=.\textexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\tilefilter1.cpp
# End Source File
# Begin Source File

SOURCE=.\titles1.cpp
# End Source File
# Begin Source File

SOURCE=.\toollist1.cpp
# End Source File
# Begin Source File

SOURCE=.\tools1.cpp
# End Source File
# Begin Source File

SOURCE=.\towerseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\transposeseriestool1.cpp
# End Source File
# Begin Source File

SOURCE=.\trendfunction1.cpp
# End Source File
# Begin Source File

SOURCE=.\trisurfaceseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\valuelist1.cpp
# End Source File
# Begin Source File

SOURCE=.\valuelists1.cpp
# End Source File
# Begin Source File

SOURCE=.\vector3dseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\videoplayertool1.cpp
# End Source File
# Begin Source File

SOURCE=.\videotool1.cpp
# End Source File
# Begin Source File

SOURCE=.\volumepipeseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\volumeseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\wall1.cpp
# End Source File
# Begin Source File

SOURCE=.\walls1.cpp
# End Source File
# Begin Source File

SOURCE=.\waterfallseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\windroseseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\worldseries1.cpp
# End Source File
# Begin Source File

SOURCE=.\xamlexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\xlsexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\xmlexport1.cpp
# End Source File
# Begin Source File

SOURCE=.\zoom1.cpp
# End Source File
# Begin Source File

SOURCE=.\zoomfilter1.cpp
# End Source File
# End Group
# Begin Group "H_files"

# PROP Default_Filter "头文件"
# Begin Source File

SOURCE=.\adxfunction1.h
# End Source File
# Begin Source File

SOURCE=.\amountfilter1.h
# End Source File
# Begin Source File

SOURCE=.\annotationcallout1.h
# End Source File
# Begin Source File

SOURCE=.\annotationtool1.h
# End Source File
# Begin Source File

SOURCE=.\antialiastool1.h
# End Source File
# Begin Source File

SOURCE=.\areaseries1.h
# End Source File
# Begin Source File

SOURCE=.\arrowseries1.h
# End Source File
# Begin Source File

SOURCE=.\aspect1.h
# End Source File
# Begin Source File

SOURCE=.\averagefunction1.h
# End Source File
# Begin Source File

SOURCE=.\axes1.h
# End Source File
# Begin Source File

SOURCE=.\axis1.h
# End Source File
# Begin Source File

SOURCE=.\axisarrowtool1.h
# End Source File
# Begin Source File

SOURCE=.\axisgridpen1.h
# End Source File
# Begin Source File

SOURCE=.\axislabels1.h
# End Source File
# Begin Source File

SOURCE=.\axislabelsitem1.h
# End Source File
# Begin Source File

SOURCE=.\axisscrolltool1.h
# End Source File
# Begin Source File

SOURCE=.\axistitle1.h
# End Source File
# Begin Source File

SOURCE=.\backimage1.h
# End Source File
# Begin Source File

SOURCE=.\bannertool1.h
# End Source File
# Begin Source File

SOURCE=.\bar3dseries1.h
# End Source File
# Begin Source File

SOURCE=.\barjoinseries1.h
# End Source File
# Begin Source File

SOURCE=.\barseries1.h
# End Source File
# Begin Source File

SOURCE=.\bevelfilter1.h
# End Source File
# Begin Source File

SOURCE=.\bezierseries1.h
# End Source File
# Begin Source File

SOURCE=.\blurfilter1.h
# End Source File
# Begin Source File

SOURCE=.\bmpexport1.h
# End Source File
# Begin Source File

SOURCE=.\bollingerfunction1.h
# End Source File
# Begin Source File

SOURCE=.\boxplotseries1.h
# End Source File
# Begin Source File

SOURCE=.\brightnessfilter1.h
# End Source File
# Begin Source File

SOURCE=.\brush1.h
# End Source File
# Begin Source File

SOURCE=.\bubble3dseries1.h
# End Source File
# Begin Source File

SOURCE=.\bubbleseries1.h
# End Source File
# Begin Source File

SOURCE=.\calendarcell1.h
# End Source File
# Begin Source File

SOURCE=.\calendarcellupper1.h
# End Source File
# Begin Source File

SOURCE=.\calendarseries1.h
# End Source File
# Begin Source File

SOURCE=.\candleseries1.h
# End Source File
# Begin Source File

SOURCE=.\canvas1.h
# End Source File
# Begin Source File

SOURCE=.\ccifunction1.h
# End Source File
# Begin Source File

SOURCE=.\chartaxispen1.h
# End Source File
# Begin Source File

SOURCE=.\chartfont1.h
# End Source File
# Begin Source File

SOURCE=.\charthiddenpen1.h
# End Source File
# Begin Source File

SOURCE=.\chartimagetool1.h
# End Source File
# Begin Source File

SOURCE=.\circlelabels1.h
# End Source File
# Begin Source File

SOURCE=.\circulargauge1.h
# End Source File
# Begin Source File

SOURCE=.\clipseriestool1.h
# End Source File
# Begin Source File

SOURCE=.\clockseries1.h
# End Source File
# Begin Source File

SOURCE=.\clvfunction1.h
# End Source File
# Begin Source File

SOURCE=.\colorbandtool1.h
# End Source File
# Begin Source File

SOURCE=.\colorfilter1.h
# End Source File
# Begin Source File

SOURCE=.\colorgridseries1.h
# End Source File
# Begin Source File

SOURCE=.\colorlinetool1.h
# End Source File
# Begin Source File

SOURCE=.\compressfunction1.h
# End Source File
# Begin Source File

SOURCE=.\contourlevel1.h
# End Source File
# Begin Source File

SOURCE=.\contourlevels1.h
# End Source File
# Begin Source File

SOURCE=.\contourmarks1.h
# End Source File
# Begin Source File

SOURCE=.\contourseries1.h
# End Source File
# Begin Source File

SOURCE=.\contrastfilter1.h
# End Source File
# Begin Source File

SOURCE=.\cropfilter1.h
# End Source File
# Begin Source File

SOURCE=.\cursortool1.h
# End Source File
# Begin Source File

SOURCE=.\curvefittingfunction1.h
# End Source File
# Begin Source File

SOURCE=.\custom3dpaletteseries1.h
# End Source File
# Begin Source File

SOURCE=.\customfunction1.h
# End Source File
# Begin Source File

SOURCE=.\darvasseries1.h
# End Source File
# Begin Source File

SOURCE=.\datatabletool1.h
# End Source File
# Begin Source File

SOURCE=.\deltapointseries1.h
# End Source File
# Begin Source File

SOURCE=.\donutseries1.h
# End Source File
# Begin Source File

SOURCE=.\downsamplingfunction1.h
# End Source File
# Begin Source File

SOURCE=.\dragmarkstool1.h
# End Source File
# Begin Source File

SOURCE=.\dragpointtool1.h
# End Source File
# Begin Source File

SOURCE=.\drawline1.h
# End Source File
# Begin Source File

SOURCE=.\drawlinelist1.h
# End Source File
# Begin Source File

SOURCE=.\drawlinetool1.h
# End Source File
# Begin Source File

SOURCE=.\embossfilter1.h
# End Source File
# Begin Source File

SOURCE=.\environment1.h
# End Source File
# Begin Source File

SOURCE=.\epsexport1.h
# End Source File
# Begin Source File

SOURCE=.\errorbarseries1.h
# End Source File
# Begin Source File

SOURCE=.\errorseries1.h
# End Source File
# Begin Source File

SOURCE=.\expavgfunction1.h
# End Source File
# Begin Source File

SOURCE=.\explodedslices1.h
# End Source File
# Begin Source File

SOURCE=.\expmovavgfunction1.h
# End Source File
# Begin Source File

SOURCE=.\export1.h
# End Source File
# Begin Source File

SOURCE=.\extralegendtool1.h
# End Source File
# Begin Source File

SOURCE=.\fadertool1.h
# End Source File
# Begin Source File

SOURCE=.\fastlineseries1.h
# End Source File
# Begin Source File

SOURCE=.\fibonacciitem1.h
# End Source File
# Begin Source File

SOURCE=.\fibonaccilevels1.h
# End Source File
# Begin Source File

SOURCE=.\fibonaccitool1.h
# End Source File
# Begin Source File

SOURCE=.\filteritems1.h
# End Source File
# Begin Source File

SOURCE=.\filterregion1.h
# End Source File
# Begin Source File

SOURCE=.\floatxyz1.h
# End Source File
# Begin Source File

SOURCE=.\framebrush1.h
# End Source File
# Begin Source File

SOURCE=.\framedborder1.h
# End Source File
# Begin Source File

SOURCE=.\frametool1.h
# End Source File
# Begin Source File

SOURCE=.\funnelseries1.h
# End Source File
# Begin Source File

SOURCE=.\gammacorrectionfilter1.h
# End Source File
# Begin Source File

SOURCE=.\ganttseries1.h
# End Source File
# Begin Source File

SOURCE=.\gantttool1.h
# End Source File
# Begin Source File

SOURCE=.\gaugepointerrange1.h
# End Source File
# Begin Source File

SOURCE=.\gaugeseries1.h
# End Source File
# Begin Source File

SOURCE=.\gaugeseriespointer1.h
# End Source File
# Begin Source File

SOURCE=.\gifexport1.h
# End Source File
# Begin Source File

SOURCE=.\gllightsource1.h
# End Source File
# Begin Source File

SOURCE=.\glposition1.h
# End Source File
# Begin Source File

SOURCE=.\gradient1.h
# End Source File
# Begin Source File

SOURCE=.\grayscalefilter1.h
# End Source File
# Begin Source File

SOURCE=.\gridbandbrush1.h
# End Source File
# Begin Source File

SOURCE=.\gridbandtool1.h
# End Source File
# Begin Source File

SOURCE=.\gridtransposetool1.h
# End Source File
# Begin Source File

SOURCE=.\gts.h
# End Source File
# Begin Source File

SOURCE=.\head.h
# End Source File
# Begin Source File

SOURCE=.\highlowlineseries1.h
# End Source File
# Begin Source File

SOURCE=.\highlowseries1.h
# End Source File
# Begin Source File

SOURCE=.\histogramfunction1.h
# End Source File
# Begin Source File

SOURCE=.\histogramseries1.h
# End Source File
# Begin Source File

SOURCE=.\horizareaseries1.h
# End Source File
# Begin Source File

SOURCE=.\horizbarseries1.h
# End Source File
# Begin Source File

SOURCE=.\horizboxplotseries1.h
# End Source File
# Begin Source File

SOURCE=.\horizhistogramseries1.h
# End Source File
# Begin Source File

SOURCE=.\horizlineseries1.h
# End Source File
# Begin Source File

SOURCE=.\htmlexport1.h
# End Source File
# Begin Source File

SOURCE=.\huelumsatfilter1.h
# End Source File
# Begin Source File

SOURCE=.\imagebarseries1.h
# End Source File
# Begin Source File

SOURCE=.\imagepointseries1.h
# End Source File
# Begin Source File

SOURCE=.\import1.h
# End Source File
# Begin Source File

SOURCE=.\isosurfaceseries1.h
# End Source File
# Begin Source File

SOURCE=.\jpegexport1.h
# End Source File
# Begin Source File

SOURCE=.\kagiseries1.h
# End Source File
# Begin Source File

SOURCE=.\legend1.h
# End Source File
# Begin Source File

SOURCE=.\legenditem1.h
# End Source File
# Begin Source File

SOURCE=.\legenditems1.h
# End Source File
# Begin Source File

SOURCE=.\legendpalettetool1.h
# End Source File
# Begin Source File

SOURCE=.\legendscrollbartool1.h
# End Source File
# Begin Source File

SOURCE=.\legendsymbol1.h
# End Source File
# Begin Source File

SOURCE=.\legendtitle1.h
# End Source File
# Begin Source File

SOURCE=.\levelsegment1.h
# End Source File
# Begin Source File

SOURCE=.\lighttool1.h
# End Source File
# Begin Source File

SOURCE=.\lineargauge1.h
# End Source File
# Begin Source File

SOURCE=.\lineseries1.h
# End Source File
# Begin Source File

SOURCE=.\linktool1.h
# End Source File
# Begin Source File

SOURCE=.\macdfunction1.h
# End Source File
# Begin Source File

SOURCE=.\magnifytool1.h
# End Source File
# Begin Source File

SOURCE=.\mappolygon1.h
# End Source File
# Begin Source File

SOURCE=.\mappolygonlist1.h
# End Source File
# Begin Source File

SOURCE=.\mapseries1.h
# End Source File
# Begin Source File

SOURCE=.\margins1.h
# End Source File
# Begin Source File

SOURCE=.\marks1.h
# End Source File
# Begin Source File

SOURCE=.\markscallout1.h
# End Source File
# Begin Source File

SOURCE=.\marksitem1.h
# End Source File
# Begin Source File

SOURCE=.\markssymbol1.h
# End Source File
# Begin Source File

SOURCE=.\markstiptool1.h
# End Source File
# Begin Source File

SOURCE=.\medianfunction1.h
# End Source File
# Begin Source File

SOURCE=.\metafileexport1.h
# End Source File
# Begin Source File

SOURCE=.\mirrorfilter1.h
# End Source File
# Begin Source File

SOURCE=.\modefunction1.h
# End Source File
# Begin Source File

SOURCE=.\mosaicfilter1.h
# End Source File
# Begin Source File

SOURCE=.\movingavgfunction1.h
# End Source File
# Begin Source File

SOURCE=.\nativeexport1.h
# End Source File
# Begin Source File

SOURCE=.\nearesttool1.h
# End Source File
# Begin Source File

SOURCE=.\numericgauge1.h
# End Source File
# Begin Source File

SOURCE=.\numericmarker1.h
# End Source File
# Begin Source File

SOURCE=.\obvfunction1.h
# End Source File
# Begin Source File

SOURCE=.\orgitem1.h
# End Source File
# Begin Source File

SOURCE=.\orgitemcollection1.h
# End Source File
# Begin Source File

SOURCE=.\orgseries1.h
# End Source File
# Begin Source File

SOURCE=.\orgshape1.h
# End Source File
# Begin Source File

SOURCE=.\page1.h
# End Source File
# Begin Source File

SOURCE=.\pagenumtool1.h
# End Source File
# Begin Source File

SOURCE=.\panel1.h
# End Source File
# Begin Source File

SOURCE=.\pcxexport1.h
# End Source File
# Begin Source File

SOURCE=.\pdfexport1.h
# End Source File
# Begin Source File

SOURCE=.\pen1.h
# End Source File
# Begin Source File

SOURCE=.\performancefunction1.h
# End Source File
# Begin Source File

SOURCE=.\piemarks1.h
# End Source File
# Begin Source File

SOURCE=.\pieotherslice1.h
# End Source File
# Begin Source File

SOURCE=.\pieseries1.h
# End Source File
# Begin Source File

SOURCE=.\pietool1.h
# End Source File
# Begin Source File

SOURCE=.\pngexport1.h
# End Source File
# Begin Source File

SOURCE=.\point3dseries1.h
# End Source File
# Begin Source File

SOURCE=.\pointarray1.h
# End Source File
# Begin Source File

SOURCE=.\pointer1.h
# End Source File
# Begin Source File

SOURCE=.\pointfigureseries1.h
# End Source File
# Begin Source File

SOURCE=.\pointseries1.h
# End Source File
# Begin Source File

SOURCE=.\polarbarseries1.h
# End Source File
# Begin Source File

SOURCE=.\polargridseries1.h
# End Source File
# Begin Source File

SOURCE=.\polarseries1.h
# End Source File
# Begin Source File

SOURCE=.\printer1.h
# End Source File
# Begin Source File

SOURCE=.\printersettings1.h
# End Source File
# Begin Source File

SOURCE=.\pvofunction1.h
# End Source File
# Begin Source File

SOURCE=.\pyramidseries1.h
# End Source File
# Begin Source File

SOURCE=.\radarseries1.h
# End Source File
# Begin Source File

SOURCE=.\rectangletool1.h
# End Source File
# Begin Source File

SOURCE=.\renkoseries1.h
# End Source File
# Begin Source File

SOURCE=.\resizefilter1.h
# End Source File
# Begin Source File

SOURCE=.\Resource.h
# End Source File
# Begin Source File

SOURCE=.\rmsfunction1.h
# End Source File
# Begin Source File

SOURCE=.\rotatefilter1.h
# End Source File
# Begin Source File

SOURCE=.\rotatetool1.h
# End Source File
# Begin Source File

SOURCE=.\rsifunction1.h
# End Source File
# Begin Source File

SOURCE=.\sarfunction1.h
# End Source File
# Begin Source File

SOURCE=.\scroll1.h
# End Source File
# Begin Source File

SOURCE=.\scrollbarthumb1.h
# End Source File
# Begin Source File

SOURCE=.\selectortool1.h
# End Source File
# Begin Source File

SOURCE=.\series1.h
# End Source File
# Begin Source File

SOURCE=.\seriesanimationtool1.h
# End Source File
# Begin Source File

SOURCE=.\seriesbandtool1.h
# End Source File
# Begin Source File

SOURCE=.\seriesgroup1.h
# End Source File
# Begin Source File

SOURCE=.\seriesgroups1.h
# End Source File
# Begin Source File

SOURCE=.\serieslist1.h
# End Source File
# Begin Source File

SOURCE=.\seriesmarkposition1.h
# End Source File
# Begin Source File

SOURCE=.\seriesmarkspositions1.h
# End Source File
# Begin Source File

SOURCE=.\seriesregiontool1.h
# End Source File
# Begin Source File

SOURCE=.\seriesstatstool1.h
# End Source File
# Begin Source File

SOURCE=.\shapeseries1.h
# End Source File
# Begin Source File

SOURCE=.\sharpenfilter1.h
# End Source File
# Begin Source File

SOURCE=.\smithseries1.h
# End Source File
# Begin Source File

SOURCE=.\smoothingfunction1.h
# End Source File
# Begin Source File

SOURCE=.\smoothpoints1.h
# End Source File
# Begin Source File

SOURCE=.\softenfilter1.h
# End Source File
# Begin Source File

SOURCE=.\spacing1.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\stddeviationfunction1.h
# End Source File
# Begin Source File

SOURCE=.\strings1.h
# End Source File
# Begin Source File

SOURCE=.\subgradient1.h
# End Source File
# Begin Source File

SOURCE=.\subsetteefunction1.h
# End Source File
# Begin Source File

SOURCE=.\surfacenearesttool1.h
# End Source File
# Begin Source File

SOURCE=.\surfaceseries1.h
# End Source File
# Begin Source File

SOURCE=.\surfacesides1.h
# End Source File
# Begin Source File

SOURCE=.\svgexport1.h
# End Source File
# Begin Source File

SOURCE=.\tablelegend1.h
# End Source File
# Begin Source File

SOURCE=.\tagcloudseries1.h
# End Source File
# Begin Source File

SOURCE=.\tchart.h

!IF  "$(CFG)" == "3_Axis_control - Win32 Release"

!ELSEIF  "$(CFG)" == "3_Axis_control - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\tchart1.h
# End Source File
# Begin Source File

SOURCE=.\teecustomshape1.h
# End Source File
# Begin Source File

SOURCE=.\teefilter1.h
# End Source File
# Begin Source File

SOURCE=.\teefont1.h
# End Source File
# Begin Source File

SOURCE=.\teefunction1.h
# End Source File
# Begin Source File

SOURCE=.\teeopengl1.h
# End Source File
# Begin Source File

SOURCE=.\teepicture1.h
# End Source File
# Begin Source File

SOURCE=.\teepoint2d1.h
# End Source File
# Begin Source File

SOURCE=.\teepoint3d1.h
# End Source File
# Begin Source File

SOURCE=.\teerect1.h
# End Source File
# Begin Source File

SOURCE=.\teeshadow1.h
# End Source File
# Begin Source File

SOURCE=.\teeshape1.h
# End Source File
# Begin Source File

SOURCE=.\teeshapepanel1.h
# End Source File
# Begin Source File

SOURCE=.\text3dtool1.h
# End Source File
# Begin Source File

SOURCE=.\textexport1.h
# End Source File
# Begin Source File

SOURCE=.\tilefilter1.h
# End Source File
# Begin Source File

SOURCE=.\titles1.h
# End Source File
# Begin Source File

SOURCE=.\toollist1.h
# End Source File
# Begin Source File

SOURCE=.\tools1.h
# End Source File
# Begin Source File

SOURCE=.\towerseries1.h
# End Source File
# Begin Source File

SOURCE=.\transposeseriestool1.h
# End Source File
# Begin Source File

SOURCE=.\trendfunction1.h
# End Source File
# Begin Source File

SOURCE=.\trisurfaceseries1.h
# End Source File
# Begin Source File

SOURCE=.\valuelist1.h
# End Source File
# Begin Source File

SOURCE=.\valuelists1.h
# End Source File
# Begin Source File

SOURCE=.\vector3dseries1.h
# End Source File
# Begin Source File

SOURCE=.\videoplayertool1.h
# End Source File
# Begin Source File

SOURCE=.\videotool1.h
# End Source File
# Begin Source File

SOURCE=.\volumepipeseries1.h
# End Source File
# Begin Source File

SOURCE=.\volumeseries1.h
# End Source File
# Begin Source File

SOURCE=.\wall1.h
# End Source File
# Begin Source File

SOURCE=.\walls1.h
# End Source File
# Begin Source File

SOURCE=.\waterfallseries1.h
# End Source File
# Begin Source File

SOURCE=.\windroseseries1.h
# End Source File
# Begin Source File

SOURCE=.\worldseries1.h
# End Source File
# Begin Source File

SOURCE=.\xamlexport1.h
# End Source File
# Begin Source File

SOURCE=.\xlsexport1.h
# End Source File
# Begin Source File

SOURCE=.\xmlexport1.h
# End Source File
# Begin Source File

SOURCE=.\zoom1.h
# End Source File
# Begin Source File

SOURCE=.\zoomfilter1.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# End Target
# End Project
# Section 3_Axis_control : {92481035-6D58-4BD4-81BE-D3B6904DEAD0}
# 	2:5:Class:CBevelFilter
# 	2:10:HeaderFile:bevelfilter1.h
# 	2:8:ImplFile:bevelfilter1.cpp
# End Section
# Section 3_Axis_control : {75295A72-43B5-418C-BA98-BE48FC7DE7C5}
# 	2:5:Class:CXMLExport
# 	2:10:HeaderFile:xmlexport1.h
# 	2:8:ImplFile:xmlexport1.cpp
# End Section
# Section 3_Axis_control : {B858DC45-4E07-450D-92AD-25CFF13AC862}
# 	2:5:Class:CPage
# 	2:10:HeaderFile:page1.h
# 	2:8:ImplFile:page1.cpp
# End Section
# Section 3_Axis_control : {2BD3FEDC-583E-4F97-BD6A-2F560A5E6B0C}
# 	2:5:Class:CCompressFunction
# 	2:10:HeaderFile:compressfunction1.h
# 	2:8:ImplFile:compressfunction1.cpp
# End Section
# Section 3_Axis_control : {5F90D762-B0EE-4E2F-A16B-61BB57B6F883}
# 	2:5:Class:CSeriesMarkPosition
# 	2:10:HeaderFile:seriesmarkposition1.h
# 	2:8:ImplFile:seriesmarkposition1.cpp
# End Section
# Section 3_Axis_control : {D8F55350-A1EC-4459-AA69-DFFCDAF2992A}
# 	2:5:Class:COrgItemCollection
# 	2:10:HeaderFile:orgitemcollection1.h
# 	2:8:ImplFile:orgitemcollection1.cpp
# End Section
# Section 3_Axis_control : {C7D93468-7413-4888-9EA6-D3D4DD9C4F38}
# 	2:5:Class:CMovingAvgFunction
# 	2:10:HeaderFile:movingavgfunction1.h
# 	2:8:ImplFile:movingavgfunction1.cpp
# End Section
# Section 3_Axis_control : {809C6B72-1134-4CB9-B2BD-14927EAD6E22}
# 	2:5:Class:CTeeShadow
# 	2:10:HeaderFile:teeshadow1.h
# 	2:8:ImplFile:teeshadow1.cpp
# End Section
# Section 3_Axis_control : {2C3BF213-1FDF-4175-8CDA-BBC8D976126E}
# 	2:5:Class:CContrastFilter
# 	2:10:HeaderFile:contrastfilter1.h
# 	2:8:ImplFile:contrastfilter1.cpp
# End Section
# Section 3_Axis_control : {9E71A825-8554-4501-B72F-83E5AA82C35F}
# 	2:5:Class:CSoftenFilter
# 	2:10:HeaderFile:softenfilter1.h
# 	2:8:ImplFile:softenfilter1.cpp
# End Section
# Section 3_Axis_control : {DB5480BA-7F0B-41E5-815C-3358B3A01A59}
# 	2:5:Class:CDragPointTool
# 	2:10:HeaderFile:dragpointtool1.h
# 	2:8:ImplFile:dragpointtool1.cpp
# End Section
# Section 3_Axis_control : {142CE71E-2D1B-4A48-9C74-1FD531F2953A}
# 	2:5:Class:CTransposeSeriesTool
# 	2:10:HeaderFile:transposeseriestool1.h
# 	2:8:ImplFile:transposeseriestool1.cpp
# End Section
# Section 3_Axis_control : {6A38A032-AF85-4CE1-9D5D-D9C773FEB8A3}
# 	2:5:Class:CText3DTool
# 	2:10:HeaderFile:text3dtool1.h
# 	2:8:ImplFile:text3dtool1.cpp
# End Section
# Section 3_Axis_control : {1A86275D-45F4-4B29-9397-84F0E30A70BB}
# 	2:5:Class:CSeriesGroups
# 	2:10:HeaderFile:seriesgroups1.h
# 	2:8:ImplFile:seriesgroups1.cpp
# End Section
# Section 3_Axis_control : {F09906CB-3E06-47B9-A16E-20E6D73CCE73}
# 	2:5:Class:CSubGradient
# 	2:10:HeaderFile:subgradient1.h
# 	2:8:ImplFile:subgradient1.cpp
# End Section
# Section 3_Axis_control : {437752AD-402E-47C8-A712-79BEB199DB7E}
# 	2:5:Class:CMirrorFilter
# 	2:10:HeaderFile:mirrorfilter1.h
# 	2:8:ImplFile:mirrorfilter1.cpp
# End Section
# Section 3_Axis_control : {C01E2137-30C3-4F62-977C-70F211750C45}
# 	2:5:Class:CSurfaceSeries
# 	2:10:HeaderFile:surfaceseries1.h
# 	2:8:ImplFile:surfaceseries1.cpp
# End Section
# Section 3_Axis_control : {F2DD0F5F-1E6F-493C-87AF-02ED0D228B3A}
# 	2:5:Class:CChartHiddenPen
# 	2:10:HeaderFile:charthiddenpen1.h
# 	2:8:ImplFile:charthiddenpen1.cpp
# End Section
# Section 3_Axis_control : {6D8C1B52-50BC-4ECF-ABB6-1C06A3BC9520}
# 	2:5:Class:CContourMarks
# 	2:10:HeaderFile:contourmarks1.h
# 	2:8:ImplFile:contourmarks1.cpp
# End Section
# Section 3_Axis_control : {7E60AF48-F4E1-4C2C-88C3-6AF354DE9B1A}
# 	2:5:Class:CHorizLineSeries
# 	2:10:HeaderFile:horizlineseries1.h
# 	2:8:ImplFile:horizlineseries1.cpp
# End Section
# Section 3_Axis_control : {5B4B3F07-2EE7-48BE-8F04-CC603959C88F}
# 	2:5:Class:CGaugeSeriesPointer
# 	2:10:HeaderFile:gaugeseriespointer1.h
# 	2:8:ImplFile:gaugeseriespointer1.cpp
# End Section
# Section 3_Axis_control : {AE0BEF36-D1EC-4B81-BF59-38A8C8CE4DCF}
# 	2:5:Class:CTools
# 	2:10:HeaderFile:tools1.h
# 	2:8:ImplFile:tools1.cpp
# End Section
# Section 3_Axis_control : {E946191E-9BF3-4FDF-9A9F-97FB798FC797}
# 	2:5:Class:CDrawLine
# 	2:10:HeaderFile:drawline1.h
# 	2:8:ImplFile:drawline1.cpp
# End Section
# Section 3_Axis_control : {54EB0BAD-76A8-4DB2-8632-89EEFB9C5CF1}
# 	2:5:Class:CLegendScrollBarTool
# 	2:10:HeaderFile:legendscrollbartool1.h
# 	2:8:ImplFile:legendscrollbartool1.cpp
# End Section
# Section 3_Axis_control : {21E55447-E34A-4C87-810B-26C784CFCD44}
# 	2:5:Class:CSeriesStatsTool
# 	2:10:HeaderFile:seriesstatstool1.h
# 	2:8:ImplFile:seriesstatstool1.cpp
# End Section
# Section 3_Axis_control : {54F59ACA-6A98-4839-A5D8-FCBE40B458BC}
# 	2:5:Class:CBollingerFunction
# 	2:10:HeaderFile:bollingerfunction1.h
# 	2:8:ImplFile:bollingerfunction1.cpp
# End Section
# Section 3_Axis_control : {03EFAF27-3524-4DD2-9EA3-8546EA16FD94}
# 	2:5:Class:CRMSFunction
# 	2:10:HeaderFile:rmsfunction1.h
# 	2:8:ImplFile:rmsfunction1.cpp
# End Section
# Section 3_Axis_control : {7BA6E7AA-E5FC-451C-9056-D437AA074D27}
# 	2:5:Class:CSARFunction
# 	2:10:HeaderFile:sarfunction1.h
# 	2:8:ImplFile:sarfunction1.cpp
# End Section
# Section 3_Axis_control : {91464DD7-1EF0-4E2B-88AD-489B171A00D9}
# 	2:5:Class:CPoint3DSeries
# 	2:10:HeaderFile:point3dseries1.h
# 	2:8:ImplFile:point3dseries1.cpp
# End Section
# Section 3_Axis_control : {3CA138E7-5DED-423C-857F-609F39AFB3F0}
# 	2:5:Class:CTeeShape
# 	2:10:HeaderFile:teeshape1.h
# 	2:8:ImplFile:teeshape1.cpp
# End Section
# Section 3_Axis_control : {D88E90F1-17A7-4B13-B6B4-AB5344C0C32A}
# 	2:5:Class:CAxisScrollTool
# 	2:10:HeaderFile:axisscrolltool1.h
# 	2:8:ImplFile:axisscrolltool1.cpp
# End Section
# Section 3_Axis_control : {E6E22954-BA25-4D63-A2EE-BE938746CB06}
# 	2:5:Class:CModeFunction
# 	2:10:HeaderFile:modefunction1.h
# 	2:8:ImplFile:modefunction1.cpp
# End Section
# Section 3_Axis_control : {7CD97E43-6830-46FC-B135-D1958AE4C0AA}
# 	2:5:Class:CAxes
# 	2:10:HeaderFile:axes1.h
# 	2:8:ImplFile:axes1.cpp
# End Section
# Section 3_Axis_control : {5DF2C570-75C1-4660-B366-F2C346CBE092}
# 	2:5:Class:CFilterItems
# 	2:10:HeaderFile:filteritems1.h
# 	2:8:ImplFile:filteritems1.cpp
# End Section
# Section 3_Axis_control : {10CE1B06-DFDD-4E0E-9AE7-C0A52796BE97}
# 	2:5:Class:CTrendFunction
# 	2:10:HeaderFile:trendfunction1.h
# 	2:8:ImplFile:trendfunction1.cpp
# End Section
# Section 3_Axis_control : {9E781C98-CCE0-49B6-B352-699D559C695F}
# 	2:5:Class:CTriSurfaceSeries
# 	2:10:HeaderFile:trisurfaceseries1.h
# 	2:8:ImplFile:trisurfaceseries1.cpp
# End Section
# Section 3_Axis_control : {509C90B9-E777-449C-B42A-C746538E7F08}
# 	2:5:Class:CSeriesBandTool
# 	2:10:HeaderFile:seriesbandtool1.h
# 	2:8:ImplFile:seriesbandtool1.cpp
# End Section
# Section 3_Axis_control : {BC0CD837-1A8F-4C35-9C93-CCB2FE216F88}
# 	2:5:Class:CMarks
# 	2:10:HeaderFile:marks1.h
# 	2:8:ImplFile:marks1.cpp
# End Section
# Section 3_Axis_control : {004303F2-EE70-4342-B85A-01D964725DDF}
# 	2:5:Class:CMapPolygonList
# 	2:10:HeaderFile:mappolygonlist1.h
# 	2:8:ImplFile:mappolygonlist1.cpp
# End Section
# Section 3_Axis_control : {0CF2CD0F-B6B0-4CEB-A143-25D37C8EE788}
# 	2:5:Class:CImagePointSeries
# 	2:10:HeaderFile:imagepointseries1.h
# 	2:8:ImplFile:imagepointseries1.cpp
# End Section
# Section 3_Axis_control : {A6E6CA47-7656-4E3E-8190-E31264F5D233}
# 	2:5:Class:COrgShape
# 	2:10:HeaderFile:orgshape1.h
# 	2:8:ImplFile:orgshape1.cpp
# End Section
# Section 3_Axis_control : {518A4D6F-69C9-4EE5-8E7A-984D45EC2992}
# 	2:5:Class:CFrameBrush
# 	2:10:HeaderFile:framebrush1.h
# 	2:8:ImplFile:framebrush1.cpp
# End Section
# Section 3_Axis_control : {4556AD4F-AEC5-4C29-837A-9531984DE6EB}
# 	2:5:Class:CZoom
# 	2:10:HeaderFile:zoom1.h
# 	2:8:ImplFile:zoom1.cpp
# End Section
# Section 3_Axis_control : {10C77E47-24A3-4994-8F82-94EA32890EA7}
# 	2:5:Class:CCalendarSeries
# 	2:10:HeaderFile:calendarseries1.h
# 	2:8:ImplFile:calendarseries1.cpp
# End Section
# Section 3_Axis_control : {99AC72D4-5370-4648-A9FE-B0971C6D62FE}
# 	2:5:Class:CTeePoint3D
# 	2:10:HeaderFile:teepoint3d1.h
# 	2:8:ImplFile:teepoint3d1.cpp
# End Section
# Section 3_Axis_control : {8E052508-B9B9-4792-B3A3-8FD23440D281}
# 	2:5:Class:CFastLineSeries
# 	2:10:HeaderFile:fastlineseries1.h
# 	2:8:ImplFile:fastlineseries1.cpp
# End Section
# Section 3_Axis_control : {7C802AA5-86DB-4451-9380-EAD5B122F37A}
# 	2:5:Class:CHorizBarSeries
# 	2:10:HeaderFile:horizbarseries1.h
# 	2:8:ImplFile:horizbarseries1.cpp
# End Section
# Section 3_Axis_control : {74538277-5473-4DDB-94B3-442590CC03D9}
# 	2:5:Class:CCalendarCellUpper
# 	2:10:HeaderFile:calendarcellupper1.h
# 	2:8:ImplFile:calendarcellupper1.cpp
# End Section
# Section 3_Axis_control : {8D0BD38D-8B31-4189-A9E8-782A501EE943}
# 	2:5:Class:CTowerSeries
# 	2:10:HeaderFile:towerseries1.h
# 	2:8:ImplFile:towerseries1.cpp
# End Section
# Section 3_Axis_control : {6978D18C-EA1A-4302-A1AE-F76C12A60EAF}
# 	2:5:Class:CWalls
# 	2:10:HeaderFile:walls1.h
# 	2:8:ImplFile:walls1.cpp
# End Section
# Section 3_Axis_control : {F81057F8-F2D4-4125-95DC-36E1116F6D40}
# 	2:5:Class:CChartImageTool
# 	2:10:HeaderFile:chartimagetool1.h
# 	2:8:ImplFile:chartimagetool1.cpp
# End Section
# Section 3_Axis_control : {EDF445C6-F88A-42CE-8D9C-A389295D58F4}
# 	2:5:Class:CErrorBarSeries
# 	2:10:HeaderFile:errorbarseries1.h
# 	2:8:ImplFile:errorbarseries1.cpp
# End Section
# Section 3_Axis_control : {C593E77C-0054-4EC6-8BDF-E5BF5BDE37A1}
# 	2:5:Class:CMapPolygon
# 	2:10:HeaderFile:mappolygon1.h
# 	2:8:ImplFile:mappolygon1.cpp
# End Section
# Section 3_Axis_control : {7B37E5DD-9723-435B-BDE2-042C04314E23}
# 	2:5:Class:CCustom3DPaletteSeries
# 	2:10:HeaderFile:custom3dpaletteseries1.h
# 	2:8:ImplFile:custom3dpaletteseries1.cpp
# End Section
# Section 3_Axis_control : {6F8BDC44-2820-4BC9-934C-4933514E7DB0}
# 	2:5:Class:CNumericGauge
# 	2:10:HeaderFile:numericgauge1.h
# 	2:8:ImplFile:numericgauge1.cpp
# End Section
# Section 3_Axis_control : {B68C5D3C-E47C-4000-A548-7748AFC9262C}
# 	2:5:Class:CFilterRegion
# 	2:10:HeaderFile:filterregion1.h
# 	2:8:ImplFile:filterregion1.cpp
# End Section
# Section 3_Axis_control : {F75284F3-50CD-441C-B56A-782CBE93C83E}
# 	2:5:Class:CTeeCustomShape
# 	2:10:HeaderFile:teecustomshape1.h
# 	2:8:ImplFile:teecustomshape1.cpp
# End Section
# Section 3_Axis_control : {425D090A-1024-4FAD-BD2D-16444A7ED15C}
# 	2:5:Class:CBarSeries
# 	2:10:HeaderFile:barseries1.h
# 	2:8:ImplFile:barseries1.cpp
# End Section
# Section 3_Axis_control : {D5270C7E-5481-468A-91BB-87454E28AE7F}
# 	2:5:Class:CGanttSeries
# 	2:10:HeaderFile:ganttseries1.h
# 	2:8:ImplFile:ganttseries1.cpp
# End Section
# Section 3_Axis_control : {536C4B74-6E4F-447C-91B0-0D622193DDAC}
# 	2:5:Class:CShapeSeries
# 	2:10:HeaderFile:shapeseries1.h
# 	2:8:ImplFile:shapeseries1.cpp
# End Section
# Section 3_Axis_control : {94741F5B-60CC-42FE-89DD-287310F0D751}
# 	2:5:Class:CCurveFittingFunction
# 	2:10:HeaderFile:curvefittingfunction1.h
# 	2:8:ImplFile:curvefittingfunction1.cpp
# End Section
# Section 3_Axis_control : {F5C06E6C-1BC6-4F98-B1F0-B55CD1161A2A}
# 	2:5:Class:CRSIFunction
# 	2:10:HeaderFile:rsifunction1.h
# 	2:8:ImplFile:rsifunction1.cpp
# End Section
# Section 3_Axis_control : {79DCB259-5717-4D2C-8C9D-9E1375BC4C25}
# 	2:5:Class:CSeriesMarksPositions
# 	2:10:HeaderFile:seriesmarkspositions1.h
# 	2:8:ImplFile:seriesmarkspositions1.cpp
# End Section
# Section 3_Axis_control : {FD061005-C104-46F2-BCCA-DC854395495F}
# 	2:5:Class:CHistogramSeries
# 	2:10:HeaderFile:histogramseries1.h
# 	2:8:ImplFile:histogramseries1.cpp
# End Section
# Section 3_Axis_control : {766ECCD5-E868-4A5A-9CBD-CBCC657ECF9B}
# 	2:5:Class:CPointFigureSeries
# 	2:10:HeaderFile:pointfigureseries1.h
# 	2:8:ImplFile:pointfigureseries1.cpp
# End Section
# Section 3_Axis_control : {171DBCED-10EB-4445-AC86-ECBC6486924A}
# 	2:5:Class:CRotateFilter
# 	2:10:HeaderFile:rotatefilter1.h
# 	2:8:ImplFile:rotatefilter1.cpp
# End Section
# Section 3_Axis_control : {DA158A28-F0E4-468A-A1C1-84D1B53A440C}
# 	2:5:Class:CEPSExport
# 	2:10:HeaderFile:epsexport1.h
# 	2:8:ImplFile:epsexport1.cpp
# End Section
# Section 3_Axis_control : {AAA6AE5B-B976-459F-9380-E85B3F779880}
# 	2:5:Class:CWorldSeries
# 	2:10:HeaderFile:worldseries1.h
# 	2:8:ImplFile:worldseries1.cpp
# End Section
# Section 3_Axis_control : {F29662CB-EEED-4E0D-85E8-74BB6941ACC5}
# 	2:5:Class:CFrameTool
# 	2:10:HeaderFile:frametool1.h
# 	2:8:ImplFile:frametool1.cpp
# End Section
# Section 3_Axis_control : {5B196B79-CAE8-49E7-A321-CD96A3616D2F}
# 	2:5:Class:CFibonacciLevels
# 	2:10:HeaderFile:fibonaccilevels1.h
# 	2:8:ImplFile:fibonaccilevels1.cpp
# End Section
# Section 3_Axis_control : {F6004561-2AAE-44DA-979D-EC7CB53DD15B}
# 	2:5:Class:CMetafileExport
# 	2:10:HeaderFile:metafileexport1.h
# 	2:8:ImplFile:metafileexport1.cpp
# End Section
# Section 3_Axis_control : {2C5E2D8A-E836-4527-A67D-AE7416F843D3}
# 	2:5:Class:CStrings
# 	2:10:HeaderFile:strings1.h
# 	2:8:ImplFile:strings1.cpp
# End Section
# Section 3_Axis_control : {BC93A02E-14CF-4C44-817C-11E2E7BF6F12}
# 	2:5:Class:CPDFExport
# 	2:10:HeaderFile:pdfexport1.h
# 	2:8:ImplFile:pdfexport1.cpp
# End Section
# Section 3_Axis_control : {B0EC6752-F5EC-4F8C-87E3-EB6717A3E592}
# 	2:5:Class:CColorGridSeries
# 	2:10:HeaderFile:colorgridseries1.h
# 	2:8:ImplFile:colorgridseries1.cpp
# End Section
# Section 3_Axis_control : {216A7C86-0D29-46BB-89FB-E553813D2D12}
# 	2:5:Class:CPolarBarSeries
# 	2:10:HeaderFile:polarbarseries1.h
# 	2:8:ImplFile:polarbarseries1.cpp
# End Section
# Section 3_Axis_control : {89C25521-4887-4AF5-9FAD-7FD07A264239}
# 	2:5:Class:CSurfaceSides
# 	2:10:HeaderFile:surfacesides1.h
# 	2:8:ImplFile:surfacesides1.cpp
# End Section
# Section 3_Axis_control : {C9E81247-A636-4015-B5FC-19143907753D}
# 	2:5:Class:CDeltaPointSeries
# 	2:10:HeaderFile:deltapointseries1.h
# 	2:8:ImplFile:deltapointseries1.cpp
# End Section
# Section 3_Axis_control : {2C0D1571-C240-4C42-A090-73A927C3E332}
# 	2:5:Class:CGanttTool
# 	2:10:HeaderFile:gantttool1.h
# 	2:8:ImplFile:gantttool1.cpp
# End Section
# Section 3_Axis_control : {4CC1844C-A1C1-4D97-9EB2-4D29385FE9BA}
# 	2:5:Class:CAntiAliasTool
# 	2:10:HeaderFile:antialiastool1.h
# 	2:8:ImplFile:antialiastool1.cpp
# End Section
# Section 3_Axis_control : {5BCED848-7C39-446C-9BED-CB19AC16F383}
# 	2:5:Class:CPCXExport
# 	2:10:HeaderFile:pcxexport1.h
# 	2:8:ImplFile:pcxexport1.cpp
# End Section
# Section 3_Axis_control : {0E0EE0BE-95D1-42C8-8624-E145CC10CEE2}
# 	2:5:Class:CSVGExport
# 	2:10:HeaderFile:svgexport1.h
# 	2:8:ImplFile:svgexport1.cpp
# End Section
# Section 3_Axis_control : {5227CC4F-BB80-4CD0-A107-55BDC81285E0}
# 	2:5:Class:CPVOFunction
# 	2:10:HeaderFile:pvofunction1.h
# 	2:8:ImplFile:pvofunction1.cpp
# End Section
# Section 3_Axis_control : {64552CB0-9205-49E1-BFD6-67914859F260}
# 	2:5:Class:CBar3DSeries
# 	2:10:HeaderFile:bar3dseries1.h
# 	2:8:ImplFile:bar3dseries1.cpp
# End Section
# Section 3_Axis_control : {21A5A8C7-526F-4931-9C61-0A7B66F1FC36}
# 	2:5:Class:CHorizAreaSeries
# 	2:10:HeaderFile:horizareaseries1.h
# 	2:8:ImplFile:horizareaseries1.cpp
# End Section
# Section 3_Axis_control : {22F4542F-CF97-43A4-999D-928C0E1084EF}
# 	2:5:Class:CLegendPaletteTool
# 	2:10:HeaderFile:legendpalettetool1.h
# 	2:8:ImplFile:legendpalettetool1.cpp
# End Section
# Section 3_Axis_control : {3997D182-BB41-403B-AB2D-D695D888793D}
# 	2:5:Class:CCropFilter
# 	2:10:HeaderFile:cropfilter1.h
# 	2:8:ImplFile:cropfilter1.cpp
# End Section
# Section 3_Axis_control : {59CE6014-FCD7-4854-AB61-7E66EF83F1E6}
# 	2:5:Class:CGridBandBrush
# 	2:10:HeaderFile:gridbandbrush1.h
# 	2:8:ImplFile:gridbandbrush1.cpp
# End Section
# Section 3_Axis_control : {F6773452-1717-4136-B268-A722FDC6BD71}
# 	2:5:Class:CBannerTool
# 	2:10:HeaderFile:bannertool1.h
# 	2:8:ImplFile:bannertool1.cpp
# End Section
# Section 3_Axis_control : {BF3BA486-178D-4629-8B7C-DFB39BE2F891}
# 	2:5:Class:CSeriesAnimationTool
# 	2:10:HeaderFile:seriesanimationtool1.h
# 	2:8:ImplFile:seriesanimationtool1.cpp
# End Section
# Section 3_Axis_control : {E4577D56-C19B-4AAF-9D26-B251E552046C}
# 	2:5:Class:CPen1
# 	2:10:HeaderFile:pen1.h
# 	2:8:ImplFile:pen1.cpp
# End Section
# Section 3_Axis_control : {C2310F60-BA01-400C-8B87-DE6753E378A9}
# 	2:5:Class:CBrightnessFilter
# 	2:10:HeaderFile:brightnessfilter1.h
# 	2:8:ImplFile:brightnessfilter1.cpp
# End Section
# Section 3_Axis_control : {39B6ABA0-95B6-4A31-8D9F-E80459F4F26F}
# 	2:5:Class:CBackImage
# 	2:10:HeaderFile:backimage1.h
# 	2:8:ImplFile:backimage1.cpp
# End Section
# Section 3_Axis_control : {C58036B1-DFC3-4D4F-9F57-F32A5BDE6DC4}
# 	2:5:Class:CAreaSeries
# 	2:10:HeaderFile:areaseries1.h
# 	2:8:ImplFile:areaseries1.cpp
# End Section
# Section 3_Axis_control : {1421844B-D663-485B-BDD7-98923EA3A022}
# 	2:5:Class:CPolarSeries
# 	2:10:HeaderFile:polarseries1.h
# 	2:8:ImplFile:polarseries1.cpp
# End Section
# Section 3_Axis_control : {951D6253-B815-4D5C-A757-660A90C09B1A}
# 	2:5:Class:CVolumeSeries
# 	2:10:HeaderFile:volumeseries1.h
# 	2:8:ImplFile:volumeseries1.cpp
# End Section
# Section 3_Axis_control : {58EC1E68-C9D7-4D15-9F75-31B72BFD4949}
# 	2:5:Class:CCalendarCell
# 	2:10:HeaderFile:calendarcell1.h
# 	2:8:ImplFile:calendarcell1.cpp
# End Section
# Section 3_Axis_control : {D0B1D417-532B-43B2-BD45-041B7AE7191C}
# 	2:5:Class:COrgItem
# 	2:10:HeaderFile:orgitem1.h
# 	2:8:ImplFile:orgitem1.cpp
# End Section
# Section 3_Axis_control : {6DA18FCD-ED89-412A-AC92-7D411FE2175F}
# 	2:5:Class:CLightTool
# 	2:10:HeaderFile:lighttool1.h
# 	2:8:ImplFile:lighttool1.cpp
# End Section
# Section 3_Axis_control : {6DCAF81B-D217-42CF-988D-9FF60BC17092}
# 	2:5:Class:CAxis
# 	2:10:HeaderFile:axis1.h
# 	2:8:ImplFile:axis1.cpp
# End Section
# Section 3_Axis_control : {A982BDD4-3218-4B4E-A9CA-BC62C6C56897}
# 	2:5:Class:CExport
# 	2:10:HeaderFile:export1.h
# 	2:8:ImplFile:export1.cpp
# End Section
# Section 3_Axis_control : {D2798192-F2DC-4034-A25F-8F6F31F7C695}
# 	2:5:Class:CPieSeries
# 	2:10:HeaderFile:pieseries1.h
# 	2:8:ImplFile:pieseries1.cpp
# End Section
# Section 3_Axis_control : {E0216DAA-F2FD-497B-8C5A-8B12CCDC5D74}
# 	2:5:Class:CDonutSeries
# 	2:10:HeaderFile:donutseries1.h
# 	2:8:ImplFile:donutseries1.cpp
# End Section
# Section 3_Axis_control : {7D7C186A-38A2-42AA-9DEC-A6AC928B598C}
# 	2:5:Class:CDarvasSeries
# 	2:10:HeaderFile:darvasseries1.h
# 	2:8:ImplFile:darvasseries1.cpp
# End Section
# Section 3_Axis_control : {4A6B2E0D-6EBE-4811-B2D5-8148D110CF97}
# 	2:5:Class:CSelectorTool
# 	2:10:HeaderFile:selectortool1.h
# 	2:8:ImplFile:selectortool1.cpp
# End Section
# Section 3_Axis_control : {64ECD605-294D-46D6-87B7-AF89F388B793}
# 	2:5:Class:CValueLists
# 	2:10:HeaderFile:valuelists1.h
# 	2:8:ImplFile:valuelists1.cpp
# End Section
# Section 3_Axis_control : {4C672492-AE61-40FC-BCE4-2C4FB5F20C73}
# 	2:5:Class:CVideoTool
# 	2:10:HeaderFile:videotool1.h
# 	2:8:ImplFile:videotool1.cpp
# End Section
# Section 3_Axis_control : {F2986750-62FD-4EB7-9EFD-EC440626302A}
# 	2:5:Class:CZoomFilter
# 	2:10:HeaderFile:zoomfilter1.h
# 	2:8:ImplFile:zoomfilter1.cpp
# End Section
# Section 3_Axis_control : {D32B8599-B350-42A5-B2B1-94C9CFF34A2D}
# 	2:5:Class:CGIFExport
# 	2:10:HeaderFile:gifexport1.h
# 	2:8:ImplFile:gifexport1.cpp
# End Section
# Section 3_Axis_control : {63C98E03-2C0C-4E6A-8DE8-3D0FC1E75A9C}
# 	2:5:Class:CHorizBoxPlotSeries
# 	2:10:HeaderFile:horizboxplotseries1.h
# 	2:8:ImplFile:horizboxplotseries1.cpp
# End Section
# Section 3_Axis_control : {8EF1CB19-851B-49D7-AD61-B8E4DE9654F3}
# 	2:5:Class:CPyramidSeries
# 	2:10:HeaderFile:pyramidseries1.h
# 	2:8:ImplFile:pyramidseries1.cpp
# End Section
# Section 3_Axis_control : {C131277D-A85E-4289-B61C-55226A239994}
# 	2:5:Class:CSeriesRegionTool
# 	2:10:HeaderFile:seriesregiontool1.h
# 	2:8:ImplFile:seriesregiontool1.cpp
# End Section
# Section 3_Axis_control : {059A33BB-181F-4B69-810A-BFB972239A93}
# 	2:5:Class:CPerformanceFunction
# 	2:10:HeaderFile:performancefunction1.h
# 	2:8:ImplFile:performancefunction1.cpp
# End Section
# Section 3_Axis_control : {62388638-1B14-48D5-B3B5-93B02EC9230A}
# 	2:5:Class:CPointArray
# 	2:10:HeaderFile:pointarray1.h
# 	2:8:ImplFile:pointarray1.cpp
# End Section
# Section 3_Axis_control : {1267E579-8C87-47CB-B752-3A3ED3DFF34C}
# 	2:5:Class:CBubble3DSeries
# 	2:10:HeaderFile:bubble3dseries1.h
# 	2:8:ImplFile:bubble3dseries1.cpp
# End Section
# Section 3_Axis_control : {7322C787-EFEE-46D0-99A2-9323F7537933}
# 	2:5:Class:CEmbossFilter
# 	2:10:HeaderFile:embossfilter1.h
# 	2:8:ImplFile:embossfilter1.cpp
# End Section
# Section 3_Axis_control : {1F9C089D-BCAE-4141-B95B-6E0877819E08}
# 	2:5:Class:CBMPExport
# 	2:10:HeaderFile:bmpexport1.h
# 	2:8:ImplFile:bmpexport1.cpp
# End Section
# Section 3_Axis_control : {AD589BFA-6E34-4DA2-894E-7DE4C9B127B3}
# 	2:5:Class:CCustomFunction
# 	2:10:HeaderFile:customfunction1.h
# 	2:8:ImplFile:customfunction1.cpp
# End Section
# Section 3_Axis_control : {87455F47-67F4-4425-9B88-63F09D7F1D99}
# 	2:5:Class:CDrawLineTool
# 	2:10:HeaderFile:drawlinetool1.h
# 	2:8:ImplFile:drawlinetool1.cpp
# End Section
# Section 3_Axis_control : {661D8268-CBCC-4574-9FB5-1628C5093CAE}
# 	2:5:Class:CTableLegend
# 	2:10:HeaderFile:tablelegend1.h
# 	2:8:ImplFile:tablelegend1.cpp
# End Section
# Section 3_Axis_control : {DD6B8D73-6561-4207-9E05-F91B0897101B}
# 	2:5:Class:CTeePicture
# 	2:10:HeaderFile:teepicture1.h
# 	2:8:ImplFile:teepicture1.cpp
# End Section
# Section 3_Axis_control : {65602B2E-8F95-4A4A-9CE2-2331169A5909}
# 	2:5:Class:CAxisLabelsItem
# 	2:10:HeaderFile:axislabelsitem1.h
# 	2:8:ImplFile:axislabelsitem1.cpp
# End Section
# Section 3_Axis_control : {D5AD136F-29A9-4BF2-96F9-D79414D3B369}
# 	2:5:Class:CGridBandTool
# 	2:10:HeaderFile:gridbandtool1.h
# 	2:8:ImplFile:gridbandtool1.cpp
# End Section
# Section 3_Axis_control : {B108D6F9-1C82-4971-89B5-56DBE33AB334}
# 	2:5:Class:CPieMarks
# 	2:10:HeaderFile:piemarks1.h
# 	2:8:ImplFile:piemarks1.cpp
# End Section
# Section 3_Axis_control : {B6904850-ECB0-4CC8-8438-F707F1847C66}
# 	2:5:Class:CTeeFunction
# 	2:10:HeaderFile:teefunction1.h
# 	2:8:ImplFile:teefunction1.cpp
# End Section
# Section 3_Axis_control : {880E79B6-B0E0-4A14-A68F-C75912E6EB9D}
# 	2:5:Class:CContourSeries
# 	2:10:HeaderFile:contourseries1.h
# 	2:8:ImplFile:contourseries1.cpp
# End Section
# Section 3_Axis_control : {75009193-06A4-4E3D-B145-0374A819461E}
# 	2:5:Class:CLevelSegment
# 	2:10:HeaderFile:levelsegment1.h
# 	2:8:ImplFile:levelsegment1.cpp
# End Section
# Section 3_Axis_control : {43FBF4EF-22B2-4799-9E23-3DB63F586DDF}
# 	2:5:Class:CImageBarSeries
# 	2:10:HeaderFile:imagebarseries1.h
# 	2:8:ImplFile:imagebarseries1.cpp
# End Section
# Section 3_Axis_control : {EAE4FF42-7AAB-4649-8B4C-B4E16BF983EB}
# 	2:5:Class:CWaterfallSeries
# 	2:10:HeaderFile:waterfallseries1.h
# 	2:8:ImplFile:waterfallseries1.cpp
# End Section
# Section 3_Axis_control : {E11C0EDA-65C9-4966-BA60-57EA7ADF530F}
# 	2:5:Class:CWall
# 	2:10:HeaderFile:wall1.h
# 	2:8:ImplFile:wall1.cpp
# End Section
# Section 3_Axis_control : {23876356-6D35-4418-8003-0AF198E4AC6B}
# 	2:5:Class:CColorBandTool
# 	2:10:HeaderFile:colorbandtool1.h
# 	2:8:ImplFile:colorbandtool1.cpp
# End Section
# Section 3_Axis_control : {F5C85E2D-3F4E-4740-B58F-3F3F6EE58FF2}
# 	2:5:Class:CRotateTool
# 	2:10:HeaderFile:rotatetool1.h
# 	2:8:ImplFile:rotatetool1.cpp
# End Section
# Section 3_Axis_control : {C398AD7D-B57F-4E47-B183-B29AE925EE77}
# 	2:5:Class:CTChart
# 	2:10:HeaderFile:tchart1.h
# 	2:8:ImplFile:tchart1.cpp
# End Section
# Section 3_Axis_control : {C94121E7-766B-49EB-9085-BD821B644B85}
# 	2:5:Class:CTeeFilter
# 	2:10:HeaderFile:teefilter1.h
# 	2:8:ImplFile:teefilter1.cpp
# End Section
# Section 3_Axis_control : {AF553D41-9D55-47C5-8350-793033C2B78B}
# 	2:5:Class:CMarksItem
# 	2:10:HeaderFile:marksitem1.h
# 	2:8:ImplFile:marksitem1.cpp
# End Section
# Section 3_Axis_control : {004668EE-FE52-40C7-A330-3D10C231F65F}
# 	2:5:Class:CGammaCorrectionFilter
# 	2:10:HeaderFile:gammacorrectionfilter1.h
# 	2:8:ImplFile:gammacorrectionfilter1.cpp
# End Section
# Section 3_Axis_control : {E58887B4-FB87-4AFF-AB68-D0FDCC28F476}
# 	2:5:Class:CSharpenFilter
# 	2:10:HeaderFile:sharpenfilter1.h
# 	2:8:ImplFile:sharpenfilter1.cpp
# End Section
# Section 3_Axis_control : {09F39CCD-B5D6-4F33-AAFB-25B568DDAC27}
# 	2:5:Class:CSmoothingFunction
# 	2:10:HeaderFile:smoothingfunction1.h
# 	2:8:ImplFile:smoothingfunction1.cpp
# End Section
# Section 3_Axis_control : {0882C319-83FA-4F0D-A821-38E69CB2FDD4}
# 	2:5:Class:CMedianFunction
# 	2:10:HeaderFile:medianfunction1.h
# 	2:8:ImplFile:medianfunction1.cpp
# End Section
# Section 3_Axis_control : {56DD636A-7637-4CCC-BBFF-D426FEA5D186}
# 	2:5:Class:CFibonacciItem
# 	2:10:HeaderFile:fibonacciitem1.h
# 	2:8:ImplFile:fibonacciitem1.cpp
# End Section
# Section 3_Axis_control : {850D4EEB-0BFE-4BDA-8DA2-7794C9CF67E6}
# 	2:5:Class:CAspect
# 	2:10:HeaderFile:aspect1.h
# 	2:8:ImplFile:aspect1.cpp
# End Section
# Section 3_Axis_control : {6D92F682-E70D-4A43-A7E7-A28B6FD9F372}
# 	2:5:Class:CResizeFilter
# 	2:10:HeaderFile:resizefilter1.h
# 	2:8:ImplFile:resizefilter1.cpp
# End Section
# Section 3_Axis_control : {FED2AF48-F5DE-44B8-9544-4FE7C680A45A}
# 	2:5:Class:CTileFilter
# 	2:10:HeaderFile:tilefilter1.h
# 	2:8:ImplFile:tilefilter1.cpp
# End Section
# Section 3_Axis_control : {AD513158-58D1-40FB-9D87-D159B7BB03A6}
# 	2:5:Class:CCanvas
# 	2:10:HeaderFile:canvas1.h
# 	2:8:ImplFile:canvas1.cpp
# End Section
# Section 3_Axis_control : {A7F9D92B-D0CA-4B75-8F57-BA8B859EE660}
# 	2:5:Class:CChartFont
# 	2:10:HeaderFile:chartfont1.h
# 	2:8:ImplFile:chartfont1.cpp
# End Section
# Section 3_Axis_control : {303D35C4-1F51-478D-B67B-266BB1B2D6EF}
# 	2:5:Class:CLegendItem
# 	2:10:HeaderFile:legenditem1.h
# 	2:8:ImplFile:legenditem1.cpp
# End Section
# Section 3_Axis_control : {C30D9607-2367-4D9C-AA6B-65A2509A42B2}
# 	2:5:Class:CLegendItems
# 	2:10:HeaderFile:legenditems1.h
# 	2:8:ImplFile:legenditems1.cpp
# End Section
# Section 3_Axis_control : {9171A5BA-C17E-4472-8585-87CADEA6A3A5}
# 	2:5:Class:CCircleLabels
# 	2:10:HeaderFile:circlelabels1.h
# 	2:8:ImplFile:circlelabels1.cpp
# End Section
# Section 3_Axis_control : {389A80D6-77CD-4DFD-AF14-4FF640CBC7D9}
# 	2:5:Class:CMarksCallout
# 	2:10:HeaderFile:markscallout1.h
# 	2:8:ImplFile:markscallout1.cpp
# End Section
# Section 3_Axis_control : {0B2F7E6B-4D7D-4251-A11A-0189E5447B26}
# 	2:5:Class:CContourLevels
# 	2:10:HeaderFile:contourlevels1.h
# 	2:8:ImplFile:contourlevels1.cpp
# End Section
# Section 3_Axis_control : {10C205E0-73C6-41F3-8602-71359B4BDE16}
# 	2:5:Class:CVector3DSeries
# 	2:10:HeaderFile:vector3dseries1.h
# 	2:8:ImplFile:vector3dseries1.cpp
# End Section
# Section 3_Axis_control : {C486E24F-95BC-44C0-99B5-E24957990017}
# 	2:5:Class:CTagCloudSeries
# 	2:10:HeaderFile:tagcloudseries1.h
# 	2:8:ImplFile:tagcloudseries1.cpp
# End Section
# Section 3_Axis_control : {19143E66-8A53-4E32-BA49-06BE1A7F03BD}
# 	2:5:Class:CKagiSeries
# 	2:10:HeaderFile:kagiseries1.h
# 	2:8:ImplFile:kagiseries1.cpp
# End Section
# Section 3_Axis_control : {73DE645D-73E4-4921-BCBD-E839D2067215}
# 	2:5:Class:CGaugePointerRange
# 	2:10:HeaderFile:gaugepointerrange1.h
# 	2:8:ImplFile:gaugepointerrange1.cpp
# End Section
# Section 3_Axis_control : {BDDE7AC5-D532-432E-9559-FF950114AFD4}
# 	2:5:Class:CDragMarksTool
# 	2:10:HeaderFile:dragmarkstool1.h
# 	2:8:ImplFile:dragmarkstool1.cpp
# End Section
# Section 3_Axis_control : {72EF6A88-F0CC-43FA-A27E-3433F5FDD70D}
# 	2:5:Class:CExtraLegendTool
# 	2:10:HeaderFile:extralegendtool1.h
# 	2:8:ImplFile:extralegendtool1.cpp
# End Section
# Section 3_Axis_control : {2BD79012-FA21-4577-855A-2EB5BC52D926}
# 	2:5:Class:CSeriesList
# 	2:10:HeaderFile:serieslist1.h
# 	2:8:ImplFile:serieslist1.cpp
# End Section
# Section 3_Axis_control : {ECEC2256-9ED2-45C2-9233-CE7F93FCE378}
# 	2:5:Class:CSeriesGroup
# 	2:10:HeaderFile:seriesgroup1.h
# 	2:8:ImplFile:seriesgroup1.cpp
# End Section
# Section 3_Axis_control : {6A70CDBB-8F5F-44C5-9568-B70F940F6C05}
# 	2:5:Class:CPieOtherSlice
# 	2:10:HeaderFile:pieotherslice1.h
# 	2:8:ImplFile:pieotherslice1.cpp
# End Section
# Section 3_Axis_control : {7B19FC1B-A120-439E-B8E5-8DD89EC68318}
# 	2:5:Class:CAverageFunction
# 	2:10:HeaderFile:averagefunction1.h
# 	2:8:ImplFile:averagefunction1.cpp
# End Section
# Section 3_Axis_control : {57F89BFF-8267-4BC2-8E8A-F04EF8B60415}
# 	2:5:Class:CVideoPlayerTool
# 	2:10:HeaderFile:videoplayertool1.h
# 	2:8:ImplFile:videoplayertool1.cpp
# End Section
# Section 3_Axis_control : {BDEB0088-66F9-4A55-ABD2-0BF8DEEC1196}
# 	2:21:DefaultSinkHeaderFile:tchart1.h
# 	2:16:DefaultSinkClass:CTChart
# End Section
# Section 3_Axis_control : {3DBC6BA9-C2FD-4BF7-8F07-82D7CCFD1596}
# 	2:5:Class:CTeeOpenGL
# 	2:10:HeaderFile:teeopengl1.h
# 	2:8:ImplFile:teeopengl1.cpp
# End Section
# Section 3_Axis_control : {73B0080B-6A79-463D-981F-083D0E023DDA}
# 	2:5:Class:CGLLightSource
# 	2:10:HeaderFile:gllightsource1.h
# 	2:8:ImplFile:gllightsource1.cpp
# End Section
# Section 3_Axis_control : {7D8BE2E9-0D40-47DA-A9E8-1E74386550CA}
# 	2:5:Class:CPointSeries
# 	2:10:HeaderFile:pointseries1.h
# 	2:8:ImplFile:pointseries1.cpp
# End Section
# Section 3_Axis_control : {A19B072C-1482-4301-B5E7-6AD55C8A1667}
# 	2:5:Class:CBezierSeries
# 	2:10:HeaderFile:bezierseries1.h
# 	2:8:ImplFile:bezierseries1.cpp
# End Section
# Section 3_Axis_control : {79B82F2C-E7AF-4B88-BB71-059544CC7213}
# 	2:5:Class:CVolumePipeSeries
# 	2:10:HeaderFile:volumepipeseries1.h
# 	2:8:ImplFile:volumepipeseries1.cpp
# End Section
# Section 3_Axis_control : {C6A11401-589C-4EC4-94AA-4D9B3C145728}
# 	2:5:Class:CClipSeriesTool
# 	2:10:HeaderFile:clipseriestool1.h
# 	2:8:ImplFile:clipseriestool1.cpp
# End Section
# Section 3_Axis_control : {27C6E587-C91A-4A77-A532-D726A6087287}
# 	2:5:Class:CBrush1
# 	2:10:HeaderFile:brush1.h
# 	2:8:ImplFile:brush1.cpp
# End Section
# Section 3_Axis_control : {2AF16E3D-7FAA-4936-8856-6F2286551306}
# 	2:5:Class:CJPEGExport
# 	2:10:HeaderFile:jpegexport1.h
# 	2:8:ImplFile:jpegexport1.cpp
# End Section
# Section 3_Axis_control : {4488F2A6-57E7-4080-9F64-A30684C3BB02}
# 	2:5:Class:CTitles
# 	2:10:HeaderFile:titles1.h
# 	2:8:ImplFile:titles1.cpp
# End Section
# Section 3_Axis_control : {0DBD6EC7-E3D1-4EE9-B23E-BFD21417EE71}
# 	2:5:Class:CValueList
# 	2:10:HeaderFile:valuelist1.h
# 	2:8:ImplFile:valuelist1.cpp
# End Section
# Section 3_Axis_control : {4BDB69F7-BFAD-4F02-999F-FEAE6531350F}
# 	2:5:Class:CPolarGridSeries
# 	2:10:HeaderFile:polargridseries1.h
# 	2:8:ImplFile:polargridseries1.cpp
# End Section
# Section 3_Axis_control : {EB29AB58-E3BE-4805-847C-74BB83ED40D1}
# 	2:5:Class:CTeeShapePanel
# 	2:10:HeaderFile:teeshapepanel1.h
# 	2:8:ImplFile:teeshapepanel1.cpp
# End Section
# Section 3_Axis_control : {73631C7C-3A02-4F9F-9C9F-83A1E0360F4B}
# 	2:5:Class:CMarksTipTool
# 	2:10:HeaderFile:markstiptool1.h
# 	2:8:ImplFile:markstiptool1.cpp
# End Section
# Section 3_Axis_control : {8A2712F9-7DF4-4190-8C57-DF25AFF1E5FB}
# 	2:5:Class:CPieTool
# 	2:10:HeaderFile:pietool1.h
# 	2:8:ImplFile:pietool1.cpp
# End Section
# Section 3_Axis_control : {EEA3F5FE-8878-4B8C-9C67-7B00180B26B3}
# 	2:5:Class:CSurfaceNearestTool
# 	2:10:HeaderFile:surfacenearesttool1.h
# 	2:8:ImplFile:surfacenearesttool1.cpp
# End Section
# Section 3_Axis_control : {D66D7EB7-7F65-43A1-86FC-6F1D69831115}
# 	2:5:Class:CDownSamplingFunction
# 	2:10:HeaderFile:downsamplingfunction1.h
# 	2:8:ImplFile:downsamplingfunction1.cpp
# End Section
# Section 3_Axis_control : {03D14814-70D1-4B2F-A854-4263D041AAE8}
# 	2:5:Class:CAxisTitle
# 	2:10:HeaderFile:axistitle1.h
# 	2:8:ImplFile:axistitle1.cpp
# End Section
# Section 3_Axis_control : {1AF8EC64-FDF2-4116-8C7F-116A6EBDB87F}
# 	2:5:Class:CSeries
# 	2:10:HeaderFile:series1.h
# 	2:8:ImplFile:series1.cpp
# End Section
# Section 3_Axis_control : {E6466A2B-EC9E-48EB-94E5-6435C4DEE97B}
# 	2:5:Class:COBVFunction
# 	2:10:HeaderFile:obvfunction1.h
# 	2:8:ImplFile:obvfunction1.cpp
# End Section
# Section 3_Axis_control : {54242326-2D9D-45BD-9B0A-7A424A00CA92}
# 	2:5:Class:CCCIFunction
# 	2:10:HeaderFile:ccifunction1.h
# 	2:8:ImplFile:ccifunction1.cpp
# End Section
# Section 3_Axis_control : {F8C384ED-B661-4CC5-BB9F-8C506D8B6A09}
# 	2:5:Class:CGridTransposeTool
# 	2:10:HeaderFile:gridtransposetool1.h
# 	2:8:ImplFile:gridtransposetool1.cpp
# End Section
# Section 3_Axis_control : {4CC6E38C-0B1B-4E77-BBF9-21C6CE0A2656}
# 	2:5:Class:CFaderTool
# 	2:10:HeaderFile:fadertool1.h
# 	2:8:ImplFile:fadertool1.cpp
# End Section
# Section 3_Axis_control : {21C180F1-5B3D-426F-93DA-3C2CE22FF8D5}
# 	2:5:Class:CFloatXYZ
# 	2:10:HeaderFile:floatxyz1.h
# 	2:8:ImplFile:floatxyz1.cpp
# End Section
# Section 3_Axis_control : {9F013EF3-4A91-4AA4-8FC1-F7D954D6A3C2}
# 	2:5:Class:CPNGExport
# 	2:10:HeaderFile:pngexport1.h
# 	2:8:ImplFile:pngexport1.cpp
# End Section
# Section 3_Axis_control : {5706D771-E194-43B0-9D96-6708B72819B0}
# 	2:5:Class:CNativeExport
# 	2:10:HeaderFile:nativeexport1.h
# 	2:8:ImplFile:nativeexport1.cpp
# End Section
# Section 3_Axis_control : {DD6C1000-3809-4F21-BC98-BC74976EC22C}
# 	2:5:Class:CLegendSymbol
# 	2:10:HeaderFile:legendsymbol1.h
# 	2:8:ImplFile:legendsymbol1.cpp
# End Section
# Section 3_Axis_control : {20AEEFE9-F24F-4596-9F7F-9081BAB13A1B}
# 	2:5:Class:CStdDeviationFunction
# 	2:10:HeaderFile:stddeviationfunction1.h
# 	2:8:ImplFile:stddeviationfunction1.cpp
# End Section
# Section 3_Axis_control : {1C46CC17-BA97-4341-82E7-073600AF4C49}
# 	2:5:Class:CCircularGauge
# 	2:10:HeaderFile:circulargauge1.h
# 	2:8:ImplFile:circulargauge1.cpp
# End Section
# Section 3_Axis_control : {5D33BF3E-7A0A-40B0-BBBD-DEA7E521F30B}
# 	2:5:Class:CMagnifyTool
# 	2:10:HeaderFile:magnifytool1.h
# 	2:8:ImplFile:magnifytool1.cpp
# End Section
# Section 3_Axis_control : {361F642D-2DE5-4359-A14B-5DBF38096886}
# 	2:5:Class:CContourLevel
# 	2:10:HeaderFile:contourlevel1.h
# 	2:8:ImplFile:contourlevel1.cpp
# End Section
# Section 3_Axis_control : {E9612B8D-1D97-41F0-988C-31B3DD1C4D84}
# 	2:5:Class:CAmountFilter
# 	2:10:HeaderFile:amountfilter1.h
# 	2:8:ImplFile:amountfilter1.cpp
# End Section
# Section 3_Axis_control : {24B7FE4C-6430-4EA3-8849-C433877309BC}
# 	2:5:Class:CCandleSeries
# 	2:10:HeaderFile:candleseries1.h
# 	2:8:ImplFile:candleseries1.cpp
# End Section
# Section 3_Axis_control : {82C96E46-FB05-43B2-B12B-8CCB2E5ACAB1}
# 	2:5:Class:CLineSeries
# 	2:10:HeaderFile:lineseries1.h
# 	2:8:ImplFile:lineseries1.cpp
# End Section
# Section 3_Axis_control : {9C60F5A9-35FF-4B0D-97B9-5F9AB6C8272F}
# 	2:5:Class:CWindRoseSeries
# 	2:10:HeaderFile:windroseseries1.h
# 	2:8:ImplFile:windroseseries1.cpp
# End Section
# Section 3_Axis_control : {BA6D1C6D-36CF-42D5-9098-137252458EEC}
# 	2:5:Class:CBarJoinSeries
# 	2:10:HeaderFile:barjoinseries1.h
# 	2:8:ImplFile:barjoinseries1.cpp
# End Section
# Section 3_Axis_control : {6AB1B24A-C466-4268-ACF3-650000F12910}
# 	2:5:Class:CTextExport
# 	2:10:HeaderFile:textexport1.h
# 	2:8:ImplFile:textexport1.cpp
# End Section
# Section 3_Axis_control : {8E8B339E-A766-4A07-9F1B-69771F5D04B6}
# 	2:5:Class:CLegend
# 	2:10:HeaderFile:legend1.h
# 	2:8:ImplFile:legend1.cpp
# End Section
# Section 3_Axis_control : {55D2D8BE-36A4-4744-BF5E-9B1DB78A9FB1}
# 	2:5:Class:CExpAvgFunction
# 	2:10:HeaderFile:expavgfunction1.h
# 	2:8:ImplFile:expavgfunction1.cpp
# End Section
# Section 3_Axis_control : {7A1079C7-ECC1-4175-A701-BE42D25C4DDD}
# 	2:5:Class:CBubbleSeries
# 	2:10:HeaderFile:bubbleseries1.h
# 	2:8:ImplFile:bubbleseries1.cpp
# End Section
# Section 3_Axis_control : {9A1A0505-7BBA-4A53-8B7F-60979D8DE765}
# 	2:5:Class:CRadarSeries
# 	2:10:HeaderFile:radarseries1.h
# 	2:8:ImplFile:radarseries1.cpp
# End Section
# Section 3_Axis_control : {FBBA3360-E18A-482A-BFAE-8A19C2625E01}
# 	2:5:Class:CBlurFilter
# 	2:10:HeaderFile:blurfilter1.h
# 	2:8:ImplFile:blurfilter1.cpp
# End Section
# Section 3_Axis_control : {62335E7B-C1E5-458B-B1A8-F6F3380A6D47}
# 	2:5:Class:CAxisGridPen
# 	2:10:HeaderFile:axisgridpen1.h
# 	2:8:ImplFile:axisgridpen1.cpp
# End Section
# Section 3_Axis_control : {193FD985-9667-4CFC-B92B-BBF3D1A3E045}
# 	2:5:Class:CPanel
# 	2:10:HeaderFile:panel1.h
# 	2:8:ImplFile:panel1.cpp
# End Section
# Section 3_Axis_control : {8B8D64CB-8B2E-45B6-B859-5B87E6027847}
# 	2:5:Class:CCLVFunction
# 	2:10:HeaderFile:clvfunction1.h
# 	2:8:ImplFile:clvfunction1.cpp
# End Section
# Section 3_Axis_control : {872026D0-BD58-42CC-961B-3640C024609C}
# 	2:5:Class:CIsoSurfaceSeries
# 	2:10:HeaderFile:isosurfaceseries1.h
# 	2:8:ImplFile:isosurfaceseries1.cpp
# End Section
# Section 3_Axis_control : {32C8B5F5-AD20-4F33-ADA7-1D028D1CE5D9}
# 	2:5:Class:CLinearGauge
# 	2:10:HeaderFile:lineargauge1.h
# 	2:8:ImplFile:lineargauge1.cpp
# End Section
# Section 3_Axis_control : {A542EF07-2CDA-4617-8EAC-6795425814FA}
# 	2:5:Class:CAnnotationTool
# 	2:10:HeaderFile:annotationtool1.h
# 	2:8:ImplFile:annotationtool1.cpp
# End Section
# Section 3_Axis_control : {8097EB99-1F8E-433C-89B0-D8DE32A4A9C0}
# 	2:5:Class:CColorFilter
# 	2:10:HeaderFile:colorfilter1.h
# 	2:8:ImplFile:colorfilter1.cpp
# End Section
# Section 3_Axis_control : {D187BA8A-2D47-472B-8128-B8F1F9D8C2FC}
# 	2:5:Class:CPrinterSettings
# 	2:10:HeaderFile:printersettings1.h
# 	2:8:ImplFile:printersettings1.cpp
# End Section
# Section 3_Axis_control : {19B4503E-F54C-4336-83AF-EEF8B30DDC27}
# 	2:5:Class:CSubsetTeeFunction
# 	2:10:HeaderFile:subsetteefunction1.h
# 	2:8:ImplFile:subsetteefunction1.cpp
# End Section
# Section 3_Axis_control : {41CDCCD7-8878-49D8-8581-0EDCDCE5E88D}
# 	2:5:Class:CToolList
# 	2:10:HeaderFile:toollist1.h
# 	2:8:ImplFile:toollist1.cpp
# End Section
# Section 3_Axis_control : {A9996639-1FDE-4A8C-8865-0DDF66C784AD}
# 	2:5:Class:CPageNumTool
# 	2:10:HeaderFile:pagenumtool1.h
# 	2:8:ImplFile:pagenumtool1.cpp
# End Section
# Section 3_Axis_control : {E1C73990-ABEC-4354-801A-3224B3F8C77A}
# 	2:5:Class:CCursorTool
# 	2:10:HeaderFile:cursortool1.h
# 	2:8:ImplFile:cursortool1.cpp
# End Section
# Section 3_Axis_control : {49AB5E31-C5CC-462E-9850-07305B51A936}
# 	2:5:Class:CAxisLabels
# 	2:10:HeaderFile:axislabels1.h
# 	2:8:ImplFile:axislabels1.cpp
# End Section
# Section 3_Axis_control : {88C1B7A8-EDF1-4236-813E-BDFB74EE521B}
# 	2:5:Class:CHueLumSatFilter
# 	2:10:HeaderFile:huelumsatfilter1.h
# 	2:8:ImplFile:huelumsatfilter1.cpp
# End Section
# Section 3_Axis_control : {E7C3E2AC-2E19-446F-88AC-237661961992}
# 	2:5:Class:CMarksSymbol
# 	2:10:HeaderFile:markssymbol1.h
# 	2:8:ImplFile:markssymbol1.cpp
# End Section
# Section 3_Axis_control : {8BC26020-385F-4CB4-BDD5-B8665B29532D}
# 	2:5:Class:CHighLowSeries
# 	2:10:HeaderFile:highlowseries1.h
# 	2:8:ImplFile:highlowseries1.cpp
# End Section
# Section 3_Axis_control : {85AD8716-345B-43BB-8283-FB0A529F90F1}
# 	2:5:Class:CAnnotationCallout
# 	2:10:HeaderFile:annotationcallout1.h
# 	2:8:ImplFile:annotationcallout1.cpp
# End Section
# Section 3_Axis_control : {00746A35-1BCD-4115-83CB-30D9CD1CA389}
# 	2:5:Class:CAxisArrowTool
# 	2:10:HeaderFile:axisarrowtool1.h
# 	2:8:ImplFile:axisarrowtool1.cpp
# End Section
# Section 3_Axis_control : {4C47F2E5-B222-4819-B0A8-23123BBCFC66}
# 	2:5:Class:CTeeRect
# 	2:10:HeaderFile:teerect1.h
# 	2:8:ImplFile:teerect1.cpp
# End Section
# Section 3_Axis_control : {5F56734A-1E58-432B-872C-9116B314D304}
# 	2:5:Class:CXLSExport
# 	2:10:HeaderFile:xlsexport1.h
# 	2:8:ImplFile:xlsexport1.cpp
# End Section
# Section 3_Axis_control : {2B24932B-EBF7-4FDC-B894-2283DB7D526F}
# 	2:5:Class:CExplodedSlices
# 	2:10:HeaderFile:explodedslices1.h
# 	2:8:ImplFile:explodedslices1.cpp
# End Section
# Section 3_Axis_control : {F2E58750-515C-496F-B96A-693C36D0C3DE}
# 	2:5:Class:CADXFunction
# 	2:10:HeaderFile:adxfunction1.h
# 	2:8:ImplFile:adxfunction1.cpp
# End Section
# Section 3_Axis_control : {21CC63AE-BF53-41F9-8871-4029EC3B388F}
# 	2:5:Class:CMACDFunction
# 	2:10:HeaderFile:macdfunction1.h
# 	2:8:ImplFile:macdfunction1.cpp
# End Section
# Section 3_Axis_control : {C33203C1-74BE-42FF-9432-0A2952DE3481}
# 	2:5:Class:CErrorSeries
# 	2:10:HeaderFile:errorseries1.h
# 	2:8:ImplFile:errorseries1.cpp
# End Section
# Section 3_Axis_control : {009E4459-2A9E-4B2A-AB6B-98B2078F41F6}
# 	2:5:Class:CClockSeries
# 	2:10:HeaderFile:clockseries1.h
# 	2:8:ImplFile:clockseries1.cpp
# End Section
# Section 3_Axis_control : {66906253-4755-480D-82B1-9492F09C7B9B}
# 	2:5:Class:CBoxPlotSeries
# 	2:10:HeaderFile:boxplotseries1.h
# 	2:8:ImplFile:boxplotseries1.cpp
# End Section
# Section 3_Axis_control : {852ED3B2-CA4C-473A-8533-20DFAD3B84D9}
# 	2:5:Class:CNumericMarker
# 	2:10:HeaderFile:numericmarker1.h
# 	2:8:ImplFile:numericmarker1.cpp
# End Section
# Section 3_Axis_control : {ECA0BAC9-08DC-452A-BC80-26405650242D}
# 	2:5:Class:CDrawLineList
# 	2:10:HeaderFile:drawlinelist1.h
# 	2:8:ImplFile:drawlinelist1.cpp
# End Section
# Section 3_Axis_control : {B1A083C0-CDC7-418C-95FB-ABAF6707F66F}
# 	2:5:Class:CColorLineTool
# 	2:10:HeaderFile:colorlinetool1.h
# 	2:8:ImplFile:colorlinetool1.cpp
# End Section
# Section 3_Axis_control : {F1156040-7B16-48AA-85A7-DA3332E46D5F}
# 	2:5:Class:CDataTableTool
# 	2:10:HeaderFile:datatabletool1.h
# 	2:8:ImplFile:datatabletool1.cpp
# End Section
# Section 3_Axis_control : {936A835C-57E9-4B90-9E6F-6DC6C0866C65}
# 	2:5:Class:CLinkTool
# 	2:10:HeaderFile:linktool1.h
# 	2:8:ImplFile:linktool1.cpp
# End Section
# Section 3_Axis_control : {0D1E861A-4EB6-4B7C-A081-60BD11E470F2}
# 	2:5:Class:CGaugeSeries
# 	2:10:HeaderFile:gaugeseries1.h
# 	2:8:ImplFile:gaugeseries1.cpp
# End Section
# Section 3_Axis_control : {534DC73B-3B82-4549-92A4-9BF3C7896EA8}
# 	2:5:Class:CRenkoSeries
# 	2:10:HeaderFile:renkoseries1.h
# 	2:8:ImplFile:renkoseries1.cpp
# End Section
# Section 3_Axis_control : {335E0902-9251-4F18-8037-0B242F42B16C}
# 	2:5:Class:CRectangleTool
# 	2:10:HeaderFile:rectangletool1.h
# 	2:8:ImplFile:rectangletool1.cpp
# End Section
# Section 3_Axis_control : {ECDFF469-41D8-4F7B-9250-C84A307FA105}
# 	2:5:Class:CXAMLExport
# 	2:10:HeaderFile:xamlexport1.h
# 	2:8:ImplFile:xamlexport1.cpp
# End Section
# Section 3_Axis_control : {2986DB67-DA5E-40A6-BE81-E9ECC3F02C90}
# 	2:5:Class:CLegendTitle
# 	2:10:HeaderFile:legendtitle1.h
# 	2:8:ImplFile:legendtitle1.cpp
# End Section
# Section 3_Axis_control : {0E0F46CC-ADEF-4D24-9925-3E0D224E8A7D}
# 	2:5:Class:CSmithSeries
# 	2:10:HeaderFile:smithseries1.h
# 	2:8:ImplFile:smithseries1.cpp
# End Section
# Section 3_Axis_control : {91606CC5-D423-4446-8659-69C3E31494A9}
# 	2:5:Class:CSpacing
# 	2:10:HeaderFile:spacing1.h
# 	2:8:ImplFile:spacing1.cpp
# End Section
# Section 3_Axis_control : {487AF4BA-21D0-4E2F-8B72-5D7F948DDCB4}
# 	2:5:Class:CNearestTool
# 	2:10:HeaderFile:nearesttool1.h
# 	2:8:ImplFile:nearesttool1.cpp
# End Section
# Section 3_Axis_control : {CAA881DC-AD98-4D36-9C1D-E2D722AF26E1}
# 	2:5:Class:CTeeFont
# 	2:10:HeaderFile:teefont1.h
# 	2:8:ImplFile:teefont1.cpp
# End Section
# Section 3_Axis_control : {262477EC-9964-4CEF-9127-B0521EB378BB}
# 	2:5:Class:CMosaicFilter
# 	2:10:HeaderFile:mosaicfilter1.h
# 	2:8:ImplFile:mosaicfilter1.cpp
# End Section
# Section 3_Axis_control : {461BBBC1-0138-4B40-81C9-E7885AFBDD40}
# 	2:5:Class:CPointer
# 	2:10:HeaderFile:pointer1.h
# 	2:8:ImplFile:pointer1.cpp
# End Section
# Section 3_Axis_control : {BF8FB65B-E0FF-4BF1-A2D3-7FCB9AF09F73}
# 	2:5:Class:CHistogramFunction
# 	2:10:HeaderFile:histogramfunction1.h
# 	2:8:ImplFile:histogramfunction1.cpp
# End Section
# Section 3_Axis_control : {57C96CD8-4316-4222-B4EA-9ADDA9CAC20C}
# 	2:5:Class:CHorizHistogramSeries
# 	2:10:HeaderFile:horizhistogramseries1.h
# 	2:8:ImplFile:horizhistogramseries1.cpp
# End Section
# Section 3_Axis_control : {F9305261-4001-43FE-A40C-8BD11947C491}
# 	2:5:Class:CFramedBorder
# 	2:10:HeaderFile:framedborder1.h
# 	2:8:ImplFile:framedborder1.cpp
# End Section
# Section 3_Axis_control : {BBB0AC77-86E9-4A8B-9416-6C4D8662EDE5}
# 	2:5:Class:CScrollBarThumb
# 	2:10:HeaderFile:scrollbarthumb1.h
# 	2:8:ImplFile:scrollbarthumb1.cpp
# End Section
# Section 3_Axis_control : {99CBF1EB-64D1-4AFC-A7F7-4CBA70992561}
# 	2:5:Class:CGrayScaleFilter
# 	2:10:HeaderFile:grayscalefilter1.h
# 	2:8:ImplFile:grayscalefilter1.cpp
# End Section
# Section 3_Axis_control : {2FE69573-C208-4DC1-B53E-48677964220F}
# 	2:5:Class:CArrowSeries
# 	2:10:HeaderFile:arrowseries1.h
# 	2:8:ImplFile:arrowseries1.cpp
# End Section
# Section 3_Axis_control : {898DD3CA-EE4D-4E29-8430-E7EAA6503B13}
# 	2:5:Class:CGLPosition
# 	2:10:HeaderFile:glposition1.h
# 	2:8:ImplFile:glposition1.cpp
# End Section
# Section 3_Axis_control : {2E48CD4F-B190-4E84-9A5F-40D35133C19C}
# 	2:5:Class:CImport
# 	2:10:HeaderFile:import1.h
# 	2:8:ImplFile:import1.cpp
# End Section
# Section 3_Axis_control : {74373B5D-79BE-472A-B19C-1784E5684E5A}
# 	2:5:Class:CScroll
# 	2:10:HeaderFile:scroll1.h
# 	2:8:ImplFile:scroll1.cpp
# End Section
# Section 3_Axis_control : {04A6AC54-0B24-46B6-8606-28895FED9551}
# 	2:5:Class:CMapSeries
# 	2:10:HeaderFile:mapseries1.h
# 	2:8:ImplFile:mapseries1.cpp
# End Section
# Section 3_Axis_control : {615C007A-5CA3-4580-A495-1EC755E33C26}
# 	2:5:Class:CHighLowLineSeries
# 	2:10:HeaderFile:highlowlineseries1.h
# 	2:8:ImplFile:highlowlineseries1.cpp
# End Section
# Section 3_Axis_control : {7E6A1018-D7B2-4585-9D43-2E32BC7E7006}
# 	2:5:Class:CEnvironment
# 	2:10:HeaderFile:environment1.h
# 	2:8:ImplFile:environment1.cpp
# End Section
# Section 3_Axis_control : {84CC5DF7-D92C-411F-BF1B-FF1B0C053F08}
# 	2:5:Class:CChartAxisPen
# 	2:10:HeaderFile:chartaxispen1.h
# 	2:8:ImplFile:chartaxispen1.cpp
# End Section
# Section 3_Axis_control : {585EF2DC-4645-40C3-AC68-A569978F12EB}
# 	2:5:Class:CHTMLExport
# 	2:10:HeaderFile:htmlexport1.h
# 	2:8:ImplFile:htmlexport1.cpp
# End Section
# Section 3_Axis_control : {75CED159-22DD-4BC1-90B3-2B71C03A3AE7}
# 	2:5:Class:CPrinter
# 	2:10:HeaderFile:printer1.h
# 	2:8:ImplFile:printer1.cpp
# End Section
# Section 3_Axis_control : {BAE278AB-F06B-493B-B060-6B25D5C48E29}
# 	2:5:Class:CExpMovAvgFunction
# 	2:10:HeaderFile:expmovavgfunction1.h
# 	2:8:ImplFile:expmovavgfunction1.cpp
# End Section
# Section 3_Axis_control : {573B399A-75E6-4079-82F9-9C4895EF9CB7}
# 	2:5:Class:CMargins
# 	2:10:HeaderFile:margins1.h
# 	2:8:ImplFile:margins1.cpp
# End Section
# Section 3_Axis_control : {3B41BE1C-A7F4-4C59-AA59-104376904B34}
# 	2:5:Class:CSmoothPoints
# 	2:10:HeaderFile:smoothpoints1.h
# 	2:8:ImplFile:smoothpoints1.cpp
# End Section
# Section 3_Axis_control : {A6B24B01-657E-4A5C-844C-A3B1251EE1D4}
# 	2:5:Class:CFunnelSeries
# 	2:10:HeaderFile:funnelseries1.h
# 	2:8:ImplFile:funnelseries1.cpp
# End Section
# Section 3_Axis_control : {11950626-7E9B-4473-B01E-CAF6C4648C11}
# 	2:5:Class:COrgSeries
# 	2:10:HeaderFile:orgseries1.h
# 	2:8:ImplFile:orgseries1.cpp
# End Section
# Section 3_Axis_control : {2E6C8B07-3536-493C-8428-AACBFE973C8A}
# 	2:5:Class:CTeePoint2D
# 	2:10:HeaderFile:teepoint2d1.h
# 	2:8:ImplFile:teepoint2d1.cpp
# End Section
# Section 3_Axis_control : {22FDB456-9896-4D6F-B48C-82F84E26EF53}
# 	2:5:Class:CFibonacciTool
# 	2:10:HeaderFile:fibonaccitool1.h
# 	2:8:ImplFile:fibonaccitool1.cpp
# End Section
# Section 3_Axis_control : {E0D983E0-EE24-445B-9E93-EE6B4D342786}
# 	2:5:Class:CGradient
# 	2:10:HeaderFile:gradient1.h
# 	2:8:ImplFile:gradient1.cpp
# End Section
