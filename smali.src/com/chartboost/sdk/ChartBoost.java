package com.chartboost.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import java.net.URLDecoder;
import org.json.JSONObject;

public class ChartBoost
  implements CBAPIConnectionDelegate
{
  public static final String TAG = "ChartBoost";
  private static ChartBoost sharedChartBoost = null;
  private String appId;
  private String appSignature;
  private CBAPIConnection connection = new CBAPIConnection(this);
  private Context context;
  private ChartBoostDelegate delegate;
  
  public static ChartBoost getSharedChartBoost()
  {
    try
    {
      if (sharedChartBoost == null) {
        sharedChartBoost = new ChartBoost();
      }
      ChartBoost localChartBoost = sharedChartBoost;
      return localChartBoost;
    }
    finally {}
  }
  
  private void handleChartBoostRequestForInterstitial(String paramString, CBView paramCBView)
  {
    Log.w("cb", "handleChartBoostRequestForInterstitial");
    paramString = paramString.split("/");
    Object localObject = paramString[2];
    if (this.delegate != null) {
      this.delegate.didDismissInterstitial(paramCBView);
    }
    Log.w("cb", "function: " + (String)localObject);
    if (((String)localObject).equals("close"))
    {
      if (this.delegate != null) {
        this.delegate.didCloseInterstitial(paramCBView);
      }
      ((CBDialogActivity)CBDialogActivity.getContext()).close();
    }
    while (!((String)localObject).equals("link")) {
      return;
    }
    if (this.delegate != null) {
      this.delegate.didClickInterstitial(paramCBView);
    }
    if (paramCBView.getState() == CBView.CBViewState.CBViewStateDisplayedByDefaultController)
    {
      Log.w("cb", "closing interstitial ad");
      ((CBDialogActivity)CBDialogActivity.getContext()).close();
    }
    try
    {
      localObject = new CBAPIRequest(this.context, "api", "click");
      ((CBAPIRequest)localObject).appendDeviceInfoParams();
      ((CBAPIRequest)localObject).appendBodyArgument("to", paramCBView.getResponseContext().getString("to"));
      ((CBAPIRequest)localObject).appendBodyArgument("cgn", paramCBView.getResponseContext().getString("cgn"));
      ((CBAPIRequest)localObject).appendBodyArgument("creative", paramCBView.getResponseContext().getString("creative"));
      ((CBAPIRequest)localObject).sign(this.appId, this.appSignature);
      Log.w("cb", "decoding: " + paramString[3]);
      ((CBAPIRequest)localObject).setContextInfoObject(new CBRunnable()
      {
        public void run(Object... paramAnonymousVarArgs)
        {
          jdField_this.openUrl(this.val$finalRedirectUrl);
        }
      });
      Log.w("cb", "sending request click request");
      this.connection.sendRequest((CBAPIRequest)localObject);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  /* Error */
  private void handleChartBoostRequestForMoreApps(String paramString, CBView paramCBView)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 73
    //   3: invokevirtual 79	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   6: astore_1
    //   7: aload_1
    //   8: iconst_2
    //   9: aaload
    //   10: astore_3
    //   11: aload_0
    //   12: getfield 81	com/chartboost/sdk/ChartBoost:delegate	Lcom/chartboost/sdk/ChartBoostDelegate;
    //   15: ifnull +13 -> 28
    //   18: aload_0
    //   19: getfield 81	com/chartboost/sdk/ChartBoost:delegate	Lcom/chartboost/sdk/ChartBoostDelegate;
    //   22: aload_2
    //   23: invokeinterface 207 2 0
    //   28: aload_3
    //   29: ldc 103
    //   31: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   34: ifeq +30 -> 64
    //   37: aload_0
    //   38: getfield 81	com/chartboost/sdk/ChartBoost:delegate	Lcom/chartboost/sdk/ChartBoostDelegate;
    //   41: ifnull +13 -> 54
    //   44: aload_0
    //   45: getfield 81	com/chartboost/sdk/ChartBoost:delegate	Lcom/chartboost/sdk/ChartBoostDelegate;
    //   48: aload_2
    //   49: invokeinterface 210 2 0
    //   54: invokestatic 116	com/chartboost/sdk/CBDialogActivity:getContext	()Landroid/content/Context;
    //   57: checkcast 112	com/chartboost/sdk/CBDialogActivity
    //   60: invokevirtual 118	com/chartboost/sdk/CBDialogActivity:close	()V
    //   63: return
    //   64: aload_3
    //   65: ldc 120
    //   67: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   70: ifeq -7 -> 63
    //   73: aload_0
    //   74: getfield 81	com/chartboost/sdk/ChartBoost:delegate	Lcom/chartboost/sdk/ChartBoostDelegate;
    //   77: ifnull +13 -> 90
    //   80: aload_0
    //   81: getfield 81	com/chartboost/sdk/ChartBoost:delegate	Lcom/chartboost/sdk/ChartBoostDelegate;
    //   84: aload_2
    //   85: invokeinterface 213 2 0
    //   90: aload_2
    //   91: invokevirtual 129	com/chartboost/sdk/CBView:getState	()Lcom/chartboost/sdk/CBView$CBViewState;
    //   94: getstatic 135	com/chartboost/sdk/CBView$CBViewState:CBViewStateDisplayedByDefaultController	Lcom/chartboost/sdk/CBView$CBViewState;
    //   97: if_acmpne +12 -> 109
    //   100: invokestatic 116	com/chartboost/sdk/CBDialogActivity:getContext	()Landroid/content/Context;
    //   103: checkcast 112	com/chartboost/sdk/CBDialogActivity
    //   106: invokevirtual 118	com/chartboost/sdk/CBDialogActivity:close	()V
    //   109: new 139	com/chartboost/sdk/CBAPIRequest
    //   112: dup
    //   113: aload_0
    //   114: getfield 141	com/chartboost/sdk/ChartBoost:context	Landroid/content/Context;
    //   117: ldc 143
    //   119: ldc 145
    //   121: invokespecial 148	com/chartboost/sdk/CBAPIRequest:<init>	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   124: astore_2
    //   125: aload_2
    //   126: invokevirtual 151	com/chartboost/sdk/CBAPIRequest:appendDeviceInfoParams	()V
    //   129: new 159	org/json/JSONObject
    //   132: dup
    //   133: new 215	org/json/JSONTokener
    //   136: dup
    //   137: aload_1
    //   138: iconst_4
    //   139: aaload
    //   140: invokestatic 185	java/net/URLDecoder:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   143: invokespecial 216	org/json/JSONTokener:<init>	(Ljava/lang/String;)V
    //   146: invokespecial 219	org/json/JSONObject:<init>	(Lorg/json/JSONTokener;)V
    //   149: astore_3
    //   150: aload_2
    //   151: ldc 153
    //   153: aload_3
    //   154: ldc 153
    //   156: invokevirtual 163	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   159: invokevirtual 167	com/chartboost/sdk/CBAPIRequest:appendBodyArgument	(Ljava/lang/String;Ljava/lang/String;)V
    //   162: aload_2
    //   163: ldc 169
    //   165: aload_3
    //   166: ldc 169
    //   168: invokevirtual 163	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   171: invokevirtual 167	com/chartboost/sdk/CBAPIRequest:appendBodyArgument	(Ljava/lang/String;Ljava/lang/String;)V
    //   174: aload_2
    //   175: ldc 171
    //   177: aload_3
    //   178: ldc 171
    //   180: invokevirtual 163	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   183: invokevirtual 167	com/chartboost/sdk/CBAPIRequest:appendBodyArgument	(Ljava/lang/String;Ljava/lang/String;)V
    //   186: aload_2
    //   187: ldc 221
    //   189: aload_3
    //   190: ldc 221
    //   192: invokevirtual 163	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   195: invokevirtual 167	com/chartboost/sdk/CBAPIRequest:appendBodyArgument	(Ljava/lang/String;Ljava/lang/String;)V
    //   198: aload_2
    //   199: ldc 223
    //   201: aload_3
    //   202: ldc 223
    //   204: invokevirtual 163	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   207: invokevirtual 167	com/chartboost/sdk/CBAPIRequest:appendBodyArgument	(Ljava/lang/String;Ljava/lang/String;)V
    //   210: aload_2
    //   211: aload_0
    //   212: getfield 173	com/chartboost/sdk/ChartBoost:appId	Ljava/lang/String;
    //   215: aload_0
    //   216: getfield 175	com/chartboost/sdk/ChartBoost:appSignature	Ljava/lang/String;
    //   219: invokevirtual 178	com/chartboost/sdk/CBAPIRequest:sign	(Ljava/lang/String;Ljava/lang/String;)V
    //   222: aload_2
    //   223: new 12	com/chartboost/sdk/ChartBoost$3
    //   226: dup
    //   227: aload_0
    //   228: aload_0
    //   229: aload_1
    //   230: iconst_3
    //   231: aaload
    //   232: invokestatic 185	java/net/URLDecoder:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   235: invokespecial 224	com/chartboost/sdk/ChartBoost$3:<init>	(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/ChartBoost;Ljava/lang/String;)V
    //   238: invokevirtual 192	com/chartboost/sdk/CBAPIRequest:setContextInfoObject	(Ljava/lang/Object;)V
    //   241: aload_0
    //   242: getfield 43	com/chartboost/sdk/ChartBoost:connection	Lcom/chartboost/sdk/CBAPIConnection;
    //   245: aload_2
    //   246: invokevirtual 198	com/chartboost/sdk/CBAPIConnection:sendRequest	(Lcom/chartboost/sdk/CBAPIRequest;)V
    //   249: return
    //   250: astore_1
    //   251: aload_1
    //   252: invokevirtual 201	java/lang/Exception:printStackTrace	()V
    //   255: return
    //   256: astore_3
    //   257: goto -47 -> 210
    //   260: astore 4
    //   262: goto -64 -> 198
    //   265: astore 4
    //   267: goto -81 -> 186
    //   270: astore 4
    //   272: goto -98 -> 174
    //   275: astore 4
    //   277: goto -115 -> 162
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	280	0	this	ChartBoost
    //   0	280	1	paramString	String
    //   0	280	2	paramCBView	CBView
    //   10	192	3	localJSONObject	JSONObject
    //   256	1	3	localJSONException1	org.json.JSONException
    //   260	1	4	localJSONException2	org.json.JSONException
    //   265	1	4	localJSONException3	org.json.JSONException
    //   270	1	4	localJSONException4	org.json.JSONException
    //   275	1	4	localJSONException5	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   109	150	250	java/lang/Exception
    //   150	162	250	java/lang/Exception
    //   162	174	250	java/lang/Exception
    //   174	186	250	java/lang/Exception
    //   186	198	250	java/lang/Exception
    //   198	210	250	java/lang/Exception
    //   210	249	250	java/lang/Exception
    //   198	210	256	org/json/JSONException
    //   186	198	260	org/json/JSONException
    //   174	186	265	org/json/JSONException
    //   162	174	270	org/json/JSONException
    //   150	162	275	org/json/JSONException
  }
  
  private void loadChartBoostView(JSONObject paramJSONObject, CBView.CBViewType paramCBViewType)
  {
    Intent localIntent = new Intent(this.context, CBDialogActivity.class);
    localIntent.putExtra("bk_type", paramCBViewType.ordinal());
    localIntent.putExtra("bk_cfgo", paramJSONObject.toString());
    this.context.startActivity(localIntent);
  }
  
  private void openUrl(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(paramString));
    Log.i("ChartBoost", "Sideloading URL: " + paramString);
    this.context.startActivity(localIntent);
  }
  
  public void didFailToReceiveAPIResponse(CBAPIRequest paramCBAPIRequest)
  {
    Log.w("ChartBoost", "API response failed!");
  }
  
  public void didReceiveAPIResponse(JSONObject paramJSONObject, CBAPIRequest paramCBAPIRequest)
  {
    Log.i("ChartBoost", "API response received!");
    if ((paramCBAPIRequest.getContextInfoObject() instanceof CBRunnable)) {
      ((CBRunnable)paramCBAPIRequest.getContextInfoObject()).run(new Object[] { paramJSONObject });
    }
  }
  
  public String getAppId()
  {
    return this.appId;
  }
  
  public String getAppSignature()
  {
    return this.appSignature;
  }
  
  public Context getContext()
  {
    return this.context;
  }
  
  public ChartBoostDelegate getDelegate()
  {
    return this.delegate;
  }
  
  protected void handleChartBoostRequest(String paramString, CBView paramCBView)
  {
    Log.i("ChartBoost", "Handling chartboost:// request: " + paramString);
    if (paramCBView.getType() == CBView.CBViewType.CBViewTypeInterstitial) {
      handleChartBoostRequestForInterstitial(paramString, paramCBView);
    }
    while (paramCBView.getType() != CBView.CBViewType.CBViewTypeMoreApps) {
      return;
    }
    handleChartBoostRequestForMoreApps(paramString, paramCBView);
  }
  
  public void install()
  {
    try
    {
      CBAPIRequest localCBAPIRequest = new CBAPIRequest(this.context, "api", "install");
      localCBAPIRequest.appendDeviceInfoParams();
      localCBAPIRequest.sign(this.appId, this.appSignature);
      this.connection.sendRequest(localCBAPIRequest);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void loadInterstitial()
  {
    loadInterstitial("Default");
  }
  
  public void loadInterstitial(String paramString)
  {
    if ((this.delegate != null) && (!this.delegate.shouldRequestInterstitial())) {
      return;
    }
    try
    {
      CBAPIRequest localCBAPIRequest = new CBAPIRequest(this.context, "api", "get");
      localCBAPIRequest.appendDeviceInfoParams();
      localCBAPIRequest.appendBodyArgument("location", paramString);
      localCBAPIRequest.sign(this.appId, this.appSignature);
      localCBAPIRequest.setContextInfoObject(new CBRunnable()
      {
        public void run(Object... paramAnonymousVarArgs)
        {
          if ((paramAnonymousVarArgs.length != 1) || (!(paramAnonymousVarArgs[0] instanceof JSONObject))) {}
          for (;;)
          {
            return;
            JSONObject localJSONObject = (JSONObject)paramAnonymousVarArgs[0];
            try
            {
              if (localJSONObject.getInt("status") == 200)
              {
                jdField_this.loadChartBoostView((JSONObject)paramAnonymousVarArgs[0], CBView.CBViewType.CBViewTypeInterstitial);
                return;
              }
            }
            catch (Exception paramAnonymousVarArgs)
            {
              paramAnonymousVarArgs.printStackTrace();
            }
          }
        }
      });
      this.connection.sendRequest(localCBAPIRequest);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void loadMoreApps()
  {
    try
    {
      CBAPIRequest localCBAPIRequest = new CBAPIRequest(this.context, "api", "more");
      localCBAPIRequest.appendDeviceInfoParams();
      localCBAPIRequest.sign(this.appId, this.appSignature);
      localCBAPIRequest.setContextInfoObject(new CBRunnable()
      {
        public void run(Object... paramAnonymousVarArgs)
        {
          if ((paramAnonymousVarArgs.length != 1) || (!(paramAnonymousVarArgs[0] instanceof JSONObject))) {}
          for (;;)
          {
            return;
            JSONObject localJSONObject = (JSONObject)paramAnonymousVarArgs[0];
            try
            {
              if (localJSONObject.getInt("status") == 200)
              {
                jdField_this.loadChartBoostView((JSONObject)paramAnonymousVarArgs[0], CBView.CBViewType.CBViewTypeMoreApps);
                return;
              }
            }
            catch (Exception paramAnonymousVarArgs)
            {
              paramAnonymousVarArgs.printStackTrace();
            }
          }
        }
      });
      this.connection.sendRequest(localCBAPIRequest);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void setAppId(String paramString)
  {
    this.appId = paramString;
  }
  
  public void setAppSignature(String paramString)
  {
    this.appSignature = paramString;
  }
  
  public void setContext(Context paramContext)
  {
    this.context = paramContext;
    CBDefaultViewController.getSharedController().setContext(paramContext);
  }
  
  public void setDelegate(ChartBoostDelegate paramChartBoostDelegate)
  {
    this.delegate = paramChartBoostDelegate;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.chartboost.sdk.ChartBoost
 * JD-Core Version:    0.7.0.1
 */