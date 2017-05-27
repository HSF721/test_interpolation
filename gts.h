#pragma once

#define GT_API extern "C" short __stdcall

#define MC_NONE                         -1

#define MC_LIMIT_POSITIVE               0
#define MC_LIMIT_NEGATIVE               1
#define MC_ALARM                        2
#define MC_HOME                         3
#define MC_GPI                          4
#define MC_ARRIVE                       5

#define MC_ENABLE                       10
#define MC_CLEAR                        11
#define MC_GPO                          12

#define MC_DAC                          20
#define MC_STEP                         21
#define MC_PULSE                        22
#define MC_ENCODER                      23
#define MC_ADC                          24

#define MC_AXIS                         30
#define MC_PROFILE                      31
#define MC_CONTROL                      32

#define CAPTURE_HOME                    1
#define CAPTURE_INDEX                   2
#define CAPTURE_PROBE                   3
#define CAPTURE_HSIO0                   6
#define CAPTURE_HSIO1                   7

#define PT_MODE_STATIC                  0
#define PT_MODE_DYNAMIC                 1

#define PT_SEGMENT_NORMAL               0
#define PT_SEGMENT_EVEN                 1
#define PT_SEGMENT_STOP                 2

#define GEAR_MASTER_ENCODER             1
#define GEAR_MASTER_PROFILE             2
#define GEAR_MASTER_AXIS                3

#define FOLLOW_MASTER_ENCODER           1
#define FOLLOW_MASTER_PROFILE           2
#define FOLLOW_MASTER_AXIS              3

#define FOLLOW_EVENT_START              1
#define FOLLOW_EVENT_PASS               2

#define GEAR_EVENT_START                1
#define GEAR_EVENT_PASS                 2
#define GEAR_EVENT_AREA                 5

#define FOLLOW_SEGMENT_NORMAL           0
#define FOLLOW_SEGMENT_EVEN             1
#define FOLLOW_SEGMENT_STOP             2
#define FOLLOW_SEGMENT_CONTINUE         3

#define INTERPOLATION_AXIS_MAX          4
#define CRD_FIFO_MAX                    4096
#define CRD_MAX                         2
#define CRD_OPERATION_DATA_EXT_MAX      2

#define CRD_OPERATION_TYPE_NONE         0
#define CRD_OPERATION_TYPE_BUF_IO_DELAY 1
#define CRD_OPERATION_TYPE_LASER_ON     2
#define CRD_OPERATION_TYPE_LASER_OFF    3
#define CRD_OPERATION_TYPE_BUF_DA       4
#define CRD_OPERATION_TYPE_LASER_CMD    5
#define CRD_OPERATION_TYPE_LASER_FOLLOW 6
#define CRD_OPERATION_TYPE_LMTS_ON      7
#define CRD_OPERATION_TYPE_LMTS_OFF     8
#define CRD_OPERATION_TYPE_SET_STOP_IO  9
#define CRD_OPERATION_TYPE_BUF_MOVE     10
#define CRD_OPERATION_TYPE_BUF_GEAR     11
#define CRD_OPERATION_TYPE_SET_SEG_NUM  12
#define CRD_OPERATION_TYPE_STOP_MOTION  13
#define CRD_OPERATION_TYPE_SET_VAR_VALUE 14
#define CRD_OPERATION_TYPE_JUMP_NEXT_SEG 15
#define CRD_OPERATION_TYPE_SYNCH_PRF_POS 16
#define CRD_OPERATION_TYPE_VIRTUAL_TO_ACTUAL 17
#define CRD_OPERATION_TYPE_SET_USER_VAR  18
#define CRD_OPERATION_TYPE_SET_DO_BIT_PULSE 19

#define INTERPOLATION_MOTION_TYPE_LINE  0
#define INTERPOLATION_MOTION_TYPE_CIRCLE 1
#define INTERPOLATION_MOTION_TYPE_HELIX 2

