package com.kt.olleh.inapp;

import android.os.AsyncTask;
import com.kt.olleh.inapp.Config.Config;
import com.kt.olleh.inapp.crypt.AESCrypt;
import com.kt.olleh.inapp.net.NetworkManager;
import com.kt.olleh.inapp.net.ResCheckCoin;
import com.kt.olleh.inapp.net.ResCheckShowId;
import com.kt.olleh.inapp.net.ResDIApproveDown;
import com.kt.olleh.inapp.net.ResDIBuy;
import com.kt.olleh.inapp.net.ResDIDetail;
import com.kt.olleh.inapp.net.ResDIGetFile;
import com.kt.olleh.inapp.net.ResDIList;
import com.kt.olleh.inapp.net.ResDIListExpand;
import com.kt.olleh.inapp.net.ResDIesBuy;
import com.kt.olleh.inapp.net.ResGetSymKeyGen;
import com.kt.olleh.inapp.net.Response;
import com.kt.olleh.inapp.net.ResponseOld;
import com.kt.olleh.inapp.net.XMLParser;
import java.io.InputStream;

class InApp
{
  private static final String TAG = "InApp";
  private final String RS_URL = "http://inapppurchase.ollehmarket.com/INAP_GW/inap_gw/";
  private final String TB_URL = "http://221.148.247.203:8888/INAP_GW/inap_gw/";
  private final String crypto_param = "crypto_param/";
  private String mAES_URL;
  private String mAPI = null;
  private String mAPINext = null;
  private final String mApp_id = "/app_id/";
  private final String mAppid = "&appid=";
  private final String mAuthen = "/authen/";
  private final String mBuy_pwd = "/buy_pwd/";
  private final String mBuy_type = "/buy_type/";
  private final String mDi_id = "/di_id/";
  private final String mFile_name = "/file_name/";
  private final String mIid = "&iid=";
  private final String mMime_type = "/mime_type/";
  private NetworkManager mNetManager = null;
  private final String mOpcode = "opcode=";
  private final String mPage = "/page/";
  private final String mPage_size = "/page_size/";
  private final String mPhone = "&phone=";
  private final String mPwd = "/pwd/";
  private final String mRecipients = "/recipients/";
  private volatile boolean mRun = false;
  private NetworkTask mRunningTask = null;
  private String mSeq_key = null;
  private final String mShow_id = "/show_id/";
  private String mSymmetric_key = null;
  private final String mTr_id = "/tr_id/";
  private final String mUser_info = "/user_info/";
  private final String seq_key = "/seq_key/";
  
  private void networkTaskStart(OnInAppListener paramOnInAppListener, String paramString1, String paramString2)
  {
    paramOnInAppListener = new NetworkTask(paramOnInAppListener);
    paramOnInAppListener.execute(new String[] { paramString1, paramString2 });
    this.mRunningTask = paramOnInAppListener;
    this.mRun = true;
  }
  
