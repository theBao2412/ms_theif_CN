package com.kt.olleh.inapp.net;

import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class Request
{
  private static final String ADDINFO = "add_info";
  private static final String APP_ID = "app_id";
  private static final String APP_VER = "oscv";
  private static final String BRAND_ID = "brand_id";
  private static final String CHANNEL = "channel";
  private static final String CHARGE_YN = "charge_yn";
  private static final String CID = "cid";
  private static final String CNAME = "c_name";
  private static final String COMMAND = "c";
  private static final String CONTENT = "content";
  private static final String CONTENTS_TYPE = "contents_type";
  private static final String C_ID = "c_id";
  private static final String DEGREE = "degree";
  private static final String DEVICE_NUMBER = "dn";
  private static final String DEVICE_TYPE = "dt";
  private static final String EMAIL = "email";
  private static final String EVENTKEY = "eventKey";
  private static final String F_ID = "f_id";
  private static final String F_TYPE = "f_type";
  public static final String GETSYMKEYGEN = "getSymKeyGen";
  private static final String ID = "id";
  private static final String JUMIN_NUM = "jumin";
  private static final String KEYWORD = "keyword";
  private static final String LCDSIZE = "lcd";
  private static final String MAIN_YN = "main_yn";
  private static final String ME2_ID = "me2_id";
  private static final String ME2_KEY = "me2_key";
  private static final String MODEL = "model";
  private static final String MY_ONE_CODE = "code_id";
  private static final String MY_ONE_DEVICE_INFO = "device_info";
  private static final String MY_ONE_PNO = "pno";
  private static final String MY_ONE_QNA_TITLE = "qna_title";
  private static final String NEW_PWD = "new_pwd";
  private static final String NOTICE_ID = "notice_id";
  private static final String N_ID = "n_id";
  private static final String OFF_SET = "off_set";
  private static final String PARENT_ID = "parent_id";
  private static final String PAY_KEY = "pay_key";
  private static final String PAY_TYPE = "pay_type";
  private static final String PG = "pg";
  private static final String PG_SIZE = "pg_size";
  private static final String PHONENO = "phone";
  private static final String PWD = "pwd";
  private static final String P_ID = "p_id";
  private static final String P_TYPE = "p_type";
  private static final String QNA_CONTENT = "qna_content";
  private static final String QNA_ID = "qna_id";
  private static final String QNA_TYPE = "qna_type";
  private static final String REPLY_ID = "reply_id";
  private static final String REPORT_CONTENT = "report_content";
  private static final String REPORT_TYPE = "report_type";
  private static final String REQUIRY_ID = "requiry_id";
  private static final String REQ_TIME = "rt";
  private static final String SELLER_ID = "seller_id";
  private static final String STARSCORE = "starscore";
  private static final String TRAND_ID = "trand_id";
  private static final String TW_ID = "tw_id";
  private static final String TW_PW = "tw_pw";
  private static final String TYPE = "type";
  private static String mAppVer;
  private static String mChannel;
  private static int mCommand;
  private static String mDeviceNumber;
  private static String mDeviceType;
  private static String mLCDSize;
  private static String mMainUrl;
  private static String mModel;
  private static String mPageUrl;
  private static String mPhoneNo;
  private static List<NameValuePair> params;
  private static String streamData;
  
  public static void clearParams()
  {
    params.clear();
    params = null;
  }
  
  protected static int getCommand()
  {
    return mCommand;
  }
  
  public static String getData()
  {
    return streamData;
  }
  
  public static String getMainURL()
  {
    return mMainUrl;
  }
  
  private static String getPageUrl()
  {
    return mPageUrl;
  }
  
  public static List<NameValuePair> getParams()
  {
    return params;
  }
  
  public static void init(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    mMainUrl = paramString1;
    mPageUrl = paramString2;
    mPhoneNo = paramString3;
    mDeviceNumber = paramString4;
    mDeviceType = paramString5;
    mModel = paramString6;
    mLCDSize = paramString7;
    mAppVer = paramString8;
    mChannel = paramString9;
  }
  
  public static String request(int paramInt)
  {
    return toURL(paramInt).toString();
  }
  
  public static String requestAdultPwd(int paramInt, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("pwd", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestAdultPwdInit(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    paramString1 = toURL(paramInt);
    params.add(new BasicNameValuePair("pwd", paramString2));
    params.add(new BasicNameValuePair("new_pwd", paramString3));
    return toString(paramString1.toString());
  }
  
  public static String requestAnroidManifest(int paramInt, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("c_id", paramString1));
    params.add(new BasicNameValuePair("f_id", paramString2));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestAppRecentVersion(int paramInt, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("app_id", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestAppRecentVersionList(int paramInt1, int paramInt2, int paramInt3)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", String.valueOf(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", String.valueOf(paramInt3)));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestBeingSave(int paramInt, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("c_id", paramString1));
    params.add(new BasicNameValuePair("off_set", paramString2));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestBestList(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("main_yn", paramString1));
    params.add(new BasicNameValuePair("n_id", paramString2));
    params.add(new BasicNameValuePair("charge_yn", paramString3));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestBrandCategory(int paramInt, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("brand_id", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestBrandList(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("main_yn", paramString1));
    params.add(new BasicNameValuePair("brand_id", paramString2));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestBuy(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt2, String paramString5)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("p_id", paramString2));
    params.add(new BasicNameValuePair("n_id", paramString3));
    params.add(new BasicNameValuePair("f_type", paramString4));
    if (paramInt2 != -1)
    {
      params.add(new BasicNameValuePair("pay_type", String.valueOf(paramInt2)));
      params.add(new BasicNameValuePair("pay_key", paramString5));
    }
    return toString(localStringBuffer.toString());
  }
  
  public static String requestBuyPwd(int paramInt, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("pwd", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestBuyPwdInit(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("type", paramString1));
    params.add(new BasicNameValuePair("pwd", paramString2));
    params.add(new BasicNameValuePair("new_pwd", paramString3));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestCategory(int paramInt, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("parent_id", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestContAllSearch(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("keyword", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestContSearch(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("n_id", paramString1));
    params.add(new BasicNameValuePair("keyword", paramString2));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestContentInfo(int paramInt, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    if (paramString1 != null) {
      params.add(new BasicNameValuePair("c_id", paramString1));
    }
    if (paramString2 != null) {
      params.add(new BasicNameValuePair("app_id", paramString2));
    }
    return toString(localStringBuffer.toString());
  }
  
  public static String requestContentRecommand(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("p_id", paramString2));
    params.add(new BasicNameValuePair("n_id", paramString3));
    params.add(new BasicNameValuePair("c_name", paramString4));
    params.add(new BasicNameValuePair("add_info", paramString5));
    params.add(new BasicNameValuePair("me2_id", paramString6));
    params.add(new BasicNameValuePair("me2_key", paramString7));
    params.add(new BasicNameValuePair("tw_id", paramString8));
    params.add(new BasicNameValuePair("tw_pw", paramString9));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestDetail(int paramInt, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("p_id", paramString2));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestDetail(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("p_id", paramString2));
    params.add(new BasicNameValuePair("n_id", paramString3));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestEventDetail(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("p_id", paramString2));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestInquirySeller(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("qna_type", paramString1));
    params.add(new BasicNameValuePair("qna_content", paramString2));
    params.add(new BasicNameValuePair("email", paramString3));
    params.add(new BasicNameValuePair("p_type", paramString4));
    params.add(new BasicNameValuePair("p_id", paramString5));
    params.add(new BasicNameValuePair("n_id", paramString6));
    params.add(new BasicNameValuePair("seller_id", paramString7));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestJuminNum(int paramInt, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("jumin", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestList(int paramInt1, int paramInt2, int paramInt3)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestList(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("main_yn", paramString1));
    params.add(new BasicNameValuePair("n_id", paramString2));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestList(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("p_id", paramString2));
    params.add(new BasicNameValuePair("n_id", paramString3));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestMusicList(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("main_yn", paramString1));
    params.add(new BasicNameValuePair("n_id", paramString2));
    params.add(new BasicNameValuePair("contents_type", paramString3));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestMyBuyList(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("n_id", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestMyOneInquiryReg(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("code_id", paramString1));
    params.add(new BasicNameValuePair("qna_title", paramString2));
    params.add(new BasicNameValuePair("qna_content", paramString3));
    params.add(new BasicNameValuePair("email", paramString4));
    params.add(new BasicNameValuePair("pno", paramString5));
    params.add(new BasicNameValuePair("device_info", paramString6));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestMyOneQuestionDetail(int paramInt1, int paramInt2)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("qna_id", String.valueOf(paramInt2)));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestMyReplyDel(int paramInt, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("reply_id", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestMyReplyEvaluation(int paramInt1, int paramInt2, int paramInt3)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("requiry_id", String.valueOf(paramInt2)));
    params.add(new BasicNameValuePair("degree", String.valueOf(paramInt3)));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestMySellerDetail(int paramInt1, int paramInt2)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("requiry_id", String.valueOf(paramInt2)));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestNIDList(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("n_id", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestNotice(int paramInt, String paramString)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("notice_id", paramString));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestReplyList(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("p_id", paramString2));
    params.add(new BasicNameValuePair("n_id", paramString3));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestReplyRegister(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("p_id", paramString2));
    params.add(new BasicNameValuePair("n_id", paramString3));
    params.add(new BasicNameValuePair("content", paramString4));
    if (paramString5 != null)
    {
      params.add(new BasicNameValuePair("me2_id", paramString5));
      params.add(new BasicNameValuePair("me2_key", paramString6));
    }
    if (paramString7 != null)
    {
      params.add(new BasicNameValuePair("tw_id", paramString7));
      params.add(new BasicNameValuePair("tw_pw", paramString8));
    }
    return toString(localStringBuffer.toString());
  }
  
  public static String requestSellerList(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("pg", Integer.toString(paramInt2)));
    params.add(new BasicNameValuePair("pg_size", Integer.toString(paramInt3)));
    params.add(new BasicNameValuePair("n_id", paramString1));
    params.add(new BasicNameValuePair("seller_id", paramString2));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestSnsPwd(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("type", paramString1));
    params.add(new BasicNameValuePair("id", paramString2));
    params.add(new BasicNameValuePair("pwd", paramString3));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestStarScore(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt2)
  {
    StringBuffer localStringBuffer = toURL(paramInt1);
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("p_id", paramString2));
    params.add(new BasicNameValuePair("n_id", paramString3));
    params.add(new BasicNameValuePair("seller_id", paramString4));
    params.add(new BasicNameValuePair("starscore", String.valueOf(paramInt2)));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestStreaming(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("p_id", paramString2));
    params.add(new BasicNameValuePair("c_id", paramString3));
    params.add(new BasicNameValuePair("n_id", paramString4));
    params.add(new BasicNameValuePair("f_type", paramString5));
    return toString(localStringBuffer.toString());
  }
  
  public static String requestTrandDetail(int paramInt, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = toURL(paramInt);
    params.add(new BasicNameValuePair("p_type", paramString1));
    params.add(new BasicNameValuePair("trand_id", paramString2));
    return toString(localStringBuffer.toString());
  }
  
  public static void setData(String paramString)
  {
    streamData = paramString;
  }
  
  public static void setDeviceID(String paramString)
  {
    mDeviceNumber = paramString;
  }
  
  public static void setMainURL(String paramString)
  {
    mMainUrl = paramString;
  }
  
  private static String toString(String paramString)
  {
    return paramString.replaceAll(" ", "%20");
  }
  
  protected static StringBuffer toURL(int paramInt)
  {
    mCommand = paramInt;
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(getMainURL());
    localStringBuffer.append(getPageUrl());
    params = new ArrayList();
    params.add(new BasicNameValuePair("c", String.valueOf(paramInt)));
    params.add(new BasicNameValuePair("phone", mPhoneNo));
    params.add(new BasicNameValuePair("dn", mDeviceNumber));
    params.add(new BasicNameValuePair("dt", mDeviceType));
    params.add(new BasicNameValuePair("model", mModel));
    params.add(new BasicNameValuePair("lcd", mLCDSize));
    params.add(new BasicNameValuePair("oscv", mAppVer));
    params.add(new BasicNameValuePair("channel", mChannel));
    return localStringBuffer;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.Request
 * JD-Core Version:    0.7.0.1
 */