#define INTERPOLATION_CIRCLE_PLAT_XY    0
#define INTERPOLATION_CIRCLE_PLAT_YZ    1
#define INTERPOLATION_CIRCLE_PLAT_ZX    2

#define INTERPOLATION_HELIX_CIRCLE_XY_LINE_Z    0
#define INTERPOLATION_HELIX_CIRCLE_YZ_LINE_X    1
#define INTERPOLATION_HELIX_CIRCLE_ZX_LINE_Y    2

#define INTERPOLATION_CIRCLE_DIR_CW     0
#define INTERPOLATION_CIRCLE_DIR_CCW    1

typedef struct TrapPrm
{
    double acc;
    double dec;
    double velStart;
    short  smoothTime;
} TTrapPrm;

typedef struct JogPrm
{
    double acc;
    double dec;
    double smooth;
} TJogPrm;

typedef struct Pid
{
    double kp;
    double ki;
    double kd;
    double kvff;
    double kaff;
    long   integralLimit;
    long   derivativeLimit;
    short  limit;
} TPid;

typedef struct ThreadSts
{
    short  run;
    short  error;
    double result;
    short  line;
} TThreadSts;

typedef struct VarInfo
{
    short id;
    short dataType;
    char  name[32];
} TVarInfo;

typedef struct CompileInfo
{
    char  *pFileName;
    short *pLineNo;
    char  *pMessage;
} TCompileInfo;

typedef struct CrdPrm
{
    short dimension;                              // ����ϵά��
    short profile[8];                             // ����profile��������
    double synVelMax;                             // ���ϳ��ٶ�
    double synAccMax;                             // ���ϳɼ��ٶ�
    short evenTime;                               // ��С����ʱ��
    short setOriginFlag;                          // ����ԭ������ֵ��־,0:Ĭ�ϵ�ǰ�滮λ��Ϊԭ��λ��;1:�û�ָ��ԭ��λ��
    long originPos[8];                            // �û�ָ����ԭ��λ��
}TCrdPrm;

typedef struct CrdBufOperation
{
    short flag;                                   // ��־�ò岹���Ƿ���IO����ʱ
    unsigned short delay;                         // ��ʱʱ��
    short doType;                                 // ������IO������,0:�����IO
    unsigned short doMask;                        // ������IO�������������
    unsigned short doValue;                       // ������IO�����ֵ
    unsigned short dataExt[CRD_OPERATION_DATA_EXT_MAX];     // ����������չ����
}TCrdBufOperation;

typedef struct CrdData
{
    short motionType;                             // �˶�����,0:ֱ�߲岹,1:Բ���岹
    short circlePlat;                             // Բ���岹��ƽ��
    long pos[INTERPOLATION_AXIS_MAX];             // ��ǰ�θ����յ�λ��
    double radius;                                  // Բ���岹�İ뾶
    short circleDir;                              // Բ����ת����,0:˳ʱ��;1:��ʱ��
    double center[2];                               // Բ���岹��Բ������
    double vel;                                   // ��ǰ�κϳ�Ŀ���ٶ�
    double acc;                                   // ��ǰ�κϳɼ��ٶ�
    short velEndZero;                             // ��־��ǰ�ε��յ��ٶ��Ƿ�ǿ��Ϊ0,0:��ǿ��Ϊ0;1:ǿ��Ϊ0
    TCrdBufOperation operation;                   // ��������ʱ��IO�ṹ��

    double cos[INTERPOLATION_AXIS_MAX];           // ��ǰ�θ����Ӧ������ֵ
    double velEnd;                                // ��ǰ�κϳ��յ��ٶ�
    double velEndAdjust;                          // �����յ��ٶ�ʱ�õ��ı���(ǰհģ��)
    double r;                                     // ��ǰ�κϳ�λ����
}TCrdData;

typedef struct Trigger
{
    short encoder;
    short probeType;
    short probeIndex;
    short offset;
    short windowOnly;
    long firstPosition;
    long lastPosition;
}TTrigger;

