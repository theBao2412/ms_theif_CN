package com.feelingk.iap.gui.data;

public class SingletonCounter
{
  private static SingletonCounter singleton = null;
  private boolean mCultureBtnFlag = false;
  private int mCultureUse = 0;
  private boolean mDotoriBtnFlag = false;
  private int mDotoriUse = 0;
  private boolean mOCBBtnFlag = false;
  private int mOCBUse = 0;
  private int mPaymentTotal = 0;
  private int mPostPay = 0;
  private int mTCashUse = 0;
  private boolean mTCashUseFlag = false;
  private int mTotalBalance = 0;
  
  public static SingletonCounter getInstance()
  {
    if (singleton == null) {
      singleton = new SingletonCounter();
    }
    return singleton;
  }
  
  public void clear()
  {
    this.mTotalBalance = 0;
    this.mPostPay = 0;
    this.mPaymentTotal = 0;
    this.mOCBUse = 0;
    this.mDotoriUse = 0;
    this.mCultureUse = 0;
    this.mTCashUse = 0;
    this.mOCBBtnFlag = false;
    this.mDotoriBtnFlag = false;
    this.mCultureBtnFlag = false;
    this.mTCashUseFlag = false;
  }
  
  public int getmCultureUse()
  {
    return this.mCultureUse;
  }
  
  public int getmDotoriUse()
  {
    return this.mDotoriUse;
  }
  
  public int getmOCBUse()
  {
    return this.mOCBUse;
  }
  
  public int getmPaymentTotal()
  {
    return this.mPaymentTotal;
  }
  
  public int getmPostPay()
  {
    return this.mPostPay;
  }
  
  public int getmTCashUse()
  {
    return this.mTCashUse;
  }
  
  public int getmTotalBalance()
  {
    return this.mTotalBalance;
  }
  
  public boolean ismCultureBtnFlag()
  {
    return this.mCultureBtnFlag;
  }
  
  public boolean ismDotoriBtnFlag()
  {
    return this.mDotoriBtnFlag;
  }
  
  public boolean ismOCBBtnFlag()
  {
    return this.mOCBBtnFlag;
  }
  
  public boolean ismTCashUseFlag()
  {
    return this.mTCashUseFlag;
  }
  
  public void setmCultureBtnFlag(boolean paramBoolean)
  {
    this.mCultureBtnFlag = paramBoolean;
  }
  
  public void setmCultureUse(int paramInt)
  {
    this.mCultureUse = paramInt;
  }
  
  public void setmDotoriBtnFlag(boolean paramBoolean)
  {
    this.mDotoriBtnFlag = paramBoolean;
  }
  
  public void setmDotoriUse(int paramInt)
  {
    this.mDotoriUse = paramInt;
  }
  
  public void setmOCBBtnFlag(boolean paramBoolean)
  {
    this.mOCBBtnFlag = paramBoolean;
  }
  
  public void setmOCBUse(int paramInt)
  {
    this.mOCBUse = paramInt;
  }
  
  public void setmPaymentTotal(int paramInt)
  {
    this.mPaymentTotal = paramInt;
  }
  
  public void setmPostPay(int paramInt)
  {
    this.mPostPay = paramInt;
  }
  
  public void setmTCashUse(int paramInt)
  {
    this.mTCashUse = paramInt;
  }
  
  public void setmTCashUseFlag(boolean paramBoolean)
  {
    this.mTCashUseFlag = paramBoolean;
  }
  
  public void setmTotalBalance(int paramInt)
  {
    this.mTotalBalance = paramInt;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.gui.data.SingletonCounter
 * JD-Core Version:    0.7.0.1
 */