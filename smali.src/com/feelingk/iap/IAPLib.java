package com.feelingk.iap;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.feelingk.iap.gui.data.SingletonCounter;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.net.IAPBase;
import com.feelingk.iap.net.InitConfirm;
import com.feelingk.iap.net.ItemAuth;
import com.feelingk.iap.net.ItemAuthInfo;
import com.feelingk.iap.net.ItemUse;
import com.feelingk.iap.net.ItemUseConfirm;
import com.feelingk.iap.net.ItemWholeAuthConfirm;
import com.feelingk.iap.net.LGUSmsAuthNumberConfirm;
import com.feelingk.iap.net.SellerInfoConfirm;
import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.CommonF.LOGGER;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.CommonString.Index;

public final class IAPLib
{
  public static final int HND_ERR_AUTH = 2000;
  public static final int HND_ERR_COMMONINFOREQ = 2017;
  public static final int HND_ERR_CULTURELANDCASHINFO = 2020;
  public static final int HND_ERR_DATA = 2005;
  public static final int HND_ERR_DISCOUNT_REQ = 2023;
  public static final int HND_ERR_DOTORISMSAUTH = 2022;
  public static final int HND_ERR_DOTORISMSAUTHNUMBER = 2021;
  public static final int HND_ERR_IMEI_AUTH = 2015;
  public static final int HND_ERR_IMEI_AUTH_REQ = 2016;
  public static final int HND_ERR_INIT = 1999;
  public static final int HND_ERR_ITEMAUTH = 2007;
  public static final int HND_ERR_ITEMINFO = 2001;
  public static final int HND_ERR_ITEMPURCHASE = 2003;
  public static final int HND_ERR_ITEMQUERY = 2002;
  public static final int HND_ERR_LGU_SMSAUTH_REQ = 2014;
  public static final int HND_ERR_LGU_SMSAUTH_UMBER_REQ = 2013;
  public static final int HND_ERR_MEMBERSHIP = 2011;
  public static final int HND_ERR_NORMALTIMEOUT = 2008;
  public static final int HND_ERR_OCBCARDUPDATE = 2018;
  public static final int HND_ERR_OCBPOINTINFO = 2019;
  public static final int HND_ERR_PAYMENTTIMEOUT = 2009;
  public static final int HND_ERR_PURCHASEDISSMISS = 2012;
  public static final int HND_ERR_PURCHASEDISSMISS_CHECK = 2024;
  public static final int HND_ERR_SELLERINFO_QUERY_REQ = 2024;
  public static final int HND_ERR_SERVERTIMEOUT = 2010;
  public static final int HND_ERR_USEQUERY = 2006;
  public static final int HND_ERR_WHOLEQUERY = 2004;
  static final String TAG = "IAPLib";
  protected static String mBPInfo;
  protected static IAPBase mBase;
  protected static OnClientListener mClientListener;
  private static Context mContext;
  private static boolean mCultureCashQueryFlag;
  private static String mCultureLandPoint;
  private static String mCultureLandUserId;
  private static int mCulture_Use;
  private static int mDialogType;
  private static String mDotoriAuthNumber;
  private static boolean mDotoriQueryFlag;
  private static int mDotori_Use;
  protected static String mEncJuminNumber;
  private static Handler mHndUI = null;
  public static boolean mIsOTPAuth;
  public static boolean mIsOTPSuccess;
  protected static int mKorTelecom;
  public static boolean mLimitExcess;
  protected static String mMdn;
  protected static final Handler mNetworkMessageHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      CommonF.LOGGER.i("IAPLib", "[NET-Handler] Network Message Receive Msg.what = " + paramAnonymousMessage.what);
      Object localObject;
      switch (paramAnonymousMessage.what)
      {
      case 1111: 
      case 1112: 
      case 1113: 
      case 1114: 
      case 1115: 
      case 1116: 
      case 1118: 
      case 1122: 
      case 1124: 
      case 1127: 
      case 1129: 
      case 1130: 
      case 1132: 
      case 1138: 
      default: 
        IAPLib.close();
        SingletonCounter.getInstance().clear();
        if ((paramAnonymousMessage.obj == null) || (paramAnonymousMessage.obj.equals(""))) {
          paramAnonymousMessage.obj = CommonString.getString(CommonString.Index.ERROR_NONE_PARAMETER_STRING);
        }
        if ((paramAnonymousMessage.what == 2003) && (paramAnonymousMessage.arg1 == 15)) {
          IAPLib.updateEncJuminNumber(null);
        }
        if (IAPLib.mHndUI != null)
        {
          localObject = IAPLib.mHndUI.obtainMessage(paramAnonymousMessage.what, paramAnonymousMessage.obj);
          IAPLib.mHndUI.sendMessage((Message)localObject);
        }
        if ((IAPLib.mClientListener != null) && (paramAnonymousMessage.what != 2018) && (paramAnonymousMessage.what != 2019) && (paramAnonymousMessage.what != 2020) && (paramAnonymousMessage.what != 2022)) {
          IAPLib.mClientListener.onError(paramAnonymousMessage.what, paramAnonymousMessage.arg1);
        }
        break;
      }
      label432:
      label600:
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            do
                            {
                              do
                              {
                                do
                                {
                                  do
                                  {
                                    do
                                    {
                                      do
                                      {
                                        do
                                        {
                                          do
                                          {
                                            boolean bool;
                                            do
                                            {
                                              do
                                              {
                                                return;
                                                if (paramAnonymousMessage.arg1 == 1)
                                                {
                                                  bool = true;
                                                  IAPLib.mUseTCash = Boolean.valueOf(bool);
                                                  if (paramAnonymousMessage.arg2 != 1) {
                                                    break label432;
                                                  }
                                                }
                                                for (bool = true;; bool = false)
                                                {
                                                  IAPLib.mUseBPProtol = Boolean.valueOf(bool);
                                                  IAPLib.sendItemQuery(IAPLib.mOCB_Use, IAPLib.mDotori_Use, IAPLib.mCulture_Use, IAPLib.mTCash_Use);
                                                  IAPLib.setPayments(0, 0, 0, 0);
                                                  SingletonCounter.getInstance().clear();
                                                  return;
                                                  bool = false;
                                                  break;
                                                }
                                                IAPLib.sendItemQuery(IAPLib.mOCB_Use, IAPLib.mDotori_Use, IAPLib.mCulture_Use, IAPLib.mTCash_Use);
                                                IAPLib.setPayments(0, 0, 0, 0);
                                                SingletonCounter.getInstance().clear();
                                                return;
                                              } while (IAPLib.mClientListener == null);
                                              try
                                              {
                                                bool = IAPLib.mClientListener.onItemQueryComplete().booleanValue();
                                                if (!bool) {
                                                  break label600;
                                                }
                                                CommonF.LOGGER.i("IAPLib", "onItemQueryComplete bFlag: " + bool);
                                                if (IAPLib.mKorTelecom != 1) {
                                                  break;
                                                }
                                                IAPLib.sendItemPurchse(IAPLib.mUseTCash);
                                                return;
                                              }
                                              catch (Exception paramAnonymousMessage)
                                              {
                                                CommonF.LOGGER.e("IAPLib", "[Exception] " + paramAnonymousMessage.toString());
                                              }
                                            } while (IAPLib.mHndUI == null);
                                            IAPLib.mHndUI.obtainMessage(2003, CommonString.getString(CommonString.Index.ERROR_ONITEMQUERY_STRING)).sendToTarget();
                                            CommonF.LOGGER.e("IAPLib", "[Exception] mClientListener.onItemQueryComplete() is null!!");
                                            return;
                                            IAPLib.sendItemPurchseByDanal(IAPLib.mMdn, IAPLib.mKorTelecom, IAPLib.mUseTCash, IAPLib.mEncJuminNumber);
                                            return;
                                            CommonF.LOGGER.i("IAPLib", "onItemQueryComplete bFlag: " + bool);
                                          } while (IAPLib.mHndUI == null);
                                          IAPLib.mHndUI.obtainMessage(2003, CommonString.getString(CommonString.Index.ERROR_ONITEMQUERY_STRING)).sendToTarget();
                                          CommonF.LOGGER.e("IAPLib", "mClientListener.onItemQueryComplete() is false!!");
                                          return;
                                          IAPLib.close();
                                        } while ((IAPLib.mHndUI == null) || (paramAnonymousMessage.obj == null));
                                        IAPLib.mHndUI.obtainMessage(1106, paramAnonymousMessage.obj).sendToTarget();
                                        return;
                                      } while (IAPLib.mClientListener == null);
                                      IAPLib.setIsOTPAuth(false);
                                      IAPLib.setOTPAgree(false);
                                      IAPLib.setOTPPurchaseSuccess(false);
                                      IAPLib.mClientListener.onItemPurchaseComplete();
                                      return;
                                      IAPLib.mEncJuminNumber = paramAnonymousMessage.obj.toString();
                                      IAPLib.mBase.setBaseEncodeJuminNumber(IAPLib.mEncJuminNumber);
                                      return;
                                      IAPLib.close();
                                    } while (IAPLib.mHndUI == null);
                                    IAPLib.mHndUI.obtainMessage(1104, paramAnonymousMessage.obj).sendToTarget();
                                    return;
                                    IAPLib.close();
                                    return;
                                    IAPLib.close();
                                  } while (IAPLib.mHndUI == null);
                                  IAPLib.mHndUI.obtainMessage(1119).sendToTarget();
                                  return;
                                  IAPLib.close();
                                } while (IAPLib.mHndUI == null);
                                IAPLib.mHndUI.obtainMessage(1125, paramAnonymousMessage.obj).sendToTarget();
                                return;
                                IAPLib.close();
                              } while (IAPLib.mHndUI == null);
                              IAPLib.mHndUI.obtainMessage(1131).sendToTarget();
                              return;
                              IAPLib.close();
                            } while (IAPLib.mHndUI == null);
                            IAPLib.mHndUI.obtainMessage(1126, paramAnonymousMessage.obj).sendToTarget();
                            return;
                            IAPLib.close();
                            if (IAPLib.mHndUI != null)
                            {
                              IAPLib.mSmsAuthKey = IAPLib.mBase.getLGUSmsAuthNumberConfirmMessage().getAuthKey();
                              IAPLib.mHndUI.obtainMessage(1128, paramAnonymousMessage.obj).sendToTarget();
                            }
                            IAPLib.close();
                          } while (IAPLib.mHndUI == null);
                          IAPLib.mHndUI.obtainMessage(1117, paramAnonymousMessage.obj).sendToTarget();
                          return;
                          IAPLib.close();
                        } while (IAPLib.mHndUI == null);
                        IAPLib.mHndUI.obtainMessage(1123, paramAnonymousMessage.obj).sendToTarget();
                        return;
                        IAPLib.close();
                      } while (IAPLib.mHndUI == null);
                      IAPLib.mHndUI.obtainMessage(1139, paramAnonymousMessage.obj).sendToTarget();
                      return;
                      IAPLib.close();
                    } while (IAPLib.mHndUI == null);
                    IAPLib.mHndUI.obtainMessage(1121, paramAnonymousMessage.obj).sendToTarget();
                    return;
                    IAPLib.close();
                    paramAnonymousMessage = IAPLib.mBase.getItemWholeAuthConfirmMessage();
                  } while (IAPLib.mClientListener == null);
                  IAPLib.mClientListener.onWholeQuery(paramAnonymousMessage.getItems());
                  return;
                  IAPLib.close();
                  paramAnonymousMessage = IAPLib.mBase.getItemUseConfirmMessage();
                  localObject = new ItemUse();
                  ((ItemUse)localObject).pId = paramAnonymousMessage.getItemID();
                  ((ItemUse)localObject).pName = paramAnonymousMessage.getItemName();
                  ((ItemUse)localObject).pCount = paramAnonymousMessage.getCount();
                } while (IAPLib.mClientListener == null);
                IAPLib.mClientListener.onItemUseQuery((ItemUse)localObject);
                return;
                IAPLib.close();
                paramAnonymousMessage = IAPLib.mBase.getInitConfirmMessage();
                localObject = new ItemAuthInfo();
                ((ItemAuthInfo)localObject).pCount = paramAnonymousMessage.getCount();
                ((ItemAuthInfo)localObject).pExpireDate = paramAnonymousMessage.getExpireDate();
                ((ItemAuthInfo)localObject).pToken = paramAnonymousMessage.getToken();
              } while (IAPLib.mClientListener == null);
              IAPLib.mClientListener.onItemAuthInfo((ItemAuthInfo)localObject);
              return;
              IAPLib.close();
            } while (IAPLib.mHndUI == null);
            IAPLib.mHndUI.obtainMessage(1120, paramAnonymousMessage.obj).sendToTarget();
            return;
            IAPLib.close();
            CommonF.LOGGER.i("IAPLib", "OKCashbag 카드 업데이트: " + IAPLib.mUpdateType);
            if ((IAPLib.mUpdateType.equals("D")) || (IAPLib.mUpdateType.equals("U")))
            {
              int i = SingletonCounter.getInstance().getmPaymentTotal();
              int j = SingletonCounter.getInstance().getmOCBUse();
              SingletonCounter.getInstance().setmOCBUse(0);
              SingletonCounter.getInstance().setmPaymentTotal(i - j);
              SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmTotalBalance() - SingletonCounter.getInstance().getmPaymentTotal());
              SingletonCounter.getInstance().setmOCBBtnFlag(false);
            }
            IAPLib.sendItemInfo(IAPLib.mProductID, IAPLib.mProductName, IAPLib.mTID, IAPLib.mBPInfo);
            return;
            IAPLib.close();
          } while (IAPLib.mHndUI == null);
          IAPLib.mHndUI.obtainMessage(1134, paramAnonymousMessage.obj).sendToTarget();
          return;
          IAPLib.close();
          return;
          IAPLib.close();
        } while (IAPLib.mHndUI == null);
        IAPLib.mHndUI.obtainMessage(1137, paramAnonymousMessage.obj).sendToTarget();
        return;
        IAPLib.close();
      } while (IAPLib.mHndUI == null);
      IAPLib.mHndUI.obtainMessage(1135, paramAnonymousMessage.obj).sendToTarget();
    }
  };
  private static String mOCBCardUpdateType;
  private static String mOCBPoint;
  private static boolean mOCBPointQueryCheck;
  private static int mOCB_Use;
  private static boolean mOTPAgreeFlag;
  public static String mOTPNumber;
  protected static String mOcbPWNumber;
  protected static String mProductID;
  protected static String mProductName;
  private static SellerInfoConfirm mSellerInfoConfirm;
  private static String mSmsAuthKey;
  private static String mSmsAuthNumberKey;
  private static int mTCash_Use;
  protected static String mTID;
  protected static boolean mTStorePwdCheck;
  private static String mUpdateType;
  protected static Boolean mUseBPProtol;
  protected static Boolean mUseTCash;
  
  static
  {
    mContext = null;
    mBase = null;
    mClientListener = null;
    mProductID = null;
    mProductName = null;
    mTID = null;
    mBPInfo = null;
    mUseTCash = Boolean.valueOf(false);
    mUseBPProtol = Boolean.valueOf(false);
    mMdn = null;
    mKorTelecom = 0;
    mEncJuminNumber = null;
    mOcbPWNumber = null;
    mTStorePwdCheck = false;
    mDialogType = 100;
    mOTPAgreeFlag = false;
    mIsOTPAuth = false;
    mIsOTPSuccess = false;
    mLimitExcess = false;
    mOTPNumber = null;
    mSmsAuthNumberKey = null;
    mSmsAuthKey = null;
    mOCBPointQueryCheck = false;
    mOCBPoint = "";
    mCultureCashQueryFlag = false;
    mCultureLandPoint = "";
    mCultureLandUserId = null;
    mOCB_Use = 0;
    mDotori_Use = 0;
    mCulture_Use = 0;
    mTCash_Use = 0;
    mDotoriQueryFlag = false;
    mDotoriAuthNumber = "";
    mOCBCardUpdateType = "";
    mUpdateType = null;
  }
  
  protected static void SendImeiAuthReq()
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.CalliapSendImeiAuthReq(mKorTelecom, mMdn);
  }
  
  protected static void close()
  {
    if (mBase != null) {
      mBase.StopService();
    }
    IAPBase.close();
  }
  
  public static boolean getCultureCashQueryInfo()
  {
    return mCultureCashQueryFlag;
  }
  
  public static String getCultureLandCashPoint()
  {
    return mCultureLandPoint;
  }
  
  protected static int getDialogType()
  {
    return mDialogType;
  }
  
  public static String getDotoriSmsNumber()
  {
    return mDotoriAuthNumber;
  }
  
  public static String getEncJuminNumber()
  {
    return mEncJuminNumber;
  }
  
  public static boolean getIsOTPAuth()
  {
    return mIsOTPAuth;
  }
  
  public static boolean getLimitExcess()
  {
    return mLimitExcess;
  }
  
  protected static Handler getNetHandler()
  {
    return mNetworkMessageHandler;
  }
  
  public static String getOCBPoint()
  {
    return mOCBPoint;
  }
  
  public static boolean getOCBPointInfo()
  {
    return mOCBPointQueryCheck;
  }
  
  public static boolean getOTPAgree()
  {
    return mOTPAgreeFlag;
  }
  
  public static String getOTPNumber()
  {
    return mOTPNumber;
  }
  
  public static boolean getOTPPurchaseSuccess()
  {
    return mIsOTPSuccess;
  }
  
  public static String getOcbCardUpdateType()
  {
    return mOCBCardUpdateType;
  }
  
  public static SellerInfoConfirm getSellerInfo()
  {
    return mSellerInfoConfirm;
  }
  
  public static String getSmsAuthKey()
  {
    return mSmsAuthKey;
  }
  
  public static String getSmsAuthNumberKey()
  {
    return mSmsAuthNumberKey;
  }
  
  protected static Handler getUIHandler()
  {
    return mHndUI;
  }
  
  protected static void init(Context paramContext, Handler paramHandler, IAPLibSetting paramIAPLibSetting, String paramString, int paramInt)
  {
    mContext = paramContext;
    mHndUI = paramHandler;
    mMdn = paramString;
    mKorTelecom = paramInt;
    mUseBPProtol = Boolean.valueOf(false);
    mClientListener = paramIAPLibSetting.ClientListener;
    mBase = new IAPBase(mContext, mNetworkMessageHandler, paramIAPLibSetting, paramString);
  }
  
  protected static void resendItemInfo(String paramString1, String paramString2)
  {
    resendItemInfo(paramString1, paramString2, null, null);
  }
  
  protected static void resendItemInfo(String paramString1, String paramString2, String paramString3)
  {
    resendItemInfo(paramString1, paramString2, paramString3, null);
  }
  
  protected static void resendItemInfo(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    mProductID = paramString1;
    mProductName = paramString2;
    if (paramString3 != null) {
      mTID = paramString3;
    }
    mBPInfo = paramString4;
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.reItemInfo(mKorTelecom, mMdn, paramString1, paramString2, mTID, paramString4);
    mLimitExcess = true;
  }
  
  protected static byte[] sendBPData(byte[] paramArrayOfByte)
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    return mBase.sendBPData(paramArrayOfByte, mKorTelecom, mMdn);
  }
  
  protected static void sendCultureLandCashInfoReq(String paramString1, String paramString2)
  {
    mCultureLandUserId = paramString1;
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mBase.CultureLandCashInfo(mKorTelecom, paramString1, paramString2);
  }
  
  protected static void sendDataMemebership()
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.Membership(mKorTelecom, mMdn, mProductID, mProductName, mTID, mBPInfo);
  }
  
  protected static void sendDotoriSmsAuthNumberReq()
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.DotoriSMSAuthNumber(mKorTelecom, mMdn);
  }
  
  protected static void sendDotoriSmsAuthReq(String paramString)
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.DotoriSmsAuth(mKorTelecom, mMdn, paramString);
  }
  
  protected static void sendItemAuth(String paramString)
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.ItemAuth(mKorTelecom, mMdn, paramString);
  }
  
  protected static void sendItemInfo(String paramString1, String paramString2)
  {
    sendItemInfo(paramString1, paramString2, null, null);
  }
  
  protected static void sendItemInfo(String paramString1, String paramString2, String paramString3)
  {
    sendItemInfo(paramString1, paramString2, paramString3, null);
  }
  
  protected static void sendItemInfo(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    mProductID = paramString1;
    mProductName = paramString2;
    mTID = paramString3;
    mBPInfo = paramString4;
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.ItemInfo(mKorTelecom, mMdn, paramString1, paramString2, paramString3, paramString4);
  }
  
  protected static void sendItemPurchse(Boolean paramBoolean)
  {
    mBase.Reset();
    mBase.ItemPurchase(mProductID, mProductName, mTID, mBPInfo, paramBoolean, mUseBPProtol);
  }
  
  protected static void sendItemPurchseByDanal(String paramString1, int paramInt, Boolean paramBoolean, String paramString2)
  {
    mBase.Reset();
    mBase.ItemPurchaseDanal(paramString1, mProductID, mProductName, paramInt, mTID, mBPInfo, paramBoolean, paramString2);
  }
  
  protected static void sendItemQuery(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.ItemQuery(mKorTelecom, mMdn, mProductID, mProductName, mTID, mBPInfo, mCultureLandUserId, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected static void sendItemUse(String paramString)
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.ItemUse(mKorTelecom, mMdn, paramString);
  }
  
  protected static void sendItemWholeAuth()
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.ItemWholeAuth(mKorTelecom, mMdn);
  }
  
  protected static void sendLguSmsAuth(String paramString1, String paramString2)
  {
    mBase.Reset();
    mSmsAuthNumberKey = paramString2;
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.LGUSmsAuthReq(mKorTelecom, paramString2, mOTPNumber);
  }
  
  protected static void sendLguSmsAuthNumber(String paramString)
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.LGUSmsAuthNumberReq(mKorTelecom, mMdn, paramString, mEncJuminNumber);
  }
  
  protected static void sendOCBPointReq(String paramString)
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mBase.OCBPointInfo(mKorTelecom, paramString);
  }
  
  protected static void sendOCBUpdateReq(String paramString1, String paramString2)
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mBase.OCBCardUpdate(mKorTelecom, paramString1, paramString2);
    mUpdateType = paramString1;
  }
  
  protected static void sendOTPAgreeCheck(String paramString)
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.OTPAgreeCheck(mKorTelecom, mMdn, paramString);
  }
  
  protected static void sendPaymentInfo()
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
  }
  
  protected static void sendPurchaseDismiss(String paramString)
  {
    mBase.Reset();
    mKorTelecom = CommonF.getCarrier(mContext);
    mMdn = CommonF.getMDN(mContext, mKorTelecom);
    mBase.PurchaseDismiss(mKorTelecom, mMdn, paramString);
  }
  
  protected static void sendPurchaseDismissCheck(String paramString)
  {
    mBase.Reset();
    mProductID = paramString;
    mKorTelecom = CommonF.getCarrier(mContext);
    mBase.PurchaseDismissCheck(mKorTelecom, paramString);
  }
  
  public static void setCultureCashQueryInfo(boolean paramBoolean)
  {
    mCultureCashQueryFlag = paramBoolean;
  }
  
  public static void setCultureLandCashPoint(String paramString)
  {
    mCultureLandPoint = paramString;
  }
  
  protected static void setDialogType(int paramInt)
  {
    mDialogType = paramInt;
  }
  
  public static void setDotoriSmsNumber(String paramString)
  {
    mDotoriAuthNumber = paramString;
  }
  
  public static void setIsOTPAuth(boolean paramBoolean)
  {
    mIsOTPAuth = paramBoolean;
  }
  
  public static void setLimitExcess(boolean paramBoolean)
  {
    mLimitExcess = paramBoolean;
  }
  
  public static void setOCBPoint(String paramString)
  {
    mOCBPoint = paramString;
  }
  
  public static void setOCBPointInfo(boolean paramBoolean)
  {
    mOCBPointQueryCheck = paramBoolean;
  }
  
  public static void setOTPAgree(boolean paramBoolean)
  {
    mOTPAgreeFlag = paramBoolean;
  }
  
  public static void setOTPNumber(String paramString)
  {
    mOTPNumber = paramString;
    ParserXML.setOTPNumber(paramString);
  }
  
  public static void setOTPPurchaseSuccess(boolean paramBoolean)
  {
    mIsOTPSuccess = paramBoolean;
  }
  
  public static void setOcbCardUpdateType(String paramString)
  {
    mOCBCardUpdateType = paramString;
  }
  
  public static void setPayments(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    mOCB_Use = paramInt1;
    mDotori_Use = paramInt2;
    mCulture_Use = paramInt3;
    mTCash_Use = paramInt4;
  }
  
  public static void setSellerInfo(SellerInfoConfirm paramSellerInfoConfirm)
  {
    mSellerInfoConfirm = paramSellerInfoConfirm;
  }
  
  public static void setSmsAuthKey(String paramString)
  {
    mSmsAuthKey = paramString;
  }
  
  public static void setSmsAuthNumberKey(String paramString)
  {
    mSmsAuthNumberKey = paramString;
  }
  
  protected static void setUIHandler(Handler paramHandler)
  {
    mHndUI = paramHandler;
  }
  
  public static void updateEncJuminNumber(String paramString)
  {
    mEncJuminNumber = paramString;
    mBase.setBaseEncodeJuminNumber(paramString);
  }
  
  public static abstract interface OnClientListener
  {
    public abstract void onDlgAutoPurchaseInfoCancel();
    
    public abstract void onDlgError();
    
    public abstract void onDlgPurchaseCancel();
    
    public abstract void onError(int paramInt1, int paramInt2);
    
    public abstract void onItemAuthInfo(ItemAuthInfo paramItemAuthInfo);
    
    public abstract void onItemPurchaseComplete();
    
    public abstract Boolean onItemQueryComplete();
    
    public abstract void onItemUseQuery(ItemUse paramItemUse);
    
    public abstract void onJoinDialogCancel();
    
    public abstract void onPurchaseDismiss();
    
    public abstract void onWholeQuery(ItemAuth[] paramArrayOfItemAuth);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.IAPLib
 * JD-Core Version:    0.7.0.1
 */