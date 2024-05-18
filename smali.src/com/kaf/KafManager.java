package com.kaf;

import android.content.Context;

public class KafManager
{
  public static final String ERR_FUNC_NOT_SUPPORT_CODE = "F00000006";
  public static final String ERR_FUNC_NOT_SUPPORT_MESG = "The function is not supported.";
  public static final String ERR_INVALID_OBJECT_CODE = "F00000004";
  public static final String ERR_INVALID_OBJECT_MESG = "Object is null.";
  public static final String ERR_INVALID_PARAM_CODE = "F00000005";
  public static final String ERR_INVALID_PARAM_MESG = "The parameter is Invalid.";
  public static final String ERR_LIB_LOAD_FAILED_CODE = "F00000003";
  public static final String ERR_LIB_LOAD_FAILED_MESG = "Library Load Failed.";
  public static final String ERR_LIB_NOT_INIT_CODE = "F00000002";
  public static final String ERR_LIB_NOT_INIT_MESG = "KAF is not initialized.";
  public static final String ERR_LIB_NOT_LOADED_CODE = "F00000001";
  public static final String ERR_LIB_NOT_LOADED_MESG = "KAF Library is not loaded.";
  public static final int INIT_COPYLEFT = 0;
  public static final int INIT_COPYRIGHT = 1;
  
  public static KafManager getInstance()
  {
    throw new RuntimeException("Stub!");
  }
  
  public int Initialize(Context paramContext, int paramInt)
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.KafManager
 * JD-Core Version:    0.7.0.1
 */