typedef struct TriggerStatus
{
    short execute;
    short done;
    long position;
}TTriggerStatus;

GT_API GT_SetCardNo(short index);
GT_API GT_GetCardNo(short *pIndex);

GT_API GT_GetVersion(char **pVersion);

GT_API GT_Open(short channel=0,short param=1);
GT_API GT_Close(void);

GT_API GT_LoadConfig(char *pFile);

GT_API GT_AlarmOff(short axis);
GT_API GT_AlarmOn(short axis);
GT_API GT_LmtsOn(short axis,short limitType=-1);
GT_API GT_LmtsOff(short axis,short limitType=-1);
GT_API GT_ProfileScale(short axis,short alpha,short beta);
GT_API GT_EncScale(short axis,short alpha,short beta);
GT_API GT_StepDir(short step);
GT_API GT_StepPulse(short step);
GT_API GT_SetMtrBias(short dac,short bias);
GT_API GT_GetMtrBias(short dac,short *pBias);
GT_API GT_SetMtrLmt(short dac,short limit);
GT_API GT_GetMtrLmt(short dac,short *pLimit);
GT_API GT_EncSns(unsigned short sense);
GT_API GT_EncOn(short encoder);
GT_API GT_EncOff(short encoder);
GT_API GT_SetPosErr(short control,long error);
GT_API GT_GetPosErr(short control,long *pError);
GT_API GT_SetStopDec(short profile,double decSmoothStop,double decAbruptStop);
GT_API GT_GetStopDec(short profile,double *pDecSmoothStop,double *pDecAbruptStop);
GT_API GT_LmtSns(unsigned short sense);
GT_API GT_CtrlMode(short axis,short mode);
GT_API GT_SetStopIo(short axis,short stopType,short inputType,short inputIndex);
GT_API GT_GpiSns(unsigned short sense);
GT_API GT_SetAdcFilter(short adc,short filterTime);

GT_API GT_SetDo(short doType,long value);
GT_API GT_SetDoBit(short doType,short doIndex,short value);
GT_API GT_GetDo(short doType,long *pValue);
GT_API GT_SetDoBitReverse(short doType,short doIndex,short value,short reverseTime);

GT_API GT_GetDi(short diType,long *pValue);
GT_API GT_GetDiReverseCount(short diType,short diIndex,unsigned long *pReverseCount,short count=1);
GT_API GT_SetDiReverseCount(short diType,short diIndex,unsigned long *pReverseCount,short count=1);
GT_API GT_GetDiRaw(short diType,long *pValue);

GT_API GT_SetDac(short dac,short *pValue,short count=1);
GT_API GT_GetDac(short dac,short *pValue,short count=1,unsigned long *pClock=NULL);

GT_API GT_GetAdc(short adc,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetAdcValue(short adc,short *pValue,short count=1,unsigned long *pClock=NULL);

GT_API GT_SetEncPos(short encoder,long encPos);
GT_API GT_GetEncPos(short encoder,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetEncVel(short encoder,double *pValue,short count=1,unsigned long *pClock=NULL);

GT_API GT_SetCaptureMode(short encoder,short mode);
GT_API GT_GetCaptureMode(short encoder,short *pMode,short count=1);
GT_API GT_GetCaptureStatus(short encoder,short *pStatus,long *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_SetCaptureSense(short encoder,short mode,short sense);
GT_API GT_ClearCaptureStatus(short encoder);

GT_API GT_Reset();
GT_API GT_GetClock(unsigned long *pClock,unsigned long *pLoop=NULL);
GT_API GT_GetClockHighPrecision(unsigned long *pClock);

GT_API GT_GetSts(short axis,long *pSts,short count=1,unsigned long *pClock=NULL);
GT_API GT_ClrSts(short axis,short count=1);
GT_API GT_AxisOn(short axis);
GT_API GT_AxisOff(short axis);
GT_API GT_Stop(long mask,long option);
GT_API GT_SetPrfPos(short profile,long prfPos);
GT_API GT_SynchAxisPos(long mask);
GT_API GT_ZeroPos(short axis,short count=1);

GT_API GT_SetSoftLimit(short axis,long positive,long negative);
GT_API GT_GetSoftLimit(short axis,long *pPositive,long *pNegative);
GT_API GT_SetAxisBand(short axis,long band,long time);
GT_API GT_GetAxisBand(short axis,long *pBand,long *pTime);
GT_API GT_SetBacklash(short axis,long compValue,double compChangeValue,long compDir);
GT_API GT_GetBacklash(short axis,long *pCompValue,double *pCompChangeValue,long *pCompDir);

GT_API GT_GetPrfPos(short profile,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetPrfVel(short profile,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetPrfAcc(short profile,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetPrfMode(short profile,long *pValue,short count=1,unsigned long *pClock=NULL);

GT_API GT_GetAxisPrfPos(short axis,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetAxisPrfVel(short axis,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetAxisPrfAcc(short axis,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetAxisEncPos(short axis,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetAxisEncVel(short axis,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetAxisEncAcc(short axis,double *pValue,short count=1,unsigned long *pClock=NULL);
GT_API GT_GetAxisError(short axis,double *pValue,short count=1,unsigned long *pClock=NULL);

GT_API GT_SetControlFilter(short control,short index);
GT_API GT_GetControlFilter(short control,short *pIndex);

GT_API GT_SetPid(short control,short index,TPid *pPid);
GT_API GT_GetPid(short control,short index,TPid *pPid);

GT_API GT_Update(long mask);
GT_API GT_SetPos(short profile,long pos);
GT_API GT_GetPos(short profile,long *pPos);
GT_API GT_SetVel(short profile,double vel);
GT_API GT_GetVel(short profile,double *pVel);

GT_API GT_PrfTrap(short profile);
GT_API GT_SetTrapPrm(short profile,TTrapPrm *pPrm);
GT_API GT_GetTrapPrm(short profile,TTrapPrm *pPrm);

GT_API GT_PrfJog(short profile);
GT_API GT_SetJogPrm(short profile,TJogPrm *pPrm);
GT_API GT_GetJogPrm(short profile,TJogPrm *pPrm);

GT_API GT_PrfPt(short profile,short mode=PT_MODE_STATIC);
GT_API GT_SetPtLoop(short profile,long loop);
GT_API GT_GetPtLoop(short profile,long *pLoop);
GT_API GT_PtSpace(short profile,short *pSpace,short fifo=0);
GT_API GT_PtData(short profile,double pos,long time,short type=PT_SEGMENT_NORMAL,short fifo=0);
GT_API GT_PtClear(short profile,short fifo=0);
GT_API GT_PtStart(long mask,long option=0);
GT_API GT_SetPtMemory(short profile,short memory);
GT_API GT_GetPtMemory(short profile,short *pMemory);

GT_API GT_PrfGear(short profile,short dir=0);
GT_API GT_SetGearMaster(short profile,short masterIndex,short masterType=GEAR_MASTER_PROFILE,short masterItem=0);
GT_API GT_GetGearMaster(short profile,short *pMasterIndex,short *pMasterType=NULL,short *pMasterItem=NULL);
GT_API GT_SetGearRatio(short profile,long masterEven,long slaveEven,long masterSlope=0);
GT_API GT_GetGearRatio(short profile,long *pMasterEven,long *pSlaveEven,long *pMasterSlope=NULL);
GT_API GT_GearStart(long mask);

GT_API GT_PrfFollow(short profile,short dir=0);
GT_API GT_SetFollowMaster(short profile,short masterIndex,short masterType=FOLLOW_MASTER_PROFILE,short masterItem=0);
GT_API GT_GetFollowMaster(short profile,short *pMasterIndex,short *pMasterType=NULL,short *pMasterItem=NULL);
GT_API GT_SetFollowLoop(short profile,long loop);
GT_API GT_GetFollowLoop(short profile,long *pLoop);
GT_API GT_SetFollowEvent(short profile,short event,short masterDir,long pos=0);
GT_API GT_GetFollowEvent(short profile,short *pEvent,short *pMasterDir,long *pPos=NULL);
GT_API GT_FollowSpace(short profile,short *pSpace,short fifo=0);
GT_API GT_FollowData(short profile,long masterSegment,double slaveSegment,short type=FOLLOW_SEGMENT_NORMAL,short fifo=0);
GT_API GT_FollowClear(short profile,short fifo=0);
GT_API GT_FollowStart(long mask,long option=0);
GT_API GT_FollowSwitch(long mask);
GT_API GT_SetFollowMemory(short profile,short memory);
GT_API GT_GetFollowMemory(short profile,short *pMemory);

GT_API GT_Compile(char *pFileName,TCompileInfo *pWrongInfo);
GT_API GT_Download(char *pFileName);

GT_API GT_GetFunId(char *pFunName,short *pFunId);
GT_API GT_Bind(short thread,short funId,short page);

GT_API GT_RunThread(short thread);
GT_API GT_StopThread(short thread);
GT_API GT_PauseThread(short thread);

GT_API GT_GetThreadSts(short thread,TThreadSts *pThreadSts);

GT_API GT_GetVarId(char *pFunName,char *pVarName,TVarInfo *pVarInfo);
GT_API GT_SetVarValue(short page,TVarInfo *pVarInfo,double *pValue,short count=1);
GT_API GT_GetVarValue(short page,TVarInfo *pVarInfo,double *pValue,short count=1);

GT_API GT_SetCrdPrm(short crd,TCrdPrm *pCrdPrm);
GT_API GT_GetCrdPrm(short crd,TCrdPrm *pCrdPrm);
GT_API GT_CrdSpace(short crd,long *pSpace,short fifo=0);
GT_API GT_CrdData(short crd,TCrdData *pCrdData,short fifo=0);
GT_API GT_CrdDataCircle(short crd,TCrdData *pCrdData,short fifo=0);
GT_API GT_LnXY(short crd,long x,long y,double synVel,double synAcc,double velEnd=0,short fifo=0);
GT_API GT_LnXYZ(short crd,long x,long y,long z,double synVel,double synAcc,double velEnd=0,short fifo=0);
GT_API GT_LnXYZA(short crd,long x,long y,long z,long a,double synVel,double synAcc,double velEnd=0,short fifo=0);
GT_API GT_LnXYG0(short crd,long x,long y,double synVel,double synAcc,short fifo=0);
GT_API GT_LnXYZG0(short crd,long x,long y,long z,double synVel,double synAcc,short fifo=0);
GT_API GT_LnXYZAG0(short crd,long x,long y,long z,long a,double synVel,double synAcc,short fifo=0);
GT_API GT_ArcXYR(short crd,long x,long y,double radius,short circleDir,double synVel,double synAcc,double velEnd=0,short fifo=0);
GT_API GT_ArcXYC(short crd,long x,long y,double xCenter,double yCenter,short circleDir,double synVel,double synAcc,double velEnd=0,short fifo=0);
GT_API GT_ArcYZR(short crd,long y,long z,double radius,short circleDir,double synVel,double synAcc,double velEnd=0,short fifo=0);
GT_API GT_ArcYZC(short crd,long y,long z,double yCenter,double zCenter,short circleDir,double synVel,double synAcc,double velEnd=0,short fifo=0);
GT_API GT_ArcZXR(short crd,long z,long x,double radius,short circleDir,double synVel,double synAcc,double velEnd=0,short fifo=0);
GT_API GT_ArcZXC(short crd,long z,long x,double zCenter,double xCenter,short circleDir,double synVel,double synAcc,double velEnd=0,short fifo=0);
GT_API GT_BufIO(short crd,unsigned short doType,unsigned short doMask,unsigned short doValue,short fifo=0);
GT_API GT_BufDelay(short crd,unsigned short delayTime,short fifo=0);
GT_API GT_BufDA(short crd,short chn,short daValue,short fifo=0);
GT_API GT_BufLmtsOn(short crd,short axis,short limitType,short fifo=0);
GT_API GT_BufLmtsOff(short crd,short axis,short limitType,short fifo=0);
GT_API GT_BufSetStopIo(short crd,short axis,short stopType,short inputType,short inputIndex,short fifo=0);
GT_API GT_BufMove(short crd,short moveAxis,long pos,double vel,double acc,short modal,short fifo=0);
GT_API GT_BufGear(short crd,short gearAxis,long pos,short fifo=0);
GT_API GT_CrdStart(short mask,short option);
GT_API GT_SetOverride(short crd,double synVelRatio);
GT_API GT_InitLookAhead(short crd,short fifo,double T,double accMax,short n,TCrdData *pLookAheadBuf);
GT_API GT_CrdClear(short crd,short fifo);
GT_API GT_CrdStatus(short crd,short *pRun,long *pSegment,short fifo=0);
GT_API GT_SetUserSegNum(short crd,long segNum,short fifo=0);
GT_API GT_GetUserSegNum(short crd,long *pSegment,short fifo=0);
GT_API GT_GetRemainderSegNum(short crd,long *pSegment,short fifo=0);
GT_API GT_SetCrdStopDec(short crd,double decSmoothStop,double decAbruptStop);
GT_API GT_GetCrdStopDec(short crd,double *pDecSmoothStop,double *pDecAbruptStop);
GT_API GT_GetCrdPos(short crd,double *pPos);
GT_API GT_GetCrdVel(short crd,double *pSynVel);

GT_API GT_PrfPvt(short profile);
GT_API GT_SetPvtLoop(short profile,long loop);
GT_API GT_GetPvtLoop(short profile,long *pLoopCount,long *pLoop);
GT_API GT_PvtStatus(short profile,short *pTableId,double *pTime,short count=1);
GT_API GT_PvtStart(long mask);
GT_API GT_PvtTableSelect(short profile,short tableId);

GT_API GT_PvtTable(short tableId,long count,double *pTime,double *pPos,double *pVel);
GT_API GT_PvtTableEx(short tableId,long count,double *pTime,double *pPos,double *pVelBegin,double *pVelEnd);
GT_API GT_PvtTableComplete(short tableId,long count,double *pTime,double *pPos,double *pA,double *pB,double *pC,double velBegin=0,double velEnd=0);
GT_API GT_PvtTablePercent(short tableId,long count,double *pTime,double *pPos,double *pPercent,double velBegin=0);
GT_API GT_PvtPercentCalculate(long n,double *pTime,double *pPos,double *pPercent,double velBegin,double *pVel);
GT_API GT_PvtTableContinuous(short tableId,long count,double *pPos,double *pVel,double *pPercent,double *pVelMax,double *pAcc,double *pDec,double timeBegin);
GT_API GT_PvtContinuousCalculate(long n,double *pPos,double *pVel,double *pPercent,double *pVelMax,double *pAcc,double *pDec,double *pTime);

GT_API GT_HomeInit();
GT_API GT_Home(short axis,long pos,double vel,double acc,long offset);
GT_API GT_Index(short axis,long pos,long offset);
GT_API GT_HomeStop(short axis,long pos,double vel,double acc);
GT_API GT_HomeSts(short axis,unsigned short *pStatus);

GT_API GT_ComparePulse(short level,short outputType,short time);
GT_API GT_CompareStop();
GT_API GT_CompareStatus(short *pStatus,long *pCount);
GT_API GT_CompareData(short encoder,short source,short pulseType,short startLevel,short time,
                      long *pBuf1,short count1,long *pBuf2,short count2);
GT_API GT_CompareLinear(short encoder,short channel,long startPos,long repeatTimes,long interval,short time,short source);