  public void getDIAllList(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "getAllDiList";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", user_info = " + paramString2 + ", authen = " + paramString3 + ", page_size = " + paramInt1 + ", page = " + paramInt2);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/user_info/" + paramString2 + "/authen/" + paramString3 + "/page_size/" + paramInt1 + "/page/" + paramInt2);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void getDIAllList(String paramString1, String paramString2, String paramString3, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "getAllDiList";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", user_info = " + paramString2 + ", authen = " + paramString3);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/user_info/" + paramString2 + "/authen/" + paramString3);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void getDIDownloadableList(String paramString1, String paramString2, String paramString3, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "getDownloadDiList";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", user_info = " + paramString2 + ", authen = " + paramString3);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/user_info/" + paramString2 + "/authen/" + paramString3);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void getDIGiftList(String paramString1, String paramString2, String paramString3, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "getGiftDiList";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", user_info = " + paramString2 + ", authen = " + paramString3);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/user_info/" + paramString2 + "/authen/" + paramString3);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void getDIGiftList(String paramString1, String paramString2, String paramString3, String paramString4, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "getGiftDiList";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", user_info = " + paramString2 + ", authen = " + paramString3 + ", recipients = " + paramString4);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/user_info/" + paramString2 + "/authen/" + paramString3 + "/recipients/" + paramString4);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void getDIInformation(String paramString1, String paramString2, String paramString3, String paramString4, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "getDiDetail";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", di_id = " + paramString2 + ", user_info = " + paramString3 + ", authen = " + paramString4);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/di_id/" + paramString2 + "/user_info/" + paramString3 + "/authen/" + paramString4);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void getDIPurchaseList(String paramString1, String paramString2, String paramString3, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "getBuyDiList";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", user_info = " + paramString2 + ", authen = " + paramString3);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/user_info/" + paramString2 + "/authen/" + paramString3);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void getDIReceiveList(String paramString1, String paramString2, String paramString3, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "getReceiveDiList";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", user_info = " + paramString2 + ", authen = " + paramString3);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/user_info/" + paramString2 + "/authen/" + paramString3);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void getDIUsableList(String paramString1, String paramString2, String paramString3, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "getUseDiList";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", user_info = " + paramString2 + ", authen = " + paramString3);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/user_info/" + paramString2 + "/authen/" + paramString3);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public String getMainURL()
  {
    if (Config.bTBserver) {
      return "http://221.148.247.203:8888/INAP_GW/inap_gw/";
    }
    return "http://inapppurchase.ollehmarket.com/INAP_GW/inap_gw/";
  }
  
  public void requestCancel()
  {
    if (this.mRunningTask != null) {
      this.mRunningTask.cancel(true);
    }
    this.mRunningTask = null;
  }
  
  public void requestCheckCoin(String paramString1, String paramString2, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "checkCoin";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: user_info = " + paramString1 + ", authen = " + paramString2);
    }
    this.mAES_URL = (this.mAPINext + "/user_info/" + paramString1 + "/authen/" + paramString2);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void requestCheckShowId(String paramString1, String paramString2, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "checkShowId";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: show_id = " + paramString1 + ", pwd = " + paramString2);
    }
    this.mAES_URL = (this.mAPINext + "/show_id/" + paramString1 + "/pwd/" + paramString2);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void requestDIApproveDown(String paramString1, String paramString2, String paramString3, String paramString4, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "approvedDownDi";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", di_id = " + paramString2 + ", user_info = " + paramString3 + ", authen = " + paramString4);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/di_id/" + paramString2 + "/user_info/" + paramString3 + "/authen/" + paramString4);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void requestDIApproveUse(String paramString1, String paramString2, String paramString3, String paramString4, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "approvedUseDi";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", di_id = " + paramString2 + ", user_info = " + paramString3 + ", authen = " + paramString4);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/di_id/" + paramString2 + "/user_info/" + paramString3 + "/authen/" + paramString4);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void requestDIBuy(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "buyDi";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", di_id = " + paramString2 + ", user_info = " + paramString3 + ", authen = " + paramString4 + ", buy_type = " + paramString5 + ", buy_pwd = " + paramString6);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/di_id/" + paramString2 + "/user_info/" + paramString3 + "/authen/" + paramString4 + "/buy_type/" + paramString5 + "/buy_pwd/" + paramString6);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void requestDIBuyCancel(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "buyCancelDi";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", di_id = " + paramString2 + ", user_info = " + paramString3 + ", authen = " + paramString4 + ", tr_id = " + paramString5);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/di_id/" + paramString2 + "/user_info/" + paramString3 + "/authen/" + paramString4 + "/tr_id/" + paramString5);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void requestDIGift(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "giftDi";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", di_id = " + paramString2 + ", user_info = " + paramString3 + ", authen = " + paramString4 + ", buy_type = " + paramString5 + ", buy_pwd = " + paramString6 + ", recipients = " + paramString7);
    }
    this.mAES_URL = (this.mAPINext + "/app_id/" + paramString1 + "/di_id/" + paramString2 + "/user_info/" + paramString3 + "/authen/" + paramString4 + "/buy_type/" + paramString5 + "/buy_pwd/" + paramString6 + "/recipients/" + paramString7);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void requestDIReBuy(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "buyDi";
    this.mAPINext = null;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", di_id = " + paramString2 + ", user_info = " + paramString3 + ", authen = " + paramString4 + ", buy_type = " + paramString5 + ", buy_pwd = " + paramString6);
    }
    this.mAES_URL = (this.mAPI + "/app_id/" + paramString1 + "/di_id/" + paramString2 + "/user_info/" + paramString3 + "/authen/" + paramString4 + "/buy_type/" + paramString5 + "/buy_pwd/" + paramString6);
    paramString2 = null;
    if ((this.mSymmetric_key == null) || (this.mAES_URL == null)) {
      paramOnInAppListener.OnError("0000", "이전 구매 내역 없음");
    }
    paramString1 = paramString2;
    try
    {
      if (this.mAES_URL != null) {
        paramString1 = AESCrypt.encrypt(this.mSymmetric_key, this.mAES_URL);
      }
      networkTaskStart(paramOnInAppListener, getMainURL() + "crypto_param/" + paramString1 + "/seq_key/" + this.mSeq_key, this.mAPI);
      return;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        Config.LogE("InApp", "AESCrypter ::" + paramString1);
        paramString1 = paramString2;
      }
    }
  }
  
  public void requestDIReGift(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "reGiftDi";
    this.mAPINext = null;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: app_id = " + paramString1 + ", di_id = " + paramString2 + ", user_info = " + paramString3 + ", authen = " + paramString4 + ", buy_type = " + paramString5 + ", buy_pwd = " + paramString6 + ", recipients = " + paramString7);
    }
    this.mAES_URL = (this.mAPI + "/app_id/" + paramString1 + "/di_id/" + paramString2 + "/user_info/" + paramString3 + "/authen/" + paramString4 + "/buy_type/" + paramString5 + "/buy_pwd/" + paramString6 + "/recipients/" + paramString7);
    paramString2 = null;
    if ((this.mSymmetric_key == null) || (this.mAES_URL == null)) {
      paramOnInAppListener.OnError("0000", "이전 선물 구매 내역 없음");
    }
    paramString1 = paramString2;
    try
    {
      if (this.mAES_URL != null) {
        paramString1 = AESCrypt.encrypt(this.mSymmetric_key, this.mAES_URL);
      }
      networkTaskStart(paramOnInAppListener, getMainURL() + "crypto_param/" + paramString1 + "/seq_key/" + this.mSeq_key, this.mAPI);
      return;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        Config.LogE("InApp", "AESCrypter ::" + paramString1);
        paramString1 = paramString2;
      }
    }
  }
  
  public void requestDIesBuy(String paramString1, String paramString2, String paramString3, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "esBuyDi";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: iid = " + paramString1 + ", appid = " + paramString2 + ", phone = " + paramString3);
    }
    this.mAES_URL = (this.mAPINext + "?" + "opcode=" + 1 + "&iid=" + paramString1 + "&appid=" + paramString2 + "&phone=" + paramString3);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  public void requestDIgetFile(String paramString1, String paramString2, String paramString3, String paramString4, OnInAppListener paramOnInAppListener)
  {
    this.mAPI = "getSymKeyGen";
    this.mAPINext = "getFile";
    String str = getMainURL() + this.mAPI;
    if (Config.DEBUG) {
      Config.LogD("InApp", "Parameter :: file_name = " + paramString1 + ", mime_type = " + paramString2 + ", user_info = " + paramString3 + ", authen = " + paramString4);
    }
    this.mAES_URL = (this.mAPINext + "/file_name/" + paramString1 + "/mime_type/" + paramString2 + "/user_info/" + paramString3 + "/authen/" + paramString4);
    networkTaskStart(paramOnInAppListener, str, this.mAPI);
  }
  
  class NetworkTask
    extends AsyncTask<String, Void, InputStream>
  {
    private String mCurrentAPI;
    private int mLastError;
    private int mLastHttpCode;
    private OnInAppListener mListener;
    
    public NetworkTask(OnInAppListener paramOnInAppListener)
    {
      this.mListener = paramOnInAppListener;
      this.mCurrentAPI = null;
    }
    
    private void sendErrorReason(String paramString1, String paramString2)
    {
      String str = paramString1;
      if (paramString1 == null) {
        str = "code null";
      }
      paramString1 = paramString2;
      if (paramString2 == null) {
        paramString1 = "reason null";
      }
      if (this.mListener != null)
      {
        if (!str.equalsIgnoreCase("B007")) {
          break label49;
        }
        paramString1 = "구매한도를 초과하여 더 이상 구매하실 수 없습니다.";
      }
      for (;;)
      {
        this.mListener.OnError(str, paramString1);
        return;
        label49:
        if (str.equalsIgnoreCase("B009")) {
          paramString1 = "일별 구매한도를 초과하여 더 이상 구매하실 수 없습니다.";
        } else if (str.equalsIgnoreCase("B010")) {
          paramString1 = "월별 구매한도를 초과하여 더 이상 구매하실 수 없습니다.";
        }
      }
    }
    
    protected InputStream doInBackground(String... paramVarArgs)
    {
      String str = paramVarArgs[0];
      this.mCurrentAPI = paramVarArgs[1];
      InApp.this.mNetManager = new NetworkManager();
      return InApp.this.mNetManager.getData(str);
    }
    
    protected void onCancelled()
    {
      super.onCancelled();
      InApp.this.mRun = false;
      InApp.this.mNetManager.cancel();
    }
    
    protected void onPostExecute(InputStream paramInputStream)
    {
      if (isCancelled()) {}
      label122:
      do
      {
        do
        {
          Response localResponse;
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
                            ResGetSymKeyGen localResGetSymKeyGen;
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
                                        if (paramInputStream == null) {
                                          break;
                                        }
                                      } while (!InApp.this.mRun);
                                      if (!this.mCurrentAPI.equalsIgnoreCase("esBuyDi")) {
                                        break label122;
                                      }
                                      paramInputStream = XMLParser.parseXML_OLD(paramInputStream, this.mCurrentAPI);
                                      if (paramInputStream == null) {
                                        break;
                                      }
                                    } while (!InApp.this.mRun);
                                    this.mListener.OnResultOLDAPI(paramInputStream.mResultCode, paramInputStream.mResultMessage);
                                    return;
                                    this.mLastError = InApp.this.mNetManager.getLastError();
                                    this.mLastHttpCode = InApp.this.mNetManager.getLastHttpCode();
                                  } while (!InApp.this.mRun);
                                  sendErrorReason("A015", "서버 요청 응답 시간 초과");
                                  return;
                                  localResponse = XMLParser.parseXML(paramInputStream, this.mCurrentAPI);
                                } while (localResponse == null);
                                if ("0".equalsIgnoreCase(localResponse.mCode)) {
                                  break;
                                }
                              } while (!InApp.this.mRun);
                              sendErrorReason(localResponse.mCode, localResponse.mReason);
                              return;
                              if (Config.DEBUG) {
                                Config.LogD("InApp", "onPostExecute(" + InApp.this.mAPI + ") called");
                              }
                              if (!InApp.this.mAPI.equalsIgnoreCase("getSymKeyGen")) {
                                break;
                              }
                              localResGetSymKeyGen = (ResGetSymKeyGen)localResponse;
                              if ((InApp.this.mAPINext.equalsIgnoreCase("buyDi")) || (InApp.this.mAPINext.equalsIgnoreCase("giftDi"))) {
                                InApp.this.mSymmetric_key = localResGetSymKeyGen.mSymmetric_key;
                              }
                              for (InApp.this.mSeq_key = localResGetSymKeyGen.mSeq_key;; InApp.this.mSeq_key = null)
                              {
                                if (Config.DEBUG) {
                                  Config.LogI("InApp", "onPostExecute(" + localResGetSymKeyGen.mSymmetric_key + "," + localResGetSymKeyGen.mSeq_key + ")");
                                }
                                String str2 = null;
                                String str1 = null;
                                if (!"0".equalsIgnoreCase(localResGetSymKeyGen.mCode)) {
                                  break label747;
                                }
                                paramInputStream = str2;
                                try
                                {
                                  if (InApp.this.mAES_URL != null)
                                  {
                                    paramInputStream = str2;
                                    str1 = AESCrypt.encrypt(localResGetSymKeyGen.mSymmetric_key, InApp.this.mAES_URL);
                                    paramInputStream = str2;
                                    if (Config.DEBUG)
                                    {
                                      paramInputStream = str2;
                                      Config.LogI("InApp", "#################################################################");
                                    }
                                    paramInputStream = str2;
                                    if (Config.DEBUG)
                                    {
                                      paramInputStream = str2;
                                      Config.LogI("InApp", "mAES_URL = " + InApp.this.mAES_URL);
                                    }
                                    paramInputStream = str2;
                                    if (Config.DEBUG)
                                    {
                                      paramInputStream = str2;
                                      Config.LogI("InApp", "aesURL = " + str1);
                                    }
                                    paramInputStream = str2;
                                    str2 = str1.replace('/', '$');
                                    paramInputStream = str2;
                                    if (Config.DEBUG)
                                    {
                                      paramInputStream = str2;
                                      Config.LogI("InApp", "aesReplaceURL = " + str2);
                                    }
                                    str1 = str2;
                                    paramInputStream = str2;
                                    if (Config.DEBUG)
                                    {
                                      paramInputStream = str2;
                                      Config.LogI("InApp", "#################################################################");
                                      str1 = str2;
                                    }
                                  }
                                }
                                catch (Exception localException)
                                {
                                  for (;;)
                                  {
                                    Config.LogE("InApp", "AESCrypter ::" + localException);
                                    InputStream localInputStream = paramInputStream;
                                    continue;
                                    InApp.this.networkTaskStart(this.mListener, paramInputStream, InApp.this.mAPI);
                                    continue;
                                    if (InApp.this.mRun) {
                                      this.mListener.OnResultAPI(InApp.this.mAPI, localResponse);
                                    }
                                  }
                                }
                                paramInputStream = InApp.this.getMainURL() + "crypto_param/" + str1 + "/seq_key/" + localResGetSymKeyGen.mSeq_key;
                                if (InApp.this.mAPINext == null) {
                                  break label716;
                                }
                                InApp.this.mAPI = InApp.this.mAPINext;
                                InApp.this.mAPINext = null;
                                if (InApp.this.mRun)
                                {
                                  if (!InApp.this.mAPI.equalsIgnoreCase("getFile")) {
                                    break;
                                  }
                                  this.mListener.OnResultFileURL("0", paramInputStream);
                                }
                                return;
                                InApp.this.mSymmetric_key = null;
                              }
                            } while (!InApp.this.mRun);
                            sendErrorReason(localResGetSymKeyGen.mCode, localResGetSymKeyGen.mReason);
                            return;
                            if ((!InApp.this.mAPI.equalsIgnoreCase("getUseDiList")) && (!InApp.this.mAPI.equalsIgnoreCase("getDownloadDiList"))) {
                              break;
                            }
                            paramInputStream = (ResDIListExpand)localResponse;
                          } while (!InApp.this.mRun);
                          this.mListener.OnResultAPI(InApp.this.mAPI, paramInputStream);
                          return;
                          if ((!InApp.this.mAPI.equalsIgnoreCase("getBuyDiList")) && (!InApp.this.mAPI.equalsIgnoreCase("getAllDiList")) && (!InApp.this.mAPI.equalsIgnoreCase("getGiftDiList")) && (!InApp.this.mAPI.equalsIgnoreCase("getReceiveDiList"))) {
                            break;
                          }
                          paramInputStream = (ResDIList)localResponse;
                        } while (!InApp.this.mRun);
                        this.mListener.OnResultAPI(InApp.this.mAPI, paramInputStream);
                        return;
                        if (!InApp.this.mAPI.equalsIgnoreCase("getDiDetail")) {
                          break;
                        }
                        paramInputStream = (ResDIDetail)localResponse;
                      } while (!InApp.this.mRun);
                      this.mListener.OnResultAPI(InApp.this.mAPI, paramInputStream);
                      return;
                      if ((!InApp.this.mAPI.equalsIgnoreCase("buyDi")) && (!InApp.this.mAPI.equalsIgnoreCase("buyCancelDi")) && (!InApp.this.mAPI.equalsIgnoreCase("giftDi")) && (!InApp.this.mAPI.equalsIgnoreCase("reGiftDi")) && (!InApp.this.mAPI.equalsIgnoreCase("approvedUseDi"))) {
                        break;
                      }
                      paramInputStream = (ResDIBuy)localResponse;
                    } while (!InApp.this.mRun);
                    this.mListener.OnResultAPI(InApp.this.mAPI, paramInputStream);
                    return;
                    if (!InApp.this.mAPI.equalsIgnoreCase("esBuyDi")) {
                      break;
                    }
                    paramInputStream = (ResDIesBuy)localResponse;
                  } while (!InApp.this.mRun);
                  this.mListener.OnResultAPI(InApp.this.mAPI, paramInputStream);
                  return;
                  if (!InApp.this.mAPI.equalsIgnoreCase("approvedDownDi")) {
                    break;
                  }
                  paramInputStream = (ResDIApproveDown)localResponse;
                } while (!InApp.this.mRun);
                this.mListener.OnResultAPI(InApp.this.mAPI, paramInputStream);
                return;
                if (!InApp.this.mAPI.equalsIgnoreCase("getFile")) {
                  break;
                }
                paramInputStream = (ResDIGetFile)localResponse;
              } while (!InApp.this.mRun);
              this.mListener.OnResultAPI(InApp.this.mAPI, paramInputStream);
              return;
              if (!InApp.this.mAPI.equalsIgnoreCase("checkShowId")) {
                break;
              }
              paramInputStream = (ResCheckShowId)localResponse;
              InAppSettings.UserInfo = paramInputStream.mShow_id;
            } while (!InApp.this.mRun);
            this.mListener.OnResultAPI(InApp.this.mAPI, paramInputStream);
            return;
          } while (!InApp.this.mAPI.equalsIgnoreCase("checkCoin"));
          paramInputStream = (ResCheckCoin)localResponse;
        } while (!InApp.this.mRun);
        this.mListener.OnResultAPI(InApp.this.mAPI, paramInputStream);
        return;
        this.mLastError = InApp.this.mNetManager.getLastError();
        this.mLastHttpCode = InApp.this.mNetManager.getLastHttpCode();
      } while ((InApp.this.mAPI.equalsIgnoreCase("getFile")) || (!InApp.this.mRun));
      label716:
      label747:
      sendErrorReason("A015", "서버에 접속할 수 없습니다. 네트워크 상태를 확인해주세요.");
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.InApp
 * JD-Core Version:    0.7.0.1
 */