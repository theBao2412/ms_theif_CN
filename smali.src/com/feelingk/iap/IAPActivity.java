package com.feelingk.iap;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import com.feelingk.iap.encryption.CryptoManager;
import com.feelingk.iap.gui.data.PurchaseItem;
import com.feelingk.iap.gui.data.SingletonCounter;
import com.feelingk.iap.gui.parser.ParserXML.ParserAuthResultCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserAutoPurchaseFormResultCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserCultureLandCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserDotoriSmsAuthCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserForeignInputMDNResultCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserIMEIAuthCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserImageResultCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserJoinResultCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserLguSmsAuthCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserOCBCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserOtpCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserPopupDlgResultCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback;
import com.feelingk.iap.gui.parser.ParserXML.ParserYesNoResultCallback;
import com.feelingk.iap.gui.view.ForeignInputMDN;
import com.feelingk.iap.gui.view.PopJuminNumberAuth;
import com.feelingk.iap.gui.view.PopLguSmsAuthDialog;
import com.feelingk.iap.gui.view.PopupAutoPurchaseFormDialog;
import com.feelingk.iap.gui.view.PopupCultureLandLoginDialog;
import com.feelingk.iap.gui.view.PopupDialog;
import com.feelingk.iap.gui.view.PopupDotoriSmsAuth;
import com.feelingk.iap.gui.view.PopupImageDialog;
import com.feelingk.iap.gui.view.PopupImeiAuthDialog;
import com.feelingk.iap.gui.view.PopupJoinDialog;
import com.feelingk.iap.gui.view.PopupOCBDialog;
import com.feelingk.iap.gui.view.PopupOTPDialog;
import com.feelingk.iap.gui.view.PopupYesNoDialog;
import com.feelingk.iap.gui.view.ProgressDialog;
import com.feelingk.iap.gui.view.PurchaseDialog;
import com.feelingk.iap.net.AutoPurchaseDismissCheckConfirm;
import com.feelingk.iap.net.CultureLandCashConfirm;
import com.feelingk.iap.net.ItemInfoConfirm;
import com.feelingk.iap.net.LGUSmsAuthNumberConfirm;
import com.feelingk.iap.net.MsgConfirm;
import com.feelingk.iap.net.OKCashbagPointInfoConfirm;
import com.feelingk.iap.net.PurchaseParam;
import com.feelingk.iap.net.SellerInfoConfirm;
import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.CommonF.LOGGER;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.CommonString.Index;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.Key;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;

public class IAPActivity
  extends Activity
{
  static final String TAG = "IAPActivity";
  private static String decryptPwd;
  private static String dirPath = null;
  private static String encryptPwd;
  public static boolean finalVerFlag = false;
  private static String mLGUSmsAuthNumberKey = null;
  private static String m_strLogFileFolderPath;
  private static String m_strLogFileName;
  public static boolean purchaseDismissFlag = false;
  private String USIM_Check = "USIM Null";
  private ItemInfoConfirm iic = null;
  public boolean juminFlag = false;
  private LGUSmsAuthNumberConfirm lguConfirm = null;
  private PopupAutoPurchaseFormDialog mAutoPurchaseFormDlg = null;
  private PopupCultureLandLoginDialog mCultureLandLoginDlg = null;
  private byte[] mData = null;
  private String mDlgType = null;
  private String mDotoriSmsAuthCheckTime = null;
  private PopupDotoriSmsAuth mDotoriSmsAuthDlg = null;
  private String mEncName = null;
  private String mErrorMessage = "";
  private ForeignInputMDN mForeignInputMDN = null;
  private final Handler mGUIMessageHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      int i = IAPLib.getDialogType();
      CommonF.LOGGER.i("IAPActivity", "[GUI-Handler] mGUIMessageHandler msg.what= " + paramAnonymousMessage.what);
      switch (paramAnonymousMessage.what)
      {
      case 1101: 
      case 1102: 
      case 1103: 
      case 1105: 
      case 1107: 
      case 1108: 
      case 1109: 
      case 1110: 
      case 1111: 
      case 1112: 
      case 1113: 
      case 1114: 
      case 1115: 
      case 1116: 
      case 1118: 
      case 1122: 
      case 1127: 
      case 1129: 
      case 1130: 
      case 1132: 
      case 1133: 
      case 1136: 
      case 1138: 
      default: 
        CommonF.LOGGER.i("IAPActivity", "[GUI Handler] OnError " + paramAnonymousMessage.what);
        CommonF.LOGGER.i("IAPActivity", "dlgType :" + i);
        IAPActivity.this.DismissLoaingProgress();
        if (i != 100)
        {
          IAPActivity.purchaseDismissFlag = false;
          IAPLib.setDialogType(100);
          IAPActivity.this.DismissLoaingProgress();
          IAPActivity.this.DismissPurchaseDialog();
        }
        if ((paramAnonymousMessage.what < 2004) || (paramAnonymousMessage.what > 2007)) {
          break label1354;
        }
      case 1119: 
      case 1131: 
      case 1125: 
      case 1126: 
      case 1128: 
      case 1124: 
      case 1117: 
      case 1121: 
      case 1104: 
      case 1100: 
      case 1106: 
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
                        return;
                      } while (i != 102);
                      IAPActivity.this.DismissLoaingProgress();
                      IAPActivity.this.popupYesNoDlg(CommonString.getString(CommonString.Index.ERROR_USER_CERTI_FAIL_STRING));
                      IAPActivity.this.mYesNoMessage = CommonString.getString(CommonString.Index.ERROR_USER_CERTI_FAIL_STRING);
                      return;
                    } while (i != 102);
                    IAPActivity.this.DismissLoaingProgress();
                    IAPActivity.this.showImeiAuthDlg();
                    IAPLib.setDialogType(118);
                    return;
                  } while (i != 102);
                  IAPActivity.this.mErrorMessage = paramAnonymousMessage.obj.toString();
                  IAPActivity.this.DismissLoaingProgress();
                  IAPLib.setDialogType(116);
                  IAPActivity.this.ShowInfoMessageDialog(116, IAPActivity.this.mErrorMessage);
                  return;
                  IAPActivity.this.lguConfirm = ((LGUSmsAuthNumberConfirm)paramAnonymousMessage.obj);
                  IAPActivity.mLGUSmsAuthNumberKey = IAPActivity.this.lguConfirm.getAuthKey();
                } while (!IAPActivity.mLGUSmsAuthNumberKey.equals("TEST"));
                int j = 0;
                i = 1;
                for (;;)
                {
                  if (i > 20)
                  {
                    IAPLib.setOTPNumber(Integer.toString(j));
                    return;
                  }
                  j = (int)(Math.random() * 900000 + 100000);
                  i += 1;
                }
                IAPActivity.this.DismissLoaingProgress();
                IAPLib.setDialogType(103);
                IAPActivity.this.onPurchasePopupCallback.onPurchaseButtonClick();
                return;
                IAPActivity.this.popupAutoPurchaseFormDlg(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
                IAPLib.setDialogType(108);
                return;
              } while (i != 102);
              IAPActivity.this.DismissLoaingProgress();
              IAPActivity.this.iic = ((ItemInfoConfirm)paramAnonymousMessage.obj);
              IAPActivity.this.mItemInfoConfirm = IAPActivity.this.iic;
              IAPActivity.finalVerFlag = true;
              IAPActivity.this.popupYesNoDlg(CommonString.getString(CommonString.Index.FINAL_VERSION_CHECK_STRING));
              IAPActivity.this.mYesNoMessage = CommonString.getString(CommonString.Index.FINAL_VERSION_CHECK_STRING);
              return;
              IAPActivity.this.DismissLoaingProgress();
              IAPActivity.this.mErrorMessage = paramAnonymousMessage.obj.toString();
              IAPActivity.this.ShowInfoMessageDialog(101, IAPActivity.this.mErrorMessage);
              return;
            } while (i != 102);
            IAPActivity.this.DismissLoaingProgress();
            if (((ItemInfoConfirm)paramAnonymousMessage.obj).getmAutoPurchaseCheck())
            {
              if (CommonF.getCarrier(IAPActivity.this) == 1)
              {
                IAPActivity.this.ShowPurchaseDialog(paramAnonymousMessage.obj);
                IAPLib.setDialogType(103);
                return;
              }
              IAPActivity.this.ShowInfoMessageDialog(101, CommonString.getString(CommonString.Index.ERROR_DLG_AUTO_PURCHASE));
              IAPActivity.this.mErrorMessage = CommonString.getString(CommonString.Index.ERROR_DLG_AUTO_PURCHASE);
              IAPLib.setDialogType(101);
              return;
            }
            IAPActivity.this.ShowPurchaseDialog(paramAnonymousMessage.obj);
            IAPLib.setDialogType(103);
            return;
          } while (i != 103);
          IAPActivity.this.DismissPurchaseDialog();
          IAPActivity.this.ShowLoadingProgressPhurchase_Confirm();
          IAPLib.setDialogType(104);
          return;
        } while (i != 104);
        IAPActivity.this.DismissLoaingProgress();
        paramAnonymousMessage = (MsgConfirm)paramAnonymousMessage.obj;
        try
        {
          IAPActivity.this.mMsgItemInfo = new String(paramAnonymousMessage.getMsg(), "MS949");
          paramAnonymousMessage = IAPActivity.this;
          paramAnonymousMessage.mMsgItemInfo += "\n";
          IAPLib.setDialogType(105);
          IAPActivity.this.ShowInfoMessageDialog(105, IAPActivity.this.mMsgItemInfo);
          return;
        }
        catch (UnsupportedEncodingException paramAnonymousMessage)
        {
          for (;;)
          {
            paramAnonymousMessage.printStackTrace();
          }
        }
      case 1120: 
        IAPActivity.this.DismissLoaingProgress();
        paramAnonymousMessage = (PurchaseParam)paramAnonymousMessage.obj;
        IAPActivity.this.popPurchaseDlg(paramAnonymousMessage.getpId(), paramAnonymousMessage.getpName(), paramAnonymousMessage.getpTid(), paramAnonymousMessage.getpBPInfo());
        return;
      case 1123: 
        paramAnonymousMessage = (MsgConfirm)paramAnonymousMessage.obj;
        try
        {
          IAPActivity.this.mMsgItemInfo = new String(paramAnonymousMessage.getMsg(), "MS949");
          paramAnonymousMessage = IAPActivity.this;
          paramAnonymousMessage.mMsgItemInfo += "\n";
          CommonF.LOGGER.e("IAPActivity", IAPActivity.this.mMsgItemInfo);
          IAPActivity.this.DismissLoaingProgress();
          IAPLib.setDialogType(112);
          IAPActivity.this.ShowInfoMessageDialog(112, IAPActivity.this.mMsgItemInfo);
          return;
        }
        catch (UnsupportedEncodingException paramAnonymousMessage)
        {
          for (;;)
          {
            paramAnonymousMessage.printStackTrace();
          }
        }
      case 1139: 
        IAPActivity.this.DismissLoaingProgress();
        IAPActivity.purchaseDismissFlag = true;
        paramAnonymousMessage = (AutoPurchaseDismissCheckConfirm)paramAnonymousMessage.obj;
        if ((paramAnonymousMessage.getmDismissInfo().equals("Y")) && (Integer.parseInt(paramAnonymousMessage.getmDismissCount()) < 1))
        {
          IAPActivity.this.mYesNoMessage = CommonString.getString(CommonString.Index.DLG_AUTO_PURCHASE_INFO);
          IAPActivity.this.popupYesNoDlg("[" + IAPActivity.this.mPurchaseName + "]" + IAPActivity.this.mYesNoMessage);
          return;
        }
        IAPActivity.this.mYesNoMessage = (CommonString.getString(CommonString.Index.DLG_AUTO_PURCHASE_INFO) + CommonString.getString(CommonString.Index.DLG_AUTO_PURCHASE_INFO2));
        IAPActivity.this.popupYesNoDlg("[" + IAPActivity.this.mPurchaseName + "]" + IAPActivity.this.mYesNoMessage);
        return;
      case 1134: 
        IAPLib.setOCBPoint(((OKCashbagPointInfoConfirm)paramAnonymousMessage.obj).getOCBPointBalance());
        IAPLib.setOCBPointInfo(true);
        IAPActivity.this.DismissLoaingProgress();
        IAPLib.setDialogType(103);
        IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
        return;
      case 1137: 
        IAPActivity.reset("DotoriSMSAuthLog.txt");
        IAPActivity.this.DismissLoaingProgress();
        IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
        IAPLib.setDialogType(103);
        return;
      }
      IAPLib.setCultureLandCashPoint(new String(((CultureLandCashConfirm)paramAnonymousMessage.obj).getCultureLandCashBalance()));
      IAPLib.setCultureCashQueryInfo(true);
      IAPActivity.this.DismissLoaingProgress();
      IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
      IAPLib.setDialogType(103);
      return;
      label1354:
      if (paramAnonymousMessage.what == 2013) {
        IAPActivity.this.DismissLguSMSAuthDlg();
      }
      if (paramAnonymousMessage.what == 2018)
      {
        IAPLib.setOcbCardUpdateType("");
        CommonF.LOGGER.i("IAPActivity", "getOcbCardUpdateType: " + IAPLib.getOcbCardUpdateType());
      }
      if ((paramAnonymousMessage.what == 2021) || (paramAnonymousMessage.what == 2008)) {
        IAPActivity.this.DismissDotoriSmsAuthDialog();
      }
      if (IAPActivity.this.mSmsAuthCheckTime != null)
      {
        IAPActivity.this.mSmsAuthCheckTime = null;
        IAPActivity.this.DismissImeiAuthDlg();
      }
      IAPActivity.this.mErrorMessage = paramAnonymousMessage.obj.toString();
      CommonF.LOGGER.e("IAPActivity", IAPActivity.this.mErrorMessage);
      if ((paramAnonymousMessage.what == 2018) || (paramAnonymousMessage.what == 2019))
      {
        IAPLib.setDialogType(127);
        IAPActivity.this.DismissLoaingProgress();
        IAPActivity.this.ShowInfoMessageDialog(127, IAPActivity.this.mErrorMessage);
        return;
      }
      if (paramAnonymousMessage.what == 2020)
      {
        IAPLib.setDialogType(128);
        IAPActivity.this.DismissLoaingProgress();
        IAPActivity.this.ShowInfoMessageDialog(128, IAPActivity.this.mErrorMessage);
        return;
      }
      if (paramAnonymousMessage.what == 2022)
      {
        IAPLib.setDialogType(130);
        IAPActivity.this.DismissLoaingProgress();
        IAPActivity.this.ShowInfoMessageDialog(130, IAPActivity.this.mErrorMessage);
        return;
      }
      IAPLib.setDialogType(101);
      IAPActivity.this.DismissLoaingProgress();
      IAPActivity.this.ShowInfoMessageDialog(101, IAPActivity.this.mErrorMessage);
    }
  };
  private PopupImageDialog mImageDlg = null;
  private PopupImeiAuthDialog mImeiAuthDlg = null;
  private ItemInfoConfirm mItemInfoConfirm;
  private PopupJoinDialog mJoinDlg = null;
  private PopJuminNumberAuth mJuminAuth = null;
  private PopLguSmsAuthDialog mLguSmsDlg = null;
  private String mMsgItemInfo = null;
  private PopupOCBDialog mOCBDlg = null;
  private PopupOTPDialog mOtpDlg = null;
  private PopupDialog mPopupDlg = null;
  private ProgressDialog mProgressDlg = null;
  private String mPurchaseBPInfo = null;
  private PurchaseDialog mPurchaseDlg = null;
  private String mPurchaseID = null;
  private int mPurchaseItemWorkFlow = 0;
  private String mPurchaseName = null;
  private int mRotaion = -1;
  private Boolean mSetBPProtocol = Boolean.valueOf(false);
  private Boolean mSetTmpBPProtocol = Boolean.valueOf(false);
  private IAPLibSetting mSetting = null;
  private String mSmsAuthCheckTime = null;
  private String mStrNotExistPermissionList = "";
  private boolean mTabDevice = false;
  private boolean mUseTCash = false;
  public boolean mUsimCheckFlag = false;
  private int mUsimPurchaseItemWorkFlow = 0;
  private PopupYesNoDialog mYesNoDlg = null;
  private String mYesNoMessage = "";
  private String m_Tid = null;
  private String m_encBpInfo = null;
  private int m_phoneUSIMState = 10;
  private TelephonyManager m_telephonyManager = null;
  View.OnClickListener onAlertDialogClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.DismissInfoMessageDialog();
      CommonF.LOGGER.i("IAPActivity", "DlgType" + IAPLib.getDialogType());
      if (IAPLib.getDialogType() == 103)
      {
        IAPActivity.this.DismissInfoMessageDialog();
        paramAnonymousView = new Intent("android.intent.action.VIEW", Uri.parse("http://helpdesk.nate.com/userinfo/exMemberInfo.asp?pgcode=my_phone"));
        IAPActivity.this.startActivity(paramAnonymousView);
        IAPActivity.this.DismissPurchaseDialog();
        IAPLib.setDialogType(125);
      }
      do
      {
        return;
        if (IAPLib.getDialogType() == 126)
        {
          IAPActivity.this.DismissInfoMessageDialog();
          IAPLib.setDialogType(102);
          IAPActivity.this.ShowLoadingProgress();
          IAPLib.sendOCBUpdateReq("D", IAPActivity.this.mItemInfoConfirm.getmOCBCardNum());
          return;
        }
        if ((IAPLib.getDialogType() == 127) || (IAPLib.getDialogType() == 128) || (IAPLib.getDialogType() == 130))
        {
          IAPLib.setDialogType(103);
          IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
          return;
        }
      } while (IAPLib.getDialogType() != 114);
      int j = 0;
      paramAnonymousView = IAPActivity.this.getPackageManager().getInstalledApplications(0);
      int k = paramAnonymousView.size();
      int i = 0;
      for (;;)
      {
        if (i >= k)
        {
          if (j == 0) {
            break;
          }
          paramAnonymousView = new Intent();
          paramAnonymousView.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
          IAPActivity.this.startActivity(paramAnonymousView);
          return;
        }
        if (((ApplicationInfo)paramAnonymousView.get(i)).packageName.indexOf("com.skt.skaf.A000Z00040") == 0)
        {
          j = 1;
          CommonF.LOGGER.i("IAPActivity", "티스토어 설치여부: " + true);
        }
        i += 1;
      }
      IAPActivity.this.DismissInfoMessageDialog();
    }
  };
  private ParserXML.ParserAutoPurchaseFormResultCallback onAutoPurchaseFormResultCallback = new ParserXML.ParserAutoPurchaseFormResultCallback()
  {
    public void onAutoPurchaseFormDialogButtonClick(boolean paramAnonymousBoolean)
    {
      IAPActivity.this.DismissAutoPurchaseFormDialog();
      if (paramAnonymousBoolean) {
        IAPActivity.this.mItemInfoConfirm.setmAfterAutoPurchaseInfoAgree(true);
      }
      for (;;)
      {
        IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
        IAPLib.setDialogType(103);
        return;
        IAPActivity.this.mItemInfoConfirm.setmAfterAutoPurchaseInfoAgree(false);
      }
    }
    
    public void onAutoPurchaseFormDialogCancelButtonClick()
    {
      IAPActivity.this.DismissAutoPurchaseFormDialog();
      IAPActivity.this.DismissPurchaseDialog();
      IAPActivity.this.mPurchaseItemWorkFlow = 0;
      IAPActivity.this.mSetting.ClientListener.onDlgPurchaseCancel();
      IAPLib.setDialogType(100);
    }
  };
  View.OnClickListener onConfirmInfoListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if ((IAPLib.getIsOTPAuth()) && (IAPLib.getOTPAgree()))
      {
        IAPLib.sendOTPAgreeCheck("Y");
        IAPActivity.reset("TstoreOTPLog.txt");
      }
      IAPLib.getNetHandler().obtainMessage(1103).sendToTarget();
      paramAnonymousView = IAPActivity.this;
      IAPActivity localIAPActivity = IAPActivity.this;
      Boolean localBoolean = Boolean.valueOf(false);
      localIAPActivity.mSetBPProtocol = localBoolean;
      paramAnonymousView.mSetTmpBPProtocol = localBoolean;
      IAPActivity.this.mUseTCash = false;
      IAPActivity.this.DismissInfoMessageDialog();
      IAPLib.setDialogType(100);
    }
  };
  public ParserXML.ParserCultureLandCallback onCultureLandCallback = new ParserXML.ParserCultureLandCallback()
  {
    public void onCultureLandButtonClick(String paramAnonymousString1, String paramAnonymousString2)
    {
      CommonF.LOGGER.i("IAPActivity", "onCultureLandButtonClick Click!!");
      IAPActivity.this.DismissCultureLandLoginDialog();
      IAPActivity.this.ShowLoadingProgress();
      IAPLib.setDialogType(102);
      IAPLib.sendCultureLandCashInfoReq(paramAnonymousString1, paramAnonymousString2);
    }
    
    public void onCultureLandCancelButtonClick()
    {
      CommonF.LOGGER.i("IAPActivity", "onCultureLandCancelButtonClick Click!!");
      IAPLib.setDialogType(100);
      IAPActivity.this.DismissCultureLandLoginDialog();
      IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
      IAPLib.setDialogType(103);
    }
  };
  View.OnClickListener onCultureLandLoginListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.mCultureLandLoginDlg.ClosePopupCultureLandLoginDialog();
    }
  };
  public ParserXML.ParserDotoriSmsAuthCallback onDotoriSmsAuthCallback = new ParserXML.ParserDotoriSmsAuthCallback()
  {
    public void onDotoriSmsAuthCancelButtonClick()
    {
      CommonF.LOGGER.i("IAPActivity", "onDotoriSmsAuthCancelButtonClick Click!!");
      IAPActivity.this.DismissDotoriSmsAuthDialog();
      IAPActivity.this.mDotoriSmsAuthCheckTime = null;
      IAPLib.setDialogType(103);
      IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
    }
    
    public void onDotoriSmsAuthOKButtonClick()
    {
      CommonF.LOGGER.i("IAPActivity", "onDotoriSmsAuthOKButtonClick Click!!");
      IAPLib.setDialogType(100);
      IAPActivity.this.DismissDotoriSmsAuthDialog();
      IAPActivity.this.ShowLoadingProgress();
      IAPLib.setDialogType(102);
      IAPLib.sendDotoriSmsAuthReq(IAPLib.getDotoriSmsNumber());
      IAPActivity.this.mDotoriSmsAuthCheckTime = null;
    }
    
    public void onDotoriSmsAuthSMSReceiveButtonClick()
    {
      CommonF.LOGGER.i("IAPActivity", "onDotoriSmsAuthSMSReceiveButtonClick Click!!");
      long l = System.currentTimeMillis();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
      String str1 = localSimpleDateFormat.format(new Date(l));
      String str2 = IAPActivity.this.mDotoriSmsAuthCheckTime;
      CommonF.LOGGER.i("IAPActivity", "currTime: " + str1);
      CommonF.LOGGER.i("IAPActivity", "oldTime: " + str2);
      if ((IAPActivity.this.mDotoriSmsAuthCheckTime != null) && (CommonF.getTimeDifference(str2, str1) < 60L))
      {
        IAPActivity.this.ShowInfoMessageDialog(119, CommonString.getString(CommonString.Index.DOTORI_AUTH_SMS_SEND_MESSAGE_ERROR_STRING));
        return;
      }
      IAPLib.sendDotoriSmsAuthNumberReq();
      IAPActivity.this.ShowInfoMessageDialog(119, CommonString.getString(CommonString.Index.DOTORI_AUTH_SMS_SEND_MESSAGE_STRING));
      IAPActivity.this.mDotoriSmsAuthCheckTime = localSimpleDateFormat.format(new Date(l));
    }
  };
  View.OnClickListener onDotoriSmsAuthListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.mDotoriSmsAuthDlg.ClosePopupDotoriSMSAuthDialog();
    }
  };
  private ParserXML.ParserForeignInputMDNResultCallback onForeignInputMDNCallback = new ParserXML.ParserForeignInputMDNResultCallback()
  {
    public void onForeignInputMDNOKButtonClick(int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
    {
      IAPActivity.this.DismissForeignInputMDNDialog();
      CommonF.setCarrier(IAPActivity.this, paramAnonymousInt);
      CommonF.setMDN(paramAnonymousString1);
      try
      {
        paramAnonymousString1 = CryptoManager.encrypt(paramAnonymousString2);
        if (paramAnonymousString1 != null) {
          IAPLib.getNetHandler().obtainMessage(1110, 0, 0, paramAnonymousString1).sendToTarget();
        }
        IAPLib.setDialogType(100);
        if (paramAnonymousString1 != null) {
          new Handler().postDelayed(new Runnable()
          {
            public void run()
            {
              CommonF.LOGGER.i("IAPActivity", " # Auto Runnale Mode = " + IAPActivity.this.mPurchaseItemWorkFlow);
              if (IAPActivity.this.mPurchaseItemWorkFlow == 2) {
                IAPActivity.this.popPurchaseDlg(IAPActivity.this.mPurchaseID, IAPActivity.this.mPurchaseName, IAPActivity.this.m_Tid, IAPActivity.this.mPurchaseBPInfo);
              }
              for (;;)
              {
                IAPActivity.this.mPurchaseItemWorkFlow = 0;
                return;
                if (IAPActivity.this.mPurchaseItemWorkFlow == 4) {
                  IAPActivity.this.sendItemAuth(IAPActivity.this.mPurchaseID);
                } else if (IAPActivity.this.mPurchaseItemWorkFlow == 5) {
                  IAPActivity.this.sendItemUse(IAPActivity.this.mPurchaseID);
                } else if (IAPActivity.this.mPurchaseItemWorkFlow == 3) {
                  IAPActivity.this.sendItemWholeAuth();
                } else {
                  CommonF.LOGGER.e("IAPActivity", "# Auto Runnable Purchase Fail ");
                }
              }
            }
          }, 300L);
        }
        return;
      }
      catch (Exception paramAnonymousString2)
      {
        for (;;)
        {
          paramAnonymousString1 = null;
          paramAnonymousString2.printStackTrace();
        }
      }
    }
  };
  View.OnClickListener onImageConfirmInfoListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.mImageDlg.ClosePopupImageDialog();
    }
  };
  private ParserXML.ParserImageResultCallback onImageResultCallback = new ParserXML.ParserImageResultCallback()
  {
    public void onImageDialogButtonClick()
    {
      IAPActivity.this.DismissImageDialog();
    }
  };
  public ParserXML.ParserIMEIAuthCallback onImeiAuthCallback = new ParserXML.ParserIMEIAuthCallback()
  {
    public void onIMEIAuthDialogCancelButtonClick()
    {
      IAPActivity.this.DismissImeiAuthDlg();
      IAPActivity.this.mPurchaseItemWorkFlow = 0;
      IAPActivity.this.mSetting.ClientListener.onDlgPurchaseCancel();
      IAPLib.setDialogType(100);
    }
    
    public void onIMEIAuthDialogOKButtonClick()
    {
      CommonF.LOGGER.i("IAPActivity", "onIMEIAuthDialogOKButtonClick");
      IAPActivity.this.DismissImeiAuthDlg();
      IAPActivity.this.ShowLoadingProgress();
      IAPLib.setDialogType(102);
      IAPLib.SendImeiAuthReq();
    }
  };
  View.OnClickListener onInfoCancelListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPLib.getNetHandler().obtainMessage(1102).sendToTarget();
      IAPActivity.this.DismissInfoMessageDialog();
      if ((IAPLib.getDialogType() != 107) && (IAPLib.getDialogType() != 103)) {
        IAPLib.setDialogType(100);
      }
      paramAnonymousView = IAPActivity.this;
      IAPActivity localIAPActivity = IAPActivity.this;
      Boolean localBoolean = Boolean.valueOf(false);
      localIAPActivity.mSetBPProtocol = localBoolean;
      paramAnonymousView.mSetTmpBPProtocol = localBoolean;
      IAPActivity.this.mUseTCash = false;
      paramAnonymousView = IAPActivity.this.mSetting.ClientListener;
      if (IAPActivity.purchaseDismissFlag)
      {
        IAPActivity.purchaseDismissFlag = false;
        paramAnonymousView.onPurchaseDismiss();
      }
      while ((IAPLib.getDialogType() == 107) || (IAPLib.getDialogType() == 103)) {
        return;
      }
      paramAnonymousView.onDlgError();
    }
  };
  View.OnClickListener onJAutoPurchaseFormInfoListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.mAutoPurchaseFormDlg.ClosePopupAutoPurchaseFormDialog();
    }
  };
  View.OnClickListener onJoinInfoListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.mJoinDlg.ClosePopupJoinDialog();
    }
  };
  private ParserXML.ParserJoinResultCallback onJoinResultCallback = new ParserXML.ParserJoinResultCallback()
  {
    public void onJoinDialogCancelButtonClick()
    {
      IAPLib.setDialogType(100);
      IAPActivity.this.DismissJoinDialog();
      IAPActivity.this.mPurchaseItemWorkFlow = 0;
      IAPActivity.this.mSetting.ClientListener.onJoinDialogCancel();
    }
    
    public void onJoinDialogOKButtonClick(String paramAnonymousString)
    {
      if (paramAnonymousString.equals("join"))
      {
        IAPActivity.this.DismissJoinDialog();
        IAPActivity.this.ShowLoadingProgress();
        IAPLib.setDialogType(102);
        IAPLib.sendDataMemebership();
        return;
      }
      IAPActivity.this.ShowInfoMessageDialog(107, "이용약관 동의에\n체크 해 주시길 바랍니다.");
    }
    
    public void onJoinFormDialogPopupClick(int paramAnonymousInt)
    {
      if (paramAnonymousInt == 1)
      {
        localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://m.tstore.co.kr/userpoc/mobile/policy.html"));
        IAPActivity.this.startActivity(localIntent);
      }
      do
      {
        return;
        if (paramAnonymousInt == 2)
        {
          localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://m.tstore.co.kr/userpoc/mobile/cashInfo.html"));
          IAPActivity.this.startActivity(localIntent);
          return;
        }
      } while (paramAnonymousInt != 3);
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://m.tstore.co.kr/userpoc/mobile/information.html"));
      IAPActivity.this.startActivity(localIntent);
    }
  };
  private ParserXML.ParserAuthResultCallback onJuminDialogPopupCallback = new ParserXML.ParserAuthResultCallback()
  {
    public void onAuthDialogCancelButtonClick()
    {
      IAPActivity.this.DismissJuminAuthDialog();
      IAPLib.setDialogType(103);
      IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
    }
    
    public void onAuthDialogOKButtonClick(String paramAnonymousString1, String paramAnonymousString2)
    {
      paramAnonymousString1 = paramAnonymousString1 + paramAnonymousString2;
      try
      {
        paramAnonymousString1 = CryptoManager.encrypt(paramAnonymousString1);
        if (paramAnonymousString1 != null) {
          IAPLib.getNetHandler().obtainMessage(1110, 0, 0, paramAnonymousString1).sendToTarget();
        }
        IAPLib.setDialogType(100);
        IAPActivity.this.DismissJuminAuthDialog();
        if (paramAnonymousString1 != null) {
          new Handler().postDelayed(new Runnable()
          {
            public void run()
            {
              IAPActivity.this.billingLockCheck();
            }
          }, 300L);
        }
        return;
      }
      catch (Exception paramAnonymousString2)
      {
        for (;;)
        {
          paramAnonymousString1 = null;
          paramAnonymousString2.printStackTrace();
        }
      }
    }
  };
  View.OnClickListener onLGUSMSAuthInfoListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.DismissInfoMessageDialog();
    }
  };
  View.OnClickListener onLGUSMSAuthListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.mLguSmsDlg.ClosePopupLguSMSAuthDialog();
    }
  };
  public ParserXML.ParserLguSmsAuthCallback onLguSmsCallback = new ParserXML.ParserLguSmsAuthCallback()
  {
    public void onEnterTstore()
    {
      Object localObject1 = null;
      try
      {
        localObject4 = IAPActivity.this.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
        localObject1 = localObject4;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        for (;;)
        {
          Object localObject4;
          int i;
          byte[] arrayOfByte;
          localNameNotFoundException2.printStackTrace();
        }
      }
      localObject4 = ((PackageInfo)localObject1).versionName;
      i = ((PackageInfo)localObject1).versionCode;
      CommonF.LOGGER.i("IAPActivity", "application versionName : " + (String)localObject4);
      CommonF.LOGGER.i("IAPActivity", "application versionCode : " + i);
      arrayOfByte = (byte[])null;
      localObject4 = arrayOfByte;
      Object localObject6 = arrayOfByte;
      for (;;)
      {
        try
        {
          localFileInputStream = IAPActivity.this.createPackageContext("com.skt.skaf.A000Z00040", 2).openFileInput("lockInfo.txt");
          localObject1 = arrayOfByte;
          localObject4 = arrayOfByte;
          localObject6 = arrayOfByte;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException1)
        {
          FileInputStream localFileInputStream;
          Object localObject5;
          localNameNotFoundException1.printStackTrace();
          Object localObject2 = localObject5;
          continue;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          localFileNotFoundException.printStackTrace();
          Object localObject3 = localObject6;
          continue;
          localObject3 = new Intent();
          ((Intent)localObject3).setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
          IAPActivity.this.startActivity((Intent)localObject3);
        }
        try
        {
          arrayOfByte = new byte[localFileInputStream.available()];
          localObject1 = arrayOfByte;
          localObject4 = arrayOfByte;
          localObject6 = arrayOfByte;
          if (localFileInputStream.read(arrayOfByte) == -1)
          {
            localObject1 = arrayOfByte;
            localObject4 = arrayOfByte;
            localObject6 = arrayOfByte;
            localFileInputStream.close();
            localObject1 = arrayOfByte;
          }
        }
        catch (IOException localIOException)
        {
          localObject5 = localObject1;
          localObject6 = localObject1;
          localIOException.printStackTrace();
        }
      }
      if ((localObject1 != null) && (i >= 19))
      {
        localObject1 = new Intent();
        ((Intent)localObject1).addFlags(536870912);
        ((Intent)localObject1).setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
        ((Intent)localObject1).setAction("COLLAB_ACTION");
        ((Intent)localObject1).putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
        ((Intent)localObject1).putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
        IAPActivity.this.startActivity((Intent)localObject1);
        return;
      }
    }
    
    public void onErrorPopup()
    {
      String str = IAPActivity.this.mSmsAuthCheckTime;
      str = str.substring(0, 4) + "-" + str.substring(4, 6) + "-" + str.substring(6, 8) + " " + str.substring(8, 10) + ":" + str.substring(10, 12) + ":" + str.substring(12, 14);
      IAPActivity.this.ShowInfoMessageDialog(117, CommonString.getString(CommonString.Index.ERROR_SMS_NUMBER_AUTH_STRING) + "(" + CommonString.getString(CommonString.Index.LAST_REQUEST) + " " + str + ")");
    }
    
    public String onGetLguSmsAuthTime()
    {
      return IAPActivity.this.mSmsAuthCheckTime;
    }
    
    public void onLguSmsAuthCancer()
    {
      CommonF.LOGGER.i("IAPActivity", "onLguSmsAuthCancerButtonClick");
      IAPLib.getNetHandler().obtainMessage(1102).sendToTarget();
      IAPLib.setOTPNumber(null);
      IAPActivity.this.DismissLguSMSAuthDlg();
      IAPLib.setDialogType(100);
      IAPActivity localIAPActivity1 = IAPActivity.this;
      IAPActivity localIAPActivity2 = IAPActivity.this;
      Boolean localBoolean = Boolean.valueOf(false);
      localIAPActivity2.mSetBPProtocol = localBoolean;
      localIAPActivity1.mSetTmpBPProtocol = localBoolean;
      IAPActivity.this.mUseTCash = false;
      IAPActivity.this.mSmsAuthCheckTime = null;
      IAPActivity.this.mSetting.ClientListener.onDlgPurchaseCancel();
    }
    
    public void onLguSmsAuthNumberReq()
    {
      IAPLib.sendLguSmsAuthNumber(IAPActivity.this.mPurchaseID);
    }
    
    public void onLguSmsAuthOK()
    {
      if (IAPActivity.mLGUSmsAuthNumberKey != null)
      {
        IAPActivity.this.DismissLguSMSAuthDlg();
        IAPActivity.this.ShowLoadingProgressPhurchase_Confirm();
        IAPLib.setDialogType(102);
        IAPLib.sendLguSmsAuth(IAPActivity.this.mPurchaseID, IAPActivity.mLGUSmsAuthNumberKey);
        return;
      }
      IAPActivity.this.DismissLguSMSAuthDlg();
      IAPActivity.this.ShowInfoMessageDialog(101, CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      IAPLib.setDialogType(101);
    }
    
    public void onSetLguSmsAuthTime(boolean paramAnonymousBoolean)
    {
      if (paramAnonymousBoolean)
      {
        long l = System.currentTimeMillis();
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        IAPActivity.this.mSmsAuthCheckTime = localSimpleDateFormat.format(new Date(l));
        CommonF.LOGGER.i("IAPActivity", "smsAuthTimeCheck: " + IAPActivity.this.mSmsAuthCheckTime);
      }
    }
    
    public void onTstoreLockError(String paramAnonymousString)
    {
      IAPActivity.this.ShowInfoMessageDialog(119, paramAnonymousString);
    }
  };
  View.OnClickListener onLimit_ExcessDlgListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.DismissInfoMessageDialog();
      IAPActivity.this.ShowLoadingProgress();
      IAPLib.setDialogType(102);
      IAPLib.setLimitExcess(true);
      IAPLib.resendItemInfo(IAPActivity.this.mPurchaseID, IAPActivity.this.mEncName, IAPActivity.this.m_Tid, IAPActivity.this.m_encBpInfo);
    }
  };
  View.OnClickListener onOCBRegListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.mOCBDlg.ClosePopupOCBDialog();
    }
  };
  public ParserXML.ParserOCBCallback onOcbCallback = new ParserXML.ParserOCBCallback()
  {
    public void onOCBPWDCancelButtonClick()
    {
      CommonF.LOGGER.i("IAPActivity", "onOCBPWDCancelButtonClick Click!!");
      IAPLib.setDialogType(100);
      IAPActivity.this.DismissOCBRegDialog();
      IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
      IAPLib.setDialogType(103);
    }
    
    public void onOCBPWDOKButtonClick(String paramAnonymousString)
    {
      CommonF.LOGGER.i("IAPActivity", "onOCBPWDOKButtonClick Click!!");
      IAPLib.sendOCBPointReq(paramAnonymousString);
      IAPActivity.this.DismissOCBPWDDialog();
      IAPActivity.this.ShowLoadingProgress();
      IAPLib.setDialogType(102);
    }
    
    public void onOCBRegistrationButtonClick(String paramAnonymousString)
    {
      CommonF.LOGGER.i("IAPActivity", "onOCBRegistrationButtonClick Click!!");
      IAPLib.sendOCBUpdateReq(IAPLib.getOcbCardUpdateType(), paramAnonymousString);
      IAPActivity.this.DismissOCBRegDialog();
      IAPActivity.this.ShowLoadingProgress();
      IAPLib.setDialogType(102);
    }
    
    public void onOCBRegistrationCancelClick()
    {
      IAPLib.setDialogType(100);
      IAPActivity.this.DismissOCBRegDialog();
      IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
      IAPLib.setDialogType(103);
    }
  };
  public ParserXML.ParserOtpCallback onOtpCallback = new ParserXML.ParserOtpCallback()
  {
    public void onOtpDialogCancelButtonClick()
    {
      CommonF.LOGGER.i("IAPActivity", "onOtpDialogCancelButtonClick");
      IAPLib.getNetHandler().obtainMessage(1102).sendToTarget();
      IAPActivity.this.DismissOtpDlg();
      IAPLib.setDialogType(100);
      IAPActivity localIAPActivity1 = IAPActivity.this;
      IAPActivity localIAPActivity2 = IAPActivity.this;
      Boolean localBoolean = Boolean.valueOf(false);
      localIAPActivity2.mSetBPProtocol = localBoolean;
      localIAPActivity1.mSetTmpBPProtocol = localBoolean;
      IAPActivity.this.mUseTCash = false;
      IAPActivity.this.mSetting.ClientListener.onDlgPurchaseCancel();
    }
    
    public void onOtpDialogOK()
    {
      CommonF.LOGGER.i("IAPActivity", "onOtpDialogOKButtonClick");
      IAPActivity.this.DismissOtpDlg();
      IAPLib.setIsOTPAuth(true);
      IAPLib.setDialogType(103);
      IAPActivity.this.onPurchasePopupCallback.onPurchaseButtonClick();
    }
    
    public void onOtpErrorPopup()
    {
      IAPActivity.this.ShowInfoMessageDialog(119, "T store 앱의 업그레이드가 필요합니다. 업그레이드 하시겠습니까?");
    }
    
    public void onOtpTstoreButtonClick()
    {
      IAPActivity.this.ShowInfoMessageDialog(119, CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
    }
  };
  View.OnClickListener onOtpInfoListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.mOtpDlg.ClosePopupOtpDialog();
    }
  };
  private ParserXML.ParserPopupDlgResultCallback onParserPopupDlgResultCallback = new ParserXML.ParserPopupDlgResultCallback()
  {
    public void onDlgButtonClick()
    {
      IAPLib.OnClientListener localOnClientListener;
      if ((IAPLib.getDialogType() != 107) && (IAPLib.getDialogType() != 103))
      {
        IAPActivity.this.mPurchaseItemWorkFlow = 0;
        localOnClientListener = IAPActivity.this.mSetting.ClientListener;
        if (IAPActivity.purchaseDismissFlag)
        {
          IAPActivity.purchaseDismissFlag = false;
          IAPLib.setDialogType(100);
          localOnClientListener.onPurchaseDismiss();
        }
      }
      else
      {
        return;
      }
      if ((IAPLib.getDialogType() == 117) || (IAPLib.getDialogType() == 114) || (IAPLib.getDialogType() == 123))
      {
        IAPActivity.this.DismissInfoMessageDialog();
        return;
      }
      IAPLib.setDialogType(100);
      localOnClientListener.onDlgError();
    }
    
    public void onErrorDlgBtnClick()
    {
      if (IAPLib.getDialogType() == 127) {}
      IAPLib.setDialogType(103);
      IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
    }
  };
  private ParserXML.ParserYesNoResultCallback onPopupCallback = new ParserXML.ParserYesNoResultCallback()
  {
    public void onYesNoDialogCancelButtonClick()
    {
      CommonF.LOGGER.i("IAPActivity", IAPLib.getDialogType());
      IAPActivity.this.DismissYesNoDialog();
      if (IAPLib.getDialogType() == 129)
      {
        IAPLib.setDialogType(103);
        IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
        return;
      }
      IAPLib.setDialogType(100);
      IAPActivity.this.mPurchaseItemWorkFlow = 0;
      IAPLib.OnClientListener localOnClientListener = IAPActivity.this.mSetting.ClientListener;
      if (IAPActivity.purchaseDismissFlag)
      {
        localOnClientListener.onDlgAutoPurchaseInfoCancel();
        return;
      }
      localOnClientListener.onDlgPurchaseCancel();
    }
    
    public void onYesNoDialogOKButtonClick()
    {
      CommonF.LOGGER.i("IAPActivity", "DlgType: " + IAPLib.getDialogType());
      IAPActivity.this.DismissYesNoDialog();
      if (IAPLib.getDialogType() == 129)
      {
        IAPLib.setDialogType(102);
        IAPActivity.this.ShowLoadingProgress();
        IAPLib.sendOCBUpdateReq("D", IAPActivity.this.mItemInfoConfirm.getmOCBCardNum());
        return;
      }
      if (IAPActivity.purchaseDismissFlag)
      {
        IAPActivity.this.ShowLoadingProgress();
        IAPLib.sendPurchaseDismiss(IAPActivity.this.mPurchaseID);
        return;
      }
      if (IAPActivity.finalVerFlag)
      {
        IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
        IAPLib.setDialogType(103);
        return;
      }
      IAPActivity.this.popupJoinDlg();
      IAPLib.setDialogType(107);
    }
  };
  DialogInterface.OnCancelListener onProgressCancelListerner = new DialogInterface.OnCancelListener()
  {
    public void onCancel(DialogInterface paramAnonymousDialogInterface)
    {
      IAPLib.getNetHandler().obtainMessage(1102).sendToTarget();
      IAPActivity.this.DismissLoaingProgress();
      IAPLib.setDialogType(100);
      IAPActivity.this.mUseTCash = false;
      paramAnonymousDialogInterface = IAPActivity.this;
      IAPActivity localIAPActivity = IAPActivity.this;
      Boolean localBoolean = Boolean.valueOf(false);
      localIAPActivity.mSetBPProtocol = localBoolean;
      paramAnonymousDialogInterface.mSetTmpBPProtocol = localBoolean;
      IAPActivity.this.mSetting.ClientListener.onDlgPurchaseCancel();
    }
  };
  private ParserXML.ParserResultCallback onPurchasePopupCallback = new ParserXML.ParserResultCallback()
  {
    public void onAutoPurchaseCheck(boolean paramAnonymousBoolean)
    {
      if (paramAnonymousBoolean)
      {
        IAPActivity.this.mItemInfoConfirm.setmAfterAutoPurchaseInfoAgree(true);
        return;
      }
      IAPActivity.this.mItemInfoConfirm.setmAfterAutoPurchaseInfoAgree(false);
    }
    
    public void onAutoPurchaseInfoClick(String paramAnonymousString1, String paramAnonymousString2)
    {
      IAPActivity.this.DismissPurchaseDialog();
      paramAnonymousString1 = IAPActivity.this.mGUIMessageHandler.obtainMessage(1124);
      IAPActivity.this.mGUIMessageHandler.sendMessage(paramAnonymousString1);
    }
    
    public void onEnterTstore()
    {
      Object localObject1 = null;
      try
      {
        localObject4 = IAPActivity.this.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
        localObject1 = localObject4;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        for (;;)
        {
          Object localObject4;
          int i;
          byte[] arrayOfByte;
          localNameNotFoundException2.printStackTrace();
        }
      }
      localObject4 = ((PackageInfo)localObject1).versionName;
      i = ((PackageInfo)localObject1).versionCode;
      CommonF.LOGGER.i("IAPActivity", "application versionName : " + (String)localObject4);
      CommonF.LOGGER.i("IAPActivity", "application versionCode : " + i);
      arrayOfByte = (byte[])null;
      localObject4 = arrayOfByte;
      Object localObject6 = arrayOfByte;
      for (;;)
      {
        try
        {
          localFileInputStream = IAPActivity.this.createPackageContext("com.skt.skaf.A000Z00040", 2).openFileInput("lockInfo.txt");
          localObject1 = arrayOfByte;
          localObject4 = arrayOfByte;
          localObject6 = arrayOfByte;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException1)
        {
          FileInputStream localFileInputStream;
          Object localObject5;
          localNameNotFoundException1.printStackTrace();
          Object localObject2 = localObject5;
          continue;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          localFileNotFoundException.printStackTrace();
          Object localObject3 = localObject6;
          continue;
          localObject3 = new Intent();
          ((Intent)localObject3).setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
          IAPActivity.this.startActivity((Intent)localObject3);
        }
        try
        {
          arrayOfByte = new byte[localFileInputStream.available()];
          localObject1 = arrayOfByte;
          localObject4 = arrayOfByte;
          localObject6 = arrayOfByte;
          if (localFileInputStream.read(arrayOfByte) == -1)
          {
            localObject1 = arrayOfByte;
            localObject4 = arrayOfByte;
            localObject6 = arrayOfByte;
            localFileInputStream.close();
            localObject1 = arrayOfByte;
          }
        }
        catch (IOException localIOException)
        {
          localObject5 = localObject1;
          localObject6 = localObject1;
          localIOException.printStackTrace();
        }
      }
      if ((localObject1 != null) && (i >= 19))
      {
        localObject1 = new Intent();
        ((Intent)localObject1).addFlags(536870912);
        ((Intent)localObject1).setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
        ((Intent)localObject1).setAction("COLLAB_ACTION");
        ((Intent)localObject1).putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
        ((Intent)localObject1).putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
        IAPActivity.this.startActivity((Intent)localObject1);
        return;
      }
    }
    
    public void onPurchaseAutoButtonClick()
    {
      IAPActivity.this.DismissPurchaseDialog();
      IAPLib.setDialogType(100);
      if ((SingletonCounter.getInstance().getmPostPay() > 0) && (IAPActivity.this.IAPLibAuthCheck()))
      {
        IAPActivity.this.ShowJuminAuthDialog();
        return;
      }
      IAPActivity.this.billingLockCheck();
    }
    
    public void onPurchaseAutoCancelButtonClick(String paramAnonymousString)
    {
      if (paramAnonymousString.equals("error")) {
        IAPActivity.this.ShowInfoMessageDialog(103, CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFO_AGREE));
      }
    }
    
    public void onPurchaseButtonClick()
    {
      IAPLib.setDialogType(103);
      IAPActivity.this.handPurchaseConfirm();
    }
    
    public void onPurchaseCancelButtonClick()
    {
      IAPLib.getNetHandler().obtainMessage(1102).sendToTarget();
      IAPActivity.this.DismissPurchaseDialog();
      IAPLib.setDialogType(100);
      IAPActivity localIAPActivity1 = IAPActivity.this;
      IAPActivity localIAPActivity2 = IAPActivity.this;
      Boolean localBoolean = Boolean.valueOf(false);
      localIAPActivity2.mSetBPProtocol = localBoolean;
      localIAPActivity1.mSetTmpBPProtocol = localBoolean;
      IAPActivity.this.mUseTCash = false;
      IAPLib.setLimitExcess(false);
      IAPActivity.this.setInit();
      IAPActivity.this.mSetting.ClientListener.onDlgPurchaseCancel();
    }
    
    public void onShowCultureLandDialog()
    {
      IAPActivity.this.DismissPurchaseDialog();
      IAPActivity.this.ShowCultureLandLoginDialog();
    }
    
    public void onShowDotoriQueryBtnClick(boolean paramAnonymousBoolean)
    {
      if (paramAnonymousBoolean)
      {
        IAPActivity.this.DismissPurchaseDialog();
        IAPActivity.this.ShowDotoriSmsAutnDialog();
        return;
      }
      IAPActivity.this.ShowInfoMessageDialog(119, CommonString.getString(CommonString.Index.DOTORI_MEMBERINFO_STRING));
    }
    
    public void onShowMessageDialog()
    {
      IAPActivity.this.ShowInfoMessageDialog(100, CommonString.getString(CommonString.Index.DOTORI_LIMIT_EXCESS_STRING));
    }
    
    public void onShowOCBPWDDialog()
    {
      IAPActivity.this.DismissPurchaseDialog();
      IAPActivity.this.ShowOCBPWDDialog();
    }
    
    public void onShowOCBRegPopup(String paramAnonymousString)
    {
      IAPActivity.this.DismissPurchaseDialog();
      IAPActivity.this.ShowOCBRegDialog(paramAnonymousString);
    }
    
    public void onTstoreLockError(String paramAnonymousString)
    {
      IAPActivity.this.ShowInfoMessageDialog(100, paramAnonymousString);
    }
    
    public void onUseTCashCheckChanged(boolean paramAnonymousBoolean)
    {
      IAPActivity.this.mUseTCash = paramAnonymousBoolean;
      if (paramAnonymousBoolean) {
        IAPActivity.this.mSetTmpBPProtocol = Boolean.valueOf(false);
      }
      for (;;)
      {
        CommonF.LOGGER.i("IAPActivity", "PopupCheck!!  UseTCash =" + paramAnonymousBoolean + " / BPProtocol = " + IAPActivity.this.mSetTmpBPProtocol);
        return;
        if (IAPActivity.this.mSetBPProtocol.booleanValue()) {
          IAPActivity.this.mSetTmpBPProtocol = Boolean.valueOf(true);
        } else {
          IAPActivity.this.mSetTmpBPProtocol = Boolean.valueOf(false);
        }
      }
    }
  };
  View.OnClickListener onYesNoConfirmInfoListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      IAPActivity.this.mYesNoDlg.ClosePopupYesNoDialog();
    }
  };
  PhoneStateListener phoneStateListener = new PhoneStateListener()
  {
    public void onCallStateChanged(int paramAnonymousInt, String paramAnonymousString)
    {
      switch (paramAnonymousInt)
      {
      }
    }
  };
  public boolean pwdAuthFlag = false;
  private SellerInfoConfirm sellerInfoConfirm;
  private WifiManager wfmanager = null;
  
  static
  {
    encryptPwd = null;
    decryptPwd = null;
    m_strLogFileFolderPath = "";
  }
  
  private void DismissAutoPurchaseFormDialog()
  {
    this.mAutoPurchaseFormDlg.ClosePopupAutoPurchaseFormDialog();
  }
  
  private void DismissCultureLandLoginDialog()
  {
    this.mCultureLandLoginDlg.ClosePopupCultureLandLoginDialog();
  }
  
  private void DismissDotoriSmsAuthDialog()
  {
    this.mDotoriSmsAuthDlg.ClosePopupDotoriSMSAuthDialog();
  }
  
  private void DismissForeignInputMDNDialog()
  {
    this.mForeignInputMDN.ClosePopupDialog();
  }
  
  private void DismissImageDialog()
  {
    this.mImageDlg.ClosePopupImageDialog();
  }
  
  private void DismissImeiAuthDlg()
  {
    this.mImeiAuthDlg.ClosePopupIMEIAuthDialog();
  }
  
  private void DismissInfoMessageDialog()
  {
    this.mPopupDlg.ClosePopupDialog();
  }
  
  private void DismissJoinDialog()
  {
    this.mJoinDlg.ClosePopupJoinDialog();
  }
  
  private void DismissJuminAuthDialog()
  {
    this.mJuminAuth.ClosePopupAuthDialog();
  }
  
  private void DismissLguSMSAuthDlg()
  {
    this.mLguSmsDlg.ClosePopupLguSMSAuthDialog();
  }
  
  private void DismissLoaingProgress()
  {
    if (this.mProgressDlg != null)
    {
      this.mProgressDlg.CloseProgress();
      this.mProgressDlg = null;
    }
  }
  
  private void DismissOCBPWDDialog()
  {
    this.mOCBDlg.ClosePopupOCBDialog();
  }
  
  private void DismissOCBRegDialog()
  {
    this.mOCBDlg.ClosePopupOCBDialog();
  }
  
  private void DismissOtpDlg()
  {
    this.mOtpDlg.ClosePopupOtpDialog();
  }
  
  private void DismissPurchaseDialog()
  {
    this.mPurchaseDlg.ClosePurchaseDialog();
  }
  
  private void DismissYesNoDialog()
  {
    this.mYesNoDlg.ClosePopupYesNoDialog();
  }
  
  private void IAPLibDeviceCheck()
  {
    this.mRotaion = ((WindowManager)getSystemService("window")).getDefaultDisplay().getOrientation();
  }
  
  private void IAPLibUSIMStateCheck()
  {
    PhoneStateListener local36 = new PhoneStateListener()
    {
      public void onServiceStateChanged(ServiceState paramAnonymousServiceState)
      {
        IAPActivity.this.m_phoneUSIMState = paramAnonymousServiceState.getState();
        CommonF.LOGGER.i("IAPActivity", "리스너 내부 m_phoneUSIMState: " + IAPActivity.this.m_phoneUSIMState);
        if (IAPActivity.this.mUsimCheckFlag) {
          IAPActivity.this.goIAPLibProcess();
        }
        if (IAPActivity.this.m_phoneUSIMState == 0) {
          IAPActivity.this.USIM_Check = "STATE_IN_SERVICE";
        }
        for (;;)
        {
          CommonF.LOGGER.i("IAPActivity", "IAPActivity IAPLibUSIMStateCheck USIM_Check : " + IAPActivity.this.USIM_Check);
          if (IAPActivity.this.m_telephonyManager != null) {
            IAPActivity.this.m_telephonyManager.listen(this, 0);
          }
          return;
          if (IAPActivity.this.m_phoneUSIMState == 2) {
            IAPActivity.this.USIM_Check = "STATE_EMERGENCY_ONLY";
          } else if (IAPActivity.this.m_phoneUSIMState == 1) {
            IAPActivity.this.USIM_Check = "STATE_OUT_OF_SERVICE";
          } else if (IAPActivity.this.m_phoneUSIMState == 3) {
            IAPActivity.this.USIM_Check = "STATE_POWER_OFF";
          }
        }
      }
    };
    CommonF.LOGGER.i("IAPActivity", "리스너 외부 m_phoneUSIMState: " + this.m_phoneUSIMState);
    this.m_telephonyManager.listen(local36, 1);
  }
  
  private void RestoreData()
  {
    Object localObject = getLastNonConfigurationInstance();
    if (localObject != null)
    {
      localObject = (HashMap)localObject;
      this.mMsgItemInfo = ((String)((HashMap)localObject).get("NET_MESSAGE"));
      this.mErrorMessage = ((String)((HashMap)localObject).get("ERR_MESSAGE"));
      this.mYesNoMessage = ((String)((HashMap)localObject).get("YESNO_MESSAGE"));
      this.mSetBPProtocol = ((Boolean)((HashMap)localObject).get("USE_BPPROTOCOL"));
      this.mPurchaseName = ((String)((HashMap)localObject).get("PRODUCT_NAME"));
      this.mItemInfoConfirm = ((ItemInfoConfirm)((HashMap)localObject).get("PRODUCT_INFO"));
      this.mPurchaseID = ((String)((HashMap)localObject).get("PURCHASEID"));
      this.mSmsAuthCheckTime = ((String)((HashMap)localObject).get("LGUSMSAUTHCHECKTIME"));
      this.mDotoriSmsAuthCheckTime = ((String)((HashMap)localObject).get("DOTORISMSAUTHCHECKTIME"));
      this.mDlgType = ((String)((HashMap)localObject).get("DLGTYPE"));
      this.mEncName = ((String)((HashMap)localObject).get("ENCNAME"));
      this.m_Tid = ((String)((HashMap)localObject).get("TID"));
      this.m_encBpInfo = ((String)((HashMap)localObject).get("ENCBPINFO"));
      CommonF.LOGGER.i("IAPActivity", "## Restore Data ......");
    }
  }
  
  private void ShowCultureLandLoginDialog()
  {
    this.mCultureLandLoginDlg.InflateView(122, this.onCultureLandLoginListener, this.mRotaion);
    this.mCultureLandLoginDlg.ShowPopupCultureLandLoginDialog();
    IAPLib.setDialogType(122);
  }
  
  private void ShowDotoriSmsAutnDialog()
  {
    this.mDotoriSmsAuthDlg.InflateView(123, this.onDotoriSmsAuthListener, this.mRotaion);
    this.mDotoriSmsAuthDlg.ShowPopupDotoriSMSAuthDialog();
    IAPLib.setDialogType(123);
  }
  
  private void ShowForeignInputMDNDialog()
  {
    this.mForeignInputMDN.InflateView(this.mRotaion);
    this.mForeignInputMDN.ShowPopupDialog();
    IAPLib.setDialogType(124);
  }
  
  private void ShowInfoMessageDialog(int paramInt, String paramString)
  {
    if (paramInt == 105)
    {
      this.mPopupDlg.InflateView(paramInt, paramString, this.onConfirmInfoListener);
      this.mSmsAuthCheckTime = null;
    }
    for (;;)
    {
      this.mPopupDlg.ShowPopupDialog();
      return;
      if (paramInt == 116)
      {
        this.mPopupDlg.InflateView(paramInt, paramString, this.onLimit_ExcessDlgListener);
        this.mMsgItemInfo = paramString;
      }
      else if (paramInt == 117)
      {
        this.mPopupDlg.InflateView(paramInt, paramString, this.onLGUSMSAuthInfoListener);
      }
      else if (paramInt == 119)
      {
        this.mPopupDlg.InflateView(paramInt, paramString, this.onAlertDialogClickListener);
      }
      else if (paramInt == 126)
      {
        this.mPopupDlg.InflateView(paramInt, paramString, this.onAlertDialogClickListener);
      }
      else if ((paramInt == 127) || (paramInt == 128) || (paramInt == 130))
      {
        this.mPopupDlg.InflateView(paramInt, paramString, this.onAlertDialogClickListener);
      }
      else if (paramInt == 100)
      {
        this.mPopupDlg.InflateView(paramInt, paramString, new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            IAPActivity.this.DismissInfoMessageDialog();
          }
        });
      }
      else
      {
        this.mPopupDlg.InflateView(paramInt, paramString, this.onInfoCancelListener);
        IAPLib.setOTPNumber(null);
      }
    }
  }
  
  private void ShowJuminAuthDialog()
  {
    this.mJuminAuth.InflateView(this.mRotaion);
    this.mJuminAuth.ShowPopupAuthDialog();
    IAPLib.setDialogType(106);
  }
  
  private void ShowLoadingProgress()
  {
    this.mProgressDlg = new ProgressDialog(this, CommonString.getString(CommonString.Index.WORK_PROCESSING_STRING), this.onProgressCancelListerner);
    this.mProgressDlg.ShowProgress();
  }
  
  private void ShowLoadingProgressPhurchase_Confirm()
  {
    this.mProgressDlg = new ProgressDialog(this, CommonString.getString(CommonString.Index.WORK_PROCESSING_STRING), null);
    this.mProgressDlg.ShowProgress();
  }
  
  private void ShowOCBPWDDialog()
  {
    this.mOCBDlg.InflateView(121, this.onOCBRegListener, this.mRotaion);
    this.mOCBDlg.ShowPopupOCBDialog();
    IAPLib.setDialogType(121);
  }
  
  private void ShowOCBRegDialog(String paramString)
  {
    if ((paramString.equals("C")) || (paramString.equals("U")))
    {
      IAPLib.setOcbCardUpdateType(paramString);
      this.mOCBDlg.InflateView(120, this.onOCBRegListener, this.mRotaion);
      this.mOCBDlg.ShowPopupOCBDialog();
      IAPLib.setDialogType(120);
    }
    while (!paramString.equals("D")) {
      return;
    }
    this.mYesNoMessage = CommonString.getString(CommonString.Index.OCB_CARD_DELETE_STRING);
    IAPLib.setDialogType(126);
    popupYesNoDlg(this.mYesNoMessage);
  }
  
  private void ShowPurchaseDialog(Object paramObject)
  {
    this.mItemInfoConfirm = ((ItemInfoConfirm)paramObject);
    boolean bool1 = false;
    if (isExistOTPLog("DotoriSMSAuthLog.txt")) {
      bool1 = true;
    }
    Object localObject2;
    Object localObject1;
    if ((this.mItemInfoConfirm != null) && (this.mItemInfoConfirm.getItemPrice() != null) && (this.mItemInfoConfirm.getItemTCash() != null))
    {
      int i = Integer.parseInt(this.mItemInfoConfirm.getItemPrice().replace(",", ""));
      int j = Integer.parseInt(this.mItemInfoConfirm.getItemTCash().replace(",", ""));
      String str1 = this.mItemInfoConfirm.getmOCBRegisterInfo();
      String str2 = CommonF.addLineEndString(this.mItemInfoConfirm.getmOCBCardNum(), 4, "-");
      int k = Integer.parseInt(this.mItemInfoConfirm.getmDotoriBalance());
      String str3 = this.mItemInfoConfirm.getmDotoriLinkInfo();
      boolean bool2 = this.mItemInfoConfirm.getmFinalVersionCheck();
      boolean bool3 = this.mItemInfoConfirm.getmAutoPurchaseCheck();
      boolean bool4 = this.mItemInfoConfirm.getmAfterAutoPurchaseInfoAgree();
      if (this.mPurchaseName != null) {}
      for (paramObject = this.mPurchaseName;; paramObject = this.mItemInfoConfirm.getItemTitle())
      {
        localObject2 = paramObject;
        localObject1 = paramObject;
        try
        {
          if (this.mPurchaseName == null)
          {
            localObject1 = paramObject;
            paramObject = paramObject.replace("%", "%25").replace("#", "%23").replace("+", "%2B").replace("&", "%26").replace(" ", "%20");
            localObject1 = paramObject;
            localObject2 = URLDecoder.decode(paramObject, "utf-8");
          }
        }
        catch (UnsupportedEncodingException paramObject)
        {
          for (;;)
          {
            paramObject.printStackTrace();
            localObject2 = localObject1;
          }
        }
        IAPLibDeviceCheck();
        paramObject = new PurchaseItem((String)localObject2, this.mItemInfoConfirm.getItemPeriod(), i, j, str1, str2, i, this.mUseTCash, k, str3, bool2, bool3, bool4, bool1, this.sellerInfoConfirm);
        this.mPurchaseDlg.InflateParserDialog(this.mRotaion, paramObject);
        this.mPurchaseDlg.ShowPurchaseDialog();
        return;
      }
    }
    CommonF.LOGGER.i("IAPActivity", "mItemInfoConfirm = " + this.mItemInfoConfirm + ", mItemInfoConfirm.getItemPrice() = " + this.mItemInfoConfirm.getItemPrice() + ", mItemInfoConfirm.getItemTCash() = " + this.mItemInfoConfirm.getItemTCash());
  }
  
  /* Error */
  private void billingLockCheck()
  {
    // Byte code:
    //   0: iconst_0
    //   1: invokestatic 999	com/feelingk/iap/IAPLib:setLimitExcess	(Z)V
    //   4: aconst_null
    //   5: checkcast 1000	[B
    //   8: astore 5
    //   10: aload 5
    //   12: astore_3
    //   13: aload 5
    //   15: astore 4
    //   17: aload_0
    //   18: ldc_w 1002
    //   21: iconst_2
    //   22: invokevirtual 1006	com/feelingk/iap/IAPActivity:createPackageContext	(Ljava/lang/String;I)Landroid/content/Context;
    //   25: ldc_w 1008
    //   28: invokevirtual 1014	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   31: astore 6
    //   33: aload 5
    //   35: astore_2
    //   36: aload 5
    //   38: astore_3
    //   39: aload 5
    //   41: astore 4
    //   43: aload 6
    //   45: invokevirtual 1019	java/io/FileInputStream:available	()I
    //   48: newarray byte
    //   50: astore 5
    //   52: aload 5
    //   54: astore_2
    //   55: aload 5
    //   57: astore_3
    //   58: aload 5
    //   60: astore 4
    //   62: aload 6
    //   64: aload 5
    //   66: invokevirtual 1023	java/io/FileInputStream:read	([B)I
    //   69: iconst_m1
    //   70: if_icmpne -18 -> 52
    //   73: aload 5
    //   75: astore_2
    //   76: aload 5
    //   78: astore_3
    //   79: aload 5
    //   81: astore 4
    //   83: aload 6
    //   85: invokevirtual 1026	java/io/FileInputStream:close	()V
    //   88: aload 5
    //   90: astore_2
    //   91: aload_2
    //   92: ifnull +383 -> 475
    //   95: aload_2
    //   96: arraylength
    //   97: bipush 14
    //   99: if_icmpne +376 -> 475
    //   102: new 583	java/lang/String
    //   105: dup
    //   106: aload_2
    //   107: invokespecial 1029	java/lang/String:<init>	([B)V
    //   110: astore_2
    //   111: aload_2
    //   112: iconst_0
    //   113: bipush 12
    //   115: invokevirtual 1033	java/lang/String:substring	(II)Ljava/lang/String;
    //   118: putstatic 222	com/feelingk/iap/IAPActivity:encryptPwd	Ljava/lang/String;
    //   121: getstatic 222	com/feelingk/iap/IAPActivity:encryptPwd	Ljava/lang/String;
    //   124: ldc_w 1035
    //   127: invokestatic 1038	com/feelingk/iap/IAPActivity:decrypt	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   130: putstatic 224	com/feelingk/iap/IAPActivity:decryptPwd	Ljava/lang/String;
    //   133: aload_2
    //   134: bipush 13
    //   136: invokevirtual 1041	java/lang/String:substring	(I)Ljava/lang/String;
    //   139: ldc_w 1043
    //   142: invokevirtual 685	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   145: ifeq +211 -> 356
    //   148: aload_0
    //   149: getfield 328	com/feelingk/iap/IAPActivity:pwdAuthFlag	Z
    //   152: ifne +129 -> 281
    //   155: ldc 84
    //   157: new 543	java/lang/StringBuilder
    //   160: dup
    //   161: ldc_w 1045
    //   164: invokespecial 548	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   167: aload_0
    //   168: getfield 328	com/feelingk/iap/IAPActivity:pwdAuthFlag	Z
    //   171: invokevirtual 1048	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   174: invokevirtual 556	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   177: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   180: aload_0
    //   181: invokestatic 1052	com/feelingk/iap/util/CommonF:getCarrier	(Landroid/content/Context;)I
    //   184: iconst_3
    //   185: if_icmpne +88 -> 273
    //   188: aload_0
    //   189: invokespecial 846	com/feelingk/iap/IAPActivity:DismissPurchaseDialog	()V
    //   192: bipush 100
    //   194: invokestatic 627	com/feelingk/iap/IAPLib:setDialogType	(I)V
    //   197: new 1054	android/content/Intent
    //   200: dup
    //   201: aload_0
    //   202: ldc_w 1056
    //   205: invokespecial 1059	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   208: astore_2
    //   209: aload_2
    //   210: ldc_w 1061
    //   213: getstatic 224	com/feelingk/iap/IAPActivity:decryptPwd	Ljava/lang/String;
    //   216: invokevirtual 1065	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   219: pop
    //   220: aload_0
    //   221: aload_2
    //   222: ldc_w 1066
    //   225: invokevirtual 1070	com/feelingk/iap/IAPActivity:startActivityForResult	(Landroid/content/Intent;I)V
    //   228: return
    //   229: astore 5
    //   231: aload_2
    //   232: astore_3
    //   233: aload_2
    //   234: astore 4
    //   236: aload 5
    //   238: invokevirtual 1071	java/io/IOException:printStackTrace	()V
    //   241: goto -150 -> 91
    //   244: astore_2
    //   245: aload_2
    //   246: invokevirtual 1072	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   249: aload_3
    //   250: astore_2
    //   251: goto -160 -> 91
    //   254: astore_2
    //   255: aload_2
    //   256: invokevirtual 1073	java/io/FileNotFoundException:printStackTrace	()V
    //   259: aload 4
    //   261: astore_2
    //   262: goto -171 -> 91
    //   265: astore_3
    //   266: aload_3
    //   267: invokevirtual 1074	java/lang/Exception:printStackTrace	()V
    //   270: goto -137 -> 133
    //   273: bipush 103
    //   275: invokestatic 627	com/feelingk/iap/IAPLib:setDialogType	(I)V
    //   278: goto -81 -> 197
    //   281: iconst_0
    //   282: istore_1
    //   283: aload_0
    //   284: invokestatic 1052	com/feelingk/iap/util/CommonF:getCarrier	(Landroid/content/Context;)I
    //   287: iconst_3
    //   288: if_icmpne +5 -> 293
    //   291: iconst_1
    //   292: istore_1
    //   293: iload_1
    //   294: ifeq +52 -> 346
    //   297: aload_0
    //   298: invokespecial 846	com/feelingk/iap/IAPActivity:DismissPurchaseDialog	()V
    //   301: invokestatic 1080	com/feelingk/iap/gui/data/SingletonCounter:getInstance	()Lcom/feelingk/iap/gui/data/SingletonCounter;
    //   304: invokevirtual 1083	com/feelingk/iap/gui/data/SingletonCounter:getmPostPay	()I
    //   307: ifle +16 -> 323
    //   310: ldc 84
    //   312: ldc_w 1085
    //   315: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   318: aload_0
    //   319: invokespecial 1088	com/feelingk/iap/IAPActivity:showLguSMSAuthDlg	()V
    //   322: return
    //   323: ldc 84
    //   325: ldc_w 1090
    //   328: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   331: bipush 103
    //   333: invokestatic 627	com/feelingk/iap/IAPLib:setDialogType	(I)V
    //   336: aload_0
    //   337: getfield 380	com/feelingk/iap/IAPActivity:onPurchasePopupCallback	Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    //   340: invokeinterface 1095 1 0
    //   345: return
    //   346: bipush 103
    //   348: invokestatic 627	com/feelingk/iap/IAPLib:setDialogType	(I)V
    //   351: aload_0
    //   352: invokespecial 904	com/feelingk/iap/IAPActivity:handPurchaseConfirm	()V
    //   355: return
    //   356: ldc 84
    //   358: ldc_w 1097
    //   361: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   364: iconst_0
    //   365: istore_1
    //   366: aload_0
    //   367: invokestatic 1052	com/feelingk/iap/util/CommonF:getCarrier	(Landroid/content/Context;)I
    //   370: iconst_3
    //   371: if_icmpne +5 -> 376
    //   374: iconst_1
    //   375: istore_1
    //   376: iload_1
    //   377: ifeq +47 -> 424
    //   380: aload_0
    //   381: invokespecial 846	com/feelingk/iap/IAPActivity:DismissPurchaseDialog	()V
    //   384: invokestatic 1080	com/feelingk/iap/gui/data/SingletonCounter:getInstance	()Lcom/feelingk/iap/gui/data/SingletonCounter;
    //   387: invokevirtual 1083	com/feelingk/iap/gui/data/SingletonCounter:getmPostPay	()I
    //   390: ifle +16 -> 406
    //   393: ldc 84
    //   395: ldc_w 1085
    //   398: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   401: aload_0
    //   402: invokespecial 1088	com/feelingk/iap/IAPActivity:showLguSMSAuthDlg	()V
    //   405: return
    //   406: ldc 84
    //   408: ldc_w 1090
    //   411: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   414: aload_0
    //   415: getfield 380	com/feelingk/iap/IAPActivity:onPurchasePopupCallback	Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    //   418: invokeinterface 1095 1 0
    //   423: return
    //   424: aload_0
    //   425: ldc_w 1099
    //   428: invokevirtual 708	com/feelingk/iap/IAPActivity:isExistOTPLog	(Ljava/lang/String;)Z
    //   431: ifne +16 -> 447
    //   434: ldc 84
    //   436: ldc_w 1101
    //   439: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   442: aload_0
    //   443: invokespecial 1104	com/feelingk/iap/IAPActivity:showPopOtpDlg	()V
    //   446: return
    //   447: aload_0
    //   448: ldc_w 1099
    //   451: invokevirtual 708	com/feelingk/iap/IAPActivity:isExistOTPLog	(Ljava/lang/String;)Z
    //   454: ifeq -226 -> 228
    //   457: ldc 84
    //   459: ldc_w 1106
    //   462: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   465: bipush 103
    //   467: invokestatic 627	com/feelingk/iap/IAPLib:setDialogType	(I)V
    //   470: aload_0
    //   471: invokespecial 904	com/feelingk/iap/IAPActivity:handPurchaseConfirm	()V
    //   474: return
    //   475: ldc 84
    //   477: ldc_w 1108
    //   480: invokestatic 1111	com/feelingk/iap/util/CommonF$LOGGER:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   483: iconst_0
    //   484: istore_1
    //   485: aload_0
    //   486: invokestatic 1052	com/feelingk/iap/util/CommonF:getCarrier	(Landroid/content/Context;)I
    //   489: iconst_3
    //   490: if_icmpne +5 -> 495
    //   493: iconst_1
    //   494: istore_1
    //   495: iload_1
    //   496: ifeq +47 -> 543
    //   499: aload_0
    //   500: invokespecial 846	com/feelingk/iap/IAPActivity:DismissPurchaseDialog	()V
    //   503: invokestatic 1080	com/feelingk/iap/gui/data/SingletonCounter:getInstance	()Lcom/feelingk/iap/gui/data/SingletonCounter;
    //   506: invokevirtual 1083	com/feelingk/iap/gui/data/SingletonCounter:getmPostPay	()I
    //   509: ifle +16 -> 525
    //   512: ldc 84
    //   514: ldc_w 1085
    //   517: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   520: aload_0
    //   521: invokespecial 1088	com/feelingk/iap/IAPActivity:showLguSMSAuthDlg	()V
    //   524: return
    //   525: ldc 84
    //   527: ldc_w 1090
    //   530: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   533: aload_0
    //   534: getfield 380	com/feelingk/iap/IAPActivity:onPurchasePopupCallback	Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    //   537: invokeinterface 1095 1 0
    //   542: return
    //   543: aload_0
    //   544: ldc_w 1099
    //   547: invokevirtual 708	com/feelingk/iap/IAPActivity:isExistOTPLog	(Ljava/lang/String;)Z
    //   550: ifne +16 -> 566
    //   553: ldc 84
    //   555: ldc_w 1101
    //   558: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   561: aload_0
    //   562: invokespecial 1104	com/feelingk/iap/IAPActivity:showPopOtpDlg	()V
    //   565: return
    //   566: aload_0
    //   567: ldc_w 1099
    //   570: invokevirtual 708	com/feelingk/iap/IAPActivity:isExistOTPLog	(Ljava/lang/String;)Z
    //   573: ifeq -345 -> 228
    //   576: ldc 84
    //   578: ldc_w 1106
    //   581: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   584: bipush 103
    //   586: invokestatic 627	com/feelingk/iap/IAPLib:setDialogType	(I)V
    //   589: aload_0
    //   590: invokespecial 904	com/feelingk/iap/IAPActivity:handPurchaseConfirm	()V
    //   593: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	594	0	this	IAPActivity
    //   282	214	1	i	int
    //   35	199	2	localObject1	Object
    //   244	2	2	localNameNotFoundException	PackageManager.NameNotFoundException
    //   250	1	2	localObject2	Object
    //   254	2	2	localFileNotFoundException	FileNotFoundException
    //   261	1	2	localObject3	Object
    //   12	238	3	localObject4	Object
    //   265	2	3	localException	Exception
    //   15	245	4	localObject5	Object
    //   8	81	5	arrayOfByte	byte[]
    //   229	8	5	localIOException	IOException
    //   31	53	6	localFileInputStream	FileInputStream
    // Exception table:
    //   from	to	target	type
    //   43	52	229	java/io/IOException
    //   62	73	229	java/io/IOException
    //   83	88	229	java/io/IOException
    //   17	33	244	android/content/pm/PackageManager$NameNotFoundException
    //   43	52	244	android/content/pm/PackageManager$NameNotFoundException
    //   62	73	244	android/content/pm/PackageManager$NameNotFoundException
    //   83	88	244	android/content/pm/PackageManager$NameNotFoundException
    //   236	241	244	android/content/pm/PackageManager$NameNotFoundException
    //   17	33	254	java/io/FileNotFoundException
    //   43	52	254	java/io/FileNotFoundException
    //   62	73	254	java/io/FileNotFoundException
    //   83	88	254	java/io/FileNotFoundException
    //   236	241	254	java/io/FileNotFoundException
    //   121	133	265	java/lang/Exception
  }
  
  private boolean checkPermission(String paramString)
  {
    if (getPackageManager().checkPermission(paramString, getPackageName()) == -1)
    {
      this.mStrNotExistPermissionList = (this.mStrNotExistPermissionList + paramString.replace("android.permission.", "") + "\r\n");
      return false;
    }
    return true;
  }
  
  public static String decrypt(String paramString1, String paramString2)
    throws Exception
  {
    Cipher localCipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
    localCipher.init(2, getKey(paramString2));
    return new String(localCipher.doFinal(Base64.decode(paramString1)), "UTF8");
  }
  
  private static String getCurrentTime()
  {
    Calendar localCalendar = Calendar.getInstance();
    return String.format("%d-%d-%d %d:%d", new Object[] { Integer.valueOf(localCalendar.get(1)), Integer.valueOf(localCalendar.get(2) + 1), Integer.valueOf(localCalendar.get(5)), Integer.valueOf(localCalendar.get(11)), Integer.valueOf(localCalendar.get(12)) });
  }
  
  private static Key getKey(String paramString)
    throws Exception
  {
    paramString = new DESedeKeySpec(paramString.getBytes());
    return SecretKeyFactory.getInstance("DESede").generateSecret(paramString);
  }
  
  private void handPurchaseConfirm()
  {
    int j = 1;
    setInit();
    Object localObject = this.mGUIMessageHandler.obtainMessage(1100);
    this.mGUIMessageHandler.sendMessage((Message)localObject);
    if (CommonF.getCarrier(this) == 1)
    {
      localObject = IAPLib.getNetHandler();
      CommonF.LOGGER.i("IAPActivity", "# Purchase SK!!  mUseTCash =" + this.mUseTCash + " / BPProtocol = " + this.mSetTmpBPProtocol);
      int i;
      if (this.mUseTCash)
      {
        i = 1;
        if (!this.mSetTmpBPProtocol.booleanValue()) {
          break label113;
        }
      }
      for (;;)
      {
        ((Handler)localObject).obtainMessage(1100, i, j).sendToTarget();
        return;
        i = 0;
        break;
        label113:
        j = 0;
      }
    }
    localObject = IAPLib.getNetHandler();
    CommonF.LOGGER.i("IAPActivity", "# Purchase KT_LG!!  ");
    ((Handler)localObject).obtainMessage(1101).sendToTarget();
  }
  
  private boolean isEnablePermission()
  {
    return true & checkPermission("android.permission.RECEIVE_SMS") & checkPermission("android.permission.WRITE_EXTERNAL_STORAGE") & checkPermission("android.permission.INTERNET") & checkPermission("android.permission.ACCESS_NETWORK_STATE") & checkPermission("android.permission.READ_PHONE_STATE");
  }
  
  public static void reset(String paramString)
  {
    m_strLogFileName = paramString;
    if (Environment.getExternalStorageState().equals("mounted")) {}
    for (m_strLogFileFolderPath = Environment.getExternalStorageDirectory().getAbsolutePath();; m_strLogFileFolderPath = dirPath)
    {
      CommonF.LOGGER.i("IAPActivity", "reset\t" + m_strLogFileFolderPath);
      new File(m_strLogFileFolderPath + "/" + m_strLogFileName).delete();
      write("TstoreLog : ", m_strLogFileName, new Object[0]);
      return;
    }
  }
  
  private void setInit()
  {
    IAPLib.setOCBPointInfo(false);
    IAPLib.setOCBPoint("");
    IAPLib.setCultureCashQueryInfo(false);
    IAPLib.setCultureLandCashPoint("");
  }
  
  private void showImeiAuthDlg()
  {
    this.mImeiAuthDlg.inflageView(118, new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        IAPActivity.this.mImeiAuthDlg.ClosePopupIMEIAuthDialog();
      }
    }, this.mRotaion);
    this.mImeiAuthDlg.ShowPopupIMEIAuthDialog();
  }
  
  private void showLguSMSAuthDlg()
  {
    this.mLguSmsDlg.InflateView(117, this.onLGUSMSAuthListener, this.mRotaion);
    this.mLguSmsDlg.ShowPopupLguSMSAuthDialog();
    IAPLib.setDialogType(117);
  }
  
  private void showPopOtpDlg()
  {
    this.mOtpDlg.InflateView(114, this.onOtpInfoListener, this.mRotaion);
    this.mOtpDlg.ShowPopupOtpDialog();
    DismissPurchaseDialog();
    IAPLib.setDialogType(114);
  }
  
  /* Error */
  public static void write(String paramString1, String paramString2, Object... paramVarArgs)
  {
    // Byte code:
    //   0: aload_1
    //   1: putstatic 1246	com/feelingk/iap/IAPActivity:m_strLogFileName	Ljava/lang/String;
    //   4: aload_0
    //   5: astore_1
    //   6: aload_0
    //   7: ifnull +10 -> 17
    //   10: aload_0
    //   11: invokevirtual 1306	java/lang/String:length	()I
    //   14: ifne +4 -> 18
    //   17: return
    //   18: aload_2
    //   19: arraylength
    //   20: ifeq +9 -> 29
    //   23: aload_0
    //   24: aload_2
    //   25: invokestatic 1181	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   28: astore_1
    //   29: new 543	java/lang/StringBuilder
    //   32: dup
    //   33: invokestatic 1308	com/feelingk/iap/IAPActivity:getCurrentTime	()Ljava/lang/String;
    //   36: invokestatic 1127	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   39: invokespecial 548	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: ldc_w 774
    //   45: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload_1
    //   49: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: ldc_w 1310
    //   55: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 556	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: astore_3
    //   62: new 1259	java/io/File
    //   65: dup
    //   66: new 543	java/lang/StringBuilder
    //   69: dup
    //   70: getstatic 228	com/feelingk/iap/IAPActivity:m_strLogFileFolderPath	Ljava/lang/String;
    //   73: invokestatic 1127	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   76: invokespecial 548	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   79: ldc_w 1266
    //   82: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: getstatic 1246	com/feelingk/iap/IAPActivity:m_strLogFileName	Ljava/lang/String;
    //   88: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual 556	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: invokespecial 1267	java/io/File:<init>	(Ljava/lang/String;)V
    //   97: astore_1
    //   98: aconst_null
    //   99: astore_0
    //   100: aconst_null
    //   101: astore_2
    //   102: new 1312	java/io/FileOutputStream
    //   105: dup
    //   106: aload_1
    //   107: iconst_1
    //   108: invokespecial 1315	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   111: astore_1
    //   112: aload_1
    //   113: aload_3
    //   114: invokevirtual 1187	java/lang/String:getBytes	()[B
    //   117: invokevirtual 1317	java/io/FileOutputStream:write	([B)V
    //   120: aload_1
    //   121: ifnull +58 -> 179
    //   124: aload_1
    //   125: invokevirtual 1318	java/io/FileOutputStream:close	()V
    //   128: return
    //   129: astore_0
    //   130: aload_2
    //   131: astore_1
    //   132: aload_0
    //   133: astore_2
    //   134: aload_1
    //   135: astore_0
    //   136: aload_2
    //   137: invokevirtual 1074	java/lang/Exception:printStackTrace	()V
    //   140: aload_1
    //   141: ifnull -124 -> 17
    //   144: aload_1
    //   145: invokevirtual 1318	java/io/FileOutputStream:close	()V
    //   148: return
    //   149: astore_0
    //   150: aload_0
    //   151: invokevirtual 1074	java/lang/Exception:printStackTrace	()V
    //   154: return
    //   155: astore_1
    //   156: aload_0
    //   157: ifnull +7 -> 164
    //   160: aload_0
    //   161: invokevirtual 1318	java/io/FileOutputStream:close	()V
    //   164: aload_1
    //   165: athrow
    //   166: astore_0
    //   167: aload_0
    //   168: invokevirtual 1074	java/lang/Exception:printStackTrace	()V
    //   171: goto -7 -> 164
    //   174: astore_0
    //   175: aload_0
    //   176: invokevirtual 1074	java/lang/Exception:printStackTrace	()V
    //   179: return
    //   180: astore_2
    //   181: aload_1
    //   182: astore_0
    //   183: aload_2
    //   184: astore_1
    //   185: goto -29 -> 156
    //   188: astore_2
    //   189: goto -55 -> 134
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	192	0	paramString1	String
    //   0	192	1	paramString2	String
    //   0	192	2	paramVarArgs	Object[]
    //   61	53	3	str	String
    // Exception table:
    //   from	to	target	type
    //   102	112	129	java/lang/Exception
    //   144	148	149	java/lang/Exception
    //   102	112	155	finally
    //   136	140	155	finally
    //   160	164	166	java/lang/Exception
    //   124	128	174	java/lang/Exception
    //   112	120	180	finally
    //   112	120	188	java/lang/Exception
  }
  
  public boolean IAPLibAuthCheck()
  {
    if (CommonF.getCarrier(this) == 1) {}
    while (IAPLib.getEncJuminNumber() != null) {
      return false;
    }
    return true;
  }
  
  public void IAPLibInit(IAPLibSetting paramIAPLibSetting)
    throws Exception
  {
    this.mSetting = paramIAPLibSetting;
    paramIAPLibSetting = CommonF.getMDN(this, CommonF.getCarrier(this));
    IAPLib.init(this, this.mGUIMessageHandler, this.mSetting, paramIAPLibSetting, CommonF.getCarrier(this));
  }
  
  /* Error */
  protected void goIAPLibProcess()
  {
    // Byte code:
    //   0: ldc 84
    //   2: ldc_w 1334
    //   5: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   8: aload_0
    //   9: getfield 254	com/feelingk/iap/IAPActivity:m_phoneUSIMState	I
    //   12: ifeq +33 -> 45
    //   15: aload_0
    //   16: getfield 431	com/feelingk/iap/IAPActivity:mGUIMessageHandler	Landroid/os/Handler;
    //   19: sipush 1116
    //   22: getstatic 1337	com/feelingk/iap/util/CommonString$Index:ERROR_USIM_ACTIVATE_STRING	Lcom/feelingk/iap/util/CommonString$Index;
    //   25: invokestatic 666	com/feelingk/iap/util/CommonString:getString	(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;
    //   28: invokevirtual 1340	android/os/Handler:obtainMessage	(ILjava/lang/Object;)Landroid/os/Message;
    //   31: invokevirtual 1228	android/os/Message:sendToTarget	()V
    //   34: aload_0
    //   35: iconst_0
    //   36: putfield 318	com/feelingk/iap/IAPActivity:mUsimPurchaseItemWorkFlow	I
    //   39: aload_0
    //   40: iconst_0
    //   41: putfield 330	com/feelingk/iap/IAPActivity:mUsimCheckFlag	Z
    //   44: return
    //   45: ldc 84
    //   47: new 543	java/lang/StringBuilder
    //   50: dup
    //   51: ldc_w 1342
    //   54: invokespecial 548	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   57: aload_0
    //   58: getfield 318	com/feelingk/iap/IAPActivity:mUsimPurchaseItemWorkFlow	I
    //   61: invokevirtual 552	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   64: invokevirtual 556	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   70: aload_0
    //   71: getfield 318	com/feelingk/iap/IAPActivity:mUsimPurchaseItemWorkFlow	I
    //   74: iconst_1
    //   75: if_icmpne +177 -> 252
    //   78: aload_0
    //   79: getfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   82: ifnull +76 -> 158
    //   85: aload_0
    //   86: getfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   89: ldc_w 1344
    //   92: invokevirtual 1347	java/lang/String:matches	(Ljava/lang/String;)Z
    //   95: ifeq +19 -> 114
    //   98: aload_0
    //   99: aload_0
    //   100: getfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   103: ldc_w 758
    //   106: ldc 226
    //   108: invokevirtual 720	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   111: putfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   114: aload_0
    //   115: aload_0
    //   116: getfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   119: ldc_w 778
    //   122: invokestatic 1352	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   125: putfield 246	com/feelingk/iap/IAPActivity:mEncName	Ljava/lang/String;
    //   128: aload_0
    //   129: invokevirtual 1354	com/feelingk/iap/IAPActivity:IAPLibAuthCheck	()Z
    //   132: ifeq +41 -> 173
    //   135: aload_0
    //   136: iconst_2
    //   137: putfield 316	com/feelingk/iap/IAPActivity:mPurchaseItemWorkFlow	I
    //   140: aload_0
    //   141: invokespecial 910	com/feelingk/iap/IAPActivity:ShowJuminAuthDialog	()V
    //   144: return
    //   145: astore_1
    //   146: aload_0
    //   147: aconst_null
    //   148: putfield 246	com/feelingk/iap/IAPActivity:mEncName	Ljava/lang/String;
    //   151: aload_1
    //   152: invokevirtual 808	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   155: goto -27 -> 128
    //   158: aload_0
    //   159: getfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   162: ifnonnull -34 -> 128
    //   165: aload_0
    //   166: aconst_null
    //   167: putfield 246	com/feelingk/iap/IAPActivity:mEncName	Ljava/lang/String;
    //   170: goto -42 -> 128
    //   173: ldc 84
    //   175: new 543	java/lang/StringBuilder
    //   178: dup
    //   179: ldc_w 1356
    //   182: invokespecial 548	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: aload_0
    //   186: getfield 320	com/feelingk/iap/IAPActivity:mPurchaseID	Ljava/lang/String;
    //   189: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: ldc_w 1358
    //   195: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: aload_0
    //   199: getfield 270	com/feelingk/iap/IAPActivity:mSetBPProtocol	Ljava/lang/Boolean;
    //   202: invokevirtual 813	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   205: invokevirtual 556	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   208: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   211: aload_0
    //   212: aconst_null
    //   213: putfield 260	com/feelingk/iap/IAPActivity:m_Tid	Ljava/lang/String;
    //   216: aload_0
    //   217: aconst_null
    //   218: putfield 262	com/feelingk/iap/IAPActivity:m_encBpInfo	Ljava/lang/String;
    //   221: aload_0
    //   222: invokespecial 835	com/feelingk/iap/IAPActivity:ShowLoadingProgress	()V
    //   225: bipush 102
    //   227: invokestatic 627	com/feelingk/iap/IAPLib:setDialogType	(I)V
    //   230: aload_0
    //   231: getfield 320	com/feelingk/iap/IAPActivity:mPurchaseID	Ljava/lang/String;
    //   234: aload_0
    //   235: getfield 246	com/feelingk/iap/IAPActivity:mEncName	Ljava/lang/String;
    //   238: invokestatic 1361	com/feelingk/iap/IAPLib:sendItemInfo	(Ljava/lang/String;Ljava/lang/String;)V
    //   241: aload_0
    //   242: iconst_0
    //   243: putfield 318	com/feelingk/iap/IAPActivity:mUsimPurchaseItemWorkFlow	I
    //   246: aload_0
    //   247: iconst_0
    //   248: putfield 330	com/feelingk/iap/IAPActivity:mUsimCheckFlag	Z
    //   251: return
    //   252: aload_0
    //   253: getfield 318	com/feelingk/iap/IAPActivity:mUsimPurchaseItemWorkFlow	I
    //   256: iconst_2
    //   257: if_icmpne +171 -> 428
    //   260: aload_0
    //   261: getfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   264: ifnull +136 -> 400
    //   267: aload_0
    //   268: getfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   271: ldc_w 1344
    //   274: invokevirtual 1347	java/lang/String:matches	(Ljava/lang/String;)Z
    //   277: ifeq +19 -> 296
    //   280: aload_0
    //   281: aload_0
    //   282: getfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   285: ldc_w 758
    //   288: ldc 226
    //   290: invokevirtual 720	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   293: putfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   296: aload_0
    //   297: aload_0
    //   298: getfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   301: ldc_w 778
    //   304: invokestatic 1352	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   307: putfield 246	com/feelingk/iap/IAPActivity:mEncName	Ljava/lang/String;
    //   310: aload_0
    //   311: getfield 324	com/feelingk/iap/IAPActivity:mPurchaseBPInfo	Ljava/lang/String;
    //   314: ifnull +17 -> 331
    //   317: aload_0
    //   318: aload_0
    //   319: getfield 324	com/feelingk/iap/IAPActivity:mPurchaseBPInfo	Ljava/lang/String;
    //   322: ldc_w 778
    //   325: invokestatic 1352	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   328: putfield 262	com/feelingk/iap/IAPActivity:m_encBpInfo	Ljava/lang/String;
    //   331: ldc 84
    //   333: new 543	java/lang/StringBuilder
    //   336: dup
    //   337: ldc_w 1363
    //   340: invokespecial 548	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   343: aload_0
    //   344: getfield 260	com/feelingk/iap/IAPActivity:m_Tid	Ljava/lang/String;
    //   347: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: invokevirtual 556	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   353: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   356: aload_0
    //   357: invokespecial 835	com/feelingk/iap/IAPActivity:ShowLoadingProgress	()V
    //   360: bipush 102
    //   362: invokestatic 627	com/feelingk/iap/IAPLib:setDialogType	(I)V
    //   365: aload_0
    //   366: getfield 320	com/feelingk/iap/IAPActivity:mPurchaseID	Ljava/lang/String;
    //   369: aload_0
    //   370: getfield 246	com/feelingk/iap/IAPActivity:mEncName	Ljava/lang/String;
    //   373: aload_0
    //   374: getfield 260	com/feelingk/iap/IAPActivity:m_Tid	Ljava/lang/String;
    //   377: aload_0
    //   378: getfield 262	com/feelingk/iap/IAPActivity:m_encBpInfo	Ljava/lang/String;
    //   381: invokestatic 1366	com/feelingk/iap/IAPLib:sendItemInfo	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   384: goto -143 -> 241
    //   387: astore_1
    //   388: aload_0
    //   389: aconst_null
    //   390: putfield 246	com/feelingk/iap/IAPActivity:mEncName	Ljava/lang/String;
    //   393: aload_1
    //   394: invokevirtual 808	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   397: goto -87 -> 310
    //   400: aload_0
    //   401: getfield 244	com/feelingk/iap/IAPActivity:mPurchaseName	Ljava/lang/String;
    //   404: ifnonnull -94 -> 310
    //   407: aload_0
    //   408: aconst_null
    //   409: putfield 246	com/feelingk/iap/IAPActivity:mEncName	Ljava/lang/String;
    //   412: goto -102 -> 310
    //   415: astore_1
    //   416: aload_0
    //   417: aconst_null
    //   418: putfield 262	com/feelingk/iap/IAPActivity:m_encBpInfo	Ljava/lang/String;
    //   421: aload_1
    //   422: invokevirtual 808	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   425: goto -94 -> 331
    //   428: aload_0
    //   429: getfield 318	com/feelingk/iap/IAPActivity:mUsimPurchaseItemWorkFlow	I
    //   432: iconst_3
    //   433: if_icmpne +17 -> 450
    //   436: ldc 84
    //   438: ldc_w 1368
    //   441: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   444: invokestatic 1371	com/feelingk/iap/IAPLib:sendItemWholeAuth	()V
    //   447: goto -206 -> 241
    //   450: aload_0
    //   451: getfield 318	com/feelingk/iap/IAPActivity:mUsimPurchaseItemWorkFlow	I
    //   454: iconst_4
    //   455: if_icmpne +38 -> 493
    //   458: ldc 84
    //   460: new 543	java/lang/StringBuilder
    //   463: dup
    //   464: ldc_w 1373
    //   467: invokespecial 548	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   470: aload_0
    //   471: getfield 320	com/feelingk/iap/IAPActivity:mPurchaseID	Ljava/lang/String;
    //   474: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   477: invokevirtual 556	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   480: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   483: aload_0
    //   484: getfield 320	com/feelingk/iap/IAPActivity:mPurchaseID	Ljava/lang/String;
    //   487: invokestatic 1376	com/feelingk/iap/IAPLib:sendItemAuth	(Ljava/lang/String;)V
    //   490: goto -249 -> 241
    //   493: aload_0
    //   494: getfield 318	com/feelingk/iap/IAPActivity:mUsimPurchaseItemWorkFlow	I
    //   497: iconst_5
    //   498: if_icmpne +38 -> 536
    //   501: ldc 84
    //   503: new 543	java/lang/StringBuilder
    //   506: dup
    //   507: ldc_w 1378
    //   510: invokespecial 548	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   513: aload_0
    //   514: getfield 320	com/feelingk/iap/IAPActivity:mPurchaseID	Ljava/lang/String;
    //   517: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   520: invokevirtual 556	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   523: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   526: aload_0
    //   527: getfield 320	com/feelingk/iap/IAPActivity:mPurchaseID	Ljava/lang/String;
    //   530: invokestatic 1381	com/feelingk/iap/IAPLib:sendItemUse	(Ljava/lang/String;)V
    //   533: goto -292 -> 241
    //   536: aload_0
    //   537: getfield 318	com/feelingk/iap/IAPActivity:mUsimPurchaseItemWorkFlow	I
    //   540: bipush 6
    //   542: if_icmpne -301 -> 241
    //   545: ldc 84
    //   547: new 543	java/lang/StringBuilder
    //   550: dup
    //   551: ldc_w 1383
    //   554: invokespecial 548	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   557: aload_0
    //   558: getfield 320	com/feelingk/iap/IAPActivity:mPurchaseID	Ljava/lang/String;
    //   561: invokevirtual 818	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   564: invokevirtual 556	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   567: invokestatic 562	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   570: aload_0
    //   571: invokestatic 1052	com/feelingk/iap/util/CommonF:getCarrier	(Landroid/content/Context;)I
    //   574: iconst_1
    //   575: if_icmpne +22 -> 597
    //   578: aload_0
    //   579: invokespecial 835	com/feelingk/iap/IAPActivity:ShowLoadingProgress	()V
    //   582: bipush 102
    //   584: invokestatic 627	com/feelingk/iap/IAPLib:setDialogType	(I)V
    //   587: aload_0
    //   588: getfield 320	com/feelingk/iap/IAPActivity:mPurchaseID	Ljava/lang/String;
    //   591: invokestatic 1386	com/feelingk/iap/IAPLib:sendPurchaseDismissCheck	(Ljava/lang/String;)V
    //   594: goto -353 -> 241
    //   597: aload_0
    //   598: bipush 111
    //   600: getstatic 1389	com/feelingk/iap/util/CommonString$Index:ERROR_DLG_AUTO_PURCHASE	Lcom/feelingk/iap/util/CommonString$Index;
    //   603: invokestatic 666	com/feelingk/iap/util/CommonString:getString	(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;
    //   606: invokespecial 870	com/feelingk/iap/IAPActivity:ShowInfoMessageDialog	(ILjava/lang/String;)V
    //   609: goto -368 -> 241
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	612	0	this	IAPActivity
    //   145	7	1	localUnsupportedEncodingException1	UnsupportedEncodingException
    //   387	7	1	localUnsupportedEncodingException2	UnsupportedEncodingException
    //   415	7	1	localUnsupportedEncodingException3	UnsupportedEncodingException
    // Exception table:
    //   from	to	target	type
    //   114	128	145	java/io/UnsupportedEncodingException
    //   296	310	387	java/io/UnsupportedEncodingException
    //   317	331	415	java/io/UnsupportedEncodingException
  }
  
  public boolean isExistOTPLog(String paramString)
  {
    m_strLogFileName = paramString;
    if (Environment.getExternalStorageState().equals("mounted")) {}
    for (;;)
    {
      try
      {
        localObject = new File(Environment.getExternalStorageDirectory() + "/" + m_strLogFileName);
        localObject = new FileInputStream((File)localObject);
        localBufferedReader = new BufferedReader(new InputStreamReader((InputStream)localObject));
      }
      catch (FileNotFoundException paramString)
      {
        Object localObject;
        BufferedReader localBufferedReader;
        paramString.printStackTrace();
        return false;
      }
      catch (IOException paramString)
      {
        paramString.printStackTrace();
        continue;
      }
      try
      {
        localBufferedReader.readLine();
        CommonF.LOGGER.i("IAPActivity", paramString + " Log Read OK");
        ((FileInputStream)localObject).close();
        return true;
      }
      catch (IOException paramString)
      {
        continue;
      }
      catch (FileNotFoundException paramString)
      {
        continue;
      }
      localObject = new File(dirPath + "/" + m_strLogFileName);
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    CommonF.LOGGER.e("IAPActivity", "##   onActivityResult :" + paramInt2 + "request: " + paramInt1);
    if (paramInt1 == 880917)
    {
      if (paramInt2 != -1) {
        break label194;
      }
      DismissPurchaseDialog();
      CommonF.LOGGER.e("IAPActivity", "[onActivityResult] pwdAuthFlag: " + this.pwdAuthFlag);
      paramInt1 = 0;
      if (CommonF.getCarrier(this) == 3) {
        paramInt1 = 1;
      }
      if (paramInt1 == 0) {
        break label177;
      }
      DismissPurchaseDialog();
      if (SingletonCounter.getInstance().getmPostPay() <= 0) {
        break label152;
      }
      CommonF.LOGGER.i("IAPActivity", "후불결제 금액 0원 초과");
      showLguSMSAuthDlg();
      this.pwdAuthFlag = true;
      CommonF.LOGGER.e("IAPActivity", "[onActivityResult 2] pwdAuthFlag: " + this.pwdAuthFlag);
    }
    label152:
    label177:
    label194:
    while (CommonF.getCarrier(this) != 3) {
      for (;;)
      {
        return;
        IAPLib.setDialogType(103);
        CommonF.LOGGER.i("IAPActivity", "후불결제 금액이 존재하지 않음");
        this.onPurchasePopupCallback.onPurchaseButtonClick();
        continue;
        IAPLib.setDialogType(103);
        this.onPurchasePopupCallback.onPurchaseButtonClick();
      }
    }
    CommonF.LOGGER.i("IAPActivity", "[onActivityResult] mCurTelecom is LG_TELECOM");
    CommonF.LOGGER.i("IAPActivity", "[onActivityResult] result code is not RESULT_OK");
    CommonF.LOGGER.i("IAPActivity", "[onActivityResult] showPurchaseDialog Pop!!");
    if (this.mItemInfoConfirm != null)
    {
      ShowPurchaseDialog(this.mItemInfoConfirm);
      IAPLib.setDialogType(103);
      return;
    }
    CommonF.LOGGER.i("IAPActivity", "[onActivityResult] mItemInfoConfirm is null");
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!isEnablePermission())
    {
      paramBundle = new AlertDialog.Builder(this);
      paramBundle.setTitle(CommonString.getString(CommonString.Index.WARNING_PERMISSION));
      paramBundle.setMessage(this.mStrNotExistPermissionList.substring(0, this.mStrNotExistPermissionList.length() - 2));
      paramBundle.setPositiveButton(CommonString.getString(CommonString.Index.CONFIRM), null);
      paramBundle = paramBundle.create();
      paramBundle.show();
      paramBundle.setOnDismissListener(new DialogInterface.OnDismissListener()
      {
        public void onDismiss(DialogInterface paramAnonymousDialogInterface)
        {
          IAPActivity.this.finish();
        }
      });
      return;
    }
    CommonF.LOGGER.i("IAPActivity", "IAPActivity onCreate ");
    IAPLibDeviceCheck();
    dirPath = getApplicationContext().getFilesDir().getAbsolutePath();
    this.m_telephonyManager = ((TelephonyManager)getSystemService("phone"));
    if ((getWindow().getAttributes().flags & 0x400) > 0)
    {
      this.mPurchaseDlg = new PurchaseDialog(this, 16973841, this.onPurchasePopupCallback, this.mTabDevice);
      this.mJuminAuth = new PopJuminNumberAuth(this, 16973841, this.onJuminDialogPopupCallback, this.mTabDevice);
      this.mPopupDlg = new PopupDialog(this, this.onParserPopupDlgResultCallback, 16973841, this.mTabDevice);
      this.mYesNoDlg = new PopupYesNoDialog(this, this.onPopupCallback, 16973841);
      this.mImageDlg = new PopupImageDialog(this, this.onImageResultCallback, 16973841);
      this.mAutoPurchaseFormDlg = new PopupAutoPurchaseFormDialog(this, this.onAutoPurchaseFormResultCallback, 16973841);
      this.mJoinDlg = new PopupJoinDialog(this, this.onJoinResultCallback, 16973841);
      this.mOtpDlg = new PopupOTPDialog(this, 16973841, this.onOtpCallback);
      this.mLguSmsDlg = new PopLguSmsAuthDialog(this, this.onLguSmsCallback, 16973841);
      this.mImeiAuthDlg = new PopupImeiAuthDialog(this, this.onImeiAuthCallback, 16973841);
      this.mOCBDlg = new PopupOCBDialog(this, 16973841, this.onOcbCallback);
      this.mCultureLandLoginDlg = new PopupCultureLandLoginDialog(this, 16973841, this.onCultureLandCallback);
      this.mDotoriSmsAuthDlg = new PopupDotoriSmsAuth(this, 16973841, this.onDotoriSmsAuthCallback);
    }
    for (this.mForeignInputMDN = new ForeignInputMDN(this, this.onForeignInputMDNCallback, 16973841, this.mTabDevice);; this.mForeignInputMDN = new ForeignInputMDN(this, this.onForeignInputMDNCallback, 16973840, this.mTabDevice))
    {
      RestoreData();
      return;
      this.mPurchaseDlg = new PurchaseDialog(this, 16973840, this.onPurchasePopupCallback, this.mTabDevice);
      this.mJuminAuth = new PopJuminNumberAuth(this, 16973840, this.onJuminDialogPopupCallback, this.mTabDevice);
      this.mPopupDlg = new PopupDialog(this, this.onParserPopupDlgResultCallback, 16973840, this.mTabDevice);
      this.mYesNoDlg = new PopupYesNoDialog(this, this.onPopupCallback, 16973840);
      this.mImageDlg = new PopupImageDialog(this, this.onImageResultCallback, 16973840);
      this.mAutoPurchaseFormDlg = new PopupAutoPurchaseFormDialog(this, this.onAutoPurchaseFormResultCallback, 16973840);
      this.mJoinDlg = new PopupJoinDialog(this, this.onJoinResultCallback, 16973840);
      this.mOtpDlg = new PopupOTPDialog(this, 16973840, this.onOtpCallback);
      this.mLguSmsDlg = new PopLguSmsAuthDialog(this, this.onLguSmsCallback, 16973840);
      this.mImeiAuthDlg = new PopupImeiAuthDialog(this, this.onImeiAuthCallback, 16973840);
      this.mOCBDlg = new PopupOCBDialog(this, 16973840, this.onOcbCallback);
      this.mCultureLandLoginDlg = new PopupCultureLandLoginDialog(this, 16973840, this.onCultureLandCallback);
      this.mDotoriSmsAuthDlg = new PopupDotoriSmsAuth(this, 16973840, this.onDotoriSmsAuthCallback);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    int i = IAPLib.getDialogType();
    CommonF.LOGGER.e("IAPActivity", "IAPActivity onPause [" + i + "]");
    this.mDlgType = String.valueOf(i);
    if (i == 104) {
      return;
    }
    IAPLib.getNetHandler().obtainMessage(1102).sendToTarget();
    if (i == 102)
    {
      DismissLoaingProgress();
      IAPLib.setDialogType(100);
    }
    for (;;)
    {
      IAPLib.setUIHandler(null);
      return;
      if (i == 103)
      {
        DismissPurchaseDialog();
      }
      else if (i == 107)
      {
        DismissJoinDialog();
      }
      else if (i == 108)
      {
        DismissAutoPurchaseFormDialog();
      }
      else if (i == 105)
      {
        DismissInfoMessageDialog();
      }
      else if ((i == 101) || (i == 127) || (i == 128) || (i == 130))
      {
        DismissInfoMessageDialog();
        if (isFinishing()) {
          IAPLib.setDialogType(100);
        }
      }
      else if (i == 115)
      {
        DismissYesNoDialog();
      }
      else if (i == 106)
      {
        DismissJuminAuthDialog();
      }
      else if (i == 124)
      {
        DismissForeignInputMDNDialog();
      }
      else if (i == 112)
      {
        DismissInfoMessageDialog();
      }
      else if (i == 104)
      {
        DismissLoaingProgress();
        IAPLib.setDialogType(100);
      }
      else if (i == 114)
      {
        DismissOtpDlg();
      }
      else if (i == 116)
      {
        DismissInfoMessageDialog();
      }
      else if (i == 117)
      {
        DismissInfoMessageDialog();
        DismissLguSMSAuthDlg();
      }
      else if (i == 118)
      {
        DismissImeiAuthDlg();
      }
      else if (i == 120)
      {
        DismissOCBRegDialog();
      }
      else if (i == 121)
      {
        DismissOCBPWDDialog();
      }
      else if (i == 122)
      {
        DismissCultureLandLoginDialog();
      }
      else if (i == 123)
      {
        DismissDotoriSmsAuthDialog();
      }
      else if (i == 129)
      {
        DismissYesNoDialog();
      }
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    IAPLibDeviceCheck();
    CommonF.LOGGER.i("IAPActivity", "onResume - m_phoneUSIMState: " + this.m_phoneUSIMState);
    int i = 100;
    if (this.mDlgType != null) {
      i = Integer.parseInt(this.mDlgType);
    }
    CommonF.LOGGER.e("IAPActivity", "IAPActivity onResume [" + i + "]");
    IAPLib.setUIHandler(this.mGUIMessageHandler);
    if (CommonF.getCarrier(this) != 1)
    {
      String str = IAPLib.getEncJuminNumber();
      if (str != null) {
        IAPLib.updateEncJuminNumber(str);
      }
    }
    if (i == 103) {
      ShowPurchaseDialog(this.mItemInfoConfirm);
    }
    do
    {
      return;
      if (i == 107)
      {
        popupJoinDlg();
        IAPLib.setDialogType(107);
        return;
      }
      if (i == 108)
      {
        popupAutoPurchaseFormDlg(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
        IAPLib.setDialogType(108);
        return;
      }
      if (i == 105)
      {
        ShowInfoMessageDialog(i, this.mMsgItemInfo);
        return;
      }
      if (i == 106)
      {
        ShowJuminAuthDialog();
        return;
      }
      if (i == 124)
      {
        ShowForeignInputMDNDialog();
        return;
      }
      if (i == 112)
      {
        ShowInfoMessageDialog(i, this.mMsgItemInfo);
        return;
      }
      if ((i == 101) || (i == 127) || (i == 128) || (i == 130))
      {
        ShowInfoMessageDialog(i, this.mErrorMessage);
        return;
      }
      if (i == 115)
      {
        popupYesNoDlg(this.mYesNoMessage);
        return;
      }
      if (i == 114)
      {
        showPopOtpDlg();
        return;
      }
      if (i == 116)
      {
        ShowInfoMessageDialog(i, this.mMsgItemInfo);
        return;
      }
      if (i == 117)
      {
        showLguSMSAuthDlg();
        return;
      }
      if (i == 118)
      {
        showImeiAuthDlg();
        return;
      }
      if (i == 120)
      {
        ShowOCBRegDialog(IAPLib.getOcbCardUpdateType());
        return;
      }
      if (i == 121)
      {
        ShowOCBPWDDialog();
        return;
      }
      if (i == 122)
      {
        ShowCultureLandLoginDialog();
        return;
      }
      if (i == 123)
      {
        ShowDotoriSmsAutnDialog();
        return;
      }
      if (i == 125)
      {
        CommonF.LOGGER.i("IAPActivity", "# popPurchaseDlg TID= " + this.m_Tid);
        ShowLoadingProgress();
        IAPLib.setDialogType(102);
        IAPLib.sendItemInfo(this.mPurchaseID, this.mEncName, this.m_Tid, this.m_encBpInfo);
        return;
      }
    } while (i != 129);
    IAPLib.setDialogType(126);
    popupYesNoDlg(this.mYesNoMessage);
  }
  
  public Object onRetainNonConfigurationInstance()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("NET_MESSAGE", this.mMsgItemInfo);
    localHashMap.put("ERR_MESSAGE", this.mErrorMessage);
    localHashMap.put("YESNO_MESSAGE", this.mYesNoMessage);
    localHashMap.put("USE_BPPROTOCOL", this.mSetBPProtocol);
    localHashMap.put("PRODUCT_NAME", this.mPurchaseName);
    localHashMap.put("PRODUCT_INFO", this.mItemInfoConfirm);
    localHashMap.put("PURCHASEID", this.mPurchaseID);
    localHashMap.put("LGUSMSAUTHCHECKTIME", this.mSmsAuthCheckTime);
    localHashMap.put("DOTORISMSAUTHCHECKTIME", this.mDotoriSmsAuthCheckTime);
    localHashMap.put("DLGTYPE", this.mDlgType);
    localHashMap.put("ENCNAME", this.mEncName);
    localHashMap.put("TID", this.m_Tid);
    localHashMap.put("ENCBPINFO", this.m_encBpInfo);
    return localHashMap;
  }
  
  protected void popPurchaseDlg(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.mPurchaseID = paramString1;
    if ((paramString4 != null) && (paramString4.length() == 0))
    {
      this.mPurchaseBPInfo = null;
      if (paramString2 == null) {
        break label89;
      }
      if (!paramString2.contentEquals("")) {
        break label81;
      }
      this.mPurchaseName = null;
      label41:
      if ((paramString3 == null) || (paramString3.length() == 0)) {
        break label97;
      }
    }
    for (;;)
    {
      this.m_Tid = paramString3;
      this.mUsimCheckFlag = true;
      this.mUsimPurchaseItemWorkFlow = 2;
      IAPLibUSIMStateCheck();
      return;
      this.mPurchaseBPInfo = paramString4;
      break;
      label81:
      this.mPurchaseName = paramString2;
      break label41;
      label89:
      this.mPurchaseName = null;
      break label41;
      label97:
      paramString3 = CommonF.getTID(this, paramString1);
    }
  }
  
  protected void popupAutoPurchaseFormDlg(String paramString1, String paramString2)
  {
    this.mAutoPurchaseFormDlg.InflateView(113, paramString1, paramString2, new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        IAPActivity.this.mAutoPurchaseFormDlg.ClosePopupAutoPurchaseFormDialog();
      }
    }, this.mRotaion);
    this.mAutoPurchaseFormDlg.ShowPopupAutoPurchaseFormDialog();
  }
  
  protected void popupImageDlg(String paramString)
  {
    this.mImageDlg.InflateView(105, paramString, this.onImageConfirmInfoListener);
    this.mImageDlg.ShowPopupImageDialog();
  }
  
  protected void popupJoinDlg()
  {
    this.mJoinDlg.InflateView(107, null, this.onJoinInfoListener, this.mRotaion);
    this.mJoinDlg.ShowPopupJoinDialog();
  }
  
  protected void popupYesNoDlg(String paramString)
  {
    if (IAPLib.getDialogType() == 126)
    {
      this.mYesNoDlg.InflateView(129, paramString, this.onYesNoConfirmInfoListener);
      this.mYesNoDlg.ShowPopupYesNoDialog();
      IAPLib.setDialogType(129);
      return;
    }
    this.mYesNoDlg.InflateView(105, paramString, this.onYesNoConfirmInfoListener);
    this.mYesNoDlg.ShowPopupYesNoDialog();
    IAPLib.setDialogType(115);
  }
  
  protected byte[] sendBPData(byte[] paramArrayOfByte)
  {
    if ((this.mSetting.BP_IP == null) || (this.mSetting.BP_Port <= 1))
    {
      CommonF.LOGGER.i("IAPActivity", "sendBPData - BP Server IP is null or invalid Port Number");
      return null;
    }
    CommonF.LOGGER.i("IAPActivity", "# sendBPData");
    return IAPLib.sendBPData(paramArrayOfByte);
  }
  
  protected void sendItemAuth(String paramString)
  {
    this.mPurchaseID = paramString;
    this.mUsimCheckFlag = true;
    this.mUsimPurchaseItemWorkFlow = 4;
    IAPLibUSIMStateCheck();
  }
  
  protected void sendItemUse(String paramString)
  {
    this.mPurchaseID = paramString;
    this.mUsimCheckFlag = true;
    this.mUsimPurchaseItemWorkFlow = 5;
    IAPLibUSIMStateCheck();
  }
  
  protected void sendItemWholeAuth()
  {
    this.mUsimCheckFlag = true;
    this.mUsimPurchaseItemWorkFlow = 3;
    IAPLibUSIMStateCheck();
  }
  
  protected void sendPurchaseDismiss(String paramString1, String paramString2)
  {
    this.mPurchaseID = paramString1;
    this.mPurchaseName = paramString2;
    this.mUsimCheckFlag = true;
    this.mUsimPurchaseItemWorkFlow = 6;
    IAPLibUSIMStateCheck();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.IAPActivity
 * JD-Core Version:    0.7.0.1
 */