package com.feelingk.iap.gui.parser;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Handler;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.Spanned;
import android.text.TextUtils.TruncateAt;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.feelingk.iap.IAPLib;
import com.feelingk.iap.gui.data.PurchaseItem;
import com.feelingk.iap.gui.data.SingletonCounter;
import com.feelingk.iap.net.ItemInfoConfirm;
import com.feelingk.iap.net.SellerInfoConfirm;
import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.CommonF.LOGGER;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.CommonString.Index;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import junit.framework.Assert;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class ParserXML
  extends Activity
{
  static final String TAG = "ParserXML";
  private static String mCultureLandID = null;
  private static boolean mCultureLoginFlag;
  private static LinearLayout mJumiLlView;
  private static Button mLguSmsAuthBtn;
  private static Boolean mLguSmsAuthClickFlag;
  private static Button mLguSmsAuthOkBtn;
  private static EditText mLguSmsAuthTv;
  private static Boolean mOCBPointQueryFlag;
  public static String mOTPNumber;
  private static StateListDrawable mReClaimDrawables;
  private static StateListDrawable mSmsAuthDrawables;
  private static Boolean nextStep;
  static View.OnClickListener okLguSmsAuthBtn = new View.OnClickListener()
  {
    public void onClick(final View paramAnonymousView)
    {
      paramAnonymousView.setEnabled(false);
      new Handler().post(new Runnable()
      {
        public void run()
        {
          paramAnonymousView.setEnabled(true);
        }
      });
      ParserXML.onLguSmsAuthCallback.onLguSmsAuthOK();
      ParserXML.mLguSmsAuthClickFlag = Boolean.valueOf(false);
    }
  };
  private static ParserLguSmsAuthCallback onLguSmsAuthCallback = null;
  private static boolean sendDotoriSmsFlag;
  private String RES_VERT_FILE_PATH = "/res/";
  private String XML_FILE_NAME = "purchase";
  private String XML_FILE_PATH = "/xml";
  private String XML_FILE_PATH_KTLG = "/xml_kt_lg";
  View.OnClickListener autoPurchaseFormBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (ParserXML.this.mPurchaseCheckList[0] != 0)
      {
        ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
        return;
      }
      ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
    }
  };
  View.OnClickListener cancelAuthBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (ParserXML.this.onAuthResultCallback != null) {
        ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
      }
      do
      {
        return;
        if (ParserXML.this.onOcbCallback != null)
        {
          ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
          return;
        }
        if (ParserXML.this.onCultureLandCallback != null)
        {
          ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
          return;
        }
      } while (ParserXML.this.onDotoriSmsAuthCallback == null);
      ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
    }
  };
  View.OnClickListener cancelAutoPurchaseFormBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
    }
  };
  View.OnClickListener cancelBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      SingletonCounter.getInstance().clear();
      ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
    }
  };
  View.OnClickListener cancelJoinBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
    }
  };
  View.OnClickListener cancelLguSmsAuthBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
      ParserXML.mLguSmsAuthClickFlag = Boolean.valueOf(false);
    }
  };
  View.OnClickListener cancelYesNoBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
    }
  };
  CompoundButton.OnCheckedChangeListener changeCheckBox = new CompoundButton.OnCheckedChangeListener()
  {
    public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
    {
      paramAnonymousCompoundButton = (String)paramAnonymousCompoundButton.getTag();
      if ("info_checkbox1".equals(paramAnonymousCompoundButton))
      {
        ParserXML.this.mJoinCheckList[0] = paramAnonymousBoolean;
        if ("purchase_checkbox".equals(paramAnonymousCompoundButton))
        {
          CommonF.LOGGER.i("ParserXML", "autoPurchase flag: " + paramAnonymousBoolean);
          if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
            break label397;
          }
          if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
            break label353;
          }
          ParserXML.this.mPurchaseCheckList[0] = 0;
          ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
          ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
        }
        label111:
        if ("auto_purchase_checkbox".equals(paramAnonymousCompoundButton))
        {
          CommonF.LOGGER.i("ParserXML", "autoPurchaseForm flag: " + paramAnonymousBoolean);
          ParserXML.this.mPurchaseCheckList[0] = paramAnonymousBoolean;
        }
        if ("imei_auth_checkbox".equals(paramAnonymousCompoundButton))
        {
          CommonF.LOGGER.i("ParserXML", "imei_auth_checkbox flag: " + paramAnonymousBoolean);
          ParserXML.this.mIMEICheckList[0] = paramAnonymousBoolean;
          if (ParserXML.this.mIMEICheckList[0] == 0) {
            break label436;
          }
          ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
          ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
        }
        label237:
        if ("otp_checkbox".equals(paramAnonymousCompoundButton))
        {
          CommonF.LOGGER.i("ParserXML", "setOTPAgree flag: " + paramAnonymousBoolean);
          if (!paramAnonymousBoolean) {
            break label467;
          }
          IAPLib.setOTPAgree(true);
        }
      }
      for (;;)
      {
        if ("culture_login_checkbox".equals(paramAnonymousCompoundButton))
        {
          CommonF.LOGGER.i("ParserXML", "culture_login_checkbox flag: " + paramAnonymousBoolean);
          if (!paramAnonymousBoolean) {
            break label478;
          }
          ParserXML.this.mCultureCheckFlag = true;
        }
        return;
        if ("info_checkbox2".equals(paramAnonymousCompoundButton))
        {
          ParserXML.this.mJoinCheckList[1] = paramAnonymousBoolean;
          break;
        }
        ParserXML.this.mJoinCheckList[2] = paramAnonymousBoolean;
        break;
        label353:
        if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
          break label111;
        }
        ParserXML.this.mPurchaseCheckList[0] = 1;
        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
        break label111;
        label397:
        if (ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
          break label111;
        }
        ParserXML.this.mPurchaseCheckList[0] = paramAnonymousBoolean;
        ParserXML.this.onResultCallback.onAutoPurchaseCheck(paramAnonymousBoolean);
        break label111;
        label436:
        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
        break label237;
        label467:
        if (!paramAnonymousBoolean) {
          IAPLib.setOTPAgree(false);
        }
      }
      label478:
      ParserXML.this.mCultureCheckFlag = false;
    }
  };
  View.OnClickListener commonBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (ParserXML.this.onOcbCallback != null)
      {
        ParserXML.this.mOCBCardNum = (ParserXML.this.m_OCBRegText1.getText().toString() + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString());
        ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
      }
      while (ParserXML.this.onDotoriSmsAuthCallback == null) {
        return;
      }
      ParserXML.sendDotoriSmsFlag = true;
      ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
    }
  };
  private Context context = null;
  boolean cursorFlag = true;
  private StateListDrawable dotoriInactive;
  private int foreignInputCarrier = 0;
  View.OnClickListener getlguSmsAuthBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
      ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
      ParserXML.mLguSmsAuthClickFlag = Boolean.valueOf(true);
      if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() != null)
      {
        long l = System.currentTimeMillis();
        paramAnonymousView = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(l));
        String str = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
        CommonF.LOGGER.i("ParserXML", "currTime: " + paramAnonymousView);
        CommonF.LOGGER.i("ParserXML", "oldTime: " + str);
        if (CommonF.getTimeDifference(str, paramAnonymousView) < 180L)
        {
          ParserXML.onLguSmsAuthCallback.onErrorPopup();
          CommonF.LOGGER.e("ParserXML", "LguSmsAuthNumberReq Fail");
          return;
        }
        ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
        CommonF.LOGGER.i("ParserXML", "LguSmsAuthNumberReq Flow1 Start ");
        ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
        return;
      }
      ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
      CommonF.LOGGER.i("ParserXML", "LguSmsAuthNumberReq Flow2 Start ");
      ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
    }
  };
  private int idg;
  private Hashtable<String, Integer> ids = null;
  View.OnClickListener imageBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
    }
  };
  View.OnClickListener imeiAuthBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
    }
  };
  View.OnClickListener imeiAuthCancelBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
    }
  };
  private Stack<ViewGroup> layoutStack = null;
  private StateListDrawable mActiveCultureDrawables;
  private StateListDrawable mActiveDotoriDrawables;
  private StateListDrawable mActiveDrawables;
  private StateListDrawable mActiveOCBRegDrawables;
  Drawable mActiveOver;
  private StateListDrawable mActiveTcashDrawables;
  private boolean mAfterAutoPurchaseInfoAgree = true;
  InputStream mAuthOkStream = null;
  Drawable mAuthOkbtOn = null;
  Drawable mAuthOkbtOver = null;
  private boolean mAutoPurchaseFormPopupMode = false;
  private Button mBtn;
  private Button mCultureBtn;
  private boolean mCultureCheckFlag = false;
  private boolean mCultureLandLoginPopupMode = false;
  private CultureLandTextWatcher mCultureLandTextWatcher = new CultureLandTextWatcher(null);
  private Button mCultureOKButton;
  private TextView mCultureText;
  private Button mDotoriBtn;
  private boolean mDotoriQueryFlag = false;
  private boolean mDotoriSmsAuthPopupMode = false;
  private TextView mDotoriText;
  private StateListDrawable mDrawables;
  boolean mFlag = false;
  private ForeignDevelopeTextLengthWatcher mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(null);
  private String mFormName = null;
  private boolean mIMEIAuthPopupMode = false;
  private boolean[] mIMEICheckList = new boolean[1];
  private StateListDrawable mIMEICheckedDrawbles;
  private Button mIMEIOkBtn = null;
  private StateListDrawable mIMEInotCheckedDrawble;
  private boolean mImageConfirmPopupMode = false;
  private StateListDrawable mInactiveCultureDrawables;
  private StateListDrawable mInactiveDotoriDrawables;
  private StateListDrawable mInactiveDrawables;
  private StateListDrawable mInactiveOCBRegDrawables;
  Drawable mInactiveOn = null;
  private StateListDrawable mInactiveTcashDrawables;
  private String mInfoMessage = null;
  private ItemInfoConfirm mItemInfoConfirm = null;
  private PurchaseItem mItemPurchaseItemInfo = null;
  private boolean[] mJoinCheckList = new boolean[3];
  private boolean mJoinPopupMode = false;
  private boolean mJuminPopupMode = false;
  private boolean mLGUSmsAuthPopupMode = false;
  private StateListDrawable mLiminExcessDrawables;
  InputStream mLiminExcessStream;
  Drawable mLimitExcessbtOn = null;
  Drawable mLimitExcessbtOver = null;
  private Button mOCBBtn;
  private String mOCBCardNum;
  private Button mOCBRegBtn = null;
  private boolean mOCBRegPopupMode = false;
  private TextView mOCBText;
  private Button mOKCashbackOKButton;
  private Button mOkBtn;
  private StateListDrawable mOkDrawbles;
  private boolean mOtpPopupMode = false;
  private View.OnClickListener mPopupClickListener = null;
  private boolean[] mPurchaseCheckList = new boolean[1];
  InputStream mReClaimStream;
  InputStream mStream;
  private Button mTcashBtn;
  private TextView mTcashText = null;
  private boolean mYesNoPopupMode = false;
  private TextView m_AccountPriceTextView = null;
  private EditText m_CultureLandID = null;
  private EditText m_CultureLandPW = null;
  private EditText m_DotoriSMSAuthNum = null;
  private EditText m_JuminText1 = null;
  private EditText m_JuminText2 = null;
  private EditText m_MDN1 = null;
  private EditText m_MDN2 = null;
  private EditText m_MDN3 = null;
  private EditText m_OCBPWText = null;
  private EditText m_OCBRegText1 = null;
  private EditText m_OCBRegText2 = null;
  private EditText m_OCBRegText3 = null;
  private EditText m_OCBRegText4 = null;
  private TextView m_discountTextView = null;
  Drawable mbtOn = null;
  Drawable mbtOver = null;
  View.OnClickListener moreInfo = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
    }
  };
  View.OnClickListener moreInfoFormBtn1 = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
    }
  };
  View.OnClickListener moreInfoFormBtn2 = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
    }
  };
  View.OnClickListener moreInfoFormBtn3 = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
    }
  };
  private boolean mrForeignInputMDNMode = false;
  private Button octChange;
  private Button octDel;
  View.OnClickListener okAuthBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (ParserXML.this.onAuthResultCallback != null)
      {
        int i = ParserXML.this.m_JuminText1.getText().length();
        int j = ParserXML.this.m_JuminText2.getText().length();
        if ((i == 6) && (j == 7)) {
          ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
        }
      }
      do
      {
        for (;;)
        {
          return;
          Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0).show();
          return;
          if (ParserXML.this.onOcbCallback != null)
          {
            paramAnonymousView = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
            ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(paramAnonymousView);
            return;
          }
          if (ParserXML.this.onCultureLandCallback == null) {
            break;
          }
          paramAnonymousView = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
          str = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
          ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(paramAnonymousView, str);
          if (ParserXML.this.mCultureCheckFlag) {}
          for (ParserXML.mCultureLoginFlag = true; ParserXML.mCultureLoginFlag; ParserXML.mCultureLoginFlag = false)
          {
            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
            return;
          }
        }
        if (ParserXML.this.onDotoriSmsAuthCallback != null)
        {
          IAPLib.setDotoriSmsNumber(ParserXML.this.m_DotoriSMSAuthNum.getText().toString());
          ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
          ParserXML.sendDotoriSmsFlag = false;
          return;
        }
      } while (ParserXML.this.onForeignInputMDNResultCallback == null);
      paramAnonymousView = ParserXML.this.m_MDN1.getText().toString() + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
      String str = ParserXML.this.m_JuminText1.getText().toString() + ParserXML.this.m_JuminText2.getText().toString();
      ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, paramAnonymousView, str);
    }
  };
  View.OnClickListener okBtn = new View.OnClickListener()
  {
    public void onClick(final View paramAnonymousView)
    {
      paramAnonymousView.setEnabled(false);
      new Handler().post(new Runnable()
      {
        public void run()
        {
          paramAnonymousView.setEnabled(true);
        }
      });
      if (ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck)
      {
        if (ParserXML.this.mPurchaseCheckList[0] != 0)
        {
          ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
          ParserXML.this.mPurchaseCheckList = new boolean[1];
          ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
          return;
        }
        ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
        return;
      }
      ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
      IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
    }
  };
  View.OnClickListener okJoinBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if ((ParserXML.this.mJoinCheckList[0] != 0) && (ParserXML.this.mJoinCheckList[1] != 0) && (ParserXML.this.mJoinCheckList[2] != 0))
      {
        ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
        ParserXML.this.mJoinCheckList = new boolean[3];
        return;
      }
      ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
    }
  };
  View.OnClickListener okMessageBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ParserXML.this.mPopupClickListener.onClick(paramAnonymousView);
    }
  };
  View.OnClickListener okOtpBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = ParserXML.this.context.getPackageManager().getInstalledApplications(0);
      int j = paramAnonymousView.size();
      int i = 0;
      for (;;)
      {
        if (i >= j)
        {
          if (!ParserXML.this.tStoreFlag) {
            break label272;
          }
          paramAnonymousView = null;
        }
        try
        {
          localObject = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
          paramAnonymousView = (View)localObject;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          for (;;)
          {
            Object localObject;
            localNameNotFoundException.printStackTrace();
          }
          paramAnonymousView = new Intent();
          paramAnonymousView.addFlags(536870912);
          paramAnonymousView.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
          paramAnonymousView.setAction("COLLAB_ACTION");
          paramAnonymousView.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
          paramAnonymousView.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
          ParserXML.this.context.startActivity(paramAnonymousView);
          return;
        }
        localObject = paramAnonymousView.versionName;
        i = paramAnonymousView.versionCode;
        CommonF.LOGGER.i("ParserXML", "application versionName : " + (String)localObject);
        CommonF.LOGGER.i("ParserXML", "application versionCode : " + i);
        if (i >= 19) {
          break;
        }
        ParserXML.this.onOtpCallback.onOtpErrorPopup();
        return;
        if (((ApplicationInfo)paramAnonymousView.get(i)).packageName.indexOf("com.skt.skaf.A000Z00040") == 0)
        {
          ParserXML.this.tStoreFlag = true;
          CommonF.LOGGER.i("ParserXML", "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
        }
        i += 1;
      }
      label272:
      ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
    }
  };
  View.OnClickListener okYesNoBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (ParserXML.this.tStoreFlag)
      {
        ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
        return;
      }
      ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
    }
  };
  private ParserAuthResultCallback onAuthResultCallback = null;
  private ParserAutoPurchaseFormResultCallback onAutoPurchaseFormResultCallback = null;
  private ParserCultureLandCallback onCultureLandCallback = null;
  private ParserDotoriSmsAuthCallback onDotoriSmsAuthCallback = null;
  OnClickForeignInputMDN onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
  private ParserForeignInputMDNResultCallback onForeignInputMDNResultCallback = null;
  private ParserImageResultCallback onImageResultCallback = null;
  private ParserIMEIAuthCallback onImeiAuthCallback = null;
  private ParserJoinResultCallback onJoinResultCallback = null;
  private ParserOCBCallback onOcbCallback = null;
  private ParserOtpCallback onOtpCallback = null;
  private ParserResultCallback onResultCallback = null;
  private ParserYesNoResultCallback onYesNoResultCallback = null;
  private int orientation = 0;
  private String otpAuthNumber = "";
  private int strNum;
  private int strNumOCBRegText1;
  private int strNumOCBRegText2;
  private int strNumOCBRegText3;
  private boolean tStoreFlag = false;
  View.OnClickListener tStoreInfoBtn = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (ParserXML.this.tStoreFlag)
      {
        if (ParserXML.this.onResultCallback != null)
        {
          ParserXML.this.onResultCallback.onEnterTstore();
          return;
        }
        ParserXML.onLguSmsAuthCallback.onEnterTstore();
        return;
      }
      if (ParserXML.this.onResultCallback != null)
      {
        ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
        return;
      }
      ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
    }
  };
  boolean xperiacheckbox = false;
  
  static
  {
    mJumiLlView = null;
    mLguSmsAuthTv = null;
    mLguSmsAuthBtn = null;
    mLguSmsAuthOkBtn = null;
    mOTPNumber = null;
    mLguSmsAuthClickFlag = Boolean.valueOf(false);
    nextStep = Boolean.valueOf(false);
    mOCBPointQueryFlag = Boolean.valueOf(false);
    sendDotoriSmsFlag = false;
    mCultureLoginFlag = false;
  }
  
  public ParserXML(Context paramContext)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
  }
  
  public ParserXML(Context paramContext, ParserAuthResultCallback paramParserAuthResultCallback, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onAuthResultCallback = paramParserAuthResultCallback;
    this.mJuminPopupMode = paramBoolean;
  }
  
  public ParserXML(Context paramContext, ParserAutoPurchaseFormResultCallback paramParserAutoPurchaseFormResultCallback, int paramInt, String paramString, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onAutoPurchaseFormResultCallback = paramParserAutoPurchaseFormResultCallback;
    if ("AutoPurchaseForm".equals(paramString)) {
      this.mAutoPurchaseFormPopupMode = paramBoolean;
    }
  }
  
  public ParserXML(Context paramContext, ParserCultureLandCallback paramParserCultureLandCallback, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onCultureLandCallback = paramParserCultureLandCallback;
    this.mCultureLandLoginPopupMode = paramBoolean;
  }
  
  public ParserXML(Context paramContext, ParserDotoriSmsAuthCallback paramParserDotoriSmsAuthCallback, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onDotoriSmsAuthCallback = paramParserDotoriSmsAuthCallback;
    this.mDotoriSmsAuthPopupMode = paramBoolean;
  }
  
  public ParserXML(Context paramContext, ParserForeignInputMDNResultCallback paramParserForeignInputMDNResultCallback)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onForeignInputMDNResultCallback = paramParserForeignInputMDNResultCallback;
    this.mrForeignInputMDNMode = true;
  }
  
  public ParserXML(Context paramContext, ParserIMEIAuthCallback paramParserIMEIAuthCallback, String paramString, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onImeiAuthCallback = paramParserIMEIAuthCallback;
    if ("IMEIAuthForm".equals(paramString)) {
      this.mIMEIAuthPopupMode = paramBoolean;
    }
  }
  
  public ParserXML(Context paramContext, ParserImageResultCallback paramParserImageResultCallback, int paramInt, String paramString, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onImageResultCallback = paramParserImageResultCallback;
    if ("PermissionPopup".equals(paramString)) {
      this.mImageConfirmPopupMode = paramBoolean;
    }
  }
  
  public ParserXML(Context paramContext, ParserJoinResultCallback paramParserJoinResultCallback, int paramInt, String paramString, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onJoinResultCallback = paramParserJoinResultCallback;
    if ("Join".equals(paramString)) {
      this.mJoinPopupMode = paramBoolean;
    }
  }
  
  public ParserXML(Context paramContext, ParserLguSmsAuthCallback paramParserLguSmsAuthCallback, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    onLguSmsAuthCallback = paramParserLguSmsAuthCallback;
    this.mLGUSmsAuthPopupMode = paramBoolean;
  }
  
  public ParserXML(Context paramContext, ParserOCBCallback paramParserOCBCallback, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onOcbCallback = paramParserOCBCallback;
    this.mOCBRegPopupMode = paramBoolean;
  }
  
  public ParserXML(Context paramContext, ParserOtpCallback paramParserOtpCallback, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onOtpCallback = paramParserOtpCallback;
    this.mOtpPopupMode = paramBoolean;
  }
  
  public ParserXML(Context paramContext, ParserResultCallback paramParserResultCallback)
  {
    this(paramContext);
    this.onResultCallback = paramParserResultCallback;
  }
  
  public ParserXML(Context paramContext, ParserResultCallback paramParserResultCallback, int paramInt, boolean paramBoolean)
  {
    this(paramContext);
    this.onResultCallback = paramParserResultCallback;
  }
  
  public ParserXML(Context paramContext, ParserResultCallback paramParserResultCallback, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramContext);
    this.onResultCallback = paramParserResultCallback;
    this.mJuminPopupMode = paramBoolean2;
  }
  
  public ParserXML(Context paramContext, ParserYesNoResultCallback paramParserYesNoResultCallback, int paramInt, String paramString, boolean paramBoolean)
  {
    this.context = paramContext;
    this.layoutStack = new Stack();
    this.ids = new Hashtable();
    this.onYesNoResultCallback = paramParserYesNoResultCallback;
    if ("YesNo".equals(paramString)) {
      this.mYesNoPopupMode = paramBoolean;
    }
  }
  
  /* Error */
  private View Start(String paramString)
  {
    // Byte code:
    //   0: invokestatic 686	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   3: invokevirtual 690	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   6: astore_3
    //   7: aload_0
    //   8: invokevirtual 696	java/lang/Object:getClass	()Ljava/lang/Class;
    //   11: aload_1
    //   12: invokevirtual 702	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   15: astore_2
    //   16: aload_3
    //   17: aload_2
    //   18: ldc_w 704
    //   21: invokeinterface 710 3 0
    //   26: aload_0
    //   27: getfield 448	com/feelingk/iap/gui/parser/ParserXML:mJuminPopupMode	Z
    //   30: ifne +24 -> 54
    //   33: aload_0
    //   34: getfield 464	com/feelingk/iap/gui/parser/ParserXML:mOCBRegPopupMode	Z
    //   37: ifne +17 -> 54
    //   40: aload_0
    //   41: getfield 466	com/feelingk/iap/gui/parser/ParserXML:mCultureLandLoginPopupMode	Z
    //   44: ifne +10 -> 54
    //   47: aload_0
    //   48: getfield 468	com/feelingk/iap/gui/parser/ParserXML:mDotoriSmsAuthPopupMode	Z
    //   51: ifeq +15 -> 66
    //   54: aload_0
    //   55: aload_3
    //   56: invokespecial 714	com/feelingk/iap/gui/parser/ParserXML:inflateAuthPopup	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    //   59: astore_1
    //   60: aload_2
    //   61: invokevirtual 719	java/io/InputStream:close	()V
    //   64: aload_1
    //   65: areturn
    //   66: aload_0
    //   67: getfield 470	com/feelingk/iap/gui/parser/ParserXML:mrForeignInputMDNMode	Z
    //   70: ifeq +12 -> 82
    //   73: aload_0
    //   74: aload_3
    //   75: invokespecial 714	com/feelingk/iap/gui/parser/ParserXML:inflateAuthPopup	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    //   78: astore_1
    //   79: goto -19 -> 60
    //   82: aload_0
    //   83: getfield 450	com/feelingk/iap/gui/parser/ParserXML:mYesNoPopupMode	Z
    //   86: ifeq +16 -> 102
    //   89: aload_0
    //   90: aload_3
    //   91: aload_0
    //   92: getfield 440	com/feelingk/iap/gui/parser/ParserXML:mInfoMessage	Ljava/lang/String;
    //   95: invokespecial 723	com/feelingk/iap/gui/parser/ParserXML:inflateYesNoPopup	(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;
    //   98: astore_1
    //   99: goto -39 -> 60
    //   102: aload_0
    //   103: getfield 452	com/feelingk/iap/gui/parser/ParserXML:mImageConfirmPopupMode	Z
    //   106: ifeq +16 -> 122
    //   109: aload_0
    //   110: aload_3
    //   111: aload_0
    //   112: getfield 440	com/feelingk/iap/gui/parser/ParserXML:mInfoMessage	Ljava/lang/String;
    //   115: invokespecial 726	com/feelingk/iap/gui/parser/ParserXML:inflateImagePopup	(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;
    //   118: astore_1
    //   119: goto -59 -> 60
    //   122: aload_0
    //   123: getfield 454	com/feelingk/iap/gui/parser/ParserXML:mAutoPurchaseFormPopupMode	Z
    //   126: ifeq +12 -> 138
    //   129: aload_0
    //   130: aload_3
    //   131: invokespecial 729	com/feelingk/iap/gui/parser/ParserXML:inflateAutoPurchaseFormPopup	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    //   134: astore_1
    //   135: goto -75 -> 60
    //   138: aload_0
    //   139: getfield 462	com/feelingk/iap/gui/parser/ParserXML:mIMEIAuthPopupMode	Z
    //   142: ifeq +12 -> 154
    //   145: aload_0
    //   146: aload_3
    //   147: invokespecial 732	com/feelingk/iap/gui/parser/ParserXML:inflatIMEIAuthPopup	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    //   150: astore_1
    //   151: goto -91 -> 60
    //   154: aload_0
    //   155: getfield 456	com/feelingk/iap/gui/parser/ParserXML:mJoinPopupMode	Z
    //   158: ifeq +12 -> 170
    //   161: aload_0
    //   162: aload_3
    //   163: invokespecial 735	com/feelingk/iap/gui/parser/ParserXML:inflateJoinPopup	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    //   166: astore_1
    //   167: goto -107 -> 60
    //   170: aload_0
    //   171: getfield 458	com/feelingk/iap/gui/parser/ParserXML:mOtpPopupMode	Z
    //   174: ifeq +12 -> 186
    //   177: aload_0
    //   178: aload_3
    //   179: invokespecial 738	com/feelingk/iap/gui/parser/ParserXML:inflateOtpPopup	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    //   182: astore_1
    //   183: goto -123 -> 60
    //   186: aload_0
    //   187: getfield 460	com/feelingk/iap/gui/parser/ParserXML:mLGUSmsAuthPopupMode	Z
    //   190: ifeq +12 -> 202
    //   193: aload_0
    //   194: aload_3
    //   195: invokespecial 741	com/feelingk/iap/gui/parser/ParserXML:inflateLguSmsAuthPopup	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    //   198: astore_1
    //   199: goto -139 -> 60
    //   202: aload_0
    //   203: aload_3
    //   204: invokespecial 744	com/feelingk/iap/gui/parser/ParserXML:inflate	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    //   207: astore_1
    //   208: goto -148 -> 60
    //   211: astore_1
    //   212: aload_1
    //   213: invokevirtual 747	org/xmlpull/v1/XmlPullParserException:printStackTrace	()V
    //   216: aconst_null
    //   217: areturn
    //   218: astore_1
    //   219: aload_1
    //   220: invokevirtual 748	java/io/IOException:printStackTrace	()V
    //   223: goto -7 -> 216
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	226	0	this	ParserXML
    //   0	226	1	paramString	String
    //   15	46	2	localInputStream	InputStream
    //   6	198	3	localXmlPullParser	XmlPullParser
    // Exception table:
    //   from	to	target	type
    //   0	54	211	org/xmlpull/v1/XmlPullParserException
    //   54	60	211	org/xmlpull/v1/XmlPullParserException
    //   60	64	211	org/xmlpull/v1/XmlPullParserException
    //   66	79	211	org/xmlpull/v1/XmlPullParserException
    //   82	99	211	org/xmlpull/v1/XmlPullParserException
    //   102	119	211	org/xmlpull/v1/XmlPullParserException
    //   122	135	211	org/xmlpull/v1/XmlPullParserException
    //   138	151	211	org/xmlpull/v1/XmlPullParserException
    //   154	167	211	org/xmlpull/v1/XmlPullParserException
    //   170	183	211	org/xmlpull/v1/XmlPullParserException
    //   186	199	211	org/xmlpull/v1/XmlPullParserException
    //   202	208	211	org/xmlpull/v1/XmlPullParserException
    //   0	54	218	java/io/IOException
    //   54	60	218	java/io/IOException
    //   60	64	218	java/io/IOException
    //   66	79	218	java/io/IOException
    //   82	99	218	java/io/IOException
    //   102	119	218	java/io/IOException
    //   122	135	218	java/io/IOException
    //   138	151	218	java/io/IOException
    //   154	167	218	java/io/IOException
    //   170	183	218	java/io/IOException
    //   186	199	218	java/io/IOException
    //   202	208	218	java/io/IOException
  }
  
  private View createView(XmlPullParser paramXmlPullParser)
  {
    Object localObject2 = paramXmlPullParser.getName();
    Object localObject1 = null;
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    if (((String)localObject2).equals("LinearLayout"))
    {
      paramXmlPullParser = new LinearLayout(this.context);
      if (paramXmlPullParser != null) {
        break label212;
      }
      localObject1 = null;
    }
    for (;;)
    {
      return localObject1;
      if (((String)localObject2).equals("TextView"))
      {
        paramXmlPullParser = new TextView(this.context);
        break;
      }
      if (((String)localObject2).equals("ImageView"))
      {
        paramXmlPullParser = new ImageView(this.context);
        break;
      }
      if (((String)localObject2).equals("Button"))
      {
        paramXmlPullParser = new Button(this.context);
        break;
      }
      if (((String)localObject2).equals("ScrollView"))
      {
        paramXmlPullParser = new ScrollView(this.context);
        paramXmlPullParser.setScrollbarFadingEnabled(false);
        break;
      }
      if (((String)localObject2).equals("CheckBox"))
      {
        paramXmlPullParser = new CheckBox(this.context);
        break;
      }
      Assert.fail("# UnSupported tag:" + (String)localObject2);
      paramXmlPullParser = (XmlPullParser)localObject1;
      break;
      label212:
      localObject1 = null;
      Object localObject3 = Boolean.valueOf(false);
      localObject2 = localObject3;
      Object localObject4;
      if (this.mItemPurchaseItemInfo != null)
      {
        SingletonCounter.getInstance().setmTotalBalance(this.mItemPurchaseItemInfo.itemPrice);
        SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmTotalBalance() - SingletonCounter.getInstance().getmPaymentTotal());
        localObject4 = IAPLib.getSellerInfo();
        localObject1 = localObject4;
        localObject2 = localObject3;
        if (localObject4 != null)
        {
          localObject1 = localObject4;
          localObject2 = localObject3;
          if (((SellerInfoConfirm)localObject4).getmSellerPhoneNumber() != null)
          {
            localObject1 = localObject4;
            localObject2 = localObject3;
            if (!((SellerInfoConfirm)localObject4).getmSellerPhoneNumber().equals("null"))
            {
              localObject2 = Boolean.valueOf(true);
              localObject1 = localObject4;
            }
          }
        }
      }
      localObject3 = Build.MODEL;
      Object localObject5;
      label381:
      Object localObject7;
      if ((paramXmlPullParser instanceof LinearLayout))
      {
        localObject4 = (LinearLayout)paramXmlPullParser;
        localObject5 = findAttribute(localAttributeSet, "a:orientation");
        if (localObject5 != null)
        {
          if (!((String)localObject5).equals("horizontal")) {
            break label2604;
          }
          ((LinearLayout)localObject4).setOrientation(0);
        }
        localObject5 = findAttribute(localAttributeSet, "a:background");
        if (localObject5 != null)
        {
          if (!((String)localObject5).equals("dot_line")) {
            break label2624;
          }
          localObject7 = getClass().getResourceAsStream(getResourcePath() + "line_dot_01.png");
          localObject5 = Drawable.createFromStream((InputStream)localObject7, null);
        }
      }
      try
      {
        ((InputStream)localObject7).close();
        ((BitmapDrawable)localObject5).setTileModeX(Shader.TileMode.REPEAT);
        ((BitmapDrawable)localObject5).setTileModeY(Shader.TileMode.REPEAT);
        ((LinearLayout)localObject4).setBackgroundDrawable((Drawable)localObject5);
        label482:
        if (findAttribute(localAttributeSet, "a:backgroudcolor") != null) {
          ((LinearLayout)localObject4).setBackgroundColor(-65536);
        }
        localObject5 = findAttribute(localAttributeSet, "a:gravity");
        if (localObject5 != null)
        {
          if (((String)localObject5).equals("center")) {
            ((LinearLayout)localObject4).setGravity(17);
          }
        }
        else
        {
          label536:
          localObject5 = findAttribute(localAttributeSet, "a:padding");
          if (localObject5 != null)
          {
            i = readDPSize((String)localObject5);
            ((LinearLayout)localObject4).setPadding(i, i, i, i);
          }
          if (findAttribute(localAttributeSet, "a:focusableInTouchMode") != null) {
            ((LinearLayout)localObject4).setFocusableInTouchMode(true);
          }
          localObject5 = findAttribute(localAttributeSet, "a:paddingTop");
          localObject7 = findAttribute(localAttributeSet, "a:paddingBottom");
          localObject8 = findAttribute(localAttributeSet, "a:paddingLeft");
          localObject9 = findAttribute(localAttributeSet, "a:paddingRight");
          i = 0;
          j = 0;
          int k = 0;
          int m = 0;
          if (localObject5 != null) {
            i = readSize((String)localObject5);
          }
          if (localObject7 != null) {
            j = readSize((String)localObject7);
          }
          if (localObject8 != null) {
            k = readSize((String)localObject8);
          }
          if (localObject9 != null) {
            m = readSize((String)localObject9);
          }
          ((LinearLayout)localObject4).setPadding(k, i, m, j);
          localObject5 = findAttribute(localAttributeSet, "a:id");
          if ((localObject5 != null) && (this.mItemPurchaseItemInfo != null))
          {
            if ((!this.mItemPurchaseItemInfo.ocbRegisterInfo.equals("Y")) || (!((String)localObject5).equals("unregistered"))) {
              break label2715;
            }
            ((LinearLayout)localObject4).setVisibility(8);
          }
          label758:
          if ((paramXmlPullParser instanceof ImageView))
          {
            localObject4 = (ImageView)paramXmlPullParser;
            localObject5 = findAttribute(localAttributeSet, "a:src");
            if (localObject5 != null)
            {
              localObject7 = getClass().getResourceAsStream(getResourcePath() + (String)localObject5 + ".png");
              ((ImageView)localObject4).setImageDrawable(Drawable.createFromStream((InputStream)localObject7, (String)localObject5));
            }
          }
        }
      }
      catch (IOException localIOException5)
      {
        try
        {
          ((InputStream)localObject7).close();
          label841:
          if ((paramXmlPullParser instanceof TextView))
          {
            localObject4 = (TextView)paramXmlPullParser;
            localObject7 = findAttribute(localAttributeSet, "a:id");
            localObject10 = findAttribute(localAttributeSet, "a:text");
            String str3 = findAttribute(localAttributeSet, "a:infotext");
            String str4 = findAttribute(localAttributeSet, "a:loctbtntext");
            localObject8 = findAttribute(localAttributeSet, "a:otptext");
            localObject9 = findAttribute(localAttributeSet, "a:textcontent");
            String str1 = findAttribute(localAttributeSet, "a:textSize");
            String str2 = findAttribute(localAttributeSet, "a:textColor");
            localObject5 = findAttribute(localAttributeSet, "a:gravity");
            if (localObject10 != null) {
              ((TextView)localObject4).setText(((String)localObject10).replace("\\n", "\n"));
            }
            if (str4 != null) {
              ((TextView)localObject4).setText(CommonString.getString(CommonString.Index.MENT_SECURE_PAYMENTS));
            }
            if (str3 != null)
            {
              localObject10 = this.context.getPackageManager().getInstalledApplications(0);
              j = ((List)localObject10).size();
              i = 0;
              label1018:
              if (i < j) {}
            }
            else
            {
              if (localObject8 != null) {
                ((TextView)localObject4).setText(CommonString.getString(CommonString.Index.DO_NOT_USE_AUTHENITACTION));
              }
              if (localObject9 != null)
              {
                ((String)localObject9).replace("\\n", "\n");
                ((TextView)localObject4).setText("<" + CommonString.getString(CommonString.Index.MONTH_AUTO_PAYMENT_INFO) + ">\n월별 자동결제 상품이란,");
              }
              if (str1 != null) {
                ((TextView)localObject4).setTextSize(1, readFontSize(str1));
              }
              if (str2 != null) {
                ((TextView)localObject4).setTextColor(Color.parseColor(str2));
              }
              if (localObject7 != null)
              {
                if (!((String)localObject7).equals("ItemName")) {
                  break label2787;
                }
                ((TextView)localObject4).setText(this.mItemPurchaseItemInfo.itemName);
                ((TextView)localObject4).setEllipsize(TextUtils.TruncateAt.END);
                ((TextView)localObject4).setSingleLine();
              }
              if (localObject5 != null)
              {
                if (!((String)localObject5).equals("right")) {
                  break label3931;
                }
                ((TextView)localObject4).setGravity(5);
              }
              ((TextView)localObject4).setLineSpacing(0.0F, 1.15F);
            }
          }
          else if ((paramXmlPullParser instanceof ImageView))
          {
            localObject1 = (ImageView)paramXmlPullParser;
            localObject4 = findAttribute(localAttributeSet, "a:background");
            if (localObject4 != null)
            {
              localObject2 = getClass().getResourceAsStream(getResourcePath() + (String)localObject4 + ".png");
              localObject4 = Drawable.createFromStream((InputStream)localObject2, (String)localObject4);
            }
          }
        }
        catch (IOException localIOException5)
        {
          try
          {
            label1163:
            label1185:
            ((InputStream)localObject2).close();
            label1274:
            ((ImageView)localObject1).setBackgroundDrawable((Drawable)localObject4);
            if ((paramXmlPullParser instanceof Button))
            {
              localObject2 = findAttribute(localAttributeSet, "a:offImage");
              localObject1 = findAttribute(localAttributeSet, "a:onImage");
              localObject4 = findAttribute(localAttributeSet, "a:id");
              if (localObject2 == null) {
                break label5462;
              }
              this.mBtn = ((Button)paramXmlPullParser);
              this.mDrawables = new StateListDrawable();
              this.mInactiveDrawables = new StateListDrawable();
              this.mInactiveDotoriDrawables = new StateListDrawable();
              this.mInactiveCultureDrawables = new StateListDrawable();
              this.mInactiveTcashDrawables = new StateListDrawable();
              this.mActiveDrawables = new StateListDrawable();
              this.mActiveDotoriDrawables = new StateListDrawable();
              this.mActiveCultureDrawables = new StateListDrawable();
              this.mActiveTcashDrawables = new StateListDrawable();
              this.mStream = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
              this.mbtOn = Drawable.createFromStream(this.mStream, (String)localObject2);
            }
          }
          catch (IOException localIOException5)
          {
            try
            {
              int i;
              Object localObject8;
              Object localObject9;
              int j;
              Object localObject10;
              this.mStream.close();
              label1492:
              this.mStream = getClass().getResourceAsStream(getResourcePath() + (String)localObject1 + ".png");
              this.mbtOver = Drawable.createFromStream(this.mStream, (String)localObject1);
              try
              {
                this.mStream.close();
                label1551:
                if (((String)localObject2).equals("bt_01_nor.9"))
                {
                  this.mInactiveOn = this.mbtOn;
                  this.mActiveOver = this.mbtOver;
                }
                localObject3 = this.mDrawables;
                localObject5 = this.mbtOver;
                ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                localObject3 = this.mDrawables;
                localObject5 = this.mbtOn;
                ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject5);
                localObject3 = this.mInactiveDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                localObject3 = this.mInactiveDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject5);
                localObject3 = this.mInactiveDotoriDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                localObject3 = this.mInactiveDotoriDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject5);
                localObject3 = this.mInactiveCultureDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                localObject3 = this.mInactiveCultureDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject5);
                localObject3 = this.mInactiveTcashDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                localObject3 = this.mInactiveTcashDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject5);
                localObject3 = this.mActiveDrawables;
                localObject5 = this.mActiveOver;
                ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                localObject3 = this.mActiveDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject5);
                localObject3 = this.mActiveDotoriDrawables;
                localObject5 = this.mActiveOver;
                ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                localObject3 = this.mActiveDotoriDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject5);
                localObject3 = this.mActiveCultureDrawables;
                localObject5 = this.mActiveOver;
                ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                localObject3 = this.mActiveCultureDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject5);
                localObject3 = this.mActiveTcashDrawables;
                localObject5 = this.mActiveOver;
                ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                localObject3 = this.mActiveTcashDrawables;
                localObject5 = this.mInactiveOn;
                ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject5);
                this.mLiminExcessDrawables = new StateListDrawable();
                this.mLiminExcessStream = getClass().getResourceAsStream(getResourcePath() + "bt_buy_dim" + ".png");
                this.mLimitExcessbtOn = Drawable.createFromStream(this.mLiminExcessStream, "bt_buy_dim");
                try
                {
                  this.mLiminExcessStream.close();
                  label2100:
                  this.mLiminExcessStream = null;
                  this.mLiminExcessStream = getClass().getResourceAsStream(getResourcePath() + "bt_buy_dim" + ".png");
                  this.mLimitExcessbtOver = Drawable.createFromStream(this.mLiminExcessStream, "bt_buy_dim");
                  try
                  {
                    for (;;)
                    {
                      this.mLiminExcessStream.close();
                      label2166:
                      this.mLiminExcessStream = null;
                      localObject3 = this.mLiminExcessDrawables;
                      localObject5 = this.mLimitExcessbtOver;
                      ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                      localObject3 = this.mLiminExcessDrawables;
                      localObject5 = this.mLimitExcessbtOn;
                      ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject5);
                      if ((((String)localObject2).equals("btn_buy_nor_h")) && (IAPLib.getLimitExcess()))
                      {
                        this.mOkBtn = this.mBtn;
                        this.mOkDrawbles = this.mDrawables;
                        this.mFlag = true;
                        label2259:
                        if ((!((String)localObject2).equals("btn_buy_nor_h")) || (!this.mFlag)) {
                          break label3990;
                        }
                        this.mBtn.setBackgroundDrawable(this.mLiminExcessDrawables);
                        label2288:
                        if ((((String)localObject2).equals("bt_01_nor.9")) && (localObject4 != null))
                        {
                          this.mBtn.setTextColor(Color.parseColor("#CFCFCF"));
                          if (!((String)localObject4).equals("OCBBtn")) {
                            break label4206;
                          }
                          this.mOCBBtn = this.mBtn;
                          this.mOCBBtn.setPadding(0, 0, 0, 0);
                          if (!this.mItemPurchaseItemInfo.ocbRegisterInfo.equals("Y")) {
                            break label4136;
                          }
                          if (!IAPLib.getOCBPointInfo()) {
                            break label4094;
                          }
                          localObject2 = IAPLib.getOCBPoint();
                          if ((localObject2 != null) && (((String)localObject2).length() > 0) && (Integer.parseInt((String)localObject2) >= 10)) {
                            break label4020;
                          }
                          mOCBPointQueryFlag = Boolean.valueOf(true);
                          if (!SingletonCounter.getInstance().ismOCBBtnFlag()) {
                            break label4004;
                          }
                          this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                          label2426:
                          this.mOCBBtn.setTextSize(1, 13.0F);
                          this.mOCBBtn.setBackgroundDrawable(this.mInactiveDrawables);
                          this.mOCBBtn.setTextColor(Color.parseColor("#8B8B8B"));
                          this.mOCBBtn.setClickable(false);
                          this.mOCBBtn.setPadding(0, 0, 0, 0);
                          if ((SingletonCounter.getInstance().getmPostPay() == 0) && (SingletonCounter.getInstance().getmOCBUse() == 0))
                          {
                            this.mOCBBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mOCBBtn.setTextColor(Color.parseColor("#8B8B8B"));
                            this.mOCBBtn.setClickable(false);
                            this.mOCBBtn.setPadding(0, 0, 0, 0);
                          }
                        }
                        label2480:
                        label2541:
                        if ((!((String)localObject1).equals("btn_buy_sel_h")) || (IAPLib.getLimitExcess())) {
                          break label5299;
                        }
                        this.mBtn.setOnClickListener(this.okBtn);
                      }
                      for (;;)
                      {
                        for (;;)
                        {
                          label2569:
                          localObject1 = paramXmlPullParser;
                          if (this.layoutStack.size() <= 0) {
                            break;
                          }
                          paramXmlPullParser.setLayoutParams(loadLayoutParams(localAttributeSet, (ViewGroup)this.layoutStack.peek()));
                          return paramXmlPullParser;
                          label2604:
                          if (!((String)localObject5).equals("vertical")) {
                            break label381;
                          }
                          ((LinearLayout)localObject4).setOrientation(1);
                          break label381;
                          label2624:
                          localObject7 = getClass().getResourceAsStream(getResourcePath() + (String)localObject5 + ".png");
                          ((LinearLayout)localObject4).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject7, (String)localObject5));
                          try
                          {
                            ((InputStream)localObject7).close();
                          }
                          catch (IOException localIOException13) {}
                        }
                        break label482;
                        if (localIOException13.equals("left"))
                        {
                          ((LinearLayout)localObject4).setGravity(3);
                          break label536;
                        }
                        ((LinearLayout)localObject4).setGravity(5);
                        break label536;
                        label2715:
                        if ((!this.mItemPurchaseItemInfo.ocbRegisterInfo.equals("N")) || (!localIOException13.equals("registered"))) {
                          break label758;
                        }
                        ((LinearLayout)localObject4).setVisibility(8);
                        break label758;
                        if (((ApplicationInfo)((List)localObject10).get(i)).packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                          this.tStoreFlag = true;
                        }
                        i += 1;
                        break label1018;
                        label2787:
                        if (((String)localObject7).equals("ItemUseDate"))
                        {
                          ((TextView)localObject4).setText(this.mItemPurchaseItemInfo.itemUseDate);
                          break label1163;
                        }
                        if (((String)localObject7).equals("ItemPrice"))
                        {
                          ((TextView)localObject4).setText(this.mItemPurchaseItemInfo.itemPrice + CommonString.getString(CommonString.Index.WON));
                          break label1163;
                        }
                        if (((String)localObject7).equals("ItemOCB"))
                        {
                          this.mOCBText = ((TextView)localObject4);
                          if (IAPLib.getOCBPointInfo())
                          {
                            this.mOCBText.setText(Integer.parseInt(IAPLib.getOCBPoint()) - SingletonCounter.getInstance().getmOCBUse() + " P");
                            break label1163;
                          }
                          this.mOCBText.setText("0 P");
                          break label1163;
                        }
                        if (((String)localObject7).equals("ItemDotori"))
                        {
                          this.mDotoriText = ((TextView)localObject4);
                          if (this.mItemPurchaseItemInfo.dotoriLinkInfo.equals("Y"))
                          {
                            ((TextView)localObject4).setText(this.mItemPurchaseItemInfo.dotoriBalance / 100 - SingletonCounter.getInstance().getmDotoriUse() / 100 + CommonString.getString(CommonString.Index.DOTORI_COUNT));
                            break label1163;
                          }
                          ((TextView)localObject4).setText("0" + CommonString.getString(CommonString.Index.DOTORI_COUNT));
                          break label1163;
                        }
                        if (((String)localObject7).equals("ItemCultureCash"))
                        {
                          this.mCultureText = ((TextView)localObject4);
                          if ((IAPLib.getCultureCashQueryInfo()) && (IAPLib.getCultureLandCashPoint() != null))
                          {
                            ((TextView)localObject4).setText(Integer.parseInt(IAPLib.getCultureLandCashPoint()) - SingletonCounter.getInstance().getmCultureUse() + CommonString.getString(CommonString.Index.WON));
                            break label1163;
                          }
                          ((TextView)localObject4).setText("0" + CommonString.getString(CommonString.Index.WON));
                          break label1163;
                        }
                        if (((String)localObject7).equals("ItemCash"))
                        {
                          this.mTcashText = ((TextView)localObject4);
                          ((TextView)localObject4).setText(this.mItemPurchaseItemInfo.itemTCash - SingletonCounter.getInstance().getmTCashUse() + " P");
                          break label1163;
                        }
                        if (((String)localObject7).equals("Discount"))
                        {
                          this.m_discountTextView = ((TextView)localObject4);
                          this.m_discountTextView.setText(SingletonCounter.getInstance().getmPaymentTotal() + CommonString.getString(CommonString.Index.WON));
                          break label1163;
                        }
                        if (((String)localObject7).equals("Payments"))
                        {
                          this.m_AccountPriceTextView = ((TextView)localObject4);
                          this.m_AccountPriceTextView.setText(SingletonCounter.getInstance().getmTotalBalance() - SingletonCounter.getInstance().getmPaymentTotal() + CommonString.getString(CommonString.Index.WON));
                          break label1163;
                        }
                        if (((String)localObject7).equals("xperiaCash"))
                        {
                          if (((String)localObject3).endsWith("LT15i"))
                          {
                            ((TextView)localObject4).setText(CommonString.getString(CommonString.Index.USING) + "  ");
                            break label1163;
                          }
                          ((TextView)localObject4).setText("");
                          break label1163;
                        }
                        if (((String)localObject7).equals("commonMessage"))
                        {
                          ((TextView)localObject4).setText(this.mInfoMessage);
                          break label1163;
                        }
                        if (((String)localObject7).equals("Version"))
                        {
                          if ("iap.tstore.co.kr".equals("iapdev.tstore.co.kr"))
                          {
                            ((TextView)localObject4).setText("V 12.09.17(" + CommonString.getString(CommonString.Index.DEVELOPMENT) + ")");
                            break label1163;
                          }
                          ((TextView)localObject4).setText("V 12.09.17");
                          break label1163;
                        }
                        if ((((String)localObject7).equals("HeaderMessage")) || (((String)localObject7).equals("FooterMessage")))
                        {
                          if (!this.mItemPurchaseItemInfo.FinalVersionCheck) {
                            break label1163;
                          }
                          return null;
                        }
                        if (((String)localObject7).equals("OCBCardNumber"))
                        {
                          ((TextView)localObject4).setText(this.mItemPurchaseItemInfo.ocbCardNumber);
                          break label1163;
                        }
                        if (((String)localObject7).equals("infoText"))
                        {
                          if (CommonF.getCarrier(this.context) == 1)
                          {
                            ((TextView)localObject4).setText(CommonString.getString(CommonString.Index.MENT_SUM_PAYMENTS));
                            break label1163;
                          }
                          ((TextView)localObject4).setText(CommonString.getString(CommonString.Index.MENT_DANAL_PAYMENTS));
                          break label1163;
                        }
                        if (((String)localObject7).equals("finalVersion_Item"))
                        {
                          if (this.mItemPurchaseItemInfo.FinalVersionCheck)
                          {
                            ((TextView)localObject4).setVisibility(8);
                            break label1163;
                          }
                          ((TextView)localObject4).setVisibility(0);
                          break label1163;
                        }
                        if ((((String)localObject7).equals("seller_tel_num")) || (((String)localObject7).equals("seller_tel_num_view")))
                        {
                          if (!((Boolean)localObject2).booleanValue())
                          {
                            ((TextView)localObject4).setVisibility(8);
                            break label1163;
                          }
                          if (!((String)localObject7).equals("seller_tel_num_view")) {
                            break label1163;
                          }
                          localObject1 = ((SellerInfoConfirm)localObject1).getmSellerPhoneNumber();
                          if (((String)localObject1).equals("null")) {
                            break label1163;
                          }
                          ((TextView)localObject4).setText(PhoneNumberUtils.formatNumber((String)localObject1));
                          break label1163;
                        }
                        if ((localObject1 != null) && (((String)localObject7).equals("seller_name_view")))
                        {
                          if ((((SellerInfoConfirm)localObject1).getmSellerName().equals("null")) && (((SellerInfoConfirm)localObject1).getmCompanyName().equals("null"))) {
                            localObject1 = "";
                          }
                          for (;;)
                          {
                            ((TextView)localObject4).setSingleLine(true);
                            ((TextView)localObject4).setFocusable(true);
                            ((TextView)localObject4).setEllipsize(TextUtils.TruncateAt.MARQUEE);
                            ((TextView)localObject4).setFocusableInTouchMode(true);
                            ((TextView)localObject4).setSelected(true);
                            ((TextView)localObject4).setText((CharSequence)localObject1);
                            break;
                            if (!((SellerInfoConfirm)localObject1).getmSellerName().equals("null")) {
                              localObject1 = ((SellerInfoConfirm)localObject1).getmSellerName();
                            } else {
                              localObject1 = ((SellerInfoConfirm)localObject1).getmCompanyName();
                            }
                          }
                        }
                        if ((localObject1 == null) || (!((String)localObject7).equals("seller_mail_view"))) {
                          break label1163;
                        }
                        if (((SellerInfoConfirm)localObject1).getmSellerEmail().equals("null"))
                        {
                          ((TextView)localObject4).setText("");
                          break label1163;
                        }
                        ((TextView)localObject4).setSingleLine(true);
                        ((TextView)localObject4).setFocusable(true);
                        ((TextView)localObject4).setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        ((TextView)localObject4).setFocusableInTouchMode(true);
                        ((TextView)localObject4).setSelected(true);
                        ((TextView)localObject4).setText(((SellerInfoConfirm)localObject1).getmSellerEmail());
                        break label1163;
                        label3931:
                        if (localIOException13.equals("left"))
                        {
                          ((TextView)localObject4).setGravity(3);
                          break label1185;
                        }
                        if (localIOException13.equals("center"))
                        {
                          ((TextView)localObject4).setGravity(17);
                          break label1185;
                        }
                        ((TextView)localObject4).setGravity(19);
                        break label1185;
                        this.mFlag = false;
                        break label2259;
                        label3990:
                        this.mBtn.setBackgroundDrawable(this.mDrawables);
                        break label2288;
                        label4004:
                        this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE));
                        break label2426;
                        label4020:
                        mOCBPointQueryFlag = Boolean.valueOf(true);
                        if (SingletonCounter.getInstance().ismOCBBtnFlag()) {
                          this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                        }
                        for (;;)
                        {
                          this.mOCBBtn.setTextSize(1, 13.0F);
                          this.mOCBBtn.setOnClickListener(new View.OnClickListener()
                          {
                            public void onClick(View paramAnonymousView)
                            {
                              if ((ParserXML.this.octDel != null) && (ParserXML.this.octChange != null))
                              {
                                ParserXML.this.octDel.setBackgroundDrawable(ParserXML.this.octChange.getBackground());
                                ParserXML.this.octDel.setPadding(0, 0, 0, 0);
                              }
                              if (SingletonCounter.getInstance().ismOCBBtnFlag())
                              {
                                ParserXML.this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE));
                                ParserXML.this.mOCBBtn.setTextSize(1, 13.0F);
                                ParserXML.this.mOCBBtn.setPadding(0, 0, 0, 0);
                                SingletonCounter.getInstance().setmOCBBtnFlag(false);
                                ParserXML.this.del_payments_amount("OCB");
                                return;
                              }
                              ParserXML.this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                              ParserXML.this.mOCBBtn.setTextSize(1, 13.0F);
                              ParserXML.this.mOCBBtn.setPadding(0, 0, 0, 0);
                              SingletonCounter.getInstance().setmOCBBtnFlag(true);
                              ParserXML.this.add_payments_amount("OCB");
                            }
                          });
                          break;
                          this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE));
                        }
                        label4094:
                        this.mOCBBtn.setText(CommonString.getString(CommonString.Index.OCB_INQUIRY));
                        this.mOCBBtn.setTextSize(1, 13.0F);
                        this.mOCBBtn.setOnClickListener(new View.OnClickListener()
                        {
                          public void onClick(View paramAnonymousView)
                          {
                            ParserXML.this.onResultCallback.onShowOCBPWDDialog();
                          }
                        });
                        break label2480;
                        label4136:
                        this.mOCBBtn.setText(CommonString.getString(CommonString.Index.OCB_REGIST_SMALL));
                        this.mOCBBtn.setTextSize(1, 13.0F);
                        this.mOCBBtn.setTextSize(1, 13.0F);
                        if (this.mOCBText != null) {
                          this.mOCBText.setText("0 P");
                        }
                        this.mOCBBtn.setOnClickListener(new View.OnClickListener()
                        {
                          public void onClick(View paramAnonymousView)
                          {
                            ParserXML.this.onResultCallback.onShowOCBRegPopup("C");
                          }
                        });
                        break label2480;
                        label4206:
                        if (((String)localObject4).equals("DotoriBtn"))
                        {
                          this.mDotoriBtn = this.mBtn;
                          this.mDotoriBtn.setPadding(0, 0, 0, 0);
                          if (this.mItemPurchaseItemInfo.dotoriLinkInfo.equals("Y")) {
                            if (SingletonCounter.getInstance().ismDotoriBtnFlag())
                            {
                              this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                              this.mDotoriBtn.setTextSize(1, 13.0F);
                              if (!this.mItemPurchaseItemInfo.IsExistDotoriSmsAuthLogFile) {
                                break label4446;
                              }
                              if (this.mItemPurchaseItemInfo.dotoriBalance == 0) {
                                break label4400;
                              }
                              this.mDotoriBtn.setOnClickListener(new View.OnClickListener()
                              {
                                public void onClick(View paramAnonymousView)
                                {
                                  if ((ParserXML.this.octDel != null) && (ParserXML.this.octChange != null))
                                  {
                                    ParserXML.this.octDel.setBackgroundDrawable(ParserXML.this.octChange.getBackground());
                                    ParserXML.this.octDel.setPadding(0, 0, 0, 0);
                                  }
                                  if (SingletonCounter.getInstance().ismDotoriBtnFlag())
                                  {
                                    ParserXML.this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.USE));
                                    ParserXML.this.mDotoriBtn.setTextSize(1, 13.0F);
                                    ParserXML.this.mDotoriBtn.setPadding(0, 0, 0, 0);
                                    SingletonCounter.getInstance().setmDotoriBtnFlag(false);
                                    ParserXML.this.del_payments_amount("DOTORI");
                                    return;
                                  }
                                  if ((SingletonCounter.getInstance().getmPostPay() < 100) && (SingletonCounter.getInstance().getmDotoriUse() == 0))
                                  {
                                    ParserXML.this.mDotoriBtn.setBackgroundDrawable(ParserXML.this.mInactiveDotoriDrawables);
                                    ParserXML.this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                                    ParserXML.this.mDotoriBtn.setClickable(false);
                                    ParserXML.this.mDotoriBtn.setPadding(0, 0, 0, 0);
                                    return;
                                  }
                                  if ((SingletonCounter.getInstance().getmPostPay() > 100000) && (ParserXML.this.mItemPurchaseItemInfo.dotoriBalance > 100000))
                                  {
                                    CommonF.LOGGER.i("ParserXML", "도토리 사용액, 후불결제금액 10만원 초과");
                                    CommonF.LOGGER.i("ParserXML", "후불 결제 금액: " + SingletonCounter.getInstance().getmPostPay());
                                    ParserXML.this.onResultCallback.onShowMessageDialog();
                                  }
                                  ParserXML.this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                                  ParserXML.this.mDotoriBtn.setTextSize(1, 13.0F);
                                  ParserXML.this.mDotoriBtn.setPadding(0, 0, 0, 0);
                                  SingletonCounter.getInstance().setmDotoriBtnFlag(true);
                                  ParserXML.this.add_payments_amount("DOTORI");
                                }
                              });
                            }
                          }
                          for (;;)
                          {
                            if ((SingletonCounter.getInstance().getmPostPay() != 0) || (SingletonCounter.getInstance().getmDotoriUse() != 0)) {
                              break label4584;
                            }
                            this.mDotoriBtn.setClickable(false);
                            this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mDotoriBtn.setPadding(0, 0, 0, 0);
                            this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                            break;
                            this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.USE));
                            break label4274;
                            this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                            this.mDotoriBtn.setClickable(false);
                            this.mDotoriBtn.setPadding(0, 0, 0, 0);
                            continue;
                            this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.USE));
                            this.mDotoriBtn.setTextSize(1, 13.0F);
                            if (this.mItemPurchaseItemInfo.dotoriBalance != 0)
                            {
                              this.mDotoriBtn.setOnClickListener(new View.OnClickListener()
                              {
                                public void onClick(View paramAnonymousView)
                                {
                                  ParserXML.this.onResultCallback.onShowDotoriQueryBtnClick(true);
                                }
                              });
                            }
                            else
                            {
                              this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDotoriDrawables);
                              this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                              this.mDotoriBtn.setClickable(false);
                              this.mDotoriBtn.setPadding(0, 0, 0, 0);
                              continue;
                              this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.DOTORI_INQUIRY));
                              this.mDotoriBtn.setTextSize(1, 13.0F);
                              this.mDotoriBtn.setOnClickListener(new View.OnClickListener()
                              {
                                public void onClick(View paramAnonymousView)
                                {
                                  ParserXML.this.onResultCallback.onShowDotoriQueryBtnClick(false);
                                }
                              });
                            }
                          }
                          break label2541;
                        }
                        label4274:
                        label4446:
                        label4584:
                        if (((String)localObject4).equals("CultureBtn"))
                        {
                          this.mCultureBtn = this.mBtn;
                          this.mCultureBtn.setPadding(0, 0, 0, 0);
                          if (IAPLib.getCultureCashQueryInfo()) {
                            if (SingletonCounter.getInstance().ismCultureBtnFlag())
                            {
                              this.mCultureBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                              this.mCultureBtn.setTextSize(1, 13.0F);
                              localObject2 = IAPLib.getCultureLandCashPoint();
                              if ((localObject2 != null) && (((String)localObject2).length() > 0) && (Integer.parseInt((String)localObject2) >= 10)) {
                                break label4806;
                              }
                              this.mCultureBtn.setBackgroundDrawable(this.mInactiveDrawables);
                              this.mCultureBtn.setTextColor(Color.parseColor("#8B8B8B"));
                              this.mCultureBtn.setClickable(false);
                              this.mCultureBtn.setPadding(0, 0, 0, 0);
                            }
                          }
                          for (;;)
                          {
                            if ((SingletonCounter.getInstance().getmPostPay() != 0) || (SingletonCounter.getInstance().getmCultureUse() != 0)) {
                              break label4875;
                            }
                            this.mCultureBtn.setClickable(false);
                            this.mCultureBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mCultureBtn.setPadding(0, 0, 0, 0);
                            this.mCultureBtn.setTextColor(Color.parseColor("#8B8B8B"));
                            break;
                            this.mCultureBtn.setText(CommonString.getString(CommonString.Index.USE));
                            break label4644;
                            this.mCultureBtn.setOnClickListener(new View.OnClickListener()
                            {
                              public void onClick(View paramAnonymousView)
                              {
                                if ((ParserXML.this.octDel != null) && (ParserXML.this.octChange != null))
                                {
                                  ParserXML.this.octDel.setBackgroundDrawable(ParserXML.this.octChange.getBackground());
                                  ParserXML.this.octDel.setPadding(0, 0, 0, 0);
                                }
                                if (SingletonCounter.getInstance().ismCultureBtnFlag())
                                {
                                  ParserXML.this.mCultureBtn.setText(CommonString.getString(CommonString.Index.USE));
                                  ParserXML.this.mCultureBtn.setTextSize(1, 13.0F);
                                  ParserXML.this.mCultureBtn.setPadding(0, 0, 0, 0);
                                  SingletonCounter.getInstance().setmCultureBtnFlag(false);
                                  ParserXML.this.del_payments_amount("CULTURE");
                                  return;
                                }
                                ParserXML.this.mCultureBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                                ParserXML.this.mCultureBtn.setTextSize(1, 13.0F);
                                ParserXML.this.mCultureBtn.setPadding(0, 0, 0, 0);
                                SingletonCounter.getInstance().setmCultureBtnFlag(true);
                                ParserXML.this.add_payments_amount("CULTURE");
                              }
                            });
                            continue;
                            this.mCultureBtn.setText(CommonString.getString(CommonString.Index.CUTURE_INQUIRY));
                            this.mCultureBtn.setTextSize(1, 13.0F);
                            this.mCultureBtn.setPadding(0, 0, 0, 0);
                            this.mCultureBtn.setOnClickListener(new View.OnClickListener()
                            {
                              public void onClick(View paramAnonymousView)
                              {
                                ParserXML.this.onResultCallback.onShowCultureLandDialog();
                              }
                            });
                          }
                          break label2541;
                        }
                        label4400:
                        label4806:
                        if (((String)localObject4).equals("TcashBtn"))
                        {
                          this.mTcashBtn = this.mBtn;
                          this.mTcashBtn.setPadding(0, 0, 0, 0);
                          if (SingletonCounter.getInstance().ismTCashUseFlag())
                          {
                            this.mTcashBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                            this.mTcashBtn.setTextSize(1, 13.0F);
                            if (this.mItemPurchaseItemInfo.itemTCash < 10) {
                              break label5047;
                            }
                            this.mTcashBtn.setOnClickListener(new View.OnClickListener()
                            {
                              public void onClick(View paramAnonymousView)
                              {
                                if ((ParserXML.this.octDel != null) && (ParserXML.this.octChange != null))
                                {
                                  ParserXML.this.octDel.setBackgroundDrawable(ParserXML.this.octChange.getBackground());
                                  ParserXML.this.octDel.setPadding(0, 0, 0, 0);
                                }
                                if (SingletonCounter.getInstance().ismTCashUseFlag())
                                {
                                  ParserXML.this.mTcashBtn.setText(CommonString.getString(CommonString.Index.USE));
                                  ParserXML.this.mTcashBtn.setTextSize(1, 13.0F);
                                  ParserXML.this.mTcashBtn.setPadding(0, 0, 0, 0);
                                  SingletonCounter.getInstance().setmTCashUseFlag(false);
                                  ParserXML.this.del_payments_amount("TCASH");
                                  return;
                                }
                                ParserXML.this.mTcashBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                                ParserXML.this.mTcashBtn.setTextSize(1, 13.0F);
                                ParserXML.this.mTcashBtn.setPadding(0, 0, 0, 0);
                                SingletonCounter.getInstance().setmTCashUseFlag(true);
                                ParserXML.this.add_payments_amount("TCASH");
                              }
                            });
                          }
                          for (;;)
                          {
                            if ((SingletonCounter.getInstance().getmPostPay() != 0) || (SingletonCounter.getInstance().getmTCashUse() != 0)) {
                              break label5091;
                            }
                            this.mTcashBtn.setClickable(false);
                            this.mTcashBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mTcashBtn.setPadding(0, 0, 0, 0);
                            this.mTcashBtn.setTextColor(Color.parseColor("#8B8B8B"));
                            break;
                            this.mTcashBtn.setText(CommonString.getString(CommonString.Index.USE));
                            break label4929;
                            this.mTcashBtn.setClickable(false);
                            this.mTcashBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mTcashBtn.setPadding(0, 0, 0, 0);
                            this.mTcashBtn.setTextColor(Color.parseColor("#8B8B8B"));
                          }
                          label5091:
                          break label2541;
                        }
                        label4644:
                        label4929:
                        if (((String)localObject4).equals("OCBRegister"))
                        {
                          localObject2 = this.mBtn;
                          ((Button)localObject2).setText(CommonString.getString(CommonString.Index.OCB_REGIST));
                          ((Button)localObject2).setTextSize(1, 13.0F);
                          ((Button)localObject2).setPadding(0, 0, 0, 0);
                          ((Button)localObject2).setOnClickListener(new View.OnClickListener()
                          {
                            public void onClick(View paramAnonymousView)
                            {
                              ParserXML.this.onResultCallback.onShowOCBRegPopup("C");
                            }
                          });
                          break label2541;
                        }
                        label4875:
                        label5047:
                        if (((String)localObject4).equals("OCB_Card_Change"))
                        {
                          this.octChange = this.mBtn;
                          this.octChange.setText(CommonString.getString(CommonString.Index.OCB_CHANGE_CARD));
                          this.octChange.setTextSize(1, 13.0F);
                          this.octChange.setPadding(0, 0, 0, 0);
                          this.octChange.setOnClickListener(new View.OnClickListener()
                          {
                            public void onClick(View paramAnonymousView)
                            {
                              ParserXML.this.onResultCallback.onShowOCBRegPopup("U");
                            }
                          });
                          break label2541;
                        }
                        if (!((String)localObject4).equals("OCB_Card_Del")) {
                          break label2541;
                        }
                        this.octDel = this.mBtn;
                        this.octDel.setText(CommonString.getString(CommonString.Index.OCB_DELETE_CARD));
                        this.octDel.setTextSize(1, 13.0F);
                        this.octDel.setPadding(0, 0, 0, 0);
                        this.octDel.setOnClickListener(new View.OnClickListener()
                        {
                          public void onClick(View paramAnonymousView)
                          {
                            ParserXML.this.onResultCallback.onShowOCBRegPopup("D");
                          }
                        });
                        break label2541;
                        label5299:
                        if (((String)localObject1).equals("pop_btn_sel_ok"))
                        {
                          this.mBtn.setOnClickListener(this.okMessageBtn);
                        }
                        else if (((String)localObject1).equals("btn_info01_sel"))
                        {
                          this.mBtn.setOnClickListener(this.moreInfo);
                        }
                        else
                        {
                          if (((String)localObject1).equals("btn_locking_sel"))
                          {
                            localObject1 = this.context.getPackageManager().getInstalledApplications(0);
                            j = ((List)localObject1).size();
                            i = 0;
                            for (;;)
                            {
                              if (i >= j)
                              {
                                this.mBtn.setOnClickListener(this.tStoreInfoBtn);
                                break;
                              }
                              if (((ApplicationInfo)((List)localObject1).get(i)).packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                                this.tStoreFlag = true;
                              }
                              i += 1;
                            }
                          }
                          if (((String)localObject1).equals("btn_cancel_sel_h")) {
                            this.mBtn.setOnClickListener(this.cancelBtn);
                          }
                        }
                      }
                      label5462:
                      if (this.mItemPurchaseItemInfo != null) {
                        if (!this.mItemPurchaseItemInfo.AutoPurchaseCheck)
                        {
                          localObject2 = (CheckBox)paramXmlPullParser;
                          i = 0;
                          if (((String)localObject3).endsWith("LT15i"))
                          {
                            i = 1;
                            this.xperiacheckbox = true;
                          }
                          if (i == 0)
                          {
                            localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject1 + ".png");
                            localObject1 = Drawable.createFromStream((InputStream)localObject3, (String)localObject1);
                          }
                        }
                      }
                      try
                      {
                        ((InputStream)localObject3).close();
                        localObject4 = getClass().getResourceAsStream(getResourcePath() + "btn_check_ok_nor" + ".png");
                        localObject3 = Drawable.createFromStream((InputStream)localObject4, "btn_check_ok_nor");
                      }
                      catch (IOException localIOException5)
                      {
                        try
                        {
                          ((InputStream)localObject4).close();
                          localObject6 = getClass().getResourceAsStream(getResourcePath() + "btn_check_no_sel" + ".png");
                          localObject4 = Drawable.createFromStream((InputStream)localObject6, "btn_check_no_sel");
                        }
                        catch (IOException localIOException5)
                        {
                          try
                          {
                            ((InputStream)localObject6).close();
                            localObject7 = getClass().getResourceAsStream(getResourcePath() + "btn_check_ok_sel" + ".png");
                            localObject6 = Drawable.createFromStream((InputStream)localObject7, "btn_check_ok_sel");
                          }
                          catch (IOException localIOException5)
                          {
                            try
                            {
                              ((InputStream)localObject7).close();
                              localObject8 = getClass().getResourceAsStream(getResourcePath() + "btn_check_dim" + ".png");
                              localObject7 = Drawable.createFromStream((InputStream)localObject8, "btn_check_dim");
                            }
                            catch (IOException localIOException5)
                            {
                              try
                              {
                                ((InputStream)localObject8).close();
                                localObject8 = new StateListDrawable();
                                localObject9 = new StateListDrawable();
                                ((StateListDrawable)localObject8).addState(new int[] { -16842910, -16842908 }, (Drawable)localObject7);
                                ((StateListDrawable)localObject8).addState(new int[] { -16842912, 16842919 }, (Drawable)localObject4);
                                ((StateListDrawable)localObject8).addState(new int[] { 16842912, 16842919 }, (Drawable)localObject6);
                                ((StateListDrawable)localObject8).addState(new int[] { -16842912, -16842908 }, (Drawable)localObject1);
                                ((StateListDrawable)localObject8).addState(new int[] { 16842912, -16842908 }, (Drawable)localObject3);
                                ((StateListDrawable)localObject9).addState(new int[] { -16842910, -16842908 }, null);
                                ((StateListDrawable)localObject9).addState(new int[] { -16842912, 16842919 }, null);
                                ((StateListDrawable)localObject9).addState(new int[] { 16842912, 16842919 }, null);
                                ((StateListDrawable)localObject9).addState(new int[] { -16842912, -16842908 }, null);
                                ((StateListDrawable)localObject9).addState(new int[] { 16842912, -16842908 }, null);
                                ((CheckBox)localObject2).setButtonDrawable((Drawable)localObject9);
                                ((CheckBox)localObject2).setBackgroundDrawable((Drawable)localObject8);
                                ((CheckBox)localObject2).setChecked(false);
                                if ((this.mItemPurchaseItemInfo.itemTCash != 0) && (this.mItemPurchaseItemInfo.itemTCash - this.mItemPurchaseItemInfo.itemPrice >= 0)) {
                                  ((CheckBox)localObject2).setEnabled(true);
                                }
                                for (;;)
                                {
                                  ((CheckBox)localObject2).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
                                  {
                                    public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
                                    {
                                      ParserXML.this.UseTCash(Boolean.valueOf(paramAnonymousBoolean));
                                      ParserXML.this.onResultCallback.onUseTCashCheckChanged(paramAnonymousBoolean);
                                      if ((paramAnonymousBoolean) && (IAPLib.getLimitExcess()))
                                      {
                                        ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
                                        ParserXML.this.mFlag = false;
                                        ParserXML.this.mOkBtn.setOnClickListener(ParserXML.this.okBtn);
                                      }
                                      while ((paramAnonymousBoolean) || (!IAPLib.getLimitExcess())) {
                                        return;
                                      }
                                      ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mLiminExcessDrawables);
                                      ParserXML.this.mFlag = true;
                                      ParserXML.this.mOkBtn.setOnClickListener(null);
                                    }
                                  });
                                  break;
                                  ((CheckBox)localObject2).setEnabled(false);
                                }
                                if ((!this.mItemPurchaseItemInfo.AutoPurchaseCheck) || (!(paramXmlPullParser instanceof CheckBox))) {
                                  break label2569;
                                }
                                localObject2 = null;
                                localObject1 = findAttribute(localAttributeSet, "a:checkid");
                                localObject4 = (CheckBox)paramXmlPullParser;
                                ((CheckBox)localObject4).setTag(localObject1);
                                localObject1 = null;
                                if (this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree)
                                {
                                  localObject2 = "checkbox_y";
                                  localObject1 = "checkbox_n";
                                  this.mPurchaseCheckList[0] = true;
                                  label6158:
                                  ((CheckBox)localObject4).setChecked(false);
                                  i = 0;
                                  if (((String)localObject3).endsWith("LT15i"))
                                  {
                                    i = 1;
                                    this.xperiacheckbox = true;
                                  }
                                  if (i != 0) {
                                    break label6513;
                                  }
                                  localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
                                  localObject2 = Drawable.createFromStream((InputStream)localObject3, (String)localObject2);
                                }
                              }
                              catch (IOException localIOException5)
                              {
                                try
                                {
                                  ((InputStream)localObject3).close();
                                  localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject1 + ".png");
                                  localObject1 = Drawable.createFromStream((InputStream)localObject3, (String)localObject1);
                                }
                                catch (IOException localIOException5)
                                {
                                  try
                                  {
                                    ((InputStream)localObject3).close();
                                    localObject3 = new StateListDrawable();
                                    localObject6 = new StateListDrawable();
                                    ((StateListDrawable)localObject3).addState(new int[] { -16842912, -16842908 }, (Drawable)localObject2);
                                    ((StateListDrawable)localObject3).addState(new int[] { 16842912, -16842908 }, (Drawable)localObject1);
                                    ((StateListDrawable)localObject6).addState(new int[] { -16842910, -16842908 }, null);
                                    ((StateListDrawable)localObject6).addState(new int[] { -16842912, 16842919 }, null);
                                    ((StateListDrawable)localObject6).addState(new int[] { 16842912, 16842919 }, null);
                                    ((StateListDrawable)localObject6).addState(new int[] { -16842912, -16842908 }, null);
                                    ((StateListDrawable)localObject6).addState(new int[] { 16842912, -16842908 }, null);
                                    ((CheckBox)localObject4).setButtonDrawable((Drawable)localObject6);
                                    ((CheckBox)localObject4).setBackgroundDrawable((Drawable)localObject3);
                                    for (;;)
                                    {
                                      ((CheckBox)localObject4).setOnCheckedChangeListener(this.changeCheckBox);
                                      break;
                                      if (this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                                        break label6158;
                                      }
                                      localObject2 = "checkbox_n";
                                      localObject1 = "checkbox_y";
                                      this.mPurchaseCheckList[0] = false;
                                      break label6158;
                                      label6513:
                                      if ((i != 0) && (this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree)) {
                                        ((CheckBox)localObject4).setChecked(true);
                                      }
                                    }
                                    localObject2 = (CheckBox)paramXmlPullParser;
                                    ((CheckBox)localObject2).setTag(findAttribute(localAttributeSet, "a:checkid"));
                                    i = 0;
                                    if (((String)localObject3).endsWith("LT15i"))
                                    {
                                      i = 1;
                                      this.xperiacheckbox = true;
                                    }
                                    if (i == 0)
                                    {
                                      localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject1 + ".png");
                                      localObject1 = Drawable.createFromStream((InputStream)localObject3, (String)localObject1);
                                    }
                                  }
                                  catch (IOException localIOException5)
                                  {
                                    try
                                    {
                                      ((InputStream)localObject3).close();
                                      localObject4 = getClass().getResourceAsStream(getResourcePath() + "checkbox_y" + ".png");
                                      localObject3 = Drawable.createFromStream((InputStream)localObject4, "checkbox_y");
                                    }
                                    catch (IOException localIOException5)
                                    {
                                      try
                                      {
                                        for (;;)
                                        {
                                          ((InputStream)localObject4).close();
                                          label6684:
                                          localObject4 = new StateListDrawable();
                                          Object localObject6 = new StateListDrawable();
                                          ((StateListDrawable)localObject4).addState(new int[] { -16842912, -16842908 }, (Drawable)localObject1);
                                          ((StateListDrawable)localObject4).addState(new int[] { 16842912, -16842908 }, (Drawable)localObject3);
                                          ((StateListDrawable)localObject6).addState(new int[] { -16842912, 16842919 }, null);
                                          ((StateListDrawable)localObject6).addState(new int[] { 16842912, 16842919 }, null);
                                          ((StateListDrawable)localObject6).addState(new int[] { -16842912, -16842908 }, null);
                                          ((StateListDrawable)localObject6).addState(new int[] { 16842912, -16842908 }, null);
                                          ((CheckBox)localObject2).setButtonDrawable((Drawable)localObject6);
                                          ((CheckBox)localObject2).setBackgroundDrawable((Drawable)localObject4);
                                          ((CheckBox)localObject2).setOnCheckedChangeListener(this.changeCheckBox);
                                          break label2569;
                                          localIOException15 = localIOException15;
                                          break;
                                          localIOException10 = localIOException10;
                                          break label841;
                                          localIOException1 = localIOException1;
                                          break label1274;
                                          localIOException2 = localIOException2;
                                          continue;
                                          localIOException11 = localIOException11;
                                          continue;
                                          localIOException14 = localIOException14;
                                          continue;
                                          localIOException16 = localIOException16;
                                          continue;
                                          localIOException17 = localIOException17;
                                          continue;
                                          localIOException3 = localIOException3;
                                          continue;
                                          localIOException4 = localIOException4;
                                        }
                                        localIOException5 = localIOException5;
                                      }
                                      catch (IOException localIOException12)
                                      {
                                        break label6684;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                  catch (IOException localIOException6)
                  {
                    break label2166;
                  }
                }
                catch (IOException localIOException7)
                {
                  break label2100;
                }
              }
              catch (IOException localIOException8)
              {
                break label1551;
              }
            }
            catch (IOException localIOException9)
            {
              break label1492;
            }
          }
        }
      }
    }
  }
  
  /* Error */
  private View createViewAuthPopup(XmlPullParser paramXmlPullParser)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 911 1 0
    //   6: astore 6
    //   8: aconst_null
    //   9: astore 4
    //   11: aload_1
    //   12: invokestatic 917	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   15: astore 5
    //   17: aload 6
    //   19: ldc_w 919
    //   22: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   25: ifeq +25 -> 50
    //   28: new 921	android/widget/LinearLayout
    //   31: dup
    //   32: aload_0
    //   33: getfield 394	com/feelingk/iap/gui/parser/ParserXML:context	Landroid/content/Context;
    //   36: invokespecial 922	android/widget/LinearLayout:<init>	(Landroid/content/Context;)V
    //   39: astore_1
    //   40: aload_1
    //   41: ifnonnull +233 -> 274
    //   44: aconst_null
    //   45: astore 4
    //   47: aload 4
    //   49: areturn
    //   50: aload 6
    //   52: ldc_w 924
    //   55: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   58: ifeq +18 -> 76
    //   61: new 926	android/widget/TextView
    //   64: dup
    //   65: aload_0
    //   66: getfield 394	com/feelingk/iap/gui/parser/ParserXML:context	Landroid/content/Context;
    //   69: invokespecial 927	android/widget/TextView:<init>	(Landroid/content/Context;)V
    //   72: astore_1
    //   73: goto -33 -> 40
    //   76: aload 6
    //   78: ldc_w 934
    //   81: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   84: ifeq +18 -> 102
    //   87: new 936	android/widget/Button
    //   90: dup
    //   91: aload_0
    //   92: getfield 394	com/feelingk/iap/gui/parser/ParserXML:context	Landroid/content/Context;
    //   95: invokespecial 937	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   98: astore_1
    //   99: goto -59 -> 40
    //   102: aload 6
    //   104: ldc_w 1630
    //   107: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   110: ifeq +28 -> 138
    //   113: new 1632	android/widget/EditText
    //   116: dup
    //   117: aload_0
    //   118: getfield 394	com/feelingk/iap/gui/parser/ParserXML:context	Landroid/content/Context;
    //   121: invokespecial 1633	android/widget/EditText:<init>	(Landroid/content/Context;)V
    //   124: astore_1
    //   125: aload_1
    //   126: checkcast 1632	android/widget/EditText
    //   129: ldc_w 1634
    //   132: invokevirtual 1637	android/widget/EditText:setImeOptions	(I)V
    //   135: goto -95 -> 40
    //   138: aload 6
    //   140: ldc_w 939
    //   143: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   146: ifeq +23 -> 169
    //   149: new 941	android/widget/ScrollView
    //   152: dup
    //   153: aload_0
    //   154: getfield 394	com/feelingk/iap/gui/parser/ParserXML:context	Landroid/content/Context;
    //   157: invokespecial 942	android/widget/ScrollView:<init>	(Landroid/content/Context;)V
    //   160: astore_1
    //   161: aload_1
    //   162: iconst_0
    //   163: invokevirtual 947	android/view/View:setScrollbarFadingEnabled	(Z)V
    //   166: goto -126 -> 40
    //   169: aload 6
    //   171: ldc_w 949
    //   174: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   177: ifeq +18 -> 195
    //   180: new 951	android/widget/CheckBox
    //   183: dup
    //   184: aload_0
    //   185: getfield 394	com/feelingk/iap/gui/parser/ParserXML:context	Landroid/content/Context;
    //   188: invokespecial 952	android/widget/CheckBox:<init>	(Landroid/content/Context;)V
    //   191: astore_1
    //   192: goto -152 -> 40
    //   195: aload 6
    //   197: ldc_w 1639
    //   200: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   203: ifeq +18 -> 221
    //   206: new 1641	android/widget/RadioGroup
    //   209: dup
    //   210: aload_0
    //   211: getfield 394	com/feelingk/iap/gui/parser/ParserXML:context	Landroid/content/Context;
    //   214: invokespecial 1642	android/widget/RadioGroup:<init>	(Landroid/content/Context;)V
    //   217: astore_1
    //   218: goto -178 -> 40
    //   221: aload 6
    //   223: ldc_w 1644
    //   226: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   229: ifeq +18 -> 247
    //   232: new 1646	android/widget/RadioButton
    //   235: dup
    //   236: aload_0
    //   237: getfield 394	com/feelingk/iap/gui/parser/ParserXML:context	Landroid/content/Context;
    //   240: invokespecial 1647	android/widget/RadioButton:<init>	(Landroid/content/Context;)V
    //   243: astore_1
    //   244: goto -204 -> 40
    //   247: new 954	java/lang/StringBuilder
    //   250: dup
    //   251: ldc_w 956
    //   254: invokespecial 958	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   257: aload 6
    //   259: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: invokevirtual 965	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   265: invokestatic 970	junit/framework/Assert:fail	(Ljava/lang/String;)V
    //   268: aload 4
    //   270: astore_1
    //   271: goto -231 -> 40
    //   274: aload_1
    //   275: instanceof 1641
    //   278: ifeq +1161 -> 1439
    //   281: aload_1
    //   282: checkcast 1641	android/widget/RadioGroup
    //   285: astore 4
    //   287: aload_0
    //   288: aload 5
    //   290: ldc_w 1015
    //   293: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   296: astore 6
    //   298: aload 6
    //   300: ifnull +20 -> 320
    //   303: aload 6
    //   305: ldc_w 1021
    //   308: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   311: ifeq +1099 -> 1410
    //   314: aload 4
    //   316: iconst_0
    //   317: invokevirtual 1648	android/widget/RadioGroup:setOrientation	(I)V
    //   320: aload_0
    //   321: aload 5
    //   323: ldc_w 1069
    //   326: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   329: astore 6
    //   331: aload 6
    //   333: ifnull +21 -> 354
    //   336: aload 6
    //   338: ldc_w 1071
    //   341: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   344: ifeq +1086 -> 1430
    //   347: aload 4
    //   349: bipush 17
    //   351: invokevirtual 1649	android/widget/RadioGroup:setGravity	(I)V
    //   354: aload_1
    //   355: instanceof 926
    //   358: ifeq +163 -> 521
    //   361: aload_1
    //   362: checkcast 926	android/widget/TextView
    //   365: astore 4
    //   367: aload_0
    //   368: aload 5
    //   370: ldc_w 1102
    //   373: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   376: astore 6
    //   378: aload_0
    //   379: aload 5
    //   381: ldc_w 1121
    //   384: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   387: astore 7
    //   389: aload_0
    //   390: aload 5
    //   392: ldc_w 1131
    //   395: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   398: astore 8
    //   400: aload_0
    //   401: aload 5
    //   403: ldc_w 1133
    //   406: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   409: astore 9
    //   411: aload_0
    //   412: aload 5
    //   414: ldc_w 1069
    //   417: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   420: astore 10
    //   422: aload 7
    //   424: ifnull +19 -> 443
    //   427: aload 4
    //   429: aload 7
    //   431: ldc_w 1135
    //   434: ldc_w 1137
    //   437: invokevirtual 1141	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   440: invokevirtual 1145	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   443: aload 8
    //   445: ifnull +16 -> 461
    //   448: aload 4
    //   450: iconst_1
    //   451: aload_0
    //   452: aload 8
    //   454: invokespecial 1187	com/feelingk/iap/gui/parser/ParserXML:readFontSize	(Ljava/lang/String;)I
    //   457: i2f
    //   458: invokevirtual 1191	android/widget/TextView:setTextSize	(IF)V
    //   461: aload 9
    //   463: ifnull +13 -> 476
    //   466: aload 4
    //   468: aload 9
    //   470: invokestatic 1196	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   473: invokevirtual 1199	android/widget/TextView:setTextColor	(I)V
    //   476: aload 6
    //   478: ifnull +22 -> 500
    //   481: aload 6
    //   483: ldc_w 1436
    //   486: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   489: ifeq +11 -> 500
    //   492: aload 4
    //   494: ldc_w 1449
    //   497: invokevirtual 1145	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   500: aload 10
    //   502: ifnull +1229 -> 1731
    //   505: aload 4
    //   507: bipush 17
    //   509: invokevirtual 1220	android/widget/TextView:setGravity	(I)V
    //   512: aload 4
    //   514: fconst_0
    //   515: ldc_w 1221
    //   518: invokevirtual 1225	android/widget/TextView:setLineSpacing	(FF)V
    //   521: aload_1
    //   522: instanceof 951
    //   525: ifeq +1216 -> 1741
    //   528: aload_0
    //   529: aload 5
    //   531: ldc_w 1230
    //   534: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   537: astore 9
    //   539: aload_0
    //   540: aload 5
    //   542: ldc_w 1616
    //   545: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   548: astore 4
    //   550: aload_1
    //   551: checkcast 951	android/widget/CheckBox
    //   554: astore 6
    //   556: aload 6
    //   558: aload 4
    //   560: invokevirtual 1620	android/widget/CheckBox:setTag	(Ljava/lang/Object;)V
    //   563: getstatic 1013	android/os/Build:MODEL	Ljava/lang/String;
    //   566: astore 10
    //   568: iconst_0
    //   569: istore_2
    //   570: new 1234	android/graphics/drawable/StateListDrawable
    //   573: dup
    //   574: invokespecial 1235	android/graphics/drawable/StateListDrawable:<init>	()V
    //   577: astore 7
    //   579: new 1234	android/graphics/drawable/StateListDrawable
    //   582: dup
    //   583: invokespecial 1235	android/graphics/drawable/StateListDrawable:<init>	()V
    //   586: astore 8
    //   588: aload 10
    //   590: ldc_w 1423
    //   593: invokevirtual 1427	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   596: ifeq +10 -> 606
    //   599: iconst_1
    //   600: istore_2
    //   601: aload_0
    //   602: iconst_1
    //   603: putfield 476	com/feelingk/iap/gui/parser/ParserXML:xperiacheckbox	Z
    //   606: iload_2
    //   607: ifne +270 -> 877
    //   610: aload_0
    //   611: invokevirtual 696	java/lang/Object:getClass	()Ljava/lang/Class;
    //   614: new 954	java/lang/StringBuilder
    //   617: dup
    //   618: aload_0
    //   619: invokespecial 1031	com/feelingk/iap/gui/parser/ParserXML:getResourcePath	()Ljava/lang/String;
    //   622: invokestatic 1034	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   625: invokespecial 958	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   628: aload 9
    //   630: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   633: ldc_w 1116
    //   636: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   639: invokevirtual 965	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   642: invokevirtual 702	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   645: astore 10
    //   647: aload 10
    //   649: aload 9
    //   651: invokestatic 1042	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   654: astore 9
    //   656: aload 10
    //   658: invokevirtual 719	java/io/InputStream:close	()V
    //   661: aload_0
    //   662: invokevirtual 696	java/lang/Object:getClass	()Ljava/lang/Class;
    //   665: new 954	java/lang/StringBuilder
    //   668: dup
    //   669: aload_0
    //   670: invokespecial 1031	com/feelingk/iap/gui/parser/ParserXML:getResourcePath	()Ljava/lang/String;
    //   673: invokestatic 1034	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   676: invokespecial 958	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   679: ldc_w 1625
    //   682: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   685: ldc_w 1116
    //   688: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   691: invokevirtual 965	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   694: invokevirtual 702	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   697: astore 11
    //   699: aload 11
    //   701: ldc_w 1625
    //   704: invokestatic 1042	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   707: astore 10
    //   709: aload 11
    //   711: invokevirtual 719	java/io/InputStream:close	()V
    //   714: aload 7
    //   716: iconst_2
    //   717: newarray int
    //   719: dup
    //   720: iconst_0
    //   721: ldc_w 1598
    //   724: iastore
    //   725: dup
    //   726: iconst_1
    //   727: ldc_w 1597
    //   730: iastore
    //   731: aload 9
    //   733: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   736: aload 7
    //   738: iconst_2
    //   739: newarray int
    //   741: dup
    //   742: iconst_0
    //   743: ldc_w 1599
    //   746: iastore
    //   747: dup
    //   748: iconst_1
    //   749: ldc_w 1597
    //   752: iastore
    //   753: aload 10
    //   755: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   758: aload 8
    //   760: iconst_2
    //   761: newarray int
    //   763: dup
    //   764: iconst_0
    //   765: ldc_w 1596
    //   768: iastore
    //   769: dup
    //   770: iconst_1
    //   771: ldc_w 1597
    //   774: iastore
    //   775: aconst_null
    //   776: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   779: aload 8
    //   781: iconst_2
    //   782: newarray int
    //   784: dup
    //   785: iconst_0
    //   786: ldc_w 1598
    //   789: iastore
    //   790: dup
    //   791: iconst_1
    //   792: ldc_w 1258
    //   795: iastore
    //   796: aconst_null
    //   797: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   800: aload 8
    //   802: iconst_2
    //   803: newarray int
    //   805: dup
    //   806: iconst_0
    //   807: ldc_w 1599
    //   810: iastore
    //   811: dup
    //   812: iconst_1
    //   813: ldc_w 1258
    //   816: iastore
    //   817: aconst_null
    //   818: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   821: aload 8
    //   823: iconst_2
    //   824: newarray int
    //   826: dup
    //   827: iconst_0
    //   828: ldc_w 1598
    //   831: iastore
    //   832: dup
    //   833: iconst_1
    //   834: ldc_w 1597
    //   837: iastore
    //   838: aconst_null
    //   839: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   842: aload 8
    //   844: iconst_2
    //   845: newarray int
    //   847: dup
    //   848: iconst_0
    //   849: ldc_w 1599
    //   852: iastore
    //   853: dup
    //   854: iconst_1
    //   855: ldc_w 1597
    //   858: iastore
    //   859: aconst_null
    //   860: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   863: aload 6
    //   865: aload 8
    //   867: invokevirtual 1602	android/widget/CheckBox:setButtonDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   870: aload 6
    //   872: aload 7
    //   874: invokevirtual 1603	android/widget/CheckBox:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   877: aload 6
    //   879: iconst_0
    //   880: invokevirtual 1606	android/widget/CheckBox:setChecked	(Z)V
    //   883: aload 6
    //   885: aload_0
    //   886: getfield 596	com/feelingk/iap/gui/parser/ParserXML:changeCheckBox	Landroid/widget/CompoundButton$OnCheckedChangeListener;
    //   889: invokevirtual 1614	android/widget/CheckBox:setOnCheckedChangeListener	(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    //   892: aload 4
    //   894: ldc_w 1651
    //   897: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   900: ifeq +22 -> 922
    //   903: getstatic 378	com/feelingk/iap/gui/parser/ParserXML:mCultureLoginFlag	Z
    //   906: ifeq +16 -> 922
    //   909: aload 6
    //   911: iconst_1
    //   912: invokevirtual 1606	android/widget/CheckBox:setChecked	(Z)V
    //   915: aload 6
    //   917: aload 7
    //   919: invokevirtual 1603	android/widget/CheckBox:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   922: aload_1
    //   923: instanceof 1632
    //   926: ifeq +449 -> 1375
    //   929: aload_1
    //   930: checkcast 1632	android/widget/EditText
    //   933: astore 4
    //   935: aload 4
    //   937: ldc_w 516
    //   940: invokevirtual 1652	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   943: aload_0
    //   944: getfield 398	com/feelingk/iap/gui/parser/ParserXML:onAuthResultCallback	Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;
    //   947: ifnonnull +10 -> 957
    //   950: aload_0
    //   951: getfield 418	com/feelingk/iap/gui/parser/ParserXML:onForeignInputMDNResultCallback	Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;
    //   954: ifnull +9 -> 963
    //   957: aload 4
    //   959: iconst_2
    //   960: invokevirtual 1655	android/widget/EditText:setInputType	(I)V
    //   963: new 1657	java/util/ArrayList
    //   966: dup
    //   967: invokespecial 1658	java/util/ArrayList:<init>	()V
    //   970: astore 6
    //   972: aload_0
    //   973: aload 5
    //   975: ldc_w 1660
    //   978: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   981: astore 7
    //   983: aload 7
    //   985: ifnull +35 -> 1020
    //   988: aload 7
    //   990: ldc_w 1662
    //   993: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   996: ifeq +1895 -> 2891
    //   999: aload 4
    //   1001: bipush 17
    //   1003: invokevirtual 1655	android/widget/EditText:setInputType	(I)V
    //   1006: aload 6
    //   1008: new 151	com/feelingk/iap/gui/parser/ParserXML$filterAlphaNum
    //   1011: dup
    //   1012: aload_0
    //   1013: invokespecial 1663	com/feelingk/iap/gui/parser/ParserXML$filterAlphaNum:<init>	(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    //   1016: invokevirtual 1666	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1019: pop
    //   1020: aload_0
    //   1021: aload 5
    //   1023: ldc_w 1668
    //   1026: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1029: astore 7
    //   1031: aload 7
    //   1033: ifnull +26 -> 1059
    //   1036: aload 4
    //   1038: invokevirtual 1669	android/widget/EditText:setSingleLine	()V
    //   1041: aload 6
    //   1043: new 1671	android/text/InputFilter$LengthFilter
    //   1046: dup
    //   1047: aload 7
    //   1049: invokestatic 1292	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   1052: invokespecial 1673	android/text/InputFilter$LengthFilter:<init>	(I)V
    //   1055: invokevirtual 1666	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1058: pop
    //   1059: aload 6
    //   1061: invokevirtual 1674	java/util/ArrayList:size	()I
    //   1064: ifle +20 -> 1084
    //   1067: aload 4
    //   1069: aload 6
    //   1071: iconst_0
    //   1072: anewarray 1676	android/text/InputFilter
    //   1075: invokevirtual 1680	java/util/ArrayList:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   1078: checkcast 1682	[Landroid/text/InputFilter;
    //   1081: invokevirtual 1686	android/widget/EditText:setFilters	([Landroid/text/InputFilter;)V
    //   1084: aload_0
    //   1085: aload 5
    //   1087: ldc_w 1688
    //   1090: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1093: ifnull +15 -> 1108
    //   1096: aload 4
    //   1098: new 1690	android/text/method/PasswordTransformationMethod
    //   1101: dup
    //   1102: invokespecial 1691	android/text/method/PasswordTransformationMethod:<init>	()V
    //   1105: invokevirtual 1695	android/widget/EditText:setTransformationMethod	(Landroid/text/method/TransformationMethod;)V
    //   1108: aload_0
    //   1109: aload 5
    //   1111: ldc_w 1697
    //   1114: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1117: astore 6
    //   1119: aload 6
    //   1121: ifnull +22 -> 1143
    //   1124: aload 6
    //   1126: ldc_w 1699
    //   1129: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1132: ifeq +11 -> 1143
    //   1135: aload 4
    //   1137: ldc_w 1701
    //   1140: invokevirtual 1704	android/widget/EditText:setPrivateImeOptions	(Ljava/lang/String;)V
    //   1143: aload_0
    //   1144: aload 5
    //   1146: ldc_w 1102
    //   1149: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1152: astore 6
    //   1154: aload 6
    //   1156: ifnull +38 -> 1194
    //   1159: aload 6
    //   1161: ldc_w 1706
    //   1164: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1167: ifeq +1737 -> 2904
    //   1170: aload_0
    //   1171: aload 4
    //   1173: putfield 488	com/feelingk/iap/gui/parser/ParserXML:m_JuminText1	Landroid/widget/EditText;
    //   1176: aload_0
    //   1177: getfield 418	com/feelingk/iap/gui/parser/ParserXML:onForeignInputMDNResultCallback	Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;
    //   1180: ifnull +14 -> 1194
    //   1183: aload_0
    //   1184: getfield 488	com/feelingk/iap/gui/parser/ParserXML:m_JuminText1	Landroid/widget/EditText;
    //   1187: aload_0
    //   1188: getfield 558	com/feelingk/iap/gui/parser/ParserXML:mForeignDevelopeTextLengthWatcher	Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;
    //   1191: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   1194: aload_0
    //   1195: aload 5
    //   1197: ldc_w 1026
    //   1200: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1203: astore 6
    //   1205: aload 6
    //   1207: ifnull +57 -> 1264
    //   1210: aload_0
    //   1211: invokevirtual 696	java/lang/Object:getClass	()Ljava/lang/Class;
    //   1214: new 954	java/lang/StringBuilder
    //   1217: dup
    //   1218: aload_0
    //   1219: invokespecial 1031	com/feelingk/iap/gui/parser/ParserXML:getResourcePath	()Ljava/lang/String;
    //   1222: invokestatic 1034	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1225: invokespecial 958	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1228: aload 6
    //   1230: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1233: ldc_w 1116
    //   1236: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1239: invokevirtual 965	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1242: invokevirtual 702	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   1245: astore 7
    //   1247: aload 4
    //   1249: aload 7
    //   1251: aload 6
    //   1253: invokestatic 1042	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   1256: invokevirtual 1711	android/widget/EditText:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   1259: aload 7
    //   1261: invokevirtual 719	java/io/InputStream:close	()V
    //   1264: aload_0
    //   1265: aload 5
    //   1267: ldc_w 1713
    //   1270: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1273: ifnull +62 -> 1335
    //   1276: ldc_w 1715
    //   1279: invokestatic 1196	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1282: istore_2
    //   1283: ldc_w 1717
    //   1286: invokestatic 1196	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1289: istore_3
    //   1290: aload 4
    //   1292: new 1719	android/content/res/ColorStateList
    //   1295: dup
    //   1296: iconst_2
    //   1297: anewarray 1721	[I
    //   1300: dup
    //   1301: iconst_0
    //   1302: iconst_1
    //   1303: newarray int
    //   1305: dup
    //   1306: iconst_0
    //   1307: ldc_w 1258
    //   1310: iastore
    //   1311: aastore
    //   1312: dup
    //   1313: iconst_1
    //   1314: iconst_0
    //   1315: newarray int
    //   1317: aastore
    //   1318: iconst_2
    //   1319: newarray int
    //   1321: dup
    //   1322: iconst_0
    //   1323: iload_2
    //   1324: iastore
    //   1325: dup
    //   1326: iconst_1
    //   1327: iload_3
    //   1328: iastore
    //   1329: invokespecial 1724	android/content/res/ColorStateList:<init>	([[I[I)V
    //   1332: invokevirtual 1727	android/widget/EditText:setTextColor	(Landroid/content/res/ColorStateList;)V
    //   1335: aload_0
    //   1336: getfield 506	com/feelingk/iap/gui/parser/ParserXML:m_DotoriSMSAuthNum	Landroid/widget/EditText;
    //   1339: ifnull +18 -> 1357
    //   1342: aload_0
    //   1343: getfield 506	com/feelingk/iap/gui/parser/ParserXML:m_DotoriSMSAuthNum	Landroid/widget/EditText;
    //   1346: new 74	com/feelingk/iap/gui/parser/ParserXML$39
    //   1349: dup
    //   1350: aload_0
    //   1351: invokespecial 1728	com/feelingk/iap/gui/parser/ParserXML$39:<init>	(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    //   1354: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   1357: aload_0
    //   1358: getfield 512	com/feelingk/iap/gui/parser/ParserXML:m_MDN3	Landroid/widget/EditText;
    //   1361: ifnull +14 -> 1375
    //   1364: aload_0
    //   1365: getfield 512	com/feelingk/iap/gui/parser/ParserXML:m_MDN3	Landroid/widget/EditText;
    //   1368: aload_0
    //   1369: getfield 558	com/feelingk/iap/gui/parser/ParserXML:mForeignDevelopeTextLengthWatcher	Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;
    //   1372: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   1375: aload_1
    //   1376: astore 4
    //   1378: aload_0
    //   1379: getfield 390	com/feelingk/iap/gui/parser/ParserXML:layoutStack	Ljava/util/Stack;
    //   1382: invokevirtual 1319	java/util/Stack:size	()I
    //   1385: ifle -1338 -> 47
    //   1388: aload_1
    //   1389: aload_0
    //   1390: aload 5
    //   1392: aload_0
    //   1393: getfield 390	com/feelingk/iap/gui/parser/ParserXML:layoutStack	Ljava/util/Stack;
    //   1396: invokevirtual 1323	java/util/Stack:peek	()Ljava/lang/Object;
    //   1399: checkcast 1325	android/view/ViewGroup
    //   1402: invokespecial 1329	com/feelingk/iap/gui/parser/ParserXML:loadLayoutParams	(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    //   1405: invokevirtual 1333	android/view/View:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   1408: aload_1
    //   1409: areturn
    //   1410: aload 6
    //   1412: ldc_w 1335
    //   1415: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1418: ifeq -1098 -> 320
    //   1421: aload 4
    //   1423: iconst_1
    //   1424: invokevirtual 1648	android/widget/RadioGroup:setOrientation	(I)V
    //   1427: goto -1107 -> 320
    //   1430: aload 4
    //   1432: iconst_5
    //   1433: invokevirtual 1649	android/widget/RadioGroup:setGravity	(I)V
    //   1436: goto -1082 -> 354
    //   1439: aload_1
    //   1440: instanceof 921
    //   1443: ifeq -1089 -> 354
    //   1446: aload_1
    //   1447: checkcast 921	android/widget/LinearLayout
    //   1450: astore 4
    //   1452: aload_0
    //   1453: aload 5
    //   1455: ldc_w 1102
    //   1458: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1461: astore 6
    //   1463: aload 6
    //   1465: ifnull +27 -> 1492
    //   1468: aload 6
    //   1470: ldc_w 1730
    //   1473: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1476: ifeq +16 -> 1492
    //   1479: aload 4
    //   1481: putstatic 354	com/feelingk/iap/gui/parser/ParserXML:mJumiLlView	Landroid/widget/LinearLayout;
    //   1484: getstatic 354	com/feelingk/iap/gui/parser/ParserXML:mJumiLlView	Landroid/widget/LinearLayout;
    //   1487: bipush 8
    //   1489: invokevirtual 1112	android/widget/LinearLayout:setVisibility	(I)V
    //   1492: aload_0
    //   1493: aload 5
    //   1495: ldc_w 1015
    //   1498: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1501: astore 6
    //   1503: aload 6
    //   1505: ifnull +20 -> 1525
    //   1508: aload 6
    //   1510: ldc_w 1021
    //   1513: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1516: ifeq +186 -> 1702
    //   1519: aload 4
    //   1521: iconst_0
    //   1522: invokevirtual 1024	android/widget/LinearLayout:setOrientation	(I)V
    //   1525: aload_0
    //   1526: aload 5
    //   1528: ldc_w 1026
    //   1531: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1534: astore 6
    //   1536: aload 6
    //   1538: ifnull +57 -> 1595
    //   1541: aload_0
    //   1542: invokevirtual 696	java/lang/Object:getClass	()Ljava/lang/Class;
    //   1545: new 954	java/lang/StringBuilder
    //   1548: dup
    //   1549: aload_0
    //   1550: invokespecial 1031	com/feelingk/iap/gui/parser/ParserXML:getResourcePath	()Ljava/lang/String;
    //   1553: invokestatic 1034	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1556: invokespecial 958	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1559: aload 6
    //   1561: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1564: ldc_w 1116
    //   1567: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1570: invokevirtual 965	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1573: invokevirtual 702	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   1576: astore 7
    //   1578: aload 4
    //   1580: aload 7
    //   1582: aload 6
    //   1584: invokestatic 1042	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   1587: invokevirtual 1061	android/widget/LinearLayout:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   1590: aload 7
    //   1592: invokevirtual 719	java/io/InputStream:close	()V
    //   1595: aload_0
    //   1596: aload 5
    //   1598: ldc_w 1063
    //   1601: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1604: ifnull +11 -> 1615
    //   1607: aload 4
    //   1609: ldc_w 1064
    //   1612: invokevirtual 1067	android/widget/LinearLayout:setBackgroundColor	(I)V
    //   1615: aload_0
    //   1616: aload 5
    //   1618: ldc_w 1069
    //   1621: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1624: astore 6
    //   1626: aload 6
    //   1628: ifnull +21 -> 1649
    //   1631: aload 6
    //   1633: ldc_w 1071
    //   1636: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1639: ifeq +83 -> 1722
    //   1642: aload 4
    //   1644: bipush 17
    //   1646: invokevirtual 1074	android/widget/LinearLayout:setGravity	(I)V
    //   1649: aload_0
    //   1650: aload 5
    //   1652: ldc_w 1076
    //   1655: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1658: astore 6
    //   1660: aload 6
    //   1662: ifnull +19 -> 1681
    //   1665: aload_0
    //   1666: aload 6
    //   1668: invokespecial 1080	com/feelingk/iap/gui/parser/ParserXML:readDPSize	(Ljava/lang/String;)I
    //   1671: istore_2
    //   1672: aload 4
    //   1674: iload_2
    //   1675: iload_2
    //   1676: iload_2
    //   1677: iload_2
    //   1678: invokevirtual 1084	android/widget/LinearLayout:setPadding	(IIII)V
    //   1681: aload_0
    //   1682: aload 5
    //   1684: ldc_w 1086
    //   1687: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1690: ifnull -1336 -> 354
    //   1693: aload 4
    //   1695: iconst_1
    //   1696: invokevirtual 1089	android/widget/LinearLayout:setFocusableInTouchMode	(Z)V
    //   1699: goto -1345 -> 354
    //   1702: aload 6
    //   1704: ldc_w 1335
    //   1707: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1710: ifeq -185 -> 1525
    //   1713: aload 4
    //   1715: iconst_1
    //   1716: invokevirtual 1024	android/widget/LinearLayout:setOrientation	(I)V
    //   1719: goto -194 -> 1525
    //   1722: aload 4
    //   1724: iconst_5
    //   1725: invokevirtual 1074	android/widget/LinearLayout:setGravity	(I)V
    //   1728: goto -79 -> 1649
    //   1731: aload 4
    //   1733: bipush 19
    //   1735: invokevirtual 1220	android/widget/TextView:setGravity	(I)V
    //   1738: goto -1226 -> 512
    //   1741: aload_1
    //   1742: instanceof 1646
    //   1745: ifeq +437 -> 2182
    //   1748: aload_1
    //   1749: checkcast 1646	android/widget/RadioButton
    //   1752: astore 4
    //   1754: aload_0
    //   1755: aload 5
    //   1757: ldc_w 1102
    //   1760: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1763: astore 6
    //   1765: aload_0
    //   1766: aload 5
    //   1768: ldc_w 1230
    //   1771: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1774: astore 9
    //   1776: aload_0
    //   1777: aload 5
    //   1779: ldc_w 1732
    //   1782: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   1785: astore 8
    //   1787: aload 6
    //   1789: ifnull +51 -> 1840
    //   1792: aload 6
    //   1794: ldc_w 1734
    //   1797: invokevirtual 1355	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   1800: iconst_m1
    //   1801: if_icmpeq +39 -> 1840
    //   1804: aload 6
    //   1806: ldc_w 1736
    //   1809: invokevirtual 1739	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1812: ifeq +324 -> 2136
    //   1815: aload_0
    //   1816: getfield 593	com/feelingk/iap/gui/parser/ParserXML:onForeignInputMDNClickLisener	Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;
    //   1819: aload 4
    //   1821: invokevirtual 1743	com/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN:setRadioButton1	(Landroid/widget/RadioButton;)V
    //   1824: aload 4
    //   1826: aload 6
    //   1828: invokevirtual 1744	android/widget/RadioButton:setTag	(Ljava/lang/Object;)V
    //   1831: aload 4
    //   1833: aload_0
    //   1834: getfield 593	com/feelingk/iap/gui/parser/ParserXML:onForeignInputMDNClickLisener	Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;
    //   1837: invokevirtual 1745	android/widget/RadioButton:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1840: aload 9
    //   1842: ifnull -920 -> 922
    //   1845: aload 8
    //   1847: ifnull -925 -> 922
    //   1850: new 1234	android/graphics/drawable/StateListDrawable
    //   1853: dup
    //   1854: invokespecial 1235	android/graphics/drawable/StateListDrawable:<init>	()V
    //   1857: astore 6
    //   1859: new 1234	android/graphics/drawable/StateListDrawable
    //   1862: dup
    //   1863: invokespecial 1235	android/graphics/drawable/StateListDrawable:<init>	()V
    //   1866: astore 7
    //   1868: aload_0
    //   1869: invokevirtual 696	java/lang/Object:getClass	()Ljava/lang/Class;
    //   1872: new 954	java/lang/StringBuilder
    //   1875: dup
    //   1876: aload_0
    //   1877: invokespecial 1031	com/feelingk/iap/gui/parser/ParserXML:getResourcePath	()Ljava/lang/String;
    //   1880: invokestatic 1034	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1883: invokespecial 958	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1886: aload 9
    //   1888: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1891: ldc_w 1116
    //   1894: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1897: invokevirtual 965	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1900: invokevirtual 702	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   1903: astore 10
    //   1905: aload 10
    //   1907: aload 9
    //   1909: invokestatic 1042	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   1912: astore 9
    //   1914: aload 10
    //   1916: invokevirtual 719	java/io/InputStream:close	()V
    //   1919: aload_0
    //   1920: invokevirtual 696	java/lang/Object:getClass	()Ljava/lang/Class;
    //   1923: new 954	java/lang/StringBuilder
    //   1926: dup
    //   1927: aload_0
    //   1928: invokespecial 1031	com/feelingk/iap/gui/parser/ParserXML:getResourcePath	()Ljava/lang/String;
    //   1931: invokestatic 1034	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1934: invokespecial 958	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1937: aload 8
    //   1939: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1942: ldc_w 1116
    //   1945: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1948: invokevirtual 965	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1951: invokevirtual 702	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   1954: astore 10
    //   1956: aload 10
    //   1958: aload 8
    //   1960: invokestatic 1042	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   1963: astore 8
    //   1965: aload 10
    //   1967: invokevirtual 719	java/io/InputStream:close	()V
    //   1970: aload 6
    //   1972: iconst_2
    //   1973: newarray int
    //   1975: dup
    //   1976: iconst_0
    //   1977: ldc_w 1598
    //   1980: iastore
    //   1981: dup
    //   1982: iconst_1
    //   1983: ldc_w 1597
    //   1986: iastore
    //   1987: aload 9
    //   1989: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   1992: aload 6
    //   1994: iconst_2
    //   1995: newarray int
    //   1997: dup
    //   1998: iconst_0
    //   1999: ldc_w 1599
    //   2002: iastore
    //   2003: dup
    //   2004: iconst_1
    //   2005: ldc_w 1597
    //   2008: iastore
    //   2009: aload 8
    //   2011: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2014: aload 7
    //   2016: iconst_2
    //   2017: newarray int
    //   2019: dup
    //   2020: iconst_0
    //   2021: ldc_w 1596
    //   2024: iastore
    //   2025: dup
    //   2026: iconst_1
    //   2027: ldc_w 1597
    //   2030: iastore
    //   2031: aconst_null
    //   2032: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2035: aload 7
    //   2037: iconst_2
    //   2038: newarray int
    //   2040: dup
    //   2041: iconst_0
    //   2042: ldc_w 1598
    //   2045: iastore
    //   2046: dup
    //   2047: iconst_1
    //   2048: ldc_w 1258
    //   2051: iastore
    //   2052: aconst_null
    //   2053: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2056: aload 7
    //   2058: iconst_2
    //   2059: newarray int
    //   2061: dup
    //   2062: iconst_0
    //   2063: ldc_w 1599
    //   2066: iastore
    //   2067: dup
    //   2068: iconst_1
    //   2069: ldc_w 1258
    //   2072: iastore
    //   2073: aconst_null
    //   2074: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2077: aload 7
    //   2079: iconst_2
    //   2080: newarray int
    //   2082: dup
    //   2083: iconst_0
    //   2084: ldc_w 1598
    //   2087: iastore
    //   2088: dup
    //   2089: iconst_1
    //   2090: ldc_w 1597
    //   2093: iastore
    //   2094: aconst_null
    //   2095: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2098: aload 7
    //   2100: iconst_2
    //   2101: newarray int
    //   2103: dup
    //   2104: iconst_0
    //   2105: ldc_w 1599
    //   2108: iastore
    //   2109: dup
    //   2110: iconst_1
    //   2111: ldc_w 1597
    //   2114: iastore
    //   2115: aconst_null
    //   2116: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2119: aload 4
    //   2121: aload 7
    //   2123: invokevirtual 1746	android/widget/RadioButton:setButtonDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   2126: aload 4
    //   2128: aload 6
    //   2130: invokevirtual 1747	android/widget/RadioButton:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   2133: goto -1211 -> 922
    //   2136: aload 6
    //   2138: ldc_w 1749
    //   2141: invokevirtual 1739	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   2144: ifeq +15 -> 2159
    //   2147: aload_0
    //   2148: getfield 593	com/feelingk/iap/gui/parser/ParserXML:onForeignInputMDNClickLisener	Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;
    //   2151: aload 4
    //   2153: invokevirtual 1752	com/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN:setRadioButton2	(Landroid/widget/RadioButton;)V
    //   2156: goto -332 -> 1824
    //   2159: aload 6
    //   2161: ldc_w 1754
    //   2164: invokevirtual 1739	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   2167: ifeq -343 -> 1824
    //   2170: aload_0
    //   2171: getfield 593	com/feelingk/iap/gui/parser/ParserXML:onForeignInputMDNClickLisener	Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;
    //   2174: aload 4
    //   2176: invokevirtual 1757	com/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN:setRadioButton3	(Landroid/widget/RadioButton;)V
    //   2179: goto -355 -> 1824
    //   2182: aload_1
    //   2183: instanceof 936
    //   2186: ifeq -1264 -> 922
    //   2189: aload_0
    //   2190: aload 5
    //   2192: ldc_w 1228
    //   2195: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   2198: astore 8
    //   2200: aload_0
    //   2201: aload 5
    //   2203: ldc_w 1230
    //   2206: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   2209: astore 4
    //   2211: aload_0
    //   2212: aload 5
    //   2214: ldc_w 1102
    //   2217: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   2220: astore 6
    //   2222: aload_1
    //   2223: checkcast 936	android/widget/Button
    //   2226: astore 7
    //   2228: aload_0
    //   2229: invokevirtual 696	java/lang/Object:getClass	()Ljava/lang/Class;
    //   2232: new 954	java/lang/StringBuilder
    //   2235: dup
    //   2236: aload_0
    //   2237: invokespecial 1031	com/feelingk/iap/gui/parser/ParserXML:getResourcePath	()Ljava/lang/String;
    //   2240: invokestatic 1034	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2243: invokespecial 958	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2246: aload 8
    //   2248: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2251: ldc_w 1116
    //   2254: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2257: invokevirtual 965	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2260: invokevirtual 702	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   2263: astore 9
    //   2265: aload 9
    //   2267: aload 8
    //   2269: invokestatic 1042	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   2272: astore 8
    //   2274: aload 9
    //   2276: invokevirtual 719	java/io/InputStream:close	()V
    //   2279: aload_0
    //   2280: invokevirtual 696	java/lang/Object:getClass	()Ljava/lang/Class;
    //   2283: new 954	java/lang/StringBuilder
    //   2286: dup
    //   2287: aload_0
    //   2288: invokespecial 1031	com/feelingk/iap/gui/parser/ParserXML:getResourcePath	()Ljava/lang/String;
    //   2291: invokestatic 1034	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2294: invokespecial 958	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2297: ldc_w 1759
    //   2300: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2303: invokevirtual 965	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2306: invokevirtual 702	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   2309: astore 10
    //   2311: aload 10
    //   2313: ldc_w 1761
    //   2316: invokestatic 1042	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   2319: astore 9
    //   2321: aload 10
    //   2323: invokevirtual 719	java/io/InputStream:close	()V
    //   2326: aload_0
    //   2327: invokevirtual 696	java/lang/Object:getClass	()Ljava/lang/Class;
    //   2330: new 954	java/lang/StringBuilder
    //   2333: dup
    //   2334: aload_0
    //   2335: invokespecial 1031	com/feelingk/iap/gui/parser/ParserXML:getResourcePath	()Ljava/lang/String;
    //   2338: invokestatic 1034	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2341: invokespecial 958	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2344: aload 4
    //   2346: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2349: ldc_w 1116
    //   2352: invokevirtual 962	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2355: invokevirtual 965	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2358: invokevirtual 702	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   2361: astore 11
    //   2363: aload 11
    //   2365: aload 4
    //   2367: invokestatic 1042	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   2370: astore 10
    //   2372: aload 11
    //   2374: invokevirtual 719	java/io/InputStream:close	()V
    //   2377: new 1234	android/graphics/drawable/StateListDrawable
    //   2380: dup
    //   2381: invokespecial 1235	android/graphics/drawable/StateListDrawable:<init>	()V
    //   2384: astore 11
    //   2386: aload_0
    //   2387: new 1234	android/graphics/drawable/StateListDrawable
    //   2390: dup
    //   2391: invokespecial 1235	android/graphics/drawable/StateListDrawable:<init>	()V
    //   2394: putfield 838	com/feelingk/iap/gui/parser/ParserXML:dotoriInactive	Landroid/graphics/drawable/StateListDrawable;
    //   2397: aload_0
    //   2398: new 1234	android/graphics/drawable/StateListDrawable
    //   2401: dup
    //   2402: invokespecial 1235	android/graphics/drawable/StateListDrawable:<init>	()V
    //   2405: putfield 869	com/feelingk/iap/gui/parser/ParserXML:mInactiveOCBRegDrawables	Landroid/graphics/drawable/StateListDrawable;
    //   2408: aload_0
    //   2409: new 1234	android/graphics/drawable/StateListDrawable
    //   2412: dup
    //   2413: invokespecial 1235	android/graphics/drawable/StateListDrawable:<init>	()V
    //   2416: putfield 866	com/feelingk/iap/gui/parser/ParserXML:mActiveOCBRegDrawables	Landroid/graphics/drawable/StateListDrawable;
    //   2419: aload 11
    //   2421: iconst_1
    //   2422: newarray int
    //   2424: dup
    //   2425: iconst_0
    //   2426: ldc_w 1258
    //   2429: iastore
    //   2430: aload 10
    //   2432: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2435: aload 11
    //   2437: iconst_0
    //   2438: newarray int
    //   2440: aload 8
    //   2442: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2445: aload_0
    //   2446: getfield 838	com/feelingk/iap/gui/parser/ParserXML:dotoriInactive	Landroid/graphics/drawable/StateListDrawable;
    //   2449: iconst_1
    //   2450: newarray int
    //   2452: dup
    //   2453: iconst_0
    //   2454: ldc_w 1258
    //   2457: iastore
    //   2458: aload 9
    //   2460: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2463: aload_0
    //   2464: getfield 838	com/feelingk/iap/gui/parser/ParserXML:dotoriInactive	Landroid/graphics/drawable/StateListDrawable;
    //   2467: iconst_0
    //   2468: newarray int
    //   2470: aload 9
    //   2472: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2475: aload 6
    //   2477: ifnull +53 -> 2530
    //   2480: aload 6
    //   2482: ldc_w 1763
    //   2485: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2488: ifne +36 -> 2524
    //   2491: aload 6
    //   2493: ldc_w 1765
    //   2496: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2499: ifne +25 -> 2524
    //   2502: aload 6
    //   2504: ldc_w 1767
    //   2507: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2510: ifne +14 -> 2524
    //   2513: aload 6
    //   2515: ldc_w 1769
    //   2518: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2521: ifeq +9 -> 2530
    //   2524: aload_0
    //   2525: aload 11
    //   2527: putfield 841	com/feelingk/iap/gui/parser/ParserXML:mOkDrawbles	Landroid/graphics/drawable/StateListDrawable;
    //   2530: aload 7
    //   2532: aload 11
    //   2534: invokevirtual 1272	android/widget/Button:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   2537: aload_0
    //   2538: aload 5
    //   2540: ldc_w 1076
    //   2543: invokespecial 1019	com/feelingk/iap/gui/parser/ParserXML:findAttribute	(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    //   2546: astore 9
    //   2548: aload 9
    //   2550: ifnull +19 -> 2569
    //   2553: aload_0
    //   2554: aload 9
    //   2556: invokespecial 1080	com/feelingk/iap/gui/parser/ParserXML:readDPSize	(Ljava/lang/String;)I
    //   2559: istore_2
    //   2560: aload 7
    //   2562: iload_2
    //   2563: iload_2
    //   2564: iload_2
    //   2565: iload_2
    //   2566: invokevirtual 1278	android/widget/Button:setPadding	(IIII)V
    //   2569: aload 4
    //   2571: ldc_w 1771
    //   2574: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2577: ifeq +178 -> 2755
    //   2580: aload 7
    //   2582: aload_0
    //   2583: getfield 563	com/feelingk/iap/gui/parser/ParserXML:okAuthBtn	Landroid/view/View$OnClickListener;
    //   2586: invokevirtual 1318	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   2589: aload 6
    //   2591: ifnull -1669 -> 922
    //   2594: aload_0
    //   2595: aload 11
    //   2597: putfield 866	com/feelingk/iap/gui/parser/ParserXML:mActiveOCBRegDrawables	Landroid/graphics/drawable/StateListDrawable;
    //   2600: aload_0
    //   2601: getfield 869	com/feelingk/iap/gui/parser/ParserXML:mInactiveOCBRegDrawables	Landroid/graphics/drawable/StateListDrawable;
    //   2604: iconst_1
    //   2605: newarray int
    //   2607: dup
    //   2608: iconst_0
    //   2609: ldc_w 1258
    //   2612: iastore
    //   2613: aload 8
    //   2615: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2618: aload_0
    //   2619: getfield 869	com/feelingk/iap/gui/parser/ParserXML:mInactiveOCBRegDrawables	Landroid/graphics/drawable/StateListDrawable;
    //   2622: iconst_0
    //   2623: newarray int
    //   2625: aload 8
    //   2627: invokevirtual 1262	android/graphics/drawable/StateListDrawable:addState	([ILandroid/graphics/drawable/Drawable;)V
    //   2630: aload 6
    //   2632: ldc_w 1773
    //   2635: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2638: ifeq +152 -> 2790
    //   2641: aload_0
    //   2642: aload 7
    //   2644: putfield 540	com/feelingk/iap/gui/parser/ParserXML:mOCBRegBtn	Landroid/widget/Button;
    //   2647: aload_0
    //   2648: getfield 540	com/feelingk/iap/gui/parser/ParserXML:mOCBRegBtn	Landroid/widget/Button;
    //   2651: aload_0
    //   2652: getfield 869	com/feelingk/iap/gui/parser/ParserXML:mInactiveOCBRegDrawables	Landroid/graphics/drawable/StateListDrawable;
    //   2655: invokevirtual 1272	android/widget/Button:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   2658: aload_0
    //   2659: getfield 540	com/feelingk/iap/gui/parser/ParserXML:mOCBRegBtn	Landroid/widget/Button;
    //   2662: iconst_0
    //   2663: invokevirtual 1306	android/widget/Button:setClickable	(Z)V
    //   2666: aload_0
    //   2667: getfield 540	com/feelingk/iap/gui/parser/ParserXML:mOCBRegBtn	Landroid/widget/Button;
    //   2670: ldc_w 1303
    //   2673: invokestatic 1196	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   2676: invokevirtual 1275	android/widget/Button:setTextColor	(I)V
    //   2679: aload_0
    //   2680: getfield 540	com/feelingk/iap/gui/parser/ParserXML:mOCBRegBtn	Landroid/widget/Button;
    //   2683: iconst_0
    //   2684: iconst_0
    //   2685: iconst_0
    //   2686: iconst_0
    //   2687: invokevirtual 1278	android/widget/Button:setPadding	(IIII)V
    //   2690: aload_0
    //   2691: getfield 540	com/feelingk/iap/gui/parser/ParserXML:mOCBRegBtn	Landroid/widget/Button;
    //   2694: ifnull +11 -> 2705
    //   2697: aload_0
    //   2698: getfield 540	com/feelingk/iap/gui/parser/ParserXML:mOCBRegBtn	Landroid/widget/Button;
    //   2701: iconst_0
    //   2702: invokevirtual 1306	android/widget/Button:setClickable	(Z)V
    //   2705: aload 6
    //   2707: ldc_w 1763
    //   2710: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2713: ifne +14 -> 2727
    //   2716: aload 6
    //   2718: ldc_w 1765
    //   2721: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2724: ifeq -1802 -> 922
    //   2727: aload_0
    //   2728: aload 7
    //   2730: putfield 847	com/feelingk/iap/gui/parser/ParserXML:mOkBtn	Landroid/widget/Button;
    //   2733: aload_0
    //   2734: getfield 847	com/feelingk/iap/gui/parser/ParserXML:mOkBtn	Landroid/widget/Button;
    //   2737: aload_0
    //   2738: getfield 838	com/feelingk/iap/gui/parser/ParserXML:dotoriInactive	Landroid/graphics/drawable/StateListDrawable;
    //   2741: invokevirtual 1272	android/widget/Button:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   2744: aload_0
    //   2745: getfield 847	com/feelingk/iap/gui/parser/ParserXML:mOkBtn	Landroid/widget/Button;
    //   2748: iconst_0
    //   2749: invokevirtual 1306	android/widget/Button:setClickable	(Z)V
    //   2752: goto -1830 -> 922
    //   2755: aload 4
    //   2757: ldc_w 1775
    //   2760: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2763: ifeq +15 -> 2778
    //   2766: aload 7
    //   2768: aload_0
    //   2769: getfield 569	com/feelingk/iap/gui/parser/ParserXML:commonBtn	Landroid/view/View$OnClickListener;
    //   2772: invokevirtual 1318	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   2775: goto -186 -> 2589
    //   2778: aload 7
    //   2780: aload_0
    //   2781: getfield 566	com/feelingk/iap/gui/parser/ParserXML:cancelAuthBtn	Landroid/view/View$OnClickListener;
    //   2784: invokevirtual 1318	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   2787: goto -198 -> 2589
    //   2790: aload 6
    //   2792: ldc_w 1777
    //   2795: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2798: ifeq +15 -> 2813
    //   2801: aload 7
    //   2803: iconst_0
    //   2804: iconst_0
    //   2805: iconst_0
    //   2806: iconst_0
    //   2807: invokevirtual 1278	android/widget/Button:setPadding	(IIII)V
    //   2810: goto -120 -> 2690
    //   2813: aload 6
    //   2815: ldc_w 1767
    //   2818: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2821: ifeq +31 -> 2852
    //   2824: aload_0
    //   2825: aload 7
    //   2827: putfield 844	com/feelingk/iap/gui/parser/ParserXML:mCultureOKButton	Landroid/widget/Button;
    //   2830: aload_0
    //   2831: getfield 844	com/feelingk/iap/gui/parser/ParserXML:mCultureOKButton	Landroid/widget/Button;
    //   2834: aload_0
    //   2835: getfield 838	com/feelingk/iap/gui/parser/ParserXML:dotoriInactive	Landroid/graphics/drawable/StateListDrawable;
    //   2838: invokevirtual 1272	android/widget/Button:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   2841: aload_0
    //   2842: getfield 844	com/feelingk/iap/gui/parser/ParserXML:mCultureOKButton	Landroid/widget/Button;
    //   2845: iconst_0
    //   2846: invokevirtual 1306	android/widget/Button:setClickable	(Z)V
    //   2849: goto -159 -> 2690
    //   2852: aload 6
    //   2854: ldc_w 1769
    //   2857: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2860: ifeq -170 -> 2690
    //   2863: aload_0
    //   2864: aload 7
    //   2866: putfield 835	com/feelingk/iap/gui/parser/ParserXML:mOKCashbackOKButton	Landroid/widget/Button;
    //   2869: aload_0
    //   2870: getfield 835	com/feelingk/iap/gui/parser/ParserXML:mOKCashbackOKButton	Landroid/widget/Button;
    //   2873: aload_0
    //   2874: getfield 838	com/feelingk/iap/gui/parser/ParserXML:dotoriInactive	Landroid/graphics/drawable/StateListDrawable;
    //   2877: invokevirtual 1272	android/widget/Button:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   2880: aload_0
    //   2881: getfield 835	com/feelingk/iap/gui/parser/ParserXML:mOKCashbackOKButton	Landroid/widget/Button;
    //   2884: iconst_0
    //   2885: invokevirtual 1306	android/widget/Button:setClickable	(Z)V
    //   2888: goto -198 -> 2690
    //   2891: aload 4
    //   2893: aload 7
    //   2895: invokestatic 1292	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   2898: invokevirtual 1655	android/widget/EditText:setInputType	(I)V
    //   2901: goto -1881 -> 1020
    //   2904: aload 6
    //   2906: ldc_w 1779
    //   2909: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2912: ifeq +30 -> 2942
    //   2915: aload_0
    //   2916: aload 4
    //   2918: putfield 490	com/feelingk/iap/gui/parser/ParserXML:m_JuminText2	Landroid/widget/EditText;
    //   2921: aload_0
    //   2922: getfield 418	com/feelingk/iap/gui/parser/ParserXML:onForeignInputMDNResultCallback	Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;
    //   2925: ifnull -1731 -> 1194
    //   2928: aload_0
    //   2929: getfield 490	com/feelingk/iap/gui/parser/ParserXML:m_JuminText2	Landroid/widget/EditText;
    //   2932: aload_0
    //   2933: getfield 558	com/feelingk/iap/gui/parser/ParserXML:mForeignDevelopeTextLengthWatcher	Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;
    //   2936: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   2939: goto -1745 -> 1194
    //   2942: aload 6
    //   2944: ldc_w 1781
    //   2947: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2950: ifeq +30 -> 2980
    //   2953: aload_0
    //   2954: aload 4
    //   2956: putfield 492	com/feelingk/iap/gui/parser/ParserXML:m_OCBRegText1	Landroid/widget/EditText;
    //   2959: aload_0
    //   2960: getfield 492	com/feelingk/iap/gui/parser/ParserXML:m_OCBRegText1	Landroid/widget/EditText;
    //   2963: new 100	com/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher
    //   2966: dup
    //   2967: aload_0
    //   2968: aload 4
    //   2970: aconst_null
    //   2971: invokespecial 1784	com/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher:<init>	(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;)V
    //   2974: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   2977: goto -1783 -> 1194
    //   2980: aload 6
    //   2982: ldc_w 1786
    //   2985: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2988: ifeq +30 -> 3018
    //   2991: aload_0
    //   2992: aload 4
    //   2994: putfield 494	com/feelingk/iap/gui/parser/ParserXML:m_OCBRegText2	Landroid/widget/EditText;
    //   2997: aload_0
    //   2998: getfield 494	com/feelingk/iap/gui/parser/ParserXML:m_OCBRegText2	Landroid/widget/EditText;
    //   3001: new 100	com/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher
    //   3004: dup
    //   3005: aload_0
    //   3006: aload 4
    //   3008: aconst_null
    //   3009: invokespecial 1784	com/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher:<init>	(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;)V
    //   3012: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   3015: goto -1821 -> 1194
    //   3018: aload 6
    //   3020: ldc_w 1788
    //   3023: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3026: ifeq +30 -> 3056
    //   3029: aload_0
    //   3030: aload 4
    //   3032: putfield 496	com/feelingk/iap/gui/parser/ParserXML:m_OCBRegText3	Landroid/widget/EditText;
    //   3035: aload_0
    //   3036: getfield 496	com/feelingk/iap/gui/parser/ParserXML:m_OCBRegText3	Landroid/widget/EditText;
    //   3039: new 100	com/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher
    //   3042: dup
    //   3043: aload_0
    //   3044: aload 4
    //   3046: aconst_null
    //   3047: invokespecial 1784	com/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher:<init>	(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;)V
    //   3050: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   3053: goto -1859 -> 1194
    //   3056: aload 6
    //   3058: ldc_w 1790
    //   3061: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3064: ifeq +12 -> 3076
    //   3067: aload_0
    //   3068: aload 4
    //   3070: putfield 498	com/feelingk/iap/gui/parser/ParserXML:m_OCBRegText4	Landroid/widget/EditText;
    //   3073: goto -1879 -> 1194
    //   3076: aload 6
    //   3078: ldc_w 1792
    //   3081: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3084: ifeq +28 -> 3112
    //   3087: aload_0
    //   3088: aload 4
    //   3090: putfield 500	com/feelingk/iap/gui/parser/ParserXML:m_OCBPWText	Landroid/widget/EditText;
    //   3093: aload_0
    //   3094: getfield 500	com/feelingk/iap/gui/parser/ParserXML:m_OCBPWText	Landroid/widget/EditText;
    //   3097: new 103	com/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher
    //   3100: dup
    //   3101: aload_0
    //   3102: aconst_null
    //   3103: invokespecial 1795	com/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher:<init>	(Lcom/feelingk/iap/gui/parser/ParserXML;Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;)V
    //   3106: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   3109: goto -1915 -> 1194
    //   3112: aload 6
    //   3114: ldc_w 1797
    //   3117: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3120: ifeq +39 -> 3159
    //   3123: aload_0
    //   3124: aload 4
    //   3126: putfield 502	com/feelingk/iap/gui/parser/ParserXML:m_CultureLandID	Landroid/widget/EditText;
    //   3129: getstatic 378	com/feelingk/iap/gui/parser/ParserXML:mCultureLoginFlag	Z
    //   3132: ifeq +13 -> 3145
    //   3135: aload_0
    //   3136: getfield 502	com/feelingk/iap/gui/parser/ParserXML:m_CultureLandID	Landroid/widget/EditText;
    //   3139: getstatic 380	com/feelingk/iap/gui/parser/ParserXML:mCultureLandID	Ljava/lang/String;
    //   3142: invokevirtual 1652	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   3145: aload_0
    //   3146: getfield 502	com/feelingk/iap/gui/parser/ParserXML:m_CultureLandID	Landroid/widget/EditText;
    //   3149: aload_0
    //   3150: getfield 553	com/feelingk/iap/gui/parser/ParserXML:mCultureLandTextWatcher	Lcom/feelingk/iap/gui/parser/ParserXML$CultureLandTextWatcher;
    //   3153: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   3156: goto -1962 -> 1194
    //   3159: aload 6
    //   3161: ldc_w 1799
    //   3164: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3167: ifeq +23 -> 3190
    //   3170: aload_0
    //   3171: aload 4
    //   3173: putfield 504	com/feelingk/iap/gui/parser/ParserXML:m_CultureLandPW	Landroid/widget/EditText;
    //   3176: aload_0
    //   3177: getfield 504	com/feelingk/iap/gui/parser/ParserXML:m_CultureLandPW	Landroid/widget/EditText;
    //   3180: aload_0
    //   3181: getfield 553	com/feelingk/iap/gui/parser/ParserXML:mCultureLandTextWatcher	Lcom/feelingk/iap/gui/parser/ParserXML$CultureLandTextWatcher;
    //   3184: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   3187: goto -1993 -> 1194
    //   3190: aload 6
    //   3192: ldc_w 1801
    //   3195: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3198: ifeq +12 -> 3210
    //   3201: aload_0
    //   3202: aload 4
    //   3204: putfield 506	com/feelingk/iap/gui/parser/ParserXML:m_DotoriSMSAuthNum	Landroid/widget/EditText;
    //   3207: goto -2013 -> 1194
    //   3210: aload 6
    //   3212: ldc_w 1803
    //   3215: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3218: ifeq +41 -> 3259
    //   3221: aload_0
    //   3222: aload 4
    //   3224: putfield 508	com/feelingk/iap/gui/parser/ParserXML:m_MDN1	Landroid/widget/EditText;
    //   3227: aload_0
    //   3228: getfield 508	com/feelingk/iap/gui/parser/ParserXML:m_MDN1	Landroid/widget/EditText;
    //   3231: new 100	com/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher
    //   3234: dup
    //   3235: aload_0
    //   3236: aload 4
    //   3238: aconst_null
    //   3239: invokespecial 1784	com/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher:<init>	(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;)V
    //   3242: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   3245: aload_0
    //   3246: getfield 508	com/feelingk/iap/gui/parser/ParserXML:m_MDN1	Landroid/widget/EditText;
    //   3249: aload_0
    //   3250: getfield 558	com/feelingk/iap/gui/parser/ParserXML:mForeignDevelopeTextLengthWatcher	Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;
    //   3253: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   3256: goto -2062 -> 1194
    //   3259: aload 6
    //   3261: ldc_w 1805
    //   3264: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3267: ifeq +41 -> 3308
    //   3270: aload_0
    //   3271: aload 4
    //   3273: putfield 510	com/feelingk/iap/gui/parser/ParserXML:m_MDN2	Landroid/widget/EditText;
    //   3276: aload_0
    //   3277: getfield 510	com/feelingk/iap/gui/parser/ParserXML:m_MDN2	Landroid/widget/EditText;
    //   3280: new 100	com/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher
    //   3283: dup
    //   3284: aload_0
    //   3285: aload 4
    //   3287: aconst_null
    //   3288: invokespecial 1784	com/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher:<init>	(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;)V
    //   3291: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   3294: aload_0
    //   3295: getfield 510	com/feelingk/iap/gui/parser/ParserXML:m_MDN2	Landroid/widget/EditText;
    //   3298: aload_0
    //   3299: getfield 558	com/feelingk/iap/gui/parser/ParserXML:mForeignDevelopeTextLengthWatcher	Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;
    //   3302: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   3305: goto -2111 -> 1194
    //   3308: aload 6
    //   3310: ldc_w 1807
    //   3313: invokevirtual 651	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3316: ifeq -2122 -> 1194
    //   3319: aload_0
    //   3320: aload 4
    //   3322: putfield 512	com/feelingk/iap/gui/parser/ParserXML:m_MDN3	Landroid/widget/EditText;
    //   3325: aload_0
    //   3326: getfield 512	com/feelingk/iap/gui/parser/ParserXML:m_MDN3	Landroid/widget/EditText;
    //   3329: aload_0
    //   3330: getfield 558	com/feelingk/iap/gui/parser/ParserXML:mForeignDevelopeTextLengthWatcher	Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;
    //   3333: invokevirtual 1710	android/widget/EditText:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   3336: goto -2142 -> 1194
    //   3339: astore 6
    //   3341: goto -1746 -> 1595
    //   3344: astore 10
    //   3346: goto -2685 -> 661
    //   3349: astore 11
    //   3351: goto -2637 -> 714
    //   3354: astore 10
    //   3356: goto -1437 -> 1919
    //   3359: astore 10
    //   3361: goto -1391 -> 1970
    //   3364: astore 9
    //   3366: goto -1087 -> 2279
    //   3369: astore 10
    //   3371: goto -1045 -> 2326
    //   3374: astore 11
    //   3376: goto -999 -> 2377
    //   3379: astore 6
    //   3381: goto -2117 -> 1264
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	3384	0	this	ParserXML
    //   0	3384	1	paramXmlPullParser	XmlPullParser
    //   569	1997	2	i	int
    //   1289	39	3	j	int
    //   9	3312	4	localObject1	Object
    //   15	2524	5	localAttributeSet	AttributeSet
    //   6	3303	6	localObject2	Object
    //   3339	1	6	localIOException1	IOException
    //   3379	1	6	localIOException2	IOException
    //   387	2507	7	localObject3	Object
    //   398	2228	8	localObject4	Object
    //   409	2146	9	localObject5	Object
    //   3364	1	9	localIOException3	IOException
    //   420	2011	10	localObject6	Object
    //   3344	1	10	localIOException4	IOException
    //   3354	1	10	localIOException5	IOException
    //   3359	1	10	localIOException6	IOException
    //   3369	1	10	localIOException7	IOException
    //   697	1899	11	localObject7	Object
    //   3349	1	11	localIOException8	IOException
    //   3374	1	11	localIOException9	IOException
    // Exception table:
    //   from	to	target	type
    //   1590	1595	3339	java/io/IOException
    //   656	661	3344	java/io/IOException
    //   709	714	3349	java/io/IOException
    //   1914	1919	3354	java/io/IOException
    //   1965	1970	3359	java/io/IOException
    //   2274	2279	3364	java/io/IOException
    //   2321	2326	3369	java/io/IOException
    //   2372	2377	3374	java/io/IOException
    //   1259	1264	3379	java/io/IOException
  }
  
  private View createViewAutoPurchaseFormPopup(XmlPullParser paramXmlPullParser)
  {
    Object localObject2 = paramXmlPullParser.getName();
    Object localObject1 = null;
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    if (((String)localObject2).equals("LinearLayout"))
    {
      paramXmlPullParser = new LinearLayout(this.context);
      if (paramXmlPullParser != null) {
        break label212;
      }
      localObject1 = null;
    }
    for (;;)
    {
      return localObject1;
      if (((String)localObject2).equals("TextView"))
      {
        paramXmlPullParser = new TextView(this.context);
        break;
      }
      if (((String)localObject2).equals("Button"))
      {
        paramXmlPullParser = new Button(this.context);
        break;
      }
      if (((String)localObject2).equals("ImageView"))
      {
        paramXmlPullParser = new ImageView(this.context);
        break;
      }
      if (((String)localObject2).equals("ScrollView"))
      {
        paramXmlPullParser = new ScrollView(this.context);
        paramXmlPullParser.setScrollbarFadingEnabled(false);
        break;
      }
      if (((String)localObject2).equals("CheckBox"))
      {
        paramXmlPullParser = new CheckBox(this.context);
        break;
      }
      Assert.fail("# UnSupported tag:" + (String)localObject2);
      paramXmlPullParser = (XmlPullParser)localObject1;
      break;
      label212:
      Object localObject3;
      if ((paramXmlPullParser instanceof LinearLayout))
      {
        localObject1 = (LinearLayout)paramXmlPullParser;
        localObject2 = findAttribute(localAttributeSet, "a:orientation");
        if (localObject2 != null)
        {
          if (!((String)localObject2).equals("horizontal")) {
            break label1036;
          }
          ((LinearLayout)localObject1).setOrientation(0);
        }
        label258:
        localObject2 = findAttribute(localAttributeSet, "a:background");
        if (localObject2 != null)
        {
          localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
          ((LinearLayout)localObject1).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
        }
      }
      try
      {
        ((InputStream)localObject3).close();
        if (findAttribute(localAttributeSet, "a:backgroudcolor") != null) {
          ((LinearLayout)localObject1).setBackgroundColor(-65536);
        }
        localObject2 = findAttribute(localAttributeSet, "a:gravity");
        if (localObject2 != null)
        {
          if (((String)localObject2).equals("center")) {
            ((LinearLayout)localObject1).setGravity(17);
          }
        }
        else
        {
          localObject2 = findAttribute(localAttributeSet, "a:padding");
          if (localObject2 != null)
          {
            i = readDPSize((String)localObject2);
            ((LinearLayout)localObject1).setPadding(i, i, i, i);
          }
          localObject2 = findAttribute(localAttributeSet, "a:paddingleft");
          localObject3 = findAttribute(localAttributeSet, "a:paddingTop");
          localObject4 = findAttribute(localAttributeSet, "a:paddingRight");
          localObject5 = findAttribute(localAttributeSet, "a:paddingBottom");
          i = 0;
          int j = 0;
          int k = 0;
          int m = 0;
          if (localObject2 != null) {
            i = readDPSize((String)localObject2);
          }
          if (localObject3 != null) {
            j = readDPSize((String)localObject3);
          }
          if (localObject4 != null) {
            k = readDPSize((String)localObject4);
          }
          if (localObject5 != null) {
            m = readDPSize((String)localObject5);
          }
          ((LinearLayout)localObject1).setPadding(i, j, k, m);
          if (findAttribute(localAttributeSet, "a:focusableInTouchMode") != null) {
            ((LinearLayout)localObject1).setFocusableInTouchMode(true);
          }
          if ((paramXmlPullParser instanceof ImageView))
          {
            localObject1 = (ImageView)paramXmlPullParser;
            localObject2 = findAttribute(localAttributeSet, "a:src");
            if (localObject2 != null)
            {
              localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
              ((ImageView)localObject1).setImageDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
            }
          }
        }
      }
      catch (IOException localIOException5)
      {
        try
        {
          int i;
          ((InputStream)localObject3).close();
          if ((paramXmlPullParser instanceof CheckBox))
          {
            localObject2 = findAttribute(localAttributeSet, "a:onImage");
            localObject3 = findAttribute(localAttributeSet, "a:checkid");
            localObject1 = (CheckBox)paramXmlPullParser;
            ((CheckBox)localObject1).setTag(localObject3);
            localObject3 = Build.MODEL;
            i = 0;
            if (((String)localObject3).endsWith("LT15i"))
            {
              i = 1;
              this.xperiacheckbox = true;
            }
            if (i == 0)
            {
              localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
              localObject2 = Drawable.createFromStream((InputStream)localObject3, (String)localObject2);
            }
          }
        }
        catch (IOException localIOException5)
        {
          try
          {
            ((InputStream)localObject3).close();
            localObject4 = getClass().getResourceAsStream(getResourcePath() + "checkbox_y" + ".png");
            localObject3 = Drawable.createFromStream((InputStream)localObject4, "checkbox_y");
          }
          catch (IOException localIOException5)
          {
            try
            {
              for (;;)
              {
                ((InputStream)localObject4).close();
                localObject4 = new StateListDrawable();
                localObject5 = new StateListDrawable();
                ((StateListDrawable)localObject4).addState(new int[] { -16842912, -16842908 }, (Drawable)localObject2);
                ((StateListDrawable)localObject4).addState(new int[] { 16842912, -16842908 }, (Drawable)localObject3);
                ((StateListDrawable)localObject5).addState(new int[] { -16842910, -16842908 }, null);
                ((StateListDrawable)localObject5).addState(new int[] { -16842912, 16842919 }, null);
                ((StateListDrawable)localObject5).addState(new int[] { 16842912, 16842919 }, null);
                ((StateListDrawable)localObject5).addState(new int[] { -16842912, -16842908 }, null);
                ((StateListDrawable)localObject5).addState(new int[] { 16842912, -16842908 }, null);
                ((CheckBox)localObject1).setButtonDrawable((Drawable)localObject5);
                ((CheckBox)localObject1).setBackgroundDrawable((Drawable)localObject4);
                ((CheckBox)localObject1).setChecked(false);
                ((CheckBox)localObject1).setOnCheckedChangeListener(this.changeCheckBox);
                localObject1 = paramXmlPullParser;
                if (this.layoutStack.size() <= 0) {
                  break;
                }
                paramXmlPullParser.setLayoutParams(loadLayoutParams(localAttributeSet, (ViewGroup)this.layoutStack.peek()));
                return paramXmlPullParser;
                label1036:
                if (!((String)localObject2).equals("vertical")) {
                  break label258;
                }
                ((LinearLayout)localObject1).setOrientation(1);
                break label258;
                if (((String)localObject2).equals("right")) {
                  ((LinearLayout)localObject1).setGravity(5);
                } else if (((String)localObject2).equals("left")) {
                  ((LinearLayout)localObject1).setGravity(3);
                }
              }
              if ((paramXmlPullParser instanceof Button))
              {
                localObject3 = findAttribute(localAttributeSet, "a:offImage");
                localObject1 = findAttribute(localAttributeSet, "a:onImage");
                localObject2 = (Button)paramXmlPullParser;
                localObject4 = getClass().getResourceAsStream(getResourcePath() + (String)localObject3 + ".png");
                localObject3 = Drawable.createFromStream((InputStream)localObject4, (String)localObject3);
              }
            }
            catch (IOException localIOException5)
            {
              try
              {
                ((InputStream)localObject4).close();
                localObject5 = getClass().getResourceAsStream(getResourcePath() + (String)localObject1 + ".png");
                localObject4 = Drawable.createFromStream((InputStream)localObject5, (String)localObject1);
              }
              catch (IOException localIOException5)
              {
                try
                {
                  for (;;)
                  {
                    Object localObject4;
                    ((InputStream)localObject5).close();
                    label1233:
                    Object localObject5 = new StateListDrawable();
                    ((StateListDrawable)localObject5).addState(new int[] { 16842919 }, (Drawable)localObject4);
                    ((StateListDrawable)localObject5).addState(new int[0], (Drawable)localObject3);
                    ((Button)localObject2).setBackgroundDrawable((Drawable)localObject5);
                    if (((String)localObject1).equals("btn_con_sel"))
                    {
                      ((Button)localObject2).setOnClickListener(this.autoPurchaseFormBtn);
                    }
                    else if (((String)localObject1).equals("btn_buycancel_sel"))
                    {
                      ((Button)localObject2).setOnClickListener(this.cancelAutoPurchaseFormBtn);
                      continue;
                      if ((paramXmlPullParser instanceof TextView))
                      {
                        localObject1 = (TextView)paramXmlPullParser;
                        localObject2 = findAttribute(localAttributeSet, "a:nortext");
                        localObject3 = findAttribute(localAttributeSet, "a:nametext");
                        localObject4 = findAttribute(localAttributeSet, "a:centertext");
                        localObject5 = findAttribute(localAttributeSet, "a:agreetext");
                        String str1 = findAttribute(localAttributeSet, "a:textSize");
                        String str2 = findAttribute(localAttributeSet, "a:textColor");
                        String str3 = findAttribute(localAttributeSet, "a:gravity");
                        findAttribute(localAttributeSet, "a:id");
                        if (localObject2 != null) {
                          ((TextView)localObject1).setText((CharSequence)localObject2);
                        }
                        if (localObject3 != null) {
                          ((TextView)localObject1).setText(CommonString.getString(CommonString.Index.MENT_MONT_AUTO_PAYMENTS));
                        }
                        if (localObject4 != null)
                        {
                          ((String)localObject4).replace("\\n", "\n");
                          ((TextView)localObject1).setText(CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
                        }
                        if (localObject5 != null) {
                          ((TextView)localObject1).setText((CharSequence)localObject5);
                        }
                        if (str1 != null) {
                          ((TextView)localObject1).setTextSize(1, readFontSize(str1));
                        }
                        if (str2 != null) {
                          ((TextView)localObject1).setTextColor(Color.parseColor(str2));
                        }
                        if (str3 != null)
                        {
                          if (!str3.equals("center")) {
                            break label1557;
                          }
                          ((TextView)localObject1).setGravity(17);
                        }
                        for (;;)
                        {
                          ((TextView)localObject1).setLineSpacing(0.0F, 1.15F);
                          break;
                          label1557:
                          if (str3.equals("right")) {
                            ((TextView)localObject1).setGravity(5);
                          } else if (str3.equals("left")) {
                            ((TextView)localObject1).setGravity(3);
                          } else {
                            ((TextView)localObject1).setGravity(19);
                          }
                        }
                        localIOException2 = localIOException2;
                        continue;
                        localIOException1 = localIOException1;
                        continue;
                        localIOException3 = localIOException3;
                        continue;
                        localIOException4 = localIOException4;
                      }
                    }
                  }
                  localIOException5 = localIOException5;
                }
                catch (IOException localIOException6)
                {
                  break label1233;
                }
              }
            }
          }
        }
      }
    }
  }
  
  private View createViewIMEIPopup(XmlPullParser paramXmlPullParser)
  {
    Object localObject2 = paramXmlPullParser.getName();
    Object localObject1 = null;
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    if (((String)localObject2).equals("LinearLayout"))
    {
      paramXmlPullParser = new LinearLayout(this.context);
      if (paramXmlPullParser != null) {
        break label212;
      }
      localObject1 = null;
    }
    for (;;)
    {
      return localObject1;
      if (((String)localObject2).equals("TextView"))
      {
        paramXmlPullParser = new TextView(this.context);
        break;
      }
      if (((String)localObject2).equals("Button"))
      {
        paramXmlPullParser = new Button(this.context);
        break;
      }
      if (((String)localObject2).equals("ImageView"))
      {
        paramXmlPullParser = new ImageView(this.context);
        break;
      }
      if (((String)localObject2).equals("ScrollView"))
      {
        paramXmlPullParser = new ScrollView(this.context);
        paramXmlPullParser.setScrollbarFadingEnabled(false);
        break;
      }
      if (((String)localObject2).equals("CheckBox"))
      {
        paramXmlPullParser = new CheckBox(this.context);
        break;
      }
      Assert.fail("# UnSupported tag:" + (String)localObject2);
      paramXmlPullParser = (XmlPullParser)localObject1;
      break;
      label212:
      Object localObject3;
      if ((paramXmlPullParser instanceof LinearLayout))
      {
        localObject1 = (LinearLayout)paramXmlPullParser;
        localObject2 = findAttribute(localAttributeSet, "a:orientation");
        if (localObject2 != null)
        {
          if (!((String)localObject2).equals("horizontal")) {
            break label1036;
          }
          ((LinearLayout)localObject1).setOrientation(0);
        }
        label258:
        localObject2 = findAttribute(localAttributeSet, "a:background");
        if (localObject2 != null)
        {
          localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
          ((LinearLayout)localObject1).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
        }
      }
      try
      {
        ((InputStream)localObject3).close();
        if (findAttribute(localAttributeSet, "a:backgroudcolor") != null) {
          ((LinearLayout)localObject1).setBackgroundColor(-65536);
        }
        localObject2 = findAttribute(localAttributeSet, "a:gravity");
        if (localObject2 != null)
        {
          if (((String)localObject2).equals("center")) {
            ((LinearLayout)localObject1).setGravity(17);
          }
        }
        else
        {
          localObject2 = findAttribute(localAttributeSet, "a:padding");
          if (localObject2 != null)
          {
            i = readDPSize((String)localObject2);
            ((LinearLayout)localObject1).setPadding(i, i, i, i);
          }
          localObject2 = findAttribute(localAttributeSet, "a:paddingleft");
          localObject3 = findAttribute(localAttributeSet, "a:paddingTop");
          localObject4 = findAttribute(localAttributeSet, "a:paddingRight");
          localObject5 = findAttribute(localAttributeSet, "a:paddingBottom");
          i = 0;
          int j = 0;
          int k = 0;
          int m = 0;
          if (localObject2 != null) {
            i = readDPSize((String)localObject2);
          }
          if (localObject3 != null) {
            j = readDPSize((String)localObject3);
          }
          if (localObject4 != null) {
            k = readDPSize((String)localObject4);
          }
          if (localObject5 != null) {
            m = readDPSize((String)localObject5);
          }
          ((LinearLayout)localObject1).setPadding(i, j, k, m);
          if (findAttribute(localAttributeSet, "a:focusableInTouchMode") != null) {
            ((LinearLayout)localObject1).setFocusableInTouchMode(true);
          }
          if ((paramXmlPullParser instanceof ImageView))
          {
            localObject1 = (ImageView)paramXmlPullParser;
            localObject2 = findAttribute(localAttributeSet, "a:src");
            if (localObject2 != null)
            {
              localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
              ((ImageView)localObject1).setImageDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
            }
          }
        }
      }
      catch (IOException localIOException7)
      {
        try
        {
          int i;
          ((InputStream)localObject3).close();
          if ((paramXmlPullParser instanceof CheckBox))
          {
            localObject2 = findAttribute(localAttributeSet, "a:onImage");
            localObject3 = findAttribute(localAttributeSet, "a:checkid");
            localObject1 = (CheckBox)paramXmlPullParser;
            ((CheckBox)localObject1).setTag(localObject3);
            localObject3 = Build.MODEL;
            i = 0;
            if (((String)localObject3).endsWith("LT15i"))
            {
              i = 1;
              this.xperiacheckbox = true;
            }
            if (i == 0)
            {
              localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
              localObject2 = Drawable.createFromStream((InputStream)localObject3, (String)localObject2);
            }
          }
        }
        catch (IOException localIOException7)
        {
          try
          {
            ((InputStream)localObject3).close();
            localObject4 = getClass().getResourceAsStream(getResourcePath() + "checkbox_y" + ".png");
            localObject3 = Drawable.createFromStream((InputStream)localObject4, "checkbox_y");
          }
          catch (IOException localIOException7)
          {
            try
            {
              for (;;)
              {
                ((InputStream)localObject4).close();
                localObject4 = new StateListDrawable();
                localObject5 = new StateListDrawable();
                ((StateListDrawable)localObject4).addState(new int[] { -16842912, -16842908 }, (Drawable)localObject2);
                ((StateListDrawable)localObject4).addState(new int[] { 16842912, -16842908 }, (Drawable)localObject3);
                ((StateListDrawable)localObject5).addState(new int[] { -16842910, -16842908 }, null);
                ((StateListDrawable)localObject5).addState(new int[] { -16842912, 16842919 }, null);
                ((StateListDrawable)localObject5).addState(new int[] { 16842912, 16842919 }, null);
                ((StateListDrawable)localObject5).addState(new int[] { -16842912, -16842908 }, null);
                ((StateListDrawable)localObject5).addState(new int[] { 16842912, -16842908 }, null);
                ((CheckBox)localObject1).setButtonDrawable((Drawable)localObject5);
                ((CheckBox)localObject1).setBackgroundDrawable((Drawable)localObject4);
                ((CheckBox)localObject1).setChecked(false);
                ((CheckBox)localObject1).setOnCheckedChangeListener(this.changeCheckBox);
                localObject1 = paramXmlPullParser;
                if (this.layoutStack.size() <= 0) {
                  break;
                }
                paramXmlPullParser.setLayoutParams(loadLayoutParams(localAttributeSet, (ViewGroup)this.layoutStack.peek()));
                return paramXmlPullParser;
                label1036:
                if (!((String)localObject2).equals("vertical")) {
                  break label258;
                }
                ((LinearLayout)localObject1).setOrientation(1);
                break label258;
                if (((String)localObject2).equals("right")) {
                  ((LinearLayout)localObject1).setGravity(5);
                } else if (((String)localObject2).equals("left")) {
                  ((LinearLayout)localObject1).setGravity(3);
                }
              }
              if ((paramXmlPullParser instanceof Button))
              {
                localObject4 = findAttribute(localAttributeSet, "a:offImage");
                localObject1 = findAttribute(localAttributeSet, "a:onImage");
                localObject2 = (Button)paramXmlPullParser;
                if (((String)localObject1).equals("bt_confirm_dim")) {
                  this.mIMEIOkBtn = ((Button)localObject2);
                }
                localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject4 + ".png");
                localObject4 = Drawable.createFromStream((InputStream)localObject3, (String)localObject4);
              }
            }
            catch (IOException localIOException7)
            {
              try
              {
                ((InputStream)localObject3).close();
                localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject1 + ".png");
                localObject5 = Drawable.createFromStream((InputStream)localObject3, (String)localObject1);
              }
              catch (IOException localIOException7)
              {
                try
                {
                  ((InputStream)localObject3).close();
                  localObject3 = new StateListDrawable();
                  ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject5);
                  ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject4);
                  if (((String)localObject1).equals("bt_confirm_dim"))
                  {
                    this.mIMEInotCheckedDrawble = ((StateListDrawable)localObject3);
                    this.mIMEICheckedDrawbles = new StateListDrawable();
                    localObject5 = getClass().getResourceAsStream(getResourcePath() + "btn_con_nor" + ".png");
                    localObject4 = Drawable.createFromStream((InputStream)localObject5, "btn_con_nor");
                  }
                }
                catch (IOException localIOException7)
                {
                  try
                  {
                    ((InputStream)localObject5).close();
                    localObject6 = getClass().getResourceAsStream(getResourcePath() + "btn_con_sel" + ".png");
                    localObject5 = Drawable.createFromStream((InputStream)localObject6, "btn_con_sel");
                  }
                  catch (IOException localIOException7)
                  {
                    try
                    {
                      for (;;)
                      {
                        Object localObject4;
                        Object localObject5;
                        Object localObject6;
                        ((InputStream)localObject6).close();
                        label1419:
                        this.mIMEICheckedDrawbles.addState(new int[] { 16842919 }, (Drawable)localObject5);
                        this.mIMEICheckedDrawbles.addState(new int[0], (Drawable)localObject4);
                        if (this.mIMEICheckList[0] != 0)
                        {
                          this.mIMEIOkBtn.setBackgroundDrawable(this.mIMEICheckedDrawbles);
                          this.mIMEIOkBtn.setOnClickListener(this.imeiAuthBtn);
                        }
                        while (((String)localObject1).equals("btn_cancel_sel_h"))
                        {
                          ((Button)localObject2).setOnClickListener(this.imeiAuthCancelBtn);
                          break;
                          this.mIMEIOkBtn.setBackgroundDrawable((Drawable)localObject3);
                          continue;
                          ((Button)localObject2).setBackgroundDrawable((Drawable)localObject3);
                        }
                        if ((paramXmlPullParser instanceof TextView))
                        {
                          localObject1 = (TextView)paramXmlPullParser;
                          localObject2 = findAttribute(localAttributeSet, "a:nortext");
                          localObject3 = findAttribute(localAttributeSet, "a:nametext");
                          localObject4 = findAttribute(localAttributeSet, "a:centertext");
                          localObject5 = findAttribute(localAttributeSet, "a:agreetext");
                          localObject6 = findAttribute(localAttributeSet, "a:textSize");
                          String str1 = findAttribute(localAttributeSet, "a:textColor");
                          String str2 = findAttribute(localAttributeSet, "a:gravity");
                          findAttribute(localAttributeSet, "a:id");
                          if (localObject2 != null) {
                            ((TextView)localObject1).setText((CharSequence)localObject2);
                          }
                          if (localObject3 != null) {
                            ((TextView)localObject1).setText(CommonString.getString(CommonString.Index.MENT_PRIVACY_POLICY));
                          }
                          if (localObject4 != null)
                          {
                            ((String)localObject4).replace("\\n", "\n");
                            ((TextView)localObject1).setText(CommonString.getString(CommonString.Index.WORK_IMEIAUTH_STRING));
                          }
                          if (localObject5 != null) {
                            ((TextView)localObject1).setText((CharSequence)localObject5);
                          }
                          if (localObject6 != null) {
                            ((TextView)localObject1).setTextSize(1, readFontSize((String)localObject6));
                          }
                          if (str1 != null) {
                            ((TextView)localObject1).setTextColor(Color.parseColor(str1));
                          }
                          if (str2 != null)
                          {
                            if (!str2.equals("center")) {
                              break label1761;
                            }
                            ((TextView)localObject1).setGravity(17);
                          }
                          for (;;)
                          {
                            ((TextView)localObject1).setLineSpacing(0.0F, 1.15F);
                            break;
                            label1761:
                            if (str2.equals("right")) {
                              ((TextView)localObject1).setGravity(5);
                            } else if (str2.equals("left")) {
                              ((TextView)localObject1).setGravity(3);
                            } else {
                              ((TextView)localObject1).setGravity(19);
                            }
                          }
                          localIOException2 = localIOException2;
                          continue;
                          localIOException1 = localIOException1;
                          continue;
                          localIOException3 = localIOException3;
                          continue;
                          localIOException6 = localIOException6;
                          continue;
                          localIOException4 = localIOException4;
                          continue;
                          localIOException5 = localIOException5;
                        }
                      }
                      localIOException7 = localIOException7;
                    }
                    catch (IOException localIOException8)
                    {
                      break label1419;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  private View createViewImagePopup(XmlPullParser paramXmlPullParser, String paramString)
  {
    Object localObject2 = paramXmlPullParser.getName();
    Object localObject1 = null;
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    if (((String)localObject2).equals("LinearLayout"))
    {
      paramXmlPullParser = new LinearLayout(this.context);
      if (paramXmlPullParser != null) {
        break label153;
      }
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      if (((String)localObject2).equals("TextView"))
      {
        paramXmlPullParser = new TextView(this.context);
        break;
      }
      if (((String)localObject2).equals("Button"))
      {
        paramXmlPullParser = new Button(this.context);
        break;
      }
      if (((String)localObject2).equals("ImageView"))
      {
        paramXmlPullParser = new ImageView(this.context);
        break;
      }
      Assert.fail("# UnSupported tag:" + (String)localObject2);
      paramXmlPullParser = (XmlPullParser)localObject1;
      break;
      label153:
      label199:
      Object localObject3;
      if ((paramXmlPullParser instanceof LinearLayout))
      {
        localObject1 = (LinearLayout)paramXmlPullParser;
        localObject2 = findAttribute(localAttributeSet, "a:orientation");
        if (localObject2 != null)
        {
          if (!((String)localObject2).equals("horizontal")) {
            break label839;
          }
          ((LinearLayout)localObject1).setOrientation(0);
        }
        localObject2 = findAttribute(localAttributeSet, "a:background");
        if (localObject2 != null)
        {
          localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
          ((LinearLayout)localObject1).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
        }
      }
      try
      {
        ((InputStream)localObject3).close();
        if (findAttribute(localAttributeSet, "a:backgroudcolor") != null) {
          ((LinearLayout)localObject1).setBackgroundColor(-65536);
        }
        localObject2 = findAttribute(localAttributeSet, "a:gravity");
        if (localObject2 != null)
        {
          if (((String)localObject2).equals("center")) {
            ((LinearLayout)localObject1).setGravity(17);
          }
        }
        else
        {
          localObject2 = findAttribute(localAttributeSet, "a:padding");
          if (localObject2 != null)
          {
            int i = readDPSize((String)localObject2);
            ((LinearLayout)localObject1).setPadding(i, i, i, i);
          }
          if (findAttribute(localAttributeSet, "a:focusableInTouchMode") != null) {
            ((LinearLayout)localObject1).setFocusableInTouchMode(true);
          }
          if ((paramXmlPullParser instanceof ImageView))
          {
            localObject1 = (ImageView)paramXmlPullParser;
            localObject2 = findAttribute(localAttributeSet, "a:src");
            if (localObject2 != null)
            {
              localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
              ((ImageView)localObject1).setImageDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
            }
          }
        }
      }
      catch (IOException localIOException3)
      {
        try
        {
          ((InputStream)localObject3).close();
          if ((paramXmlPullParser instanceof TextView))
          {
            localObject1 = (TextView)paramXmlPullParser;
            localObject2 = findAttribute(localAttributeSet, "a:id");
            localObject3 = findAttribute(localAttributeSet, "a:text");
            localObject4 = findAttribute(localAttributeSet, "a:textSize");
            String str1 = findAttribute(localAttributeSet, "a:textColor");
            String str2 = findAttribute(localAttributeSet, "a:gravity");
            if (localObject3 != null) {
              ((TextView)localObject1).setText(((String)localObject3).replace("\\n", "\n"));
            }
            if (localObject4 != null) {
              ((TextView)localObject1).setTextSize(1, readFontSize((String)localObject4));
            }
            if (str1 != null) {
              ((TextView)localObject1).setTextColor(Color.parseColor(str1));
            }
            if (localObject2 != null) {
              ((TextView)localObject1).setText(paramString);
            }
            if (str2 != null)
            {
              ((TextView)localObject1).setGravity(17);
              ((TextView)localObject1).setLineSpacing(0.0F, 1.15F);
            }
          }
          else if ((paramXmlPullParser instanceof Button))
          {
            localObject2 = findAttribute(localAttributeSet, "a:offImage");
            paramString = findAttribute(localAttributeSet, "a:onImage");
            localObject1 = (Button)paramXmlPullParser;
            localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
            localObject2 = Drawable.createFromStream((InputStream)localObject3, (String)localObject2);
          }
        }
        catch (IOException localIOException3)
        {
          try
          {
            ((InputStream)localObject3).close();
            localObject4 = getClass().getResourceAsStream(getResourcePath() + paramString + ".png");
            localObject3 = Drawable.createFromStream((InputStream)localObject4, paramString);
          }
          catch (IOException localIOException3)
          {
            try
            {
              for (;;)
              {
                ((InputStream)localObject4).close();
                label744:
                Object localObject4 = new StateListDrawable();
                ((StateListDrawable)localObject4).addState(new int[] { 16842919 }, (Drawable)localObject3);
                ((StateListDrawable)localObject4).addState(new int[0], (Drawable)localObject2);
                ((Button)localObject1).setBackgroundDrawable((Drawable)localObject4);
                if (paramString.equals("btn_con_sel")) {
                  ((Button)localObject1).setOnClickListener(this.imageBtn);
                }
                paramString = paramXmlPullParser;
                if (this.layoutStack.size() <= 0) {
                  break;
                }
                paramXmlPullParser.setLayoutParams(loadLayoutParams(localAttributeSet, (ViewGroup)this.layoutStack.peek()));
                return paramXmlPullParser;
                label839:
                if (!((String)localObject2).equals("vertical")) {
                  break label199;
                }
                ((LinearLayout)localObject1).setOrientation(1);
                break label199;
                ((LinearLayout)localObject1).setGravity(5);
                continue;
                ((TextView)localObject1).setGravity(19);
                continue;
                localIOException2 = localIOException2;
                continue;
                localIOException1 = localIOException1;
              }
              localIOException3 = localIOException3;
            }
            catch (IOException localIOException4)
            {
              break label744;
            }
          }
        }
      }
    }
  }
  
  private View createViewJoinPopup(XmlPullParser paramXmlPullParser)
  {
    Object localObject2 = paramXmlPullParser.getName();
    Object localObject1 = null;
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    if (((String)localObject2).equals("LinearLayout"))
    {
      paramXmlPullParser = new LinearLayout(this.context);
      if (paramXmlPullParser != null) {
        break label212;
      }
      localObject1 = null;
    }
    for (;;)
    {
      return localObject1;
      if (((String)localObject2).equals("TextView"))
      {
        paramXmlPullParser = new TextView(this.context);
        break;
      }
      if (((String)localObject2).equals("Button"))
      {
        paramXmlPullParser = new Button(this.context);
        break;
      }
      if (((String)localObject2).equals("ImageView"))
      {
        paramXmlPullParser = new ImageView(this.context);
        break;
      }
      if (((String)localObject2).equals("ScrollView"))
      {
        paramXmlPullParser = new ScrollView(this.context);
        paramXmlPullParser.setScrollbarFadingEnabled(false);
        break;
      }
      if (((String)localObject2).equals("CheckBox"))
      {
        paramXmlPullParser = new CheckBox(this.context);
        break;
      }
      Assert.fail("# UnSupported tag:" + (String)localObject2);
      paramXmlPullParser = (XmlPullParser)localObject1;
      break;
      label212:
      Object localObject3;
      if ((paramXmlPullParser instanceof LinearLayout))
      {
        localObject1 = (LinearLayout)paramXmlPullParser;
        localObject2 = findAttribute(localAttributeSet, "a:orientation");
        if (localObject2 != null)
        {
          if (!((String)localObject2).equals("horizontal")) {
            break label1226;
          }
          ((LinearLayout)localObject1).setOrientation(0);
        }
        label258:
        localObject2 = findAttribute(localAttributeSet, "a:background");
        if (localObject2 != null)
        {
          if (!((String)localObject2).equals("dot_line")) {
            break label1246;
          }
          localObject3 = getClass().getResourceAsStream(getResourcePath() + "line_dot_01.png");
          localObject2 = Drawable.createFromStream((InputStream)localObject3, null);
        }
      }
      try
      {
        ((InputStream)localObject3).close();
        ((BitmapDrawable)localObject2).setTileModeX(Shader.TileMode.REPEAT);
        ((BitmapDrawable)localObject2).setTileModeY(Shader.TileMode.REPEAT);
        ((LinearLayout)localObject1).setBackgroundDrawable((Drawable)localObject2);
        label359:
        if (findAttribute(localAttributeSet, "a:backgroudcolor") != null) {
          ((LinearLayout)localObject1).setBackgroundColor(-65536);
        }
        localObject2 = findAttribute(localAttributeSet, "a:gravity");
        if (localObject2 != null)
        {
          if (((String)localObject2).equals("center")) {
            ((LinearLayout)localObject1).setGravity(17);
          }
        }
        else
        {
          label413:
          localObject2 = findAttribute(localAttributeSet, "a:padding");
          if (localObject2 != null)
          {
            i = readDPSize((String)localObject2);
            ((LinearLayout)localObject1).setPadding(i, i, i, i);
          }
          localObject2 = findAttribute(localAttributeSet, "a:paddingleft");
          localObject3 = findAttribute(localAttributeSet, "a:paddingTop");
          localObject4 = findAttribute(localAttributeSet, "a:paddingRight");
          localObject5 = findAttribute(localAttributeSet, "a:paddingBottom");
          i = 0;
          int j = 0;
          int k = 0;
          int m = 0;
          if (localObject2 != null) {
            i = readDPSize((String)localObject2);
          }
          if (localObject3 != null) {
            j = readDPSize((String)localObject3);
          }
          if (localObject4 != null) {
            k = readDPSize((String)localObject4);
          }
          if (localObject5 != null) {
            m = readDPSize((String)localObject5);
          }
          ((LinearLayout)localObject1).setPadding(i, j, k, m);
          if (findAttribute(localAttributeSet, "a:focusableInTouchMode") != null) {
            ((LinearLayout)localObject1).setFocusableInTouchMode(true);
          }
          if ((paramXmlPullParser instanceof ImageView))
          {
            localObject1 = (ImageView)paramXmlPullParser;
            localObject2 = findAttribute(localAttributeSet, "a:src");
            if (localObject2 != null)
            {
              localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
              ((ImageView)localObject1).setImageDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
            }
          }
        }
      }
      catch (IOException localIOException6)
      {
        try
        {
          int i;
          ((InputStream)localObject3).close();
          if ((paramXmlPullParser instanceof TextView))
          {
            localObject3 = (TextView)paramXmlPullParser;
            localObject4 = findAttribute(localAttributeSet, "a:id");
            localObject2 = findAttribute(localAttributeSet, "a:text");
            localObject5 = findAttribute(localAttributeSet, "a:textSize");
            String str1 = findAttribute(localAttributeSet, "a:textColor");
            String str2 = findAttribute(localAttributeSet, "a:gravity");
            localObject1 = localObject2;
            if (localObject2 != null)
            {
              localObject1 = ((String)localObject2).replace("\\n", "\n");
              ((TextView)localObject3).setText((CharSequence)localObject1);
            }
            if (localObject5 != null) {
              ((TextView)localObject3).setTextSize(1, readFontSize((String)localObject5));
            }
            if (str1 != null) {
              ((TextView)localObject3).setTextColor(Color.parseColor(str1));
            }
            if (localObject4 != null) {
              ((TextView)localObject3).setText((CharSequence)localObject1);
            }
            if (str2 != null)
            {
              ((TextView)localObject3).setGravity(17);
              label815:
              ((TextView)localObject3).setLineSpacing(0.0F, 1.15F);
            }
          }
          else
          {
            if (!(paramXmlPullParser instanceof CheckBox)) {
              break label1347;
            }
            localObject1 = (CheckBox)paramXmlPullParser;
            ((CheckBox)localObject1).setTag(findAttribute(localAttributeSet, "a:checkid"));
            localObject2 = Build.MODEL;
            i = 0;
            if (((String)localObject2).endsWith("LT15i"))
            {
              i = 1;
              this.xperiacheckbox = true;
            }
            if (i == 0)
            {
              localObject2 = findAttribute(localAttributeSet, "a:onImage");
              localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
              localObject2 = Drawable.createFromStream((InputStream)localObject3, (String)localObject2);
            }
          }
        }
        catch (IOException localIOException6)
        {
          try
          {
            ((InputStream)localObject3).close();
            localObject4 = getClass().getResourceAsStream(getResourcePath() + "checkbox_y" + ".png");
            localObject3 = Drawable.createFromStream((InputStream)localObject4, "checkbox_y");
          }
          catch (IOException localIOException6)
          {
            try
            {
              ((InputStream)localObject4).close();
              localObject4 = new StateListDrawable();
              localObject5 = new StateListDrawable();
              ((StateListDrawable)localObject4).addState(new int[] { -16842912, -16842908 }, (Drawable)localObject2);
              ((StateListDrawable)localObject4).addState(new int[] { 16842912, -16842908 }, (Drawable)localObject3);
              ((StateListDrawable)localObject5).addState(new int[] { -16842910, -16842908 }, null);
              ((StateListDrawable)localObject5).addState(new int[] { -16842912, 16842919 }, null);
              ((StateListDrawable)localObject5).addState(new int[] { 16842912, 16842919 }, null);
              ((StateListDrawable)localObject5).addState(new int[] { -16842912, -16842908 }, null);
              ((StateListDrawable)localObject5).addState(new int[] { 16842912, -16842908 }, null);
              ((CheckBox)localObject1).setBackgroundDrawable((Drawable)localObject4);
              ((CheckBox)localObject1).setButtonDrawable((Drawable)localObject5);
              ((CheckBox)localObject1).setChecked(false);
              ((CheckBox)localObject1).setOnCheckedChangeListener(this.changeCheckBox);
              label1226:
              label1246:
              do
              {
                do
                {
                  for (;;)
                  {
                    localObject1 = paramXmlPullParser;
                    if (this.layoutStack.size() <= 0) {
                      break;
                    }
                    paramXmlPullParser.setLayoutParams(loadLayoutParams(localAttributeSet, (ViewGroup)this.layoutStack.peek()));
                    return paramXmlPullParser;
                    if (!((String)localObject2).equals("vertical")) {
                      break label258;
                    }
                    ((LinearLayout)localObject1).setOrientation(1);
                    break label258;
                    localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
                    ((LinearLayout)localObject1).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
                    try
                    {
                      ((InputStream)localObject3).close();
                    }
                    catch (IOException localIOException2) {}
                  }
                  break label359;
                  if (localIOException2.equals("left"))
                  {
                    ((LinearLayout)localObject1).setGravity(3);
                    break label413;
                  }
                  ((LinearLayout)localObject1).setGravity(5);
                  break label413;
                  ((TextView)localObject3).setGravity(19);
                  break label815;
                } while (!(paramXmlPullParser instanceof Button));
                localObject3 = findAttribute(localAttributeSet, "a:offImage");
                localObject1 = findAttribute(localAttributeSet, "a:onImage");
                findAttribute(localAttributeSet, "a:gravity");
              } while (localObject3 == null);
              label1347:
              localButton = (Button)paramXmlPullParser;
              localObject4 = getClass().getResourceAsStream(getResourcePath() + (String)localObject3 + ".png");
              localObject3 = Drawable.createFromStream((InputStream)localObject4, (String)localObject3);
            }
            catch (IOException localIOException6)
            {
              try
              {
                ((InputStream)localObject4).close();
                localObject5 = getClass().getResourceAsStream(getResourcePath() + (String)localObject1 + ".png");
                localObject4 = Drawable.createFromStream((InputStream)localObject5, (String)localObject1);
              }
              catch (IOException localIOException6)
              {
                try
                {
                  for (;;)
                  {
                    Object localObject4;
                    Button localButton;
                    ((InputStream)localObject5).close();
                    label1499:
                    Object localObject5 = new StateListDrawable();
                    ((StateListDrawable)localObject5).addState(new int[] { 16842919 }, (Drawable)localObject4);
                    ((StateListDrawable)localObject5).addState(new int[0], (Drawable)localObject3);
                    localButton.setBackgroundDrawable((Drawable)localObject5);
                    if (((String)localObject1).equals("btn_con_sel"))
                    {
                      localButton.setOnClickListener(this.okJoinBtn);
                    }
                    else if (((String)localObject1).equals("btn_cancel_sel_h"))
                    {
                      localButton.setOnClickListener(this.cancelJoinBtn);
                    }
                    else if (((String)localObject1).equals("btn_terms_sel_b"))
                    {
                      localButton.setOnClickListener(this.moreInfoFormBtn1);
                    }
                    else if (((String)localObject1).equals("btn_terms_sel_b2"))
                    {
                      localButton.setOnClickListener(this.moreInfoFormBtn2);
                    }
                    else if (((String)localObject1).equals("btn_policy_sel_b"))
                    {
                      localButton.setOnClickListener(this.moreInfoFormBtn3);
                      continue;
                      localIOException3 = localIOException3;
                      continue;
                      localIOException1 = localIOException1;
                      continue;
                      localIOException4 = localIOException4;
                      continue;
                      localIOException5 = localIOException5;
                    }
                  }
                  localIOException6 = localIOException6;
                }
                catch (IOException localIOException7)
                {
                  break label1499;
                }
              }
            }
          }
        }
      }
    }
  }
  
  private View createViewLguSmsAuthPopup(XmlPullParser paramXmlPullParser)
  {
    String str = paramXmlPullParser.getName();
    Object localObject1 = null;
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    if (str.equals("LinearLayout"))
    {
      paramXmlPullParser = new LinearLayout(this.context);
      if (paramXmlPullParser != null) {
        break label222;
      }
      localObject1 = null;
    }
    for (;;)
    {
      return localObject1;
      if (str.equals("TextView"))
      {
        paramXmlPullParser = new TextView(this.context);
        break;
      }
      if (str.equals("Button"))
      {
        paramXmlPullParser = new Button(this.context);
        break;
      }
      if (str.equals("ImageView"))
      {
        paramXmlPullParser = new ImageView(this.context);
        break;
      }
      if (str.equals("EditText"))
      {
        paramXmlPullParser = new EditText(this.context);
        ((EditText)paramXmlPullParser).setImeOptions(268435456);
        break;
      }
      if (str.equals("ScrollView"))
      {
        paramXmlPullParser = new ScrollView(this.context);
        paramXmlPullParser.setScrollbarFadingEnabled(false);
        break;
      }
      Assert.fail("# UnSupported tag:" + str);
      paramXmlPullParser = (XmlPullParser)localObject1;
      break;
      label222:
      Object localObject2;
      if ((paramXmlPullParser instanceof LinearLayout))
      {
        localObject1 = (LinearLayout)paramXmlPullParser;
        str = findAttribute(localAttributeSet, "a:orientation");
        if (str != null)
        {
          if (!str.equals("horizontal")) {
            break label1732;
          }
          ((LinearLayout)localObject1).setOrientation(0);
        }
        label268:
        str = findAttribute(localAttributeSet, "a:background");
        if (str != null)
        {
          localObject2 = getClass().getResourceAsStream(getResourcePath() + str + ".png");
          ((LinearLayout)localObject1).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject2, str));
        }
      }
      try
      {
        ((InputStream)localObject2).close();
        label338:
        if (findAttribute(localAttributeSet, "a:backgroudcolor") != null) {
          ((LinearLayout)localObject1).setBackgroundColor(-65536);
        }
        str = findAttribute(localAttributeSet, "a:gravity");
        if (str != null)
        {
          if (str.equals("center")) {
            ((LinearLayout)localObject1).setGravity(17);
          }
        }
        else
        {
          label392:
          str = findAttribute(localAttributeSet, "a:padding");
          if (str != null)
          {
            i = readDPSize(str);
            ((LinearLayout)localObject1).setPadding(i, i, i, i);
          }
          if (findAttribute(localAttributeSet, "a:focusableInTouchMode") != null) {
            ((LinearLayout)localObject1).setFocusableInTouchMode(true);
          }
          if ((paramXmlPullParser instanceof EditText))
          {
            localObject1 = (EditText)paramXmlPullParser;
            ((EditText)localObject1).setGravity(5);
            ((EditText)localObject1).setInputType(2);
            str = findAttribute(localAttributeSet, "a:background");
            if (str != null)
            {
              localObject2 = getClass().getResourceAsStream(getResourcePath() + str + ".png");
              ((EditText)localObject1).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject2, str));
            }
          }
        }
      }
      catch (IOException localIOException2)
      {
        try
        {
          ((InputStream)localObject2).close();
          if (findAttribute(localAttributeSet, "a:lgu_auth_text") != null)
          {
            mLguSmsAuthTv = (EditText)localObject1;
            if (IAPLib.getOTPNumber() != null)
            {
              ((EditText)localObject1).setText(IAPLib.getOTPNumber());
              ((EditText)localObject1).setTextColor(Color.parseColor("#FF6F00"));
              ((EditText)localObject1).setTextSize(1, 30.0F);
              mLguSmsAuthBtn.setBackgroundDrawable(mReClaimDrawables);
              label597:
              mLguSmsAuthTv.addTextChangedListener(new TextWatcher()
              {
                String inputStr;
                
                public void afterTextChanged(Editable paramAnonymousEditable)
                {
                  if (this.inputStr.length() != 6) {
                    ParserXML.nextStep = Boolean.valueOf(true);
                  }
                  if ((ParserXML.nextStep.booleanValue()) && (this.inputStr.length() == 6))
                  {
                    ParserXML.nextStep = Boolean.valueOf(false);
                    IAPLib.setOTPNumber(this.inputStr);
                  }
                }
                
                public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
                
                public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
                {
                  this.inputStr = paramAnonymousCharSequence.toString();
                }
              });
            }
          }
          else
          {
            if ((paramXmlPullParser instanceof TextView))
            {
              localObject1 = (TextView)paramXmlPullParser;
              str = findAttribute(localAttributeSet, "a:text");
              findAttribute(localAttributeSet, "a:lgu_auth_text");
              findAttribute(localAttributeSet, "a:lgu_info_text");
              localObject2 = findAttribute(localAttributeSet, "a:textSize");
              localObject3 = findAttribute(localAttributeSet, "a:textColor");
              localObject4 = findAttribute(localAttributeSet, "a:gravity");
              if (str != null) {
                ((TextView)localObject1).setText(str.replace("\\n", "\n"));
              }
              if (localObject2 != null) {
                ((TextView)localObject1).setTextSize(1, readFontSize((String)localObject2));
              }
              if (localObject3 != null) {
                ((TextView)localObject1).setTextColor(Color.parseColor((String)localObject3));
              }
              if (localObject4 == null) {
                break label1775;
              }
              ((TextView)localObject1).setGravity(17);
              label754:
              ((TextView)localObject1).setLineSpacing(0.0F, 1.15F);
              if (IAPLib.getOTPNumber() != null)
              {
                mLguSmsAuthTv.setText(IAPLib.getOTPNumber());
                mLguSmsAuthTv.setTextColor(Color.parseColor("#FF6F00"));
                mLguSmsAuthTv.setTextSize(1, 30.0F);
                mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
              }
            }
            if ((paramXmlPullParser instanceof Button))
            {
              localObject1 = findAttribute(localAttributeSet, "a:offImage");
              str = findAttribute(localAttributeSet, "a:onImage");
              localObject2 = findAttribute(localAttributeSet, "a:id");
              this.mBtn = ((Button)paramXmlPullParser);
              localObject3 = findAttribute(localAttributeSet, "a:padding");
              if (localObject3 != null)
              {
                i = readDPSize((String)localObject3);
                this.mBtn.setPadding(i, i, i, i);
              }
              if (localObject2 != null)
              {
                if (((String)localObject2).equals("lgu_smsAuth_btn")) {
                  this.mBtn.setPadding(0, 0, 0, 0);
                }
                this.mBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_REQUEST));
              }
              if (((String)localObject1).equals("bt_01_nor.9"))
              {
                mLguSmsAuthBtn = this.mBtn;
                mLguSmsAuthBtn.setPadding(0, 0, 0, 0);
                mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.RECEIVE_CODE));
              }
              if (((String)localObject1).equals("bt_confirm_dim")) {
                mLguSmsAuthOkBtn = this.mBtn;
              }
              this.mStream = getClass().getResourceAsStream(getResourcePath() + (String)localObject1 + ".png");
              this.mbtOn = Drawable.createFromStream(this.mStream, (String)localObject1);
            }
          }
        }
        catch (IOException localIOException2)
        {
          try
          {
            int i;
            Object localObject3;
            Object localObject4;
            this.mStream.close();
            label1063:
            this.mStream = getClass().getResourceAsStream(getResourcePath() + str + ".png");
            this.mbtOver = Drawable.createFromStream(this.mStream, str);
            try
            {
              this.mStream.close();
              label1122:
              this.mDrawables = new StateListDrawable();
              localObject3 = this.mDrawables;
              localObject4 = this.mbtOver;
              ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject4);
              localObject3 = this.mDrawables;
              localObject4 = this.mbtOn;
              ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject4);
              this.mReClaimStream = getClass().getResourceAsStream(getResourcePath() + "bt_01_reclaim_nor" + ".png");
              this.mLimitExcessbtOn = Drawable.createFromStream(this.mReClaimStream, "bt_01_reclaim_nor");
              try
              {
                this.mReClaimStream.close();
                label1244:
                this.mReClaimStream = getClass().getResourceAsStream(getResourcePath() + "bt_01_reclaim_sel" + ".png");
                this.mLimitExcessbtOver = Drawable.createFromStream(this.mReClaimStream, "bt_01_reclaim_sel");
                try
                {
                  this.mReClaimStream.close();
                  label1305:
                  mReClaimDrawables = new StateListDrawable();
                  localObject3 = mReClaimDrawables;
                  localObject4 = this.mLimitExcessbtOver;
                  ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject4);
                  localObject3 = mReClaimDrawables;
                  localObject4 = this.mLimitExcessbtOn;
                  ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject4);
                  this.mAuthOkStream = getClass().getResourceAsStream(getResourcePath() + "btn_con_nor" + ".png");
                  this.mAuthOkbtOn = Drawable.createFromStream(this.mAuthOkStream, "btn_con_nor");
                  try
                  {
                    this.mAuthOkStream.close();
                    label1424:
                    this.mAuthOkStream = getClass().getResourceAsStream(getResourcePath() + "btn_con_sel" + ".png");
                    this.mAuthOkbtOver = Drawable.createFromStream(this.mAuthOkStream, "btn_con_sel");
                    try
                    {
                      this.mAuthOkStream.close();
                      label1485:
                      mSmsAuthDrawables = new StateListDrawable();
                      localObject3 = mSmsAuthDrawables;
                      localObject4 = this.mAuthOkbtOver;
                      ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject4);
                      localObject3 = mSmsAuthDrawables;
                      localObject4 = this.mAuthOkbtOn;
                      ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject4);
                      this.mBtn.setBackgroundDrawable(this.mDrawables);
                      if ((mLguSmsAuthClickFlag.booleanValue()) && (((String)localObject1).equals("bt_01_sel.9")))
                      {
                        this.mBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                        this.mBtn.setTextColor(Color.parseColor("#999999"));
                      }
                      if (IAPLib.getOTPNumber() != null)
                      {
                        mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                        mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                        mLguSmsAuthOkBtn.setBackgroundDrawable(mSmsAuthDrawables);
                        mLguSmsAuthOkBtn.setOnClickListener(okLguSmsAuthBtn);
                      }
                      if ((localObject2 != null) && (((String)localObject2).equals("lgu_smsAuth_btn"))) {
                        this.mBtn.setPadding(0, 0, 0, 0);
                      }
                      if (str.equals("bt_01_sel.9")) {
                        this.mBtn.setOnClickListener(this.getlguSmsAuthBtn);
                      }
                      label1732:
                      label1775:
                      do
                      {
                        for (;;)
                        {
                          localObject1 = paramXmlPullParser;
                          if (this.layoutStack.size() <= 0) {
                            break;
                          }
                          paramXmlPullParser.setLayoutParams(loadLayoutParams(localAttributeSet, (ViewGroup)this.layoutStack.peek()));
                          return paramXmlPullParser;
                          if (!str.equals("vertical")) {
                            break label268;
                          }
                          ((LinearLayout)localObject1).setOrientation(1);
                          break label268;
                          ((LinearLayout)localObject1).setGravity(5);
                          break label392;
                          ((EditText)localObject1).setText(CommonString.getString(CommonString.Index.MENT_REQUEST_AUTHORIZATION));
                          break label597;
                          ((TextView)localObject1).setGravity(19);
                          break label754;
                          if (str.equals("btn_con_sel"))
                          {
                            this.mBtn.setOnClickListener(okLguSmsAuthBtn);
                          }
                          else
                          {
                            if (!str.equals("btn_cancel_sel_h")) {
                              break label1834;
                            }
                            this.mBtn.setOnClickListener(this.cancelLguSmsAuthBtn);
                          }
                        }
                      } while (!str.equals("btn_locking_sel"));
                      label1834:
                      localObject1 = this.context.getPackageManager().getInstalledApplications(0);
                      int j = ((List)localObject1).size();
                      i = 0;
                      for (;;)
                      {
                        if (i >= j)
                        {
                          this.mBtn.setOnClickListener(this.tStoreInfoBtn);
                          break;
                        }
                        if (((ApplicationInfo)((List)localObject1).get(i)).packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                          this.tStoreFlag = true;
                        }
                        i += 1;
                      }
                      localIOException1 = localIOException1;
                      break label338;
                      localIOException2 = localIOException2;
                    }
                    catch (IOException localIOException3)
                    {
                      break label1485;
                    }
                  }
                  catch (IOException localIOException4)
                  {
                    break label1424;
                  }
                }
                catch (IOException localIOException5)
                {
                  break label1305;
                }
              }
              catch (IOException localIOException6)
              {
                break label1244;
              }
            }
            catch (IOException localIOException7)
            {
              break label1122;
            }
          }
          catch (IOException localIOException8)
          {
            break label1063;
          }
        }
      }
    }
  }
  
  private View createViewOtpPopup(XmlPullParser paramXmlPullParser)
  {
    Object localObject2 = paramXmlPullParser.getName();
    Object localObject1 = null;
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    if (((String)localObject2).equals("LinearLayout"))
    {
      paramXmlPullParser = new LinearLayout(this.context);
      if (paramXmlPullParser != null) {
        break label191;
      }
      localObject1 = null;
    }
    for (;;)
    {
      return localObject1;
      if (((String)localObject2).equals("TextView"))
      {
        paramXmlPullParser = new TextView(this.context);
        break;
      }
      if (((String)localObject2).equals("Button"))
      {
        paramXmlPullParser = new Button(this.context);
        break;
      }
      if (((String)localObject2).equals("ImageView"))
      {
        paramXmlPullParser = new ImageView(this.context);
        break;
      }
      if (((String)localObject2).equals("EditText"))
      {
        paramXmlPullParser = new EditText(this.context);
        ((EditText)paramXmlPullParser).setImeOptions(268435456);
        break;
      }
      Assert.fail("# UnSupported tag:" + (String)localObject2);
      paramXmlPullParser = (XmlPullParser)localObject1;
      break;
      label191:
      label237:
      Object localObject3;
      if ((paramXmlPullParser instanceof LinearLayout))
      {
        localObject1 = (LinearLayout)paramXmlPullParser;
        localObject2 = findAttribute(localAttributeSet, "a:orientation");
        if (localObject2 != null)
        {
          if (!((String)localObject2).equals("horizontal")) {
            break label1094;
          }
          ((LinearLayout)localObject1).setOrientation(0);
        }
        localObject2 = findAttribute(localAttributeSet, "a:background");
        if (localObject2 != null)
        {
          localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
          ((LinearLayout)localObject1).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
        }
      }
      try
      {
        ((InputStream)localObject3).close();
        if (findAttribute(localAttributeSet, "a:backgroudcolor") != null) {
          ((LinearLayout)localObject1).setBackgroundColor(-65536);
        }
        localObject2 = findAttribute(localAttributeSet, "a:gravity");
        if (localObject2 != null)
        {
          if (((String)localObject2).equals("center")) {
            ((LinearLayout)localObject1).setGravity(17);
          }
        }
        else
        {
          localObject2 = findAttribute(localAttributeSet, "a:padding");
          if (localObject2 != null)
          {
            i = readDPSize((String)localObject2);
            ((LinearLayout)localObject1).setPadding(i, i, i, i);
          }
          if (findAttribute(localAttributeSet, "a:focusableInTouchMode") != null) {
            ((LinearLayout)localObject1).setFocusableInTouchMode(true);
          }
          if ((paramXmlPullParser instanceof ImageView))
          {
            localObject1 = (ImageView)paramXmlPullParser;
            localObject2 = findAttribute(localAttributeSet, "a:src");
            if (localObject2 != null)
            {
              localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
              ((ImageView)localObject1).setImageDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
            }
          }
        }
      }
      catch (IOException localIOException3)
      {
        try
        {
          ((InputStream)localObject3).close();
          if ((paramXmlPullParser instanceof TextView))
          {
            localObject1 = (TextView)paramXmlPullParser;
            findAttribute(localAttributeSet, "a:id");
            localObject2 = findAttribute(localAttributeSet, "a:text");
            localObject3 = findAttribute(localAttributeSet, "a:otpnumbertext");
            localObject4 = findAttribute(localAttributeSet, "a:infotext");
            localObject5 = findAttribute(localAttributeSet, "a:textSize");
            String str1 = findAttribute(localAttributeSet, "a:textColor");
            String str2 = findAttribute(localAttributeSet, "a:gravity");
            if (localObject2 != null) {
              ((TextView)localObject1).setText(((String)localObject2).replace("\\n", "\n"));
            }
            if (localObject3 != null)
            {
              j = 0;
              i = 1;
              if (i > 20)
              {
                ((String)localObject3).replace("\\n", "\n");
                ((TextView)localObject1).setText(j);
                this.otpAuthNumber = String.valueOf(j);
              }
            }
            else
            {
              if (localObject4 != null) {
                ((TextView)localObject1).setText(((String)localObject4).replace("\\n", "\n"));
              }
              if (localObject5 != null) {
                ((TextView)localObject1).setTextSize(1, readFontSize((String)localObject5));
              }
              if (str1 != null) {
                ((TextView)localObject1).setTextColor(Color.parseColor(str1));
              }
              if (str2 == null) {
                break label1145;
              }
              ((TextView)localObject1).setGravity(17);
              ((TextView)localObject1).setLineSpacing(0.0F, 1.15F);
            }
          }
          else if ((paramXmlPullParser instanceof Button))
          {
            localObject3 = findAttribute(localAttributeSet, "a:offImage");
            localObject1 = findAttribute(localAttributeSet, "a:onImage");
            localObject2 = (Button)paramXmlPullParser;
            localObject4 = getClass().getResourceAsStream(getResourcePath() + (String)localObject3 + ".png");
            localObject3 = Drawable.createFromStream((InputStream)localObject4, (String)localObject3);
          }
        }
        catch (IOException localIOException3)
        {
          try
          {
            ((InputStream)localObject4).close();
            localObject5 = getClass().getResourceAsStream(getResourcePath() + (String)localObject1 + ".png");
            localObject4 = Drawable.createFromStream((InputStream)localObject5, (String)localObject1);
          }
          catch (IOException localIOException3)
          {
            try
            {
              for (;;)
              {
                int i;
                Object localObject4;
                ((InputStream)localObject5).close();
                label870:
                Object localObject5 = new StateListDrawable();
                ((StateListDrawable)localObject5).addState(new int[] { 16842919 }, (Drawable)localObject4);
                ((StateListDrawable)localObject5).addState(new int[0], (Drawable)localObject3);
                ((Button)localObject2).setBackgroundDrawable((Drawable)localObject5);
                if (((String)localObject1).equals("btn_locking_sel")) {
                  ((Button)localObject2).setOnClickListener(this.okOtpBtn);
                }
                if ((paramXmlPullParser instanceof EditText))
                {
                  localObject1 = (EditText)paramXmlPullParser;
                  ((EditText)localObject1).setHint(CommonString.getString(CommonString.Index.HINT_INPUT_SECURITY));
                  ((EditText)localObject1).setFocusable(true);
                  ((EditText)localObject1).setBackgroundDrawable(null);
                  ((EditText)localObject1).setInputType(2);
                  localObject2 = findAttribute(localAttributeSet, "a:maxLength");
                  if (localObject2 != null)
                  {
                    ((EditText)localObject1).setSingleLine();
                    ((EditText)localObject1).setFilters(new InputFilter[] { new InputFilter.LengthFilter(Integer.parseInt((String)localObject2)) });
                  }
                  findAttribute(localAttributeSet, "a:id");
                  ((EditText)localObject1).addTextChangedListener(new TextWatcher()
                  {
                    String inputStr;
                    
                    public void afterTextChanged(Editable paramAnonymousEditable)
                    {
                      if (this.inputStr.length() == 4)
                      {
                        if (ParserXML.this.otpAuthNumber.equals(this.inputStr)) {
                          ParserXML.this.onOtpCallback.onOtpDialogOK();
                        }
                      }
                      else {
                        return;
                      }
                      this.inputStr = "";
                      this.val$editText.setText("");
                      this.val$editText.setHint("잘못된 인증번호를 입력하셨습니다.");
                    }
                    
                    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
                    
                    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
                    {
                      this.inputStr = paramAnonymousCharSequence.toString();
                    }
                  });
                  ((EditText)localObject1).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (ParserXML.this.cursorFlag) {
                        this.val$editText.setHint("");
                      }
                      ParserXML.this.cursorFlag = false;
                    }
                  });
                }
                localObject1 = paramXmlPullParser;
                if (this.layoutStack.size() <= 0) {
                  break;
                }
                paramXmlPullParser.setLayoutParams(loadLayoutParams(localAttributeSet, (ViewGroup)this.layoutStack.peek()));
                return paramXmlPullParser;
                label1094:
                if (!((String)localObject2).equals("vertical")) {
                  break label237;
                }
                ((LinearLayout)localObject1).setOrientation(1);
                break label237;
                ((LinearLayout)localObject1).setGravity(5);
                continue;
                int j = (int)(Math.random() * 9000 + 1000);
                i += 1;
                continue;
                label1145:
                ((TextView)localObject1).setGravity(19);
                continue;
                localIOException2 = localIOException2;
                continue;
                localIOException1 = localIOException1;
              }
              localIOException3 = localIOException3;
            }
            catch (IOException localIOException4)
            {
              break label870;
            }
          }
        }
      }
    }
  }
  
  private View createViewYesNoPopup(XmlPullParser paramXmlPullParser, String paramString)
  {
    Object localObject2 = paramXmlPullParser.getName();
    Object localObject1 = null;
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    if (((String)localObject2).equals("LinearLayout"))
    {
      paramXmlPullParser = new LinearLayout(this.context);
      if (paramXmlPullParser != null) {
        break label158;
      }
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      if (((String)localObject2).equals("TextView"))
      {
        paramXmlPullParser = new TextView(this.context);
        break;
      }
      if (((String)localObject2).equals("Button"))
      {
        paramXmlPullParser = new Button(this.context);
        break;
      }
      if (((String)localObject2).equals("ScrollView"))
      {
        paramXmlPullParser = new ScrollView(this.context);
        paramXmlPullParser.setScrollbarFadingEnabled(false);
        break;
      }
      Assert.fail("# UnSupported tag:" + (String)localObject2);
      paramXmlPullParser = (XmlPullParser)localObject1;
      break;
      label158:
      label204:
      Object localObject3;
      if ((paramXmlPullParser instanceof LinearLayout))
      {
        localObject1 = (LinearLayout)paramXmlPullParser;
        localObject2 = findAttribute(localAttributeSet, "a:orientation");
        if (localObject2 != null)
        {
          if (!((String)localObject2).equals("horizontal")) {
            break label761;
          }
          ((LinearLayout)localObject1).setOrientation(0);
        }
        localObject2 = findAttribute(localAttributeSet, "a:background");
        if (localObject2 != null)
        {
          localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
          ((LinearLayout)localObject1).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject3, (String)localObject2));
        }
      }
      try
      {
        ((InputStream)localObject3).close();
        if (findAttribute(localAttributeSet, "a:backgroudcolor") != null) {
          ((LinearLayout)localObject1).setBackgroundColor(-65536);
        }
        localObject2 = findAttribute(localAttributeSet, "a:gravity");
        if (localObject2 != null)
        {
          if (((String)localObject2).equals("center")) {
            ((LinearLayout)localObject1).setGravity(17);
          }
        }
        else
        {
          label328:
          localObject2 = findAttribute(localAttributeSet, "a:padding");
          if (localObject2 != null)
          {
            int i = readDPSize((String)localObject2);
            ((LinearLayout)localObject1).setPadding(i, i, i, i);
          }
          if (findAttribute(localAttributeSet, "a:focusableInTouchMode") != null) {
            ((LinearLayout)localObject1).setFocusableInTouchMode(true);
          }
          if ((paramXmlPullParser instanceof TextView))
          {
            localObject1 = (TextView)paramXmlPullParser;
            localObject2 = findAttribute(localAttributeSet, "a:id");
            localObject3 = findAttribute(localAttributeSet, "a:text");
            localObject4 = findAttribute(localAttributeSet, "a:textSize");
            String str1 = findAttribute(localAttributeSet, "a:textColor");
            String str2 = findAttribute(localAttributeSet, "a:gravity");
            if (localObject3 != null) {
              ((TextView)localObject1).setText(((String)localObject3).replace("\\n", "\n"));
            }
            if (localObject4 != null) {
              ((TextView)localObject1).setTextSize(1, readFontSize((String)localObject4));
            }
            if (str1 != null) {
              ((TextView)localObject1).setTextColor(Color.parseColor(str1));
            }
            if (localObject2 != null) {
              ((TextView)localObject1).setText(paramString);
            }
            if (str2 == null) {
              break label790;
            }
            ((TextView)localObject1).setGravity(17);
            label523:
            ((TextView)localObject1).setLineSpacing(0.0F, 1.15F);
          }
          if ((paramXmlPullParser instanceof Button))
          {
            localObject2 = findAttribute(localAttributeSet, "a:offImage");
            paramString = findAttribute(localAttributeSet, "a:onImage");
            localObject1 = (Button)paramXmlPullParser;
            localObject3 = getClass().getResourceAsStream(getResourcePath() + (String)localObject2 + ".png");
            localObject2 = Drawable.createFromStream((InputStream)localObject3, (String)localObject2);
          }
        }
      }
      catch (IOException localIOException2)
      {
        try
        {
          ((InputStream)localObject3).close();
          localObject4 = getClass().getResourceAsStream(getResourcePath() + paramString + ".png");
          localObject3 = Drawable.createFromStream((InputStream)localObject4, paramString);
        }
        catch (IOException localIOException2)
        {
          try
          {
            for (;;)
            {
              ((InputStream)localObject4).close();
              label666:
              Object localObject4 = new StateListDrawable();
              ((StateListDrawable)localObject4).addState(new int[] { 16842919 }, (Drawable)localObject3);
              ((StateListDrawable)localObject4).addState(new int[0], (Drawable)localObject2);
              ((Button)localObject1).setBackgroundDrawable((Drawable)localObject4);
              if (paramString.equals("btn_con_sel")) {
                ((Button)localObject1).setOnClickListener(this.okYesNoBtn);
              }
              for (;;)
              {
                paramString = paramXmlPullParser;
                if (this.layoutStack.size() <= 0) {
                  break;
                }
                paramXmlPullParser.setLayoutParams(loadLayoutParams(localAttributeSet, (ViewGroup)this.layoutStack.peek()));
                return paramXmlPullParser;
                label761:
                if (!((String)localObject2).equals("vertical")) {
                  break label204;
                }
                ((LinearLayout)localObject1).setOrientation(1);
                break label204;
                ((LinearLayout)localObject1).setGravity(5);
                break label328;
                label790:
                ((TextView)localObject1).setGravity(19);
                break label523;
                ((Button)localObject1).setOnClickListener(this.cancelYesNoBtn);
              }
              localIOException1 = localIOException1;
            }
            localIOException2 = localIOException2;
          }
          catch (IOException localIOException3)
          {
            break label666;
          }
        }
      }
    }
  }
  
  private int dipToInt(float paramFloat)
  {
    if (paramFloat == 0.0F) {
      return 0;
    }
    return (int)TypedValue.applyDimension(1, paramFloat, this.context.getResources().getDisplayMetrics());
  }
  
  private String findAttribute(AttributeSet paramAttributeSet, String paramString)
  {
    int i = 0;
    for (;;)
    {
      if (i >= paramAttributeSet.getAttributeCount())
      {
        i = paramString.indexOf(":");
        if (i == -1) {
          break;
        }
        return paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", paramString.substring(i + 1));
      }
      if (paramAttributeSet.getAttributeName(i).equals(paramString)) {
        return paramAttributeSet.getAttributeValue(i);
      }
      i += 1;
    }
    return null;
  }
  
  private String getResourcePath()
  {
    return this.RES_VERT_FILE_PATH;
  }
  
  private String getResourceXMLPath()
  {
    if (CommonF.getCarrier(this.context) == 1) {
      return String.format("%s", new Object[] { this.XML_FILE_PATH });
    }
    return String.format("%s", new Object[] { this.XML_FILE_PATH_KTLG });
  }
  
  private View inflatIMEIAuthPopup(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    this.layoutStack.clear();
    this.ids.clear();
    Stack localStack = new Stack();
    int i = paramXmlPullParser.getEventType();
    Object localObject1 = null;
    if (i == 1) {
      return localObject1;
    }
    Object localObject2 = localObject1;
    switch (i)
    {
    default: 
      localObject2 = localObject1;
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      localObject1 = localObject2;
      break;
      localStack.clear();
      localObject2 = localObject1;
      continue;
      localStack.push(new StringBuffer());
      View localView = createViewIMEIPopup(paramXmlPullParser);
      if (localView == null) {
        break;
      }
      if (localObject1 == null) {
        localObject1 = localView;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (!(localView instanceof ViewGroup)) {
          break;
        }
        this.layoutStack.push((ViewGroup)localView);
        localObject2 = localObject1;
        break;
        ((ViewGroup)this.layoutStack.peek()).addView(localView);
      }
      ((StringBuffer)localStack.peek()).append(paramXmlPullParser.getText());
      localObject2 = localObject1;
      continue;
      localStack.pop();
      if (isLayout(paramXmlPullParser.getName())) {
        this.layoutStack.pop();
      }
      localObject2 = localObject1;
      if (isScrollView(paramXmlPullParser.getName()))
      {
        this.layoutStack.pop();
        localObject2 = localObject1;
      }
    }
  }
  
  private View inflate(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    this.layoutStack.clear();
    this.ids.clear();
    Stack localStack = new Stack();
    int i = paramXmlPullParser.getEventType();
    Object localObject1 = null;
    if (i == 1) {
      return localObject1;
    }
    Object localObject2 = localObject1;
    switch (i)
    {
    default: 
      localObject2 = localObject1;
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      localObject1 = localObject2;
      break;
      localStack.clear();
      localObject2 = localObject1;
      continue;
      localStack.push(new StringBuffer());
      View localView = createView(paramXmlPullParser);
      localObject2 = localObject1;
      if (localView != null)
      {
        if (localObject1 == null) {
          localObject1 = localView;
        }
        for (;;)
        {
          localObject2 = localObject1;
          if (!(localView instanceof ViewGroup)) {
            break;
          }
          this.layoutStack.push((ViewGroup)localView);
          localObject2 = localObject1;
          break;
          ((ViewGroup)this.layoutStack.peek()).addView(localView);
        }
        ((StringBuffer)localStack.peek()).append(paramXmlPullParser.getText());
        localObject2 = localObject1;
        continue;
        localStack.pop();
        if (isLayout(paramXmlPullParser.getName())) {
          this.layoutStack.pop();
        }
        localObject2 = localObject1;
        if (isScrollView(paramXmlPullParser.getName()))
        {
          this.layoutStack.pop();
          localObject2 = localObject1;
        }
      }
    }
  }
  
  private View inflateAuthPopup(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    this.layoutStack.clear();
    this.ids.clear();
    Stack localStack = new Stack();
    int i = paramXmlPullParser.getEventType();
    Object localObject1 = null;
    if (i == 1) {
      return localObject1;
    }
    Object localObject2 = localObject1;
    switch (i)
    {
    default: 
      localObject2 = localObject1;
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      localObject1 = localObject2;
      break;
      localStack.clear();
      localObject2 = localObject1;
      continue;
      localStack.push(new StringBuffer());
      View localView = createViewAuthPopup(paramXmlPullParser);
      if (localView == null) {
        break;
      }
      if (localObject1 == null) {
        localObject1 = localView;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (!(localView instanceof ViewGroup)) {
          break;
        }
        this.layoutStack.push((ViewGroup)localView);
        localObject2 = localObject1;
        break;
        ((ViewGroup)this.layoutStack.peek()).addView(localView);
      }
      ((StringBuffer)localStack.peek()).append(paramXmlPullParser.getText());
      localObject2 = localObject1;
      continue;
      localStack.pop();
      if (isLayout(paramXmlPullParser.getName())) {
        this.layoutStack.pop();
      }
      localObject2 = localObject1;
      if (isScrollView(paramXmlPullParser.getName()))
      {
        this.layoutStack.pop();
        localObject2 = localObject1;
      }
    }
  }
  
  private View inflateAutoPurchaseFormPopup(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    this.layoutStack.clear();
    this.ids.clear();
    Stack localStack = new Stack();
    int i = paramXmlPullParser.getEventType();
    Object localObject1 = null;
    if (i == 1) {
      return localObject1;
    }
    Object localObject2 = localObject1;
    switch (i)
    {
    default: 
      localObject2 = localObject1;
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      localObject1 = localObject2;
      break;
      localStack.clear();
      localObject2 = localObject1;
      continue;
      localStack.push(new StringBuffer());
      View localView = createViewAutoPurchaseFormPopup(paramXmlPullParser);
      if (localView == null) {
        break;
      }
      if (localObject1 == null) {
        localObject1 = localView;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (!(localView instanceof ViewGroup)) {
          break;
        }
        this.layoutStack.push((ViewGroup)localView);
        localObject2 = localObject1;
        break;
        ((ViewGroup)this.layoutStack.peek()).addView(localView);
      }
      ((StringBuffer)localStack.peek()).append(paramXmlPullParser.getText());
      localObject2 = localObject1;
      continue;
      localStack.pop();
      if (isLayout(paramXmlPullParser.getName())) {
        this.layoutStack.pop();
      }
      localObject2 = localObject1;
      if (isScrollView(paramXmlPullParser.getName()))
      {
        this.layoutStack.pop();
        localObject2 = localObject1;
      }
    }
  }
  
  private View inflateImagePopup(XmlPullParser paramXmlPullParser, String paramString)
    throws XmlPullParserException, IOException
  {
    this.layoutStack.clear();
    this.ids.clear();
    Stack localStack = new Stack();
    int i = paramXmlPullParser.getEventType();
    Object localObject1 = null;
    if (i == 1) {
      return localObject1;
    }
    Object localObject2 = localObject1;
    switch (i)
    {
    default: 
      localObject2 = localObject1;
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      localObject1 = localObject2;
      break;
      localStack.clear();
      localObject2 = localObject1;
      continue;
      localStack.push(new StringBuffer());
      View localView = createViewImagePopup(paramXmlPullParser, paramString);
      if (localView == null) {
        break;
      }
      if (localObject1 == null) {
        localObject1 = localView;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (!(localView instanceof ViewGroup)) {
          break;
        }
        this.layoutStack.push((ViewGroup)localView);
        localObject2 = localObject1;
        break;
        ((ViewGroup)this.layoutStack.peek()).addView(localView);
      }
      ((StringBuffer)localStack.peek()).append(paramXmlPullParser.getText());
      localObject2 = localObject1;
      continue;
      localStack.pop();
      localObject2 = localObject1;
      if (isLayout(paramXmlPullParser.getName()))
      {
        this.layoutStack.pop();
        localObject2 = localObject1;
      }
    }
  }
  
  private View inflateJoinPopup(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    this.layoutStack.clear();
    this.ids.clear();
    Stack localStack = new Stack();
    int i = paramXmlPullParser.getEventType();
    Object localObject1 = null;
    if (i == 1) {
      return localObject1;
    }
    Object localObject2 = localObject1;
    switch (i)
    {
    default: 
      localObject2 = localObject1;
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      localObject1 = localObject2;
      break;
      localStack.clear();
      localObject2 = localObject1;
      continue;
      localStack.push(new StringBuffer());
      View localView = createViewJoinPopup(paramXmlPullParser);
      if (localView == null) {
        break;
      }
      if (localObject1 == null) {
        localObject1 = localView;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (!(localView instanceof ViewGroup)) {
          break;
        }
        this.layoutStack.push((ViewGroup)localView);
        localObject2 = localObject1;
        break;
        ((ViewGroup)this.layoutStack.peek()).addView(localView);
      }
      ((StringBuffer)localStack.peek()).append(paramXmlPullParser.getText());
      localObject2 = localObject1;
      continue;
      localStack.pop();
      if (isLayout(paramXmlPullParser.getName())) {
        this.layoutStack.pop();
      }
      localObject2 = localObject1;
      if (isScrollView(paramXmlPullParser.getName()))
      {
        this.layoutStack.pop();
        localObject2 = localObject1;
      }
    }
  }
  
  private View inflateLguSmsAuthPopup(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    this.layoutStack.clear();
    this.ids.clear();
    Stack localStack = new Stack();
    int i = paramXmlPullParser.getEventType();
    Object localObject1 = null;
    if (i == 1) {
      return localObject1;
    }
    Object localObject2 = localObject1;
    switch (i)
    {
    default: 
      localObject2 = localObject1;
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      localObject1 = localObject2;
      break;
      localStack.clear();
      localObject2 = localObject1;
      continue;
      localStack.push(new StringBuffer());
      View localView = createViewLguSmsAuthPopup(paramXmlPullParser);
      if (localView == null) {
        break;
      }
      if (localObject1 == null) {
        localObject1 = localView;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (!(localView instanceof ViewGroup)) {
          break;
        }
        this.layoutStack.push((ViewGroup)localView);
        localObject2 = localObject1;
        break;
        ((ViewGroup)this.layoutStack.peek()).addView(localView);
      }
      ((StringBuffer)localStack.peek()).append(paramXmlPullParser.getText());
      localObject2 = localObject1;
      continue;
      localStack.pop();
      if (isLayout(paramXmlPullParser.getName())) {
        this.layoutStack.pop();
      }
      localObject2 = localObject1;
      if (isScrollView(paramXmlPullParser.getName()))
      {
        this.layoutStack.pop();
        localObject2 = localObject1;
      }
    }
  }
  
  private View inflateOtpPopup(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    this.layoutStack.clear();
    this.ids.clear();
    Stack localStack = new Stack();
    int i = paramXmlPullParser.getEventType();
    Object localObject1 = null;
    if (i == 1) {
      return localObject1;
    }
    Object localObject2 = localObject1;
    switch (i)
    {
    default: 
      localObject2 = localObject1;
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      localObject1 = localObject2;
      break;
      localStack.clear();
      localObject2 = localObject1;
      continue;
      localStack.push(new StringBuffer());
      View localView = createViewOtpPopup(paramXmlPullParser);
      if (localView == null) {
        break;
      }
      if (localObject1 == null) {
        localObject1 = localView;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (!(localView instanceof ViewGroup)) {
          break;
        }
        this.layoutStack.push((ViewGroup)localView);
        localObject2 = localObject1;
        break;
        ((ViewGroup)this.layoutStack.peek()).addView(localView);
      }
      ((StringBuffer)localStack.peek()).append(paramXmlPullParser.getText());
      localObject2 = localObject1;
      continue;
      localStack.pop();
      if (isLayout(paramXmlPullParser.getName())) {
        this.layoutStack.pop();
      }
      localObject2 = localObject1;
      if (isScrollView(paramXmlPullParser.getName()))
      {
        this.layoutStack.pop();
        localObject2 = localObject1;
      }
    }
  }
  
  private View inflateYesNoPopup(XmlPullParser paramXmlPullParser, String paramString)
    throws XmlPullParserException, IOException
  {
    this.layoutStack.clear();
    this.ids.clear();
    Stack localStack = new Stack();
    int i = paramXmlPullParser.getEventType();
    Object localObject1 = null;
    if (i == 1) {
      return localObject1;
    }
    Object localObject2 = localObject1;
    switch (i)
    {
    default: 
      localObject2 = localObject1;
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      localObject1 = localObject2;
      break;
      localStack.clear();
      localObject2 = localObject1;
      continue;
      localStack.push(new StringBuffer());
      View localView = createViewYesNoPopup(paramXmlPullParser, paramString);
      if (localView == null) {
        break;
      }
      if (localObject1 == null) {
        localObject1 = localView;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (!(localView instanceof ViewGroup)) {
          break;
        }
        this.layoutStack.push((ViewGroup)localView);
        localObject2 = localObject1;
        break;
        ((ViewGroup)this.layoutStack.peek()).addView(localView);
      }
      ((StringBuffer)localStack.peek()).append(paramXmlPullParser.getText());
      localObject2 = localObject1;
      continue;
      localStack.pop();
      if (isLayout(paramXmlPullParser.getName())) {
        this.layoutStack.pop();
      }
      localObject2 = localObject1;
      if (isScrollView(paramXmlPullParser.getName()))
      {
        this.layoutStack.pop();
        localObject2 = localObject1;
      }
    }
  }
  
  private boolean isLayout(String paramString)
  {
    return paramString.endsWith("Layout");
  }
  
  private boolean isScrollView(String paramString)
  {
    return paramString.endsWith("ScrollView");
  }
  
  private ViewGroup.LayoutParams loadLayoutParams(AttributeSet paramAttributeSet, ViewGroup paramViewGroup)
  {
    Object localObject = null;
    String str1 = findAttribute(paramAttributeSet, "a:layout_width");
    String str2 = findAttribute(paramAttributeSet, "a:layout_height");
    String str3 = findAttribute(paramAttributeSet, "a:xlayout_width");
    String str4 = findAttribute(paramAttributeSet, "a:xlayout_height");
    int j;
    int i;
    if ((Build.MODEL.endsWith("LT15i")) && (this.xperiacheckbox))
    {
      j = readSize(str3);
      i = readSize(str4);
      this.xperiacheckbox = false;
      if ((paramViewGroup instanceof LinearLayout)) {
        localObject = new LinearLayout.LayoutParams(j, i);
      }
      if ((paramViewGroup instanceof ScrollView)) {
        localObject = new LinearLayout.LayoutParams(j, i);
      }
      paramViewGroup = (ViewGroup)localObject;
      if ((localObject instanceof LinearLayout.LayoutParams))
      {
        paramViewGroup = (LinearLayout.LayoutParams)localObject;
        localObject = findAttribute(paramAttributeSet, "a:layout_gravity");
        if (localObject != null)
        {
          if (!((String)localObject).equals("center")) {
            break label310;
          }
          paramViewGroup.gravity = 17;
        }
      }
    }
    for (;;)
    {
      localObject = findAttribute(paramAttributeSet, "a:layout_weight");
      if (localObject != null) {
        paramViewGroup.weight = Float.parseFloat((String)localObject);
      }
      localObject = findAttribute(paramAttributeSet, "a:layout_marginTop");
      str1 = findAttribute(paramAttributeSet, "a:layout_marginLeft");
      str2 = findAttribute(paramAttributeSet, "a:layout_marginRight");
      paramAttributeSet = findAttribute(paramAttributeSet, "a:layout_marginBottom");
      if (localObject != null) {
        paramViewGroup.topMargin = readDPSize((String)localObject);
      }
      if (str1 != null) {
        paramViewGroup.leftMargin = readDPSize(str1);
      }
      if (paramAttributeSet != null) {
        paramViewGroup.bottomMargin = readSize(paramAttributeSet);
      }
      if (str2 != null) {
        paramViewGroup.rightMargin = readDPSize(str2);
      }
      return paramViewGroup;
      j = readSize(str1);
      i = readSize(str2);
      break;
      label310:
      if (((String)localObject).equals("left")) {
        paramViewGroup.gravity = 3;
      } else {
        paramViewGroup.gravity = 5;
      }
    }
  }
  
  private int lookupId(String paramString)
  {
    int j = -1;
    int k = paramString.indexOf("/");
    int i = j;
    if (k != -1)
    {
      String str = paramString.substring(k + 1);
      Integer localInteger2 = (Integer)this.ids.get(str);
      Integer localInteger1 = localInteger2;
      if (localInteger2 == null)
      {
        localInteger1 = localInteger2;
        if (paramString.startsWith("@+"))
        {
          i = this.idg;
          this.idg = (i + 1);
          localInteger1 = new Integer(i);
          this.ids.put(str, localInteger1);
        }
      }
      i = j;
      if (localInteger1 != null) {
        i = localInteger1.intValue();
      }
    }
    return i;
  }
  
  private int readDPSize(String paramString)
  {
    try
    {
      float f = Float.parseFloat(paramString.substring(0, paramString.length() - 2));
      if (paramString.endsWith("dp")) {
        return dipToInt(f);
      }
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return -1;
  }
  
  private int readFontSize(String paramString)
  {
    try
    {
      float f = Float.parseFloat(paramString.substring(0, paramString.length() - 2));
      return (int)(float)(f / 1.5D);
    }
    catch (NumberFormatException paramString) {}
    return -1;
  }
  
  private int readSize(String paramString)
  {
    if ("wrap_content".equals(paramString)) {}
    do
    {
      return -2;
      if ("fill_parent".equals(paramString)) {
        return -1;
      }
    } while (paramString == null);
    try
    {
      float f = Float.parseFloat(paramString.substring(0, paramString.length() - 2));
      if (paramString.endsWith("dp")) {
        return dipToInt(f);
      }
      if (paramString.endsWith("pt")) {
        return (int)((float)(f / 1.5D) * 1.0F);
      }
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return -1;
  }
  
  public static void setOTPNumber(String paramString)
  {
    if ((paramString != null) && (mLguSmsAuthTv != null))
    {
      mOTPNumber = paramString;
      mLguSmsAuthTv.setTextColor(Color.parseColor("#FF6F00"));
      mLguSmsAuthTv.setTextSize(1, 30.0F);
      mLguSmsAuthTv.setText(paramString);
      mLguSmsAuthTv.setPadding(0, 0, 0, 0);
      paramString = new InputFilter.LengthFilter(6);
      mLguSmsAuthTv.setFilters(new InputFilter[] { paramString });
      mLguSmsAuthOkBtn.setBackgroundDrawable(mSmsAuthDrawables);
      mLguSmsAuthOkBtn.setOnClickListener(okLguSmsAuthBtn);
    }
  }
  
  public void ReleaseResource()
  {
    if (this.layoutStack != null)
    {
      this.layoutStack.clear();
      this.layoutStack = null;
    }
    if (this.ids != null)
    {
      this.ids.clear();
      this.ids = null;
    }
    this.context = null;
    this.onResultCallback = null;
  }
  
  public View Start(int paramInt, Object paramObject)
  {
    this.orientation = paramInt;
    CommonF.LOGGER.e("ParserXML", "# purchase Start !! GUI-rotate =" + paramInt);
    this.mItemPurchaseItemInfo = ((PurchaseItem)paramObject);
    if (this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
      if ((this.orientation == 0) || (this.orientation == 2)) {
        paramObject = getResourceXMLPath() + "/" + this.XML_FILE_NAME + "W_Auto.xml";
      }
    }
    for (;;)
    {
      return Start(paramObject);
      paramObject = getResourceXMLPath() + "/" + this.XML_FILE_NAME + "H_Auto.xml";
      continue;
      if ((this.orientation == 0) || (this.orientation == 2)) {
        paramObject = getResourceXMLPath() + "/" + this.XML_FILE_NAME + "_w.xml";
      } else {
        paramObject = getResourceXMLPath() + "/" + this.XML_FILE_NAME + "_h.xml";
      }
    }
  }
  
  public View Start(String paramString, Object paramObject, int paramInt)
  {
    this.mPopupClickListener = ((View.OnClickListener)paramObject);
    this.orientation = paramInt;
    CommonF.LOGGER.e("ParserXML", "# Dlg Start !! GUI-rotate =" + paramInt);
    if ((this.orientation == 0) || (this.orientation == 2)) {}
    for (paramString = paramString + "w.xml";; paramString = paramString + "h.xml") {
      return Start(paramString);
    }
  }
  
  public View Start(String paramString1, String paramString2, Object paramObject)
  {
    this.mInfoMessage = paramString2;
    this.mPopupClickListener = ((View.OnClickListener)paramObject);
    return Start(paramString1);
  }
  
  public View Start(String paramString1, String paramString2, Object paramObject, int paramInt)
  {
    this.mInfoMessage = paramString2;
    this.mPopupClickListener = ((View.OnClickListener)paramObject);
    this.orientation = paramInt;
    CommonF.LOGGER.e("ParserXML", "# Dlg Start !! GUI-rotate =" + paramInt);
    if ((this.orientation == 0) || (this.orientation == 2)) {}
    for (paramString1 = paramString1 + "w.xml";; paramString1 = paramString1 + "h.xml") {
      return Start(paramString1);
    }
  }
  
  public View Start(String paramString1, String paramString2, String paramString3, Object paramObject, int paramInt)
  {
    this.mFormName = paramString2;
    this.mInfoMessage = paramString3;
    this.mPopupClickListener = ((View.OnClickListener)paramObject);
    this.orientation = paramInt;
    CommonF.LOGGER.e("ParserXML", "# AutoPurchaseForm용 Start !! GUI-rotate =" + paramInt);
    if ((this.orientation == 0) || (this.orientation == 2)) {}
    for (paramString1 = paramString1 + "W.xml";; paramString1 = paramString1 + "H.xml") {
      return Start(paramString1);
    }
  }
  
  public View StartIMEIAuth(String paramString, Object paramObject, int paramInt)
  {
    this.mPopupClickListener = ((View.OnClickListener)paramObject);
    this.orientation = paramInt;
    CommonF.LOGGER.e("ParserXML", "# IMEIAuthDialog Start !! GUI-rotate =" + paramInt);
    if ((this.orientation == 0) || (this.orientation == 2)) {}
    for (paramString = paramString + "w.xml";; paramString = paramString + "h.xml") {
      return Start(paramString);
    }
  }
  
  public void UseTCash(Boolean paramBoolean)
  {
    if (paramBoolean.booleanValue())
    {
      int i = this.mItemPurchaseItemInfo.itemPrice - this.mItemPurchaseItemInfo.itemTCash;
      if (i > 0)
      {
        paramBoolean = new DecimalFormat("###,###,###").format(i);
        this.m_AccountPriceTextView.setText(paramBoolean + CommonString.getString(CommonString.Index.WON));
        return;
      }
      paramBoolean = new DecimalFormat("###,###,###").format(this.mItemPurchaseItemInfo.itemPrice);
      this.m_AccountPriceTextView.setText(paramBoolean + CommonString.getString(CommonString.Index.WON) + "-" + paramBoolean + "P=0" + CommonString.getString(CommonString.Index.WON));
      return;
    }
    paramBoolean = new DecimalFormat("###,###,###").format(this.mItemPurchaseItemInfo.itemPrice);
    this.m_AccountPriceTextView.setText(paramBoolean + CommonString.getString(CommonString.Index.WON));
  }
  
  public void add_payments_amount(String paramString)
  {
    CommonF.LOGGER.i("ParserXML", "add_payments_amount: " + paramString);
    int j;
    int i;
    if (paramString.equals("OCB"))
    {
      j = Integer.parseInt(IAPLib.getOCBPoint());
      i = SingletonCounter.getInstance().getmPostPay() - (j - j % 10);
      if (i > 0)
      {
        SingletonCounter.getInstance().setmPostPay(i);
        SingletonCounter.getInstance().setmOCBUse(j);
        SingletonCounter.getInstance().setmOCBUse(SingletonCounter.getInstance().getmOCBUse() - SingletonCounter.getInstance().getmOCBUse() % 10);
        paramString = SingletonCounter.getInstance();
        if (SingletonCounter.getInstance().getmOCBUse() <= 0)
        {
          i = 0;
          paramString.setmOCBUse(i);
          this.mOCBText.setText(j - SingletonCounter.getInstance().getmOCBUse() + " P");
          this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPostPay()) + CommonString.getString(CommonString.Index.WON));
          label185:
          SingletonCounter.getInstance().setmPaymentTotal(SingletonCounter.getInstance().getmOCBUse() + SingletonCounter.getInstance().getmDotoriUse() + SingletonCounter.getInstance().getmCultureUse() + SingletonCounter.getInstance().getmTCashUse());
          this.m_discountTextView.setText(SingletonCounter.getInstance().getmPaymentTotal() + CommonString.getString(CommonString.Index.WON));
          if ((SingletonCounter.getInstance().getmPaymentTotal() != SingletonCounter.getInstance().getmTotalBalance()) || (!IAPLib.getLimitExcess())) {
            break label2512;
          }
          this.mOkBtn.setBackgroundDrawable(this.mOkDrawbles);
          this.mFlag = false;
          this.mOkBtn.setOnClickListener(this.okBtn);
        }
      }
    }
    label741:
    while ((SingletonCounter.getInstance().getmPaymentTotal() >= SingletonCounter.getInstance().getmTotalBalance()) || (!IAPLib.getLimitExcess()))
    {
      return;
      i = SingletonCounter.getInstance().getmOCBUse();
      break;
      SingletonCounter.getInstance().setmOCBUse(SingletonCounter.getInstance().getmPostPay());
      SingletonCounter.getInstance().setmOCBUse(SingletonCounter.getInstance().getmOCBUse() - SingletonCounter.getInstance().getmOCBUse() % 10);
      paramString = SingletonCounter.getInstance();
      if (SingletonCounter.getInstance().getmOCBUse() <= 0) {}
      for (i = 0;; i = SingletonCounter.getInstance().getmOCBUse())
      {
        paramString.setmOCBUse(i);
        CommonF.LOGGER.i("ParserXML", "OCB 사용액: " + SingletonCounter.getInstance().getmOCBUse() + " P");
        SingletonCounter.getInstance().setmPostPay(0);
        this.m_AccountPriceTextView.setText(SingletonCounter.getInstance().getmOCBUse() % 10 + CommonString.getString(CommonString.Index.WON));
        this.mOCBText.setText(j - SingletonCounter.getInstance().getmOCBUse() + " P");
        if (SingletonCounter.getInstance().getmDotoriUse() == 0)
        {
          this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDotoriDrawables);
          this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
          this.mDotoriBtn.setClickable(false);
          this.mDotoriBtn.setPadding(0, 0, 0, 0);
        }
        if (SingletonCounter.getInstance().getmCultureUse() == 0)
        {
          this.mCultureBtn.setBackgroundDrawable(this.mInactiveCultureDrawables);
          this.mCultureBtn.setTextColor(Color.parseColor("#8B8B8B"));
          this.mCultureBtn.setClickable(false);
          this.mCultureBtn.setPadding(0, 0, 0, 0);
        }
        if (SingletonCounter.getInstance().getmTCashUse() != 0) {
          break;
        }
        this.mTcashBtn.setBackgroundDrawable(this.mInactiveTcashDrawables);
        this.mTcashBtn.setTextColor(Color.parseColor("#8B8B8B"));
        this.mTcashBtn.setClickable(false);
        this.mTcashBtn.setPadding(0, 0, 0, 0);
        break;
      }
      if (paramString.equals("DOTORI"))
      {
        j = SingletonCounter.getInstance().getmPostPay() - (this.mItemPurchaseItemInfo.dotoriBalance - this.mItemPurchaseItemInfo.dotoriBalance % 100);
        if (j > 0)
        {
          i = 0;
          if ((SingletonCounter.getInstance().getmPostPay() > 100000) && (this.mItemPurchaseItemInfo.dotoriBalance > 100000))
          {
            SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() - 100000);
            SingletonCounter.getInstance().setmDotoriUse(100000);
            i = 1;
            SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmDotoriUse() - SingletonCounter.getInstance().getmDotoriUse() % 100);
            paramString = SingletonCounter.getInstance();
            if (SingletonCounter.getInstance().getmDotoriUse() > 0) {
              break label933;
            }
            j = 0;
            paramString.setmDotoriUse(j);
            if (i == 0) {
              break label943;
            }
            this.mDotoriText.setText((this.mItemPurchaseItemInfo.dotoriBalance - SingletonCounter.getInstance().getmDotoriUse()) / 100 + CommonString.getString(CommonString.Index.DOTORI_COUNT));
          }
          for (;;)
          {
            this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPostPay()) + CommonString.getString(CommonString.Index.WON));
            CommonF.LOGGER.i("ParserXML", "도토리 사용액: " + SingletonCounter.getInstance().getmDotoriUse() + CommonString.getString(CommonString.Index.WON));
            break;
            SingletonCounter.getInstance().setmPostPay(j);
            SingletonCounter.getInstance().setmDotoriUse(this.mItemPurchaseItemInfo.dotoriBalance);
            break label741;
            j = SingletonCounter.getInstance().getmDotoriUse();
            break label778;
            this.mDotoriText.setText("0" + CommonString.getString(CommonString.Index.DOTORI_COUNT));
          }
        }
        if ((SingletonCounter.getInstance().getmPostPay() > 100000) && (this.mItemPurchaseItemInfo.dotoriBalance > 100000))
        {
          SingletonCounter.getInstance().setmDotoriUse(100000);
          SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmDotoriUse() - SingletonCounter.getInstance().getmDotoriUse() % 100);
          paramString = SingletonCounter.getInstance();
          if (SingletonCounter.getInstance().getmDotoriUse() <= 0) {}
          for (i = 0;; i = SingletonCounter.getInstance().getmDotoriUse())
          {
            paramString.setmDotoriUse(i);
            CommonF.LOGGER.i("ParserXML", "도토리 사용액: " + SingletonCounter.getInstance().getmDotoriUse() + CommonString.getString(CommonString.Index.WON));
            SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmDotoriUse() / 100 * 100);
            this.m_AccountPriceTextView.setText(SingletonCounter.getInstance().getmPostPay() - SingletonCounter.getInstance().getmDotoriUse() + CommonString.getString(CommonString.Index.WON));
            SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() - SingletonCounter.getInstance().getmDotoriUse());
            i = (this.mItemPurchaseItemInfo.dotoriBalance - SingletonCounter.getInstance().getmDotoriUse()) / 100;
            this.mDotoriText.setText(i + CommonString.getString(CommonString.Index.DOTORI_COUNT));
            if (SingletonCounter.getInstance().getmPostPay() >= 10) {
              break;
            }
            if (SingletonCounter.getInstance().getmOCBUse() == 0)
            {
              this.mOCBBtn.setBackgroundDrawable(this.mInactiveDrawables);
              this.mOCBBtn.setTextColor(Color.parseColor("#8B8B8B"));
              this.mOCBBtn.setClickable(false);
              this.mOCBBtn.setPadding(0, 0, 0, 0);
            }
            if (SingletonCounter.getInstance().getmCultureUse() == 0)
            {
              this.mCultureBtn.setBackgroundDrawable(this.mInactiveCultureDrawables);
              this.mCultureBtn.setTextColor(Color.parseColor("#8B8B8B"));
              this.mCultureBtn.setClickable(false);
              this.mCultureBtn.setPadding(0, 0, 0, 0);
            }
            if (SingletonCounter.getInstance().getmTCashUse() != 0) {
              break;
            }
            this.mTcashBtn.setBackgroundDrawable(this.mInactiveTcashDrawables);
            this.mTcashBtn.setTextColor(Color.parseColor("#8B8B8B"));
            this.mTcashBtn.setClickable(false);
            this.mTcashBtn.setPadding(0, 0, 0, 0);
            break;
          }
        }
        SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmPostPay());
        SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmDotoriUse() - SingletonCounter.getInstance().getmDotoriUse() % 100);
        paramString = SingletonCounter.getInstance();
        if (SingletonCounter.getInstance().getmDotoriUse() <= 0) {}
        for (i = 0;; i = SingletonCounter.getInstance().getmDotoriUse())
        {
          paramString.setmDotoriUse(i);
          break;
        }
      }
      if (paramString.equals("CULTURE"))
      {
        j = Integer.parseInt(IAPLib.getCultureLandCashPoint());
        i = SingletonCounter.getInstance().getmPostPay() - (j - j % 10);
        if (i > 0)
        {
          SingletonCounter.getInstance().setmPostPay(i);
          SingletonCounter.getInstance().setmCultureUse(j);
          SingletonCounter.getInstance().setmCultureUse(SingletonCounter.getInstance().getmCultureUse() - SingletonCounter.getInstance().getmCultureUse() % 10);
          paramString = SingletonCounter.getInstance();
          if (SingletonCounter.getInstance().getmCultureUse() <= 0) {}
          for (i = 0;; i = SingletonCounter.getInstance().getmCultureUse())
          {
            paramString.setmCultureUse(i);
            this.mCultureText.setText(j - SingletonCounter.getInstance().getmCultureUse() + CommonString.getString(CommonString.Index.WON));
            this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPostPay()) + CommonString.getString(CommonString.Index.WON));
            break;
          }
        }
        SingletonCounter.getInstance().setmCultureUse(SingletonCounter.getInstance().getmPostPay());
        SingletonCounter.getInstance().setmCultureUse(SingletonCounter.getInstance().getmCultureUse() - SingletonCounter.getInstance().getmCultureUse() % 10);
        paramString = SingletonCounter.getInstance();
        if (SingletonCounter.getInstance().getmCultureUse() <= 0) {}
        for (i = 0;; i = SingletonCounter.getInstance().getmCultureUse())
        {
          paramString.setmCultureUse(i);
          CommonF.LOGGER.i("ParserXML", "CULTURE 사용액: " + SingletonCounter.getInstance().getmCultureUse() + " P");
          SingletonCounter.getInstance().setmPostPay(0);
          this.m_AccountPriceTextView.setText(SingletonCounter.getInstance().getmCultureUse() % 10 + CommonString.getString(CommonString.Index.WON));
          this.mCultureText.setText(j - SingletonCounter.getInstance().getmCultureUse() + CommonString.getString(CommonString.Index.WON));
          if (SingletonCounter.getInstance().getmOCBUse() == 0)
          {
            this.mOCBBtn.setBackgroundDrawable(this.mInactiveDrawables);
            this.mOCBBtn.setTextColor(Color.parseColor("#8B8B8B"));
            this.mOCBBtn.setClickable(false);
            this.mOCBBtn.setPadding(0, 0, 0, 0);
          }
          if (SingletonCounter.getInstance().getmDotoriUse() == 0)
          {
            this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDotoriDrawables);
            this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
            this.mDotoriBtn.setClickable(false);
            this.mDotoriBtn.setPadding(0, 0, 0, 0);
          }
          if (SingletonCounter.getInstance().getmTCashUse() != 0) {
            break;
          }
          this.mTcashBtn.setBackgroundDrawable(this.mInactiveTcashDrawables);
          this.mTcashBtn.setTextColor(Color.parseColor("#8B8B8B"));
          this.mTcashBtn.setClickable(false);
          this.mTcashBtn.setPadding(0, 0, 0, 0);
          break;
        }
      }
      if (!paramString.equals("TCASH")) {
        break label185;
      }
      i = SingletonCounter.getInstance().getmPostPay() - (this.mItemPurchaseItemInfo.itemTCash - this.mItemPurchaseItemInfo.itemTCash % 10);
      if (i > 0)
      {
        SingletonCounter.getInstance().setmPostPay(i);
        SingletonCounter.getInstance().setmTCashUse(this.mItemPurchaseItemInfo.itemTCash);
        SingletonCounter.getInstance().setmTCashUse(SingletonCounter.getInstance().getmTCashUse() - SingletonCounter.getInstance().getmTCashUse() % 10);
        paramString = SingletonCounter.getInstance();
        if (SingletonCounter.getInstance().getmTCashUse() <= 0) {}
        for (i = 0;; i = SingletonCounter.getInstance().getmTCashUse())
        {
          paramString.setmTCashUse(i);
          this.mTcashText.setText(this.mItemPurchaseItemInfo.itemTCash - SingletonCounter.getInstance().getmTCashUse() + " P");
          this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPostPay()) + CommonString.getString(CommonString.Index.WON));
          break;
        }
      }
      SingletonCounter.getInstance().setmTCashUse(SingletonCounter.getInstance().getmPostPay());
      SingletonCounter.getInstance().setmTCashUse(SingletonCounter.getInstance().getmTCashUse() - SingletonCounter.getInstance().getmTCashUse() % 10);
      paramString = SingletonCounter.getInstance();
      if (SingletonCounter.getInstance().getmTCashUse() <= 0) {}
      for (i = 0;; i = SingletonCounter.getInstance().getmTCashUse())
      {
        paramString.setmTCashUse(i);
        CommonF.LOGGER.i("ParserXML", "티캐쉬 사용액: " + SingletonCounter.getInstance().getmTCashUse() + "P");
        SingletonCounter.getInstance().setmPostPay(0);
        this.m_AccountPriceTextView.setText(SingletonCounter.getInstance().getmTCashUse() % 10 + CommonString.getString(CommonString.Index.WON));
        this.mTcashText.setText(this.mItemPurchaseItemInfo.itemTCash - SingletonCounter.getInstance().getmTCashUse() + " P");
        if (SingletonCounter.getInstance().getmOCBUse() == 0)
        {
          this.mOCBBtn.setBackgroundDrawable(this.mInactiveDrawables);
          this.mOCBBtn.setTextColor(Color.parseColor("#8B8B8B"));
          this.mOCBBtn.setClickable(false);
          this.mOCBBtn.setPadding(0, 0, 0, 0);
        }
        if (SingletonCounter.getInstance().getmDotoriUse() == 0)
        {
          this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDotoriDrawables);
          this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
          this.mDotoriBtn.setClickable(false);
          this.mDotoriBtn.setPadding(0, 0, 0, 0);
        }
        if (SingletonCounter.getInstance().getmCultureUse() != 0) {
          break;
        }
        this.mCultureBtn.setBackgroundDrawable(this.mInactiveCultureDrawables);
        this.mCultureBtn.setTextColor(Color.parseColor("#8B8B8B"));
        this.mCultureBtn.setClickable(false);
        this.mCultureBtn.setPadding(0, 0, 0, 0);
        break;
      }
    }
    label778:
    label933:
    label943:
    label2512:
    this.mOkBtn.setBackgroundDrawable(this.mLiminExcessDrawables);
    this.mFlag = true;
    this.mOkBtn.setOnClickListener(null);
  }
  
  public void del_payments_amount(String paramString)
  {
    CommonF.LOGGER.i("ParserXML", "del_payments_amount: " + paramString);
    if (paramString.equals("OCB"))
    {
      SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() + SingletonCounter.getInstance().getmOCBUse());
      SingletonCounter.getInstance().setmOCBUse(0);
      this.m_AccountPriceTextView.setText(SingletonCounter.getInstance().getmPostPay() + CommonString.getString(CommonString.Index.WON));
      this.mOCBText.setText(IAPLib.getOCBPoint() + " P");
      if (this.mItemPurchaseItemInfo.dotoriBalance != 0)
      {
        this.mDotoriBtn.setBackgroundDrawable(this.mActiveDotoriDrawables);
        this.mDotoriBtn.setTextColor(Color.parseColor("#CFCFCF"));
        this.mDotoriBtn.setClickable(true);
        this.mDotoriBtn.setPadding(0, 0, 0, 0);
      }
      if (!IAPLib.getCultureLandCashPoint().equals("0"))
      {
        this.mCultureBtn.setBackgroundDrawable(this.mActiveCultureDrawables);
        this.mCultureBtn.setTextColor(Color.parseColor("#CFCFCF"));
        this.mCultureBtn.setClickable(true);
        this.mCultureBtn.setPadding(0, 0, 0, 0);
      }
      if (this.mItemPurchaseItemInfo.itemTCash > 0)
      {
        this.mTcashBtn.setBackgroundDrawable(this.mActiveTcashDrawables);
        this.mTcashBtn.setTextColor(Color.parseColor("#CFCFCF"));
        this.mTcashBtn.setClickable(true);
        this.mTcashBtn.setPadding(0, 0, 0, 0);
      }
      SingletonCounter.getInstance().setmPaymentTotal(SingletonCounter.getInstance().getmOCBUse() + SingletonCounter.getInstance().getmDotoriUse() + SingletonCounter.getInstance().getmCultureUse() + SingletonCounter.getInstance().getmTCashUse());
      this.m_discountTextView.setText(SingletonCounter.getInstance().getmPaymentTotal() + CommonString.getString(CommonString.Index.WON));
      if ((SingletonCounter.getInstance().getmPaymentTotal() != SingletonCounter.getInstance().getmTotalBalance()) || (!IAPLib.getLimitExcess())) {
        break label1179;
      }
      this.mOkBtn.setBackgroundDrawable(this.mOkDrawbles);
      this.mFlag = false;
      this.mOkBtn.setOnClickListener(this.okBtn);
    }
    label1179:
    while ((SingletonCounter.getInstance().getmPaymentTotal() >= SingletonCounter.getInstance().getmTotalBalance()) || (!IAPLib.getLimitExcess()))
    {
      return;
      if (paramString.equals("DOTORI"))
      {
        SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() + SingletonCounter.getInstance().getmDotoriUse());
        SingletonCounter.getInstance().setmDotoriUse(0);
        this.m_AccountPriceTextView.setText(SingletonCounter.getInstance().getmPostPay() + CommonString.getString(CommonString.Index.WON));
        int i = this.mItemPurchaseItemInfo.dotoriBalance / 100;
        this.mDotoriText.setText(i + CommonString.getString(CommonString.Index.DOTORI_COUNT));
        this.mOCBBtn.setBackgroundDrawable(this.mActiveDrawables);
        this.mOCBBtn.setTextColor(Color.parseColor("#CFCFCF"));
        this.mOCBBtn.setClickable(true);
        this.mOCBBtn.setPadding(0, 0, 0, 0);
        if (!IAPLib.getCultureLandCashPoint().equals("0"))
        {
          this.mCultureBtn.setBackgroundDrawable(this.mActiveCultureDrawables);
          this.mCultureBtn.setTextColor(Color.parseColor("#CFCFCF"));
          this.mCultureBtn.setClickable(true);
          this.mCultureBtn.setPadding(0, 0, 0, 0);
        }
        if (this.mItemPurchaseItemInfo.itemTCash <= 0) {
          break;
        }
        this.mTcashBtn.setBackgroundDrawable(this.mActiveTcashDrawables);
        this.mTcashBtn.setTextColor(Color.parseColor("#CFCFCF"));
        this.mTcashBtn.setClickable(true);
        this.mTcashBtn.setPadding(0, 0, 0, 0);
        break;
      }
      if (paramString.equals("CULTURE"))
      {
        SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() + SingletonCounter.getInstance().getmCultureUse());
        SingletonCounter.getInstance().setmCultureUse(0);
        this.m_AccountPriceTextView.setText(SingletonCounter.getInstance().getmPostPay() + CommonString.getString(CommonString.Index.WON));
        this.mCultureText.setText(IAPLib.getCultureLandCashPoint() + CommonString.getString(CommonString.Index.WON));
        this.mOCBBtn.setBackgroundDrawable(this.mActiveDrawables);
        this.mOCBBtn.setTextColor(Color.parseColor("#CFCFCF"));
        this.mOCBBtn.setClickable(true);
        this.mOCBBtn.setPadding(0, 0, 0, 0);
        if (this.mItemPurchaseItemInfo.dotoriBalance != 0)
        {
          this.mDotoriBtn.setBackgroundDrawable(this.mActiveDotoriDrawables);
          this.mDotoriBtn.setTextColor(Color.parseColor("#CFCFCF"));
          this.mDotoriBtn.setClickable(true);
          this.mDotoriBtn.setPadding(0, 0, 0, 0);
        }
        if (this.mItemPurchaseItemInfo.itemTCash <= 0) {
          break;
        }
        this.mTcashBtn.setBackgroundDrawable(this.mActiveTcashDrawables);
        this.mTcashBtn.setTextColor(Color.parseColor("#CFCFCF"));
        this.mTcashBtn.setClickable(true);
        this.mTcashBtn.setPadding(0, 0, 0, 0);
        break;
      }
      if (!paramString.equals("TCASH")) {
        break;
      }
      SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() + SingletonCounter.getInstance().getmTCashUse());
      SingletonCounter.getInstance().setmTCashUse(0);
      this.m_AccountPriceTextView.setText(SingletonCounter.getInstance().getmPostPay() + CommonString.getString(CommonString.Index.WON));
      this.mTcashText.setText(this.mItemPurchaseItemInfo.itemTCash + " P");
      this.mOCBBtn.setBackgroundDrawable(this.mActiveDrawables);
      this.mOCBBtn.setTextColor(Color.parseColor("#CFCFCF"));
      this.mOCBBtn.setClickable(true);
      this.mOCBBtn.setPadding(0, 0, 0, 0);
      if (this.mItemPurchaseItemInfo.dotoriBalance != 0)
      {
        this.mDotoriBtn.setBackgroundDrawable(this.mActiveDotoriDrawables);
        this.mDotoriBtn.setTextColor(Color.parseColor("#CFCFCF"));
        this.mDotoriBtn.setClickable(true);
        this.mDotoriBtn.setPadding(0, 0, 0, 0);
      }
      if (IAPLib.getCultureLandCashPoint().equals("0")) {
        break;
      }
      this.mCultureBtn.setBackgroundDrawable(this.mActiveCultureDrawables);
      this.mCultureBtn.setTextColor(Color.parseColor("#CFCFCF"));
      this.mCultureBtn.setClickable(true);
      this.mCultureBtn.setPadding(0, 0, 0, 0);
      break;
    }
    this.mOkBtn.setBackgroundDrawable(this.mLiminExcessDrawables);
    this.mFlag = true;
    this.mOkBtn.setOnClickListener(null);
  }
  
  private class CultureLandTextWatcher
    implements TextWatcher
  {
    private CultureLandTextWatcher() {}
    
    public void afterTextChanged(Editable paramEditable)
    {
      if ((ParserXML.this.m_CultureLandID.getText().length() <= 0) || (ParserXML.this.m_CultureLandPW.getText().length() <= 0))
      {
        ParserXML.this.mCultureOKButton.setBackgroundDrawable(ParserXML.this.dotoriInactive);
        ParserXML.this.mCultureOKButton.setClickable(false);
        return;
      }
      ParserXML.this.mCultureOKButton.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
      ParserXML.this.mCultureOKButton.setClickable(true);
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
  
  private class ForeignDevelopeTextLengthWatcher
    implements TextWatcher
  {
    private ForeignDevelopeTextLengthWatcher() {}
    
    public void afterTextChanged(Editable paramEditable)
    {
      if (ParserXML.this.onForeignInputMDNClickLisener.getCurrentSelected() == 1) {
        if (ParserXML.this.m_MDN1.getText().length() + ParserXML.this.m_MDN2.getText().length() + ParserXML.this.m_MDN3.getText().length() >= 10)
        {
          ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
          ParserXML.this.mOkBtn.setClickable(true);
        }
      }
      while ((ParserXML.this.onForeignInputMDNClickLisener.getCurrentSelected() != 2) && (ParserXML.this.onForeignInputMDNClickLisener.getCurrentSelected() != 3))
      {
        return;
        ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
        ParserXML.this.mOkBtn.setClickable(false);
        return;
      }
      if ((ParserXML.this.m_MDN1.getText().length() + ParserXML.this.m_MDN2.getText().length() + ParserXML.this.m_MDN3.getText().length() >= 10) && (ParserXML.this.m_JuminText1.getText().length() + ParserXML.this.m_JuminText2.getText().length() == 13))
      {
        ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
        ParserXML.this.mOkBtn.setClickable(true);
        return;
      }
      ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
      ParserXML.this.mOkBtn.setClickable(false);
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
  
  private class NextFocusTextWatcher
    implements TextWatcher
  {
    private EditText mEditText;
    private int strNum;
    
    private NextFocusTextWatcher(EditText paramEditText)
    {
      this.mEditText = paramEditText;
    }
    
    public void afterTextChanged(Editable paramEditable)
    {
      if (ParserXML.this.mOCBRegBtn != null)
      {
        ParserXML.this.mOCBRegBtn.setPadding(0, 0, 0, 0);
        if (paramEditable.length() < 4) {
          break label293;
        }
        if (this.mEditText == ParserXML.this.m_OCBRegText1)
        {
          ParserXML.this.m_OCBRegText2.requestFocus();
          ParserXML.this.strNumOCBRegText1 = paramEditable.length();
          this.strNum = (ParserXML.this.strNumOCBRegText1 + ParserXML.this.strNumOCBRegText2 + ParserXML.this.strNumOCBRegText3);
          if (this.strNum < 12) {
            break label383;
          }
          ParserXML.this.mOCBRegBtn.setBackgroundDrawable(ParserXML.this.mActiveOCBRegDrawables);
          ParserXML.this.mOCBRegBtn.setClickable(true);
          ParserXML.this.mOCBRegBtn.setTextColor(Color.parseColor("#DDDDDD"));
          ParserXML.this.mOCBRegBtn.setPadding(0, 0, 0, 0);
        }
      }
      else
      {
        label165:
        if (ParserXML.this.onForeignInputMDNResultCallback != null)
        {
          if ((this.mEditText != ParserXML.this.m_MDN1) || (paramEditable.length() < 3)) {
            break label443;
          }
          ParserXML.this.m_MDN2.requestFocus();
        }
      }
      label293:
      label383:
      while ((this.mEditText != ParserXML.this.m_MDN2) || (paramEditable.length() < 4))
      {
        return;
        if (this.mEditText == ParserXML.this.m_OCBRegText2)
        {
          ParserXML.this.m_OCBRegText3.requestFocus();
          ParserXML.this.strNumOCBRegText2 = paramEditable.length();
          break;
        }
        if (this.mEditText != ParserXML.this.m_OCBRegText3) {
          break;
        }
        ParserXML.this.m_OCBRegText4.requestFocus();
        ParserXML.this.strNumOCBRegText3 = paramEditable.length();
        break;
        if (this.mEditText == ParserXML.this.m_OCBRegText1)
        {
          ParserXML.this.strNumOCBRegText1 = paramEditable.length();
          break;
        }
        if (this.mEditText == ParserXML.this.m_OCBRegText2)
        {
          ParserXML.this.strNumOCBRegText2 = paramEditable.length();
          break;
        }
        if (this.mEditText != ParserXML.this.m_OCBRegText3) {
          break;
        }
        ParserXML.this.strNumOCBRegText3 = paramEditable.length();
        break;
        ParserXML.this.mOCBRegBtn.setBackgroundDrawable(ParserXML.this.mInactiveOCBRegDrawables);
        ParserXML.this.mOCBRegBtn.setClickable(false);
        ParserXML.this.mOCBRegBtn.setTextColor(Color.parseColor("#8B8B8B"));
        ParserXML.this.mOCBRegBtn.setPadding(0, 0, 0, 0);
        break label165;
      }
      label443:
      ParserXML.this.m_MDN3.requestFocus();
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
  
  private class OKCashbackTextWatcher
    implements TextWatcher
  {
    private OKCashbackTextWatcher() {}
    
    public void afterTextChanged(Editable paramEditable)
    {
      if (ParserXML.this.m_OCBPWText.getText().length() < 6)
      {
        ParserXML.this.mOKCashbackOKButton.setBackgroundDrawable(ParserXML.this.dotoriInactive);
        ParserXML.this.mOKCashbackOKButton.setClickable(false);
        return;
      }
      ParserXML.this.mOKCashbackOKButton.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
      ParserXML.this.mOKCashbackOKButton.setClickable(true);
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
  
  public class OnClickForeignInputMDN
    implements View.OnClickListener
  {
    private RadioButton mRadioButton1;
    private RadioButton mRadioButton2;
    private RadioButton mRadioButton3;
    
    public OnClickForeignInputMDN() {}
    
    public int getCurrentSelected()
    {
      if (this.mRadioButton1.isChecked())
      {
        this.mRadioButton1.addTextChangedListener(ParserXML.this.mForeignDevelopeTextLengthWatcher);
        return 1;
      }
      if (this.mRadioButton2.isChecked())
      {
        this.mRadioButton2.addTextChangedListener(ParserXML.this.mForeignDevelopeTextLengthWatcher);
        return 2;
      }
      if (this.mRadioButton3.isChecked())
      {
        this.mRadioButton3.addTextChangedListener(ParserXML.this.mForeignDevelopeTextLengthWatcher);
        return 3;
      }
      return 0;
    }
    
    public void onClick(View paramView)
    {
      if (paramView == this.mRadioButton1)
      {
        this.mRadioButton1.setChecked(true);
        this.mRadioButton2.setChecked(false);
        this.mRadioButton3.setChecked(false);
        ParserXML.mJumiLlView.setVisibility(8);
        ParserXML.this.foreignInputCarrier = 1;
        ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
        ParserXML.this.mOkBtn.setClickable(false);
        if (ParserXML.this.m_MDN1.getText().length() + ParserXML.this.m_MDN2.getText().length() + ParserXML.this.m_MDN3.getText().length() >= 10)
        {
          ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
          ParserXML.this.mOkBtn.setClickable(true);
        }
      }
      do
      {
        do
        {
          do
          {
            return;
            if (paramView != this.mRadioButton2) {
              break;
            }
            this.mRadioButton1.setChecked(false);
            this.mRadioButton2.setChecked(true);
            this.mRadioButton3.setChecked(false);
            ParserXML.mJumiLlView.setVisibility(0);
            ParserXML.this.foreignInputCarrier = 2;
            ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
            ParserXML.this.mOkBtn.setClickable(false);
          } while ((ParserXML.this.m_MDN1.getText().length() + ParserXML.this.m_MDN2.getText().length() + ParserXML.this.m_MDN3.getText().length() < 10) || (ParserXML.this.m_JuminText1.getText().length() + ParserXML.this.m_JuminText2.getText().length() != 13));
          ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
          ParserXML.this.mOkBtn.setClickable(true);
          return;
        } while (paramView != this.mRadioButton3);
        this.mRadioButton1.setChecked(false);
        this.mRadioButton2.setChecked(false);
        this.mRadioButton3.setChecked(true);
        ParserXML.mJumiLlView.setVisibility(0);
        ParserXML.this.foreignInputCarrier = 3;
        ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
        ParserXML.this.mOkBtn.setClickable(false);
      } while ((ParserXML.this.m_MDN1.getText().length() + ParserXML.this.m_MDN2.getText().length() + ParserXML.this.m_MDN3.getText().length() < 10) || (ParserXML.this.m_JuminText1.getText().length() + ParserXML.this.m_JuminText2.getText().length() != 13));
      ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
      ParserXML.this.mOkBtn.setClickable(true);
    }
    
    public void setRadioButton1(RadioButton paramRadioButton)
    {
      this.mRadioButton1 = paramRadioButton;
      this.mRadioButton1.setChecked(true);
      ParserXML.this.foreignInputCarrier = 1;
    }
    
    public void setRadioButton2(RadioButton paramRadioButton)
    {
      this.mRadioButton2 = paramRadioButton;
    }
    
    public void setRadioButton3(RadioButton paramRadioButton)
    {
      this.mRadioButton3 = paramRadioButton;
    }
  }
  
  public static abstract interface ParserAuthResultCallback
  {
    public abstract void onAuthDialogCancelButtonClick();
    
    public abstract void onAuthDialogOKButtonClick(String paramString1, String paramString2);
  }
  
  public static abstract interface ParserAutoPurchaseFormResultCallback
  {
    public abstract void onAutoPurchaseFormDialogButtonClick(boolean paramBoolean);
    
    public abstract void onAutoPurchaseFormDialogCancelButtonClick();
  }
  
  public static abstract interface ParserCultureLandCallback
  {
    public abstract void onCultureLandButtonClick(String paramString1, String paramString2);
    
    public abstract void onCultureLandCancelButtonClick();
  }
  
  public static abstract interface ParserDotoriSmsAuthCallback
  {
    public abstract void onDotoriSmsAuthCancelButtonClick();
    
    public abstract void onDotoriSmsAuthOKButtonClick();
    
    public abstract void onDotoriSmsAuthSMSReceiveButtonClick();
  }
  
  public static abstract interface ParserForeignInputMDNResultCallback
  {
    public abstract void onForeignInputMDNOKButtonClick(int paramInt, String paramString1, String paramString2);
  }
  
  public static abstract interface ParserIMEIAuthCallback
  {
    public abstract void onIMEIAuthDialogCancelButtonClick();
    
    public abstract void onIMEIAuthDialogOKButtonClick();
  }
  
  public static abstract interface ParserImageResultCallback
  {
    public abstract void onImageDialogButtonClick();
  }
  
  public static abstract interface ParserJoinResultCallback
  {
    public abstract void onJoinDialogCancelButtonClick();
    
    public abstract void onJoinDialogOKButtonClick(String paramString);
    
    public abstract void onJoinFormDialogPopupClick(int paramInt);
  }
  
  public static abstract interface ParserLguSmsAuthCallback
  {
    public abstract void onEnterTstore();
    
    public abstract void onErrorPopup();
    
    public abstract String onGetLguSmsAuthTime();
    
    public abstract void onLguSmsAuthCancer();
    
    public abstract void onLguSmsAuthNumberReq();
    
    public abstract void onLguSmsAuthOK();
    
    public abstract void onSetLguSmsAuthTime(boolean paramBoolean);
    
    public abstract void onTstoreLockError(String paramString);
  }
  
  public static abstract interface ParserOCBCallback
  {
    public abstract void onOCBPWDCancelButtonClick();
    
    public abstract void onOCBPWDOKButtonClick(String paramString);
    
    public abstract void onOCBRegistrationButtonClick(String paramString);
    
    public abstract void onOCBRegistrationCancelClick();
  }
  
  public static abstract interface ParserOtpCallback
  {
    public abstract void onOtpDialogCancelButtonClick();
    
    public abstract void onOtpDialogOK();
    
    public abstract void onOtpErrorPopup();
    
    public abstract void onOtpTstoreButtonClick();
  }
  
  public static abstract interface ParserPopupDlgResultCallback
  {
    public abstract void onDlgButtonClick();
    
    public abstract void onErrorDlgBtnClick();
  }
  
  public static abstract interface ParserResultCallback
  {
    public abstract void onAutoPurchaseCheck(boolean paramBoolean);
    
    public abstract void onAutoPurchaseInfoClick(String paramString1, String paramString2);
    
    public abstract void onEnterTstore();
    
    public abstract void onPurchaseAutoButtonClick();
    
    public abstract void onPurchaseAutoCancelButtonClick(String paramString);
    
    public abstract void onPurchaseButtonClick();
    
    public abstract void onPurchaseCancelButtonClick();
    
    public abstract void onShowCultureLandDialog();
    
    public abstract void onShowDotoriQueryBtnClick(boolean paramBoolean);
    
    public abstract void onShowMessageDialog();
    
    public abstract void onShowOCBPWDDialog();
    
    public abstract void onShowOCBRegPopup(String paramString);
    
    public abstract void onTstoreLockError(String paramString);
    
    public abstract void onUseTCashCheckChanged(boolean paramBoolean);
  }
  
  public static abstract interface ParserYesNoResultCallback
  {
    public abstract void onYesNoDialogCancelButtonClick();
    
    public abstract void onYesNoDialogOKButtonClick();
  }
  
  public class filterAlphaNum
    implements InputFilter
  {
    public filterAlphaNum() {}
    
    public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
    {
      paramSpanned = Pattern.compile("^[a-zA-Z0-9]*$");
      if ((paramCharSequence != null) && (!paramSpanned.matcher(paramCharSequence).matches())) {
        return "";
      }
      return null;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.gui.parser.ParserXML
 * JD-Core Version:    0.7.0.1
 */