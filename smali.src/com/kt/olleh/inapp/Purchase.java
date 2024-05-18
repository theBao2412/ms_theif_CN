package com.kt.olleh.inapp;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnKeyListener;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import android.view.View;
import com.kt.olleh.inapp.Config.Config;
import com.kt.olleh.inapp.dialog.DialogAlert;
import com.kt.olleh.inapp.dialog.DialogLogin;
import com.kt.olleh.inapp.dialog.DialogOnClickListener;
import com.kt.olleh.inapp.dialog.DialogPay;
import com.kt.olleh.inapp.dialog.DialogProgress;
import com.kt.olleh.inapp.dialog.DialogSelect;
import com.kt.olleh.inapp.net.ResCheckShowId;
import com.kt.olleh.inapp.net.ResDIBuy;
import com.kt.olleh.inapp.net.ResDIDetail;
import com.kt.olleh.inapp.net.Response;
import java.text.DecimalFormat;

public class Purchase
{
  public static int Dialog_Mode = -1;
  public static int Pay_Alert_Mode = -1;
  private final int Dialog_Alert = 1000;
  private final int Dialog_Dismiss = 1004;
  private final int Dialog_List = 1001;
  private final int Dialog_Loding = 1003;
  private final int Dialog_Login = 1005;
  private final int Dialog_Pay = 1002;
  private final int Dialog_Select = 1006;
  private final int Pay_Alert_Mode_01 = 1011;
  private final int Pay_Alert_Mode_02 = 1012;
  private final int Pay_Alert_Mode_03 = 1013;
  private final int Pay_Alert_Mode_04 = 1014;
  public final String TAG = "KTInAppActivity";
  public Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      }
      do
      {
        return;
        Purchase.this.LoginDialog();
        return;
        Purchase.this.AlertDialog();
        return;
        Purchase.this.PayDialog(Purchase.Pay_Alert_Mode);
        return;
        Purchase.this.LodingDialog();
        return;
        Purchase.this.SelectDialog();
        return;
      } while (Purchase.this.mDialog_progress == null);
      Purchase.this.mDialog_progress.dismiss();
      Purchase.this.mDialog_progress = null;
    }
  };
  private String mApplicationID = null;
  private String mAuthen;
  private String mCardName = null;
  private Context mContext;
  private Dialog mDialog;
  private int mDialog_BtnCnt = -1;
  private String mDialog_Btn_Text_01 = null;
  private String mDialog_Btn_Text_02 = null;
  private String mDialog_Message = null;
  private String mDialog_Title = null;
  private DialogProgress mDialog_progress;
  private String mDigitalID = null;
  private InApp mInApp = null;
  OnInAppListener mInAppListener = new OnInAppListener()
  {
    public void OnError(String paramAnonymousString1, String paramAnonymousString2)
    {
      if (Purchase.this.mDialog_progress != null) {
        Purchase.this.SendMessage(1004);
      }
      if (Purchase.this.mListener != null) {
        Purchase.this.mListener.OnError(paramAnonymousString1, paramAnonymousString2);
      }
    }
    
    public void OnResultAPI(String paramAnonymousString, Response paramAnonymousResponse)
    {
      if (Purchase.this.mDialog_progress != null) {
        Purchase.this.SendMessage(1004);
      }
      if (paramAnonymousString.equalsIgnoreCase("getDiDetail"))
      {
        paramAnonymousString = (ResDIDetail)paramAnonymousResponse;
        Purchase.this.mItem_Price = Integer.parseInt(paramAnonymousString.getPrice());
        Purchase.this.mItem_Name = paramAnonymousString.getDiTitle();
        Purchase.this.mDialog_Message = "해당 아이템을 구매하시겠습니까?";
        Purchase.this.mDialog_BtnCnt = 2;
        Purchase.this.mDialog_Btn_Text_01 = "예";
        Purchase.this.mDialog_Btn_Text_02 = "아니오";
        Purchase.this.mIsPayInformation = true;
        Purchase.Pay_Alert_Mode = 1011;
        Purchase.this.SendMessage(1002);
      }
      do
      {
        return;
        if (paramAnonymousString.equalsIgnoreCase("buyDi"))
        {
          paramAnonymousString = (ResDIBuy)paramAnonymousResponse;
          Purchase.this.mTr_ID = paramAnonymousString.mTr_id;
          Purchase.Pay_Alert_Mode = 1013;
          Purchase.this.mDialog_BtnCnt = 1;
          Purchase.this.mDialog_Btn_Text_01 = "확인";
          Purchase.this.mDialog_Message = "결제가 완료되었습니다.";
          Purchase.this.mIsPayInformation = false;
          Purchase.this.SendMessage(1002);
          return;
        }
      } while (!paramAnonymousString.equalsIgnoreCase("checkShowId"));
      paramAnonymousString = (ResCheckShowId)paramAnonymousResponse;
      Purchase.this.purchaseGetInfo();
    }
    
    public void OnResultFileURL(String paramAnonymousString1, String paramAnonymousString2) {}
    
    public void OnResultOLDAPI(String paramAnonymousString1, String paramAnonymousString2)
    {
      if (Purchase.this.mListener != null) {
        Purchase.this.mListener.OnResultOLDAPI(paramAnonymousString1, paramAnonymousString2);
      }
    }
    
    public void OnResultPurchase(String paramAnonymousString) {}
  };
  private boolean mIsPayInformation = false;
  private boolean mIsPayMessage = false;
  private String mItem_Name = null;
  private int mItem_Price = -1;
  private int mLibMode = -1;
  private OnInAppListener mListener = null;
  private DialogLogin mLoginDialog;
  private String mPay_Type = null;
  private String mTr_ID = null;
  
  private String getUserInfo()
  {
    if (InAppSettings.UserInfo == null) {
      switch (this.mLibMode)
      {
      }
    }
    for (;;)
    {
      if ((InAppSettings.UserInfo != null) && (Config.DEBUG)) {
        Config.LogE("KTInAppActivity", "UserInfo.information = " + InAppSettings.UserInfo);
      }
      return InAppSettings.UserInfo;
      InAppSettings.UserInfo = ((TelephonyManager)this.mContext.getSystemService("phone")).getLine1Number();
      continue;
      if (Config.DEBUG)
      {
        Config.LogE("KTInAppActivity", "ILibMode.mode_SoIP number not exist");
        continue;
        if (Config.DEBUG) {
          Config.LogE("KTInAppActivity", "ILibMode.mode_KPAD Show ID not exist");
        }
      }
    }
  }
  
  public void AlertDialog()
  {
    Dialog_Mode = 1000;
    DialogAlert localDialogAlert = new DialogAlert(this.mContext, this.mDialog_BtnCnt);
    localDialogAlert.setTitle(this.mDialog_Title);
    localDialogAlert.setMessage(this.mDialog_Message);
    localDialogAlert.setButton(0, "확인", new DialogOnClickListener(localDialogAlert)
    {
      public void onClick(View paramAnonymousView)
      {
        super.onClick(paramAnonymousView);
      }
    });
    localDialogAlert.setButton(1, "취소", new DialogOnClickListener(localDialogAlert)
    {
      public void onClick(View paramAnonymousView)
      {
        super.onClick(paramAnonymousView);
      }
    });
    localDialogAlert.show();
    this.mDialog = localDialogAlert;
  }
  
  public void LodingDialog()
  {
    Dialog_Mode = 1003;
    this.mDialog_progress = new DialogProgress(this.mContext, this.mDialog_Message);
    this.mDialog_progress.setOnKeyListener(new DialogInterface.OnKeyListener()
    {
      public boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousKeyEvent.getAction() == 0) && (paramAnonymousInt == 4) && (paramAnonymousKeyEvent.getRepeatCount() == 0)) {
          paramAnonymousKeyEvent.startTracking();
        }
        while ((paramAnonymousKeyEvent.getAction() == 1) && (paramAnonymousInt == 4) && (paramAnonymousKeyEvent.isTracking()) && (!paramAnonymousKeyEvent.isCanceled())) {
          return true;
        }
        return false;
      }
    });
    this.mDialog_progress.show();
  }
  
  public void LoginDialog()
  {
    Dialog_Mode = 1005;
    this.mLoginDialog = new DialogLogin(this.mContext);
    this.mLoginDialog.setTitle("Olleh.com 로그인");
    this.mLoginDialog.setButton(0, new DialogOnClickListener(this.mLoginDialog)
    {
      public void onClick(View paramAnonymousView)
      {
        super.onClick(paramAnonymousView);
        Purchase.this.requestCheckShowId(Purchase.this.mLoginDialog.getID(), Purchase.this.mLoginDialog.getPassword());
        Purchase.this.mDialog_Btn_Text_01 = "취소";
        Purchase.this.mDialog_Message = "로그인 중...";
        Purchase.this.SendMessage(1003);
      }
    });
    this.mLoginDialog.setButton(1, new DialogOnClickListener(this.mLoginDialog)
    {
      public void onClick(View paramAnonymousView)
      {
        super.onClick(paramAnonymousView);
      }
    });
    this.mLoginDialog.show();
    this.mDialog = this.mLoginDialog;
  }
  
  public void PayDialog(final int paramInt)
  {
    Dialog_Mode = 1002;
    DialogPay localDialogPay = new DialogPay(this.mContext, this.mDialog_BtnCnt, "/layout/dialog_pay.xml");
    if (paramInt == 1014)
    {
      localDialogPay.setTitle("결제 확인");
      localDialogPay.setMessage(this.mDialog_Message);
      localDialogPay.setBgColor(false);
    }
    for (;;)
    {
      localDialogPay.setButton(0, this.mDialog_Btn_Text_01, new DialogOnClickListener(localDialogPay)
      {
        public void onClick(View paramAnonymousView)
        {
          super.onClick(paramAnonymousView);
          switch (paramInt)
          {
          default: 
          case 1011: 
          case 1012: 
          case 1013: 
            do
            {
              return;
              Purchase.Pay_Alert_Mode = 1012;
              Purchase.this.mDialog_BtnCnt = 2;
              Purchase.this.mDialog_Btn_Text_01 = "예";
              Purchase.this.mDialog_Btn_Text_02 = "아니오";
              Purchase.this.mDialog_Message = "결제를 재확인합니다.";
              Purchase.this.mIsPayInformation = false;
              Purchase.this.SendMessage(1002);
              return;
              Purchase.this.requestDIBuy(Purchase.this.mApplicationID, Purchase.this.mDigitalID, "DP", "1111112222222");
              Purchase.this.mDialog_Btn_Text_01 = "취소";
              Purchase.this.mDialog_Message = "결제 요청 중...";
              Purchase.this.SendMessage(1003);
              return;
            } while (Purchase.this.mListener == null);
            Purchase.this.mListener.OnResultPurchase(Purchase.this.mTr_ID);
            return;
          }
          Purchase.this.userCancelResponse();
        }
      });
      localDialogPay.setButton(1, this.mDialog_Btn_Text_02, new DialogOnClickListener(localDialogPay)
      {
        public void onClick(View paramAnonymousView)
        {
          super.onClick(paramAnonymousView);
          switch (paramInt)
          {
          default: 
            return;
          }
          Purchase.this.purchaseErrorDialog("결제를 하지 않으셨습니다.");
        }
      });
      localDialogPay.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          switch (paramInt)
          {
          default: 
          case 1011: 
          case 1012: 
          case 1013: 
            do
            {
              return;
              Purchase.this.purchaseErrorDialog("결제를 하지 않으셨습니다.");
              return;
            } while (Purchase.this.mListener == null);
            Purchase.this.mListener.OnResultPurchase(Purchase.this.mTr_ID);
            return;
          }
          Purchase.this.userCancelResponse();
        }
      });
      localDialogPay.setPayInformation(this.mIsPayInformation);
      localDialogPay.setPayMessage(this.mIsPayMessage);
      localDialogPay.show();
      this.mDialog = localDialogPay;
      return;
      if (paramInt != 1012) {
        break;
      }
      localDialogPay.setTitle("결제 확인");
      localDialogPay.setMessage(this.mDialog_Message);
      str1 = String.format("%s을 결제하시겠습니까?", new Object[] { getPriceFormat(Integer.toString(this.mItem_Price)) });
      localDialogPay.setPayNameTitle(false);
      localDialogPay.setPayNameMessage(1, null);
      localDialogPay.setPayNameMessage(2, null);
      localDialogPay.setPayMoneyMessage(str1);
      localDialogPay.setPayTypeMessage(null);
      this.mIsPayMessage = true;
      this.mIsPayInformation = false;
      localDialogPay.setBgColor(true);
    }
    localDialogPay.setTitle("결제 확인");
    localDialogPay.setMessage(this.mDialog_Message);
    String str1 = getPriceFormat(Integer.toString(this.mItem_Price));
    localDialogPay.setPayNameTitle(true);
    if (this.mItem_Name.length() > 12)
    {
      String str2 = this.mItem_Name.substring(0, 12);
      String str3 = this.mItem_Name.substring(12);
      localDialogPay.setPayNameMessage(1, str2);
      localDialogPay.setPayNameMessage(2, str3);
    }
    for (;;)
    {
      localDialogPay.setPayMoneyMessage(String.format("결제금액:%s(부가세별도)", new Object[] { str1 }));
      localDialogPay.setPayTypeMessage(String.format("결제방식:%s", new Object[] { this.mPay_Type }));
      this.mIsPayMessage = true;
      localDialogPay.setBgColor(false);
      break;
      localDialogPay.setPayNameMessage(1, this.mItem_Name);
      localDialogPay.setPayNameMessage(2, null);
    }
  }
  
  public void SelectDialog()
  {
    Dialog_Mode = 1006;
    DialogSelect localDialogSelect = new DialogSelect(this.mContext);
    localDialogSelect.setOnItemClickListener(new DialogOnClickListener(localDialogSelect)
    {
      public Dialog getDialog()
      {
        return super.getDialog();
      }
      
      public void onClick(View paramAnonymousView)
      {
        super.onClick(paramAnonymousView);
        paramAnonymousView = paramAnonymousView.getTag().toString();
        if ("1".equalsIgnoreCase(paramAnonymousView))
        {
          Purchase.this.mAuthen = "01";
          Purchase.this.mPay_Type = "핸드폰 결제";
        }
        for (;;)
        {
          Purchase.this.getDIInformation(Purchase.this.mApplicationID, Purchase.this.mDigitalID);
          Purchase.this.mDialog_Btn_Text_01 = "취소";
          Purchase.this.mDialog_Message = "정보요청중..";
          Purchase.this.SendMessage(1003);
          return;
          if ("2".equalsIgnoreCase(paramAnonymousView))
          {
            Purchase.this.mAuthen = "02";
            Purchase.this.mPay_Type = "인터넷전화 결제";
          }
        }
      }
    });
    localDialogSelect.setOnCancelListener(new DialogOnClickListener(localDialogSelect)
    {
      public void onClick(View paramAnonymousView)
      {
        super.onClick(paramAnonymousView);
      }
    });
    localDialogSelect.show();
    this.mDialog = localDialogSelect;
  }
  
  public void SendMessage(int paramInt)
  {
    Message localMessage = this.handler.obtainMessage();
    localMessage.what = paramInt;
    this.handler.sendMessage(localMessage);
  }
  
  public void getDIInformation(String paramString1, String paramString2)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    String str = getUserInfo();
    this.mInApp.getDIInformation(paramString1, paramString2, str, this.mAuthen, this.mInAppListener);
  }
  
  public Object getData()
  {
    Data localData = new Data();
    localData.Dialog_BtnCnt = this.mDialog_BtnCnt;
    localData.Dialog_Mode = Dialog_Mode;
    localData.Dialog_Message = this.mDialog_Message;
    localData.Dialog_Btn_Text_01 = this.mDialog_Btn_Text_01;
    localData.Dialog_Btn_Text_02 = this.mDialog_Btn_Text_02;
    localData.Pay_Type = this.mPay_Type;
    localData.isPayInformation = this.mIsPayInformation;
    localData.isPayMessage = this.mIsPayMessage;
    localData.CardName = this.mCardName;
    localData.Pay_Alert_Mode = Pay_Alert_Mode;
    localData.Item_Name = this.mItem_Name;
    localData.Item_Price = this.mItem_Price;
    return localData;
  }
  
  public String getPriceFormat(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    double d = Integer.parseInt(paramString);
    localStringBuffer.append(new DecimalFormat("#,##0").format(d));
    return localStringBuffer.toString() + "원";
  }
  
  public void onCreate(Context paramContext, String paramString1, String paramString2, OnInAppListener paramOnInAppListener, int paramInt)
  {
    this.mApplicationID = paramString1;
    this.mDigitalID = paramString2;
    this.mContext = paramContext;
    this.mListener = paramOnInAppListener;
    this.mTr_ID = null;
    this.mLibMode = paramInt;
    this.mInApp = new InApp();
    switch (this.mLibMode)
    {
    default: 
      return;
    case 0: 
      this.mAuthen = "01";
      purchaseGetInfo();
      return;
    case 1: 
      this.mAuthen = "02";
      purchaseGetInfo();
      return;
    }
    this.mAuthen = "03";
    if (InAppSettings.UserInfo == null)
    {
      SendMessage(1005);
      return;
    }
    purchaseGetInfo();
  }
  
  public void onDestroy()
  {
    this.mDialog_BtnCnt = -1;
    this.mDialog_Title = null;
    this.mDialog_Message = null;
    this.mDialog_Btn_Text_01 = null;
    this.mDialog_Btn_Text_02 = null;
    this.mIsPayInformation = false;
    this.mIsPayMessage = false;
    this.mCardName = null;
    this.mItem_Name = null;
    this.mItem_Price = -1;
    this.mPay_Type = null;
    this.mAuthen = null;
    if (this.mDialog != null)
    {
      if (this.mDialog.isShowing()) {
        this.mDialog.dismiss();
      }
      this.mDialog = null;
    }
    this.mContext = null;
    this.mInApp = null;
    this.mApplicationID = null;
    this.mDigitalID = null;
    this.mListener = null;
    this.mLibMode = -1;
  }
  
  public void purchaseErrorDialog(String paramString)
  {
    Pay_Alert_Mode = 1014;
    this.mDialog_BtnCnt = 1;
    this.mDialog_Btn_Text_01 = "확인";
    this.mDialog_Message = paramString;
    this.mIsPayInformation = false;
    this.mIsPayMessage = false;
    SendMessage(1002);
  }
  
  public void purchaseGetInfo()
  {
    getDIInformation(this.mApplicationID, this.mDigitalID);
    this.mDialog_Btn_Text_01 = "취소";
    this.mDialog_Message = "처리 중...";
    this.mPay_Type = "핸드폰 결제";
    SendMessage(1003);
  }
  
  public void requestCheckShowId(String paramString1, String paramString2)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    this.mInApp.requestCheckShowId(paramString1, paramString2, this.mInAppListener);
  }
  
  public void requestDIBuy(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    String str = getUserInfo();
    this.mInApp.requestDIBuy(paramString1, paramString2, str, this.mAuthen, paramString3, paramString4, this.mInAppListener);
  }
  
  public void setContext(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public void setData(Object paramObject)
  {
    paramObject = (Data)paramObject;
    if (paramObject != null)
    {
      this.mDialog_BtnCnt = paramObject.Dialog_BtnCnt;
      Dialog_Mode = paramObject.Dialog_Mode;
      this.mDialog_Message = paramObject.Dialog_Message;
      this.mDialog_Btn_Text_01 = paramObject.Dialog_Btn_Text_01;
      this.mDialog_Btn_Text_02 = paramObject.Dialog_Btn_Text_02;
      this.mPay_Type = paramObject.Pay_Type;
      this.mIsPayInformation = paramObject.isPayInformation;
      this.mIsPayMessage = paramObject.isPayMessage;
      this.mCardName = paramObject.CardName;
      Pay_Alert_Mode = paramObject.Pay_Alert_Mode;
      this.mItem_Name = paramObject.Item_Name;
      this.mItem_Price = paramObject.Item_Price;
      if (Dialog_Mode > 0) {
        SendMessage(Dialog_Mode);
      }
    }
  }
  
  public void userCancelResponse()
  {
    if (this.mListener != null) {
      this.mListener.OnError("I001", "사용자 요청에 의한 취소");
    }
  }
  
  class Data
  {
    String CardName;
    int Dialog_BtnCnt;
    String Dialog_Btn_Text_01;
    String Dialog_Btn_Text_02;
    String Dialog_Message;
    int Dialog_Mode;
    String Item_Name;
    int Item_Price;
    int Pay_Alert_Mode;
    String Pay_Type;
    boolean isPayInformation;
    boolean isPayMessage;
    
    Data() {}
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.Purchase
 * JD-Core Version:    0.7.0.1
 */