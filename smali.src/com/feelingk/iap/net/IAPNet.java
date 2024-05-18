package com.feelingk.iap.net;

import android.content.Context;
import android.os.Build;
import com.feelingk.iap.IAPLib;
import com.feelingk.iap.gui.data.SingletonCounter;
import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.CommonF.LOGGER;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.CommonString.Index;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

public class IAPNet
{
  static final String TAG = "IAPNet";
  private static boolean connect;
  private static boolean connectBP;
  private static InputStream inputStream;
  private static InputStream inputStreamBP = null;
  private static boolean isInit;
  private static boolean isWifi;
  private static Context mContext = null;
  private static OutputStream outputStream;
  private static OutputStream outputStreamBP = null;
  private static Socket socketBP;
  private static Socket socketGateway;
  
  static
  {
    isWifi = false;
    connectBP = false;
    connect = false;
    isInit = false;
    socketGateway = null;
    inputStream = null;
    outputStream = null;
    socketBP = null;
  }
  
  protected static MsgConfirm LguIapSendItemPurchaseByDanal(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5, boolean paramBoolean, String paramString6)
  {
    int j = 0;
    MsgConfirm localMsgConfirm = new MsgConfirm();
    String str3 = IAPLib.getSmsAuthNumberKey();
    String str2 = IAPLib.getSmsAuthKey();
    int i;
    int k;
    String str1;
    label258:
    byte[] arrayOfByte1;
    if (str3 != null)
    {
      CommonF.LOGGER.i("IAPNet", "LGU+ SMS 인증 여부 Y");
      CommonF.LOGGER.i("IAPNet", "smsAuthNumberKey: " + str3);
      CommonF.LOGGER.i("IAPNet", "smsAuthKey: " + str2);
      CommonF.LOGGER.i("IAPNet", "[ DEBUG ] LguIapSendItemPurchaseByDanal() STart!! " + "MK");
      i = 12 + 10 + 2 + 11 + 1;
      if (paramString6 != null) {
        i = paramString6.length() + 36;
      }
      if ((paramString4 != null) || (paramString5 != null)) {
        j = 1;
      }
      k = i + 1 + 1;
      i = k;
      if (paramString4 != null) {
        i = k + 100;
      }
      k = i + 1;
      i = k;
      if (paramString3 != null) {
        i = k + paramString3.length();
      }
      k = i + 1;
      i = k;
      if (paramString5 != null) {
        i = k + paramString5.length();
      }
      k = i;
      if (str3 != null) {
        k = i + 1 + str3.length() + 1 + str2.length();
      }
      k += 1;
      if (paramInt != 2) {
        break label871;
      }
      str1 = "12";
      arrayOfByte1 = new byte[k];
      paramInt = 0;
      label266:
      if (paramInt < k) {
        break label890;
      }
      byte[] arrayOfByte2 = (byte[])null;
      arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("MK", k - 12);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
      paramInt = 0 + 12;
      paramString2 = String.valueOf(paramString2).getBytes();
      System.arraycopy(paramString2, 0, arrayOfByte1, paramInt, paramString2.length);
      paramInt += 10;
      paramString2 = String.valueOf(str1).getBytes();
      System.arraycopy(paramString2, 0, arrayOfByte1, paramInt, paramString2.length);
      paramInt += 2;
      paramString1 = String.valueOf(paramString1).getBytes();
      System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
      paramInt += 11;
      if (paramString6 == null) {
        break label902;
      }
      arrayOfByte1[paramInt] = ((byte)paramString6.length());
      paramInt += 1;
      label395:
      i = paramInt;
      if (paramString6 != null)
      {
        paramString1 = String.valueOf(paramString6).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
        i = paramString6.getBytes().length + 36;
        CommonF.LOGGER.e("IAPNet", "Jumin length=" + paramString6.length() + "  // Value = " + paramString6);
      }
      if (!paramBoolean) {
        break label915;
      }
      arrayOfByte1[i] = 89;
      paramInt = i + 1;
      label485:
      if (paramString4 == null) {
        break label930;
      }
      i = paramInt + 1;
      arrayOfByte1[paramInt] = ((byte)paramString4.length());
      paramInt = i;
      label508:
      i = paramInt;
      if (paramString4 != null)
      {
        System.arraycopy(paramString4.getBytes(), 0, arrayOfByte1, paramInt, paramString4.getBytes().length);
        i = paramInt + 100;
      }
      if (paramString3 != null) {
        arrayOfByte1[i] = ((byte)paramString3.length());
      }
      i += 1;
      paramInt = i;
      if (paramString3 != null)
      {
        System.arraycopy(paramString3.getBytes(), 0, arrayOfByte1, i, paramString3.getBytes().length);
        paramInt = i + paramString3.getBytes().length;
      }
      if (j == 0) {
        break label946;
      }
      if (paramString5 != null) {
        arrayOfByte1[paramInt] = ((byte)paramString5.length());
      }
      paramInt += 1;
      if (paramString5 == null) {
        break label1004;
      }
      System.arraycopy(paramString5.getBytes(), 0, arrayOfByte1, paramInt, paramString5.getBytes().length);
      paramInt += paramString5.getBytes().length;
    }
    label649:
    label871:
    label1004:
    for (;;)
    {
      if (str3 != null)
      {
        i = paramInt + 1;
        arrayOfByte1[paramInt] = ((byte)str3.length());
        paramString1 = String.valueOf(str3).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        paramInt = i + str3.getBytes().length;
        CommonF.LOGGER.e("IAPNet", "smsAuthNumberKey=" + str3.length() + "  // Value = " + str3);
        i = paramInt + 1;
        arrayOfByte1[paramInt] = ((byte)str2.length());
        paramString1 = String.valueOf(str2).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        paramInt = str2.getBytes().length;
        CommonF.LOGGER.e("IAPNet", "smsAuthKey=" + str2.length() + "  // Value = " + str2);
      }
      for (;;)
      {
        arrayOfByte1[(k - 1)] = 23;
        byte b = iapWrite(arrayOfByte1);
        IAPNetworkUtil.packetDebug(arrayOfByte1, arrayOfByte1.length);
        if (b != 0)
        {
          localMsgConfirm.setResultCode(b);
          localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
          return localMsgConfirm;
          CommonF.LOGGER.i("IAPNet", "LGU+ SMS 인증 여부 N");
          break;
          if (paramInt == 3)
          {
            str1 = "13";
            break label258;
          }
          str1 = "11";
          break label258;
          label890:
          arrayOfByte1[paramInt] = 0;
          paramInt += 1;
          break label266;
          arrayOfByte1[paramInt] = 48;
          paramInt += 1;
          break label395;
          arrayOfByte1[i] = 78;
          paramInt = i + 1;
          break label485;
          i = paramInt + 1;
          arrayOfByte1[paramInt] = 0;
          paramInt = i;
          break label508;
          paramInt += 1;
          break label649;
        }
        paramString1 = iapReceive(localMsgConfirm);
        if (localMsgConfirm.getResultCode() != 0)
        {
          localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
          return localMsgConfirm;
        }
        localMsgConfirm.parse(paramString1);
        CommonF.LOGGER.i("IAPNet", "[ DEBUG ] LguIapSendItemPurchaseByDanal()  End !!!!!!!!");
        IAPLib.setOTPNumber(null);
        return localMsgConfirm;
      }
    }
  }
  
  protected static MsgConfirm ReIapSendItemPurchaseByDanal(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5, boolean paramBoolean, String paramString6)
  {
    int i = 0;
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] ReIapSendItemPurchaseByDanal() STart!! " + "KX");
    int j = 12 + 10 + 2 + 11 + 1;
    if (paramString6 != null) {
      j = paramString6.length() + 36;
    }
    if ((paramString4 != null) || (paramString5 != null)) {
      i = 1;
    }
    int k = j + 1 + 1;
    j = k;
    if (paramString4 != null) {
      j = k + 100;
    }
    k = j + 1;
    j = k;
    if (paramString3 != null) {
      j = k + paramString3.length();
    }
    k = j + 1;
    j = k;
    if (paramString5 != null) {
      j = k + paramString5.length();
    }
    String str;
    byte[] arrayOfByte1;
    if (paramInt == 2)
    {
      str = "12";
      arrayOfByte1 = new byte[j];
      paramInt = 0;
      label165:
      if (paramInt < j) {
        break label615;
      }
      byte[] arrayOfByte2 = (byte[])null;
      arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("KX", j - 12);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
      paramInt = 0 + 12;
      paramString2 = String.valueOf(paramString2).getBytes();
      System.arraycopy(paramString2, 0, arrayOfByte1, paramInt, paramString2.length);
      paramInt += 10;
      paramString2 = String.valueOf(str).getBytes();
      System.arraycopy(paramString2, 0, arrayOfByte1, paramInt, paramString2.length);
      paramInt += 2;
      paramString1 = String.valueOf(paramString1).getBytes();
      System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
      paramInt += 11;
      if (paramString6 == null) {
        break label627;
      }
      arrayOfByte1[paramInt] = ((byte)paramString6.length());
      paramInt += 1;
      label294:
      k = paramInt;
      if (paramString6 != null)
      {
        paramString1 = String.valueOf(paramString6).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
        k = paramString6.getBytes().length + 36;
        CommonF.LOGGER.e("IAPNet", "Jumin length=" + paramString6.length() + "  // Value = " + paramString6);
      }
      if (!paramBoolean) {
        break label640;
      }
      arrayOfByte1[k] = 89;
      paramInt = k + 1;
      label384:
      if (paramString4 == null) {
        break label655;
      }
      k = paramInt + 1;
      arrayOfByte1[paramInt] = ((byte)paramString4.length());
    }
    for (paramInt = k;; paramInt = k)
    {
      k = paramInt;
      if (paramString4 != null)
      {
        System.arraycopy(paramString4.getBytes(), 0, arrayOfByte1, paramInt, paramString4.getBytes().length);
        k = paramInt + 100;
      }
      if (paramString3 != null) {
        arrayOfByte1[k] = ((byte)paramString3.length());
      }
      k += 1;
      paramInt = k;
      if (paramString3 != null)
      {
        System.arraycopy(paramString3.getBytes(), 0, arrayOfByte1, k, paramString3.getBytes().length);
        paramInt = k + paramString3.getBytes().length;
      }
      if (i != 0)
      {
        if (paramString5 != null) {
          arrayOfByte1[paramInt] = ((byte)paramString5.length());
        }
        paramInt += 1;
        if (paramString5 != null)
        {
          System.arraycopy(paramString5.getBytes(), 0, arrayOfByte1, paramInt, paramString5.getBytes().length);
          paramInt = paramString5.getBytes().length;
        }
      }
      arrayOfByte1[(j - 1)] = 23;
      byte b = iapWrite(arrayOfByte1);
      IAPNetworkUtil.packetDebug(arrayOfByte1, arrayOfByte1.length);
      if (b == 0) {
        break label671;
      }
      localMsgConfirm.setResultCode(b);
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
      if (paramInt == 3)
      {
        str = "13";
        break;
      }
      str = "11";
      break;
      label615:
      arrayOfByte1[paramInt] = 0;
      paramInt += 1;
      break label165;
      label627:
      arrayOfByte1[paramInt] = 48;
      paramInt += 1;
      break label294;
      label640:
      arrayOfByte1[k] = 78;
      paramInt = k + 1;
      break label384;
      label655:
      k = paramInt + 1;
      arrayOfByte1[paramInt] = 0;
    }
    label671:
    paramString1 = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString1);
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] ReIapSendItemPurchaseByDanal()  End !!!!!!!!");
    return localMsgConfirm;
  }
  
  protected static int iapClose(boolean paramBoolean)
  {
    CommonF.LOGGER.e("IAPNet", "[ DEBUG ] Socket Close!");
    try
    {
      if (inputStream != null) {
        inputStream.close();
      }
      try
      {
        label19:
        if (outputStream != null) {
          outputStream.close();
        }
        try
        {
          label31:
          if (socketGateway != null) {
            socketGateway.close();
          }
          label43:
          inputStream = null;
          outputStream = null;
          socketGateway = null;
          connect = false;
          isInit = false;
          return 0;
        }
        catch (Exception localException1)
        {
          break label43;
        }
      }
      catch (Exception localException2)
      {
        break label31;
      }
    }
    catch (Exception localException3)
    {
      break label19;
    }
  }
  
  protected static int iapCloseBP(boolean paramBoolean)
  {
    try
    {
      if (inputStreamBP != null) {
        inputStreamBP.close();
      }
      try
      {
        label12:
        if (outputStreamBP != null) {
          outputStreamBP.close();
        }
        try
        {
          label24:
          if (socketBP != null) {
            socketBP.close();
          }
          label36:
          inputStreamBP = null;
          outputStreamBP = null;
          socketBP = null;
          connectBP = false;
          return 0;
        }
        catch (Exception localException1)
        {
          break label36;
        }
      }
      catch (Exception localException2)
      {
        break label24;
      }
    }
    catch (Exception localException3)
    {
      break label12;
    }
  }
  
  protected static InitConfirm iapConnect(ServerInfo paramServerInfo, int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2, String paramString4, String paramString5, String paramString6, boolean paramBoolean, Context paramContext)
  {
    mContext = paramContext;
    paramContext = new InitConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] Server connect - Start : iapConnect Wifi= " + isWifi);
    if (connect) {
      paramContext.setResultCode((byte)-1);
    }
    for (;;)
    {
      return paramContext;
      try
      {
        if (isWifi)
        {
          paramServerInfo = new InetSocketAddress(paramServerInfo.getHostAddress(), paramServerInfo.getPort());
          SSLContext localSSLContext = SSLContext.getInstance("TLS");
          TrustManager localTrustManager = new TrustManager();
          SecureRandom localSecureRandom = new SecureRandom();
          localSSLContext.init(null, new TrustManager[] { localTrustManager }, localSecureRandom);
          socketGateway = localSSLContext.getSocketFactory().createSocket();
          socketGateway.setSoTimeout(20000);
          socketGateway.connect(paramServerInfo, 20000);
          inputStream = socketGateway.getInputStream();
        }
        for (outputStream = socketGateway.getOutputStream();; outputStream = socketGateway.getOutputStream())
        {
          connect = true;
          CommonF.LOGGER.i("IAPNet", "[ DEBUG ] Server connect - Complete!!!");
          iapSendInit(paramContext, paramInt1, paramString1, paramString6, paramString2, paramString3, paramInt2, paramString4, paramString5, paramBoolean);
          if (paramContext.getResultCode() == 0) {
            break label456;
          }
          if (paramContext.getResultCode() != -7) {
            isInit = false;
          }
          if ((paramContext.getResultCode() != -5) && (paramContext.getResultCode() != -4)) {
            break;
          }
          paramContext.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
          return paramContext;
          socketGateway = new Socket();
          socketGateway.setSoTimeout(20000);
          socketGateway.connect(new InetSocketAddress(paramServerInfo.getHostAddress(), paramServerInfo.getPort()), 20000);
          inputStream = socketGateway.getInputStream();
        }
        paramServerInfo = iapReceive(paramContext);
      }
      catch (SocketTimeoutException paramServerInfo)
      {
        connect = false;
        paramContext.setResultCode((byte)-11);
        paramContext.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
        paramServerInfo.printStackTrace();
        return paramContext;
      }
      catch (IOException paramServerInfo)
      {
        connect = false;
        CommonF.LOGGER.i("IAPNet", "[ Exception ] iapConnect() DUMP!!! :" + paramServerInfo.toString());
        paramContext.setResultCode((byte)-3);
        paramContext.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
        paramServerInfo.printStackTrace();
        return paramContext;
      }
      catch (Exception paramServerInfo)
      {
        CommonF.LOGGER.i("IAPNet", "[ Exception ] iapConnect() ~~~~~DUMP~! :" + paramServerInfo.toString());
        connect = false;
        paramContext.setResultCode((byte)-3);
        paramContext.SetDumpMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
        paramServerInfo.printStackTrace();
        return paramContext;
      }
    }
    label456:
    if (paramContext.getResultCode() != 0)
    {
      isInit = false;
      paramContext.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return paramContext;
    }
    paramContext.parse(paramServerInfo);
    return paramContext;
  }
  
  protected static InitConfirm iapConnectBP(ServerInfo paramServerInfo, int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2)
  {
    InitConfirm localInitConfirm = new InitConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapConnectBP - Start! isWifi= " + isWifi);
    if (connectBP)
    {
      localInitConfirm.setResultCode((byte)-1);
      return localInitConfirm;
    }
    try
    {
      SSLContext localSSLContext;
      if (isWifi)
      {
        localSSLContext = SSLContext.getInstance("TLS");
        Object localObject = (TrustManager[])null;
        localObject = new TrustManager();
        SecureRandom localSecureRandom = new SecureRandom();
        localSSLContext.init(null, new TrustManager[] { localObject }, localSecureRandom);
      }
      for (socketBP = localSSLContext.getSocketFactory().createSocket();; socketBP = new Socket())
      {
        socketBP.connect(new InetSocketAddress(paramServerInfo.getHostAddress(), paramServerInfo.getPort()), 10000);
        inputStreamBP = socketBP.getInputStream();
        outputStreamBP = socketBP.getOutputStream();
        connectBP = true;
        CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapConnectBP - Connection Complete!");
        iapSendInitBP(localInitConfirm, paramInt1, paramString1, paramString2, paramString3.getBytes(), paramInt2);
        if ((localInitConfirm.getResultCode() == 0) || (localInitConfirm.getResultCode() == -7)) {
          break;
        }
        localInitConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
        return localInitConfirm;
      }
      paramServerInfo = iapReceiveBP(localInitConfirm);
    }
    catch (Exception paramServerInfo)
    {
      CommonF.LOGGER.i("IAPNet", "[ Exception ] iapConnectBP() " + paramServerInfo);
      connectBP = false;
      localInitConfirm.setResultCode((byte)-3);
      localInitConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
      return localInitConfirm;
    }
    if (localInitConfirm.getResultCode() != 0)
    {
      localInitConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
      return localInitConfirm;
    }
    localInitConfirm.parse(paramServerInfo);
    return localInitConfirm;
  }
  
  protected static InitConfirm iapReAuth(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt2, String paramString5, String paramString6)
  {
    InitConfirm localInitConfirm = new InitConfirm();
    isInit = false;
    iapSendInit(localInitConfirm, paramInt1, paramString1, paramString2, paramString3, paramString4, paramInt2, paramString5, paramString6, false);
    if (localInitConfirm.getResultCode() != 0) {
      return localInitConfirm;
    }
    paramString1 = iapReceive(localInitConfirm);
    if (localInitConfirm.getResultCode() != 0)
    {
      localInitConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localInitConfirm;
    }
    localInitConfirm.parse(paramString1);
    return localInitConfirm;
  }
  
  private static byte[] iapReceive(Confirm paramConfirm)
  {
    for (;;)
    {
      int i;
      int j;
      try
      {
        CommonF.LOGGER.e("IAPNet", "[ DEBUG ] iapReceive() Header Start (" + isInit + ")");
        if (!isInit)
        {
          paramConfirm.setResultCode((byte)-6);
          paramConfirm = null;
          return paramConfirm;
        }
        Object localObject = (byte[])null;
        localObject = (byte[])null;
        localObject = (byte[])null;
        i = 0;
        byte[] arrayOfByte2;
        byte[] arrayOfByte3;
        try
        {
          arrayOfByte2 = new byte[12];
          break label385;
          localObject = new String(arrayOfByte2, 2, 10).trim();
          if (((String)localObject).length() > 0)
          {
            j = Integer.parseInt((String)localObject);
            arrayOfByte3 = new byte[j];
            i = 0;
            break label394;
            if (23 == arrayOfByte3[(j - 1)]) {
              continue;
            }
            CommonF.LOGGER.e("IAPNet", "[ DEBUG ] IAP_ERR_INVALIDPARITY =");
            paramConfirm.setResultCode((byte)-8);
            paramConfirm = null;
            continue;
            j = inputStream.read(arrayOfByte2, i, arrayOfByte2.length - i);
            if (j != -1)
            {
              i += j;
              break label385;
            }
            if (j != -1) {
              continue;
            }
            paramConfirm.setResultCode((byte)-5);
            paramConfirm = null;
            continue;
          }
          paramConfirm.setResultCode((byte)-5);
          paramConfirm = null;
          continue;
          int k = inputStream.read(arrayOfByte3, i, arrayOfByte3.length - i);
          if (k == -1) {
            continue;
          }
          i += k;
        }
        catch (SocketTimeoutException localSocketTimeoutException)
        {
          CommonF.LOGGER.i("IAPNet", "[ Exception ] iapReceive() " + localSocketTimeoutException);
          paramConfirm.setResultCode((byte)-13);
          paramConfirm = null;
          continue;
        }
        catch (Exception localException)
        {
          CommonF.LOGGER.i("IAPNet", "[ Exception ] iapReceive() " + localException);
          paramConfirm.setResultCode((byte)-5);
          paramConfirm = null;
        }
        continue;
        byte[] arrayOfByte1 = new byte[arrayOfByte2.length + arrayOfByte3.length];
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        System.arraycopy(arrayOfByte3, 0, arrayOfByte1, arrayOfByte2.length, arrayOfByte3.length - 1);
        if (paramConfirm != null) {
          paramConfirm.setResultCode((byte)0);
        }
        IAPNetworkUtil.packetDebug(arrayOfByte1, arrayOfByte2.length + arrayOfByte3.length);
        CommonF.LOGGER.e("IAPNet", "[ DEBUG ] iapReceive() Success!!  ");
        paramConfirm = arrayOfByte1;
        continue;
        if (i < 12) {
          continue;
        }
      }
      finally {}
      label385:
      continue;
      label394:
      if (i < j) {}
    }
  }
  
  private static byte[] iapReceiveBP(Confirm paramConfirm)
  {
    byte[] arrayOfByte1 = null;
    for (;;)
    {
      byte[] arrayOfByte2;
      Object localObject;
      label106:
      try
      {
        arrayOfByte2 = (byte[])null;
        arrayOfByte2 = (byte[])null;
        arrayOfByte2 = (byte[])null;
        i = 0;
        try
        {
          arrayOfByte2 = new byte[12];
        }
        catch (Exception localException)
        {
          CommonF.LOGGER.i("IAPNet", "[ Exception ] iapReceiveBP() " + localException);
          paramConfirm.setResultCode((byte)-5);
          paramConfirm = arrayOfByte1;
          continue;
        }
        CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapReceiveBP() Header Receive Complete!");
        localObject = new String(arrayOfByte2, 2, 10).trim();
        if (((String)localObject).length() <= 0) {
          break label268;
        }
        j = Integer.parseInt((String)localObject);
        CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapReceiveBP() Data Length: " + j);
        localObject = new byte[j];
        i = 0;
      }
      finally {}
      int i = localObject[(j - 1)];
      arrayOfByte1 = new byte[arrayOfByte2.length + localObject.length];
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
      System.arraycopy(localObject, 0, arrayOfByte1, arrayOfByte2.length, localObject.length - 1);
      if (paramConfirm != null) {
        paramConfirm.setResultCode((byte)0);
      }
      IAPNetworkUtil.packetDebug(arrayOfByte1, arrayOfByte2.length + localObject.length);
      paramConfirm = arrayOfByte1;
      return paramConfirm;
      label181:
      int j = inputStreamBP.read(arrayOfByte2, i, arrayOfByte2.length - i);
      if (j != -1)
      {
        i += j;
      }
      else
      {
        if (j != -1) {
          continue;
        }
        paramConfirm.setResultCode((byte)-5);
        paramConfirm = arrayOfByte1;
        continue;
        label268:
        paramConfirm.setResultCode((byte)-5);
        paramConfirm = arrayOfByte1;
        continue;
      }
      do
      {
        int k = inputStreamBP.read((byte[])localObject, i, localObject.length - i);
        if (k == -1) {
          break label106;
        }
        i += k;
        continue;
        if (i < 12) {
          break label181;
        }
        break;
      } while (i < j);
    }
  }
  
  protected static MsgConfirm iapSendAutoPurchaseDismiss(String paramString)
  {
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendPurchaseDismiss()");
    int j = 12 + 10 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("JP", 11);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        paramString = String.valueOf(paramString).getBytes();
        System.arraycopy(paramString, 0, arrayOfByte1, 0 + 12, paramString.length);
        arrayOfByte1[22] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localMsgConfirm.setResultCode(b);
        localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localMsgConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString);
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendPurchaseDismiss() End");
    return localMsgConfirm;
  }
  
  protected static AutoPurchaseDismissCheckConfirm iapSendAutoPurchaseDismissCheck(String paramString)
  {
    AutoPurchaseDismissCheckConfirm localAutoPurchaseDismissCheckConfirm = new AutoPurchaseDismissCheckConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendPurchaseDismissCheck()");
    int j = 12 + 10 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("CP", 11);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        paramString = String.valueOf(paramString).getBytes();
        System.arraycopy(paramString, 0, arrayOfByte1, 0 + 12, paramString.length);
        arrayOfByte1[22] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localAutoPurchaseDismissCheckConfirm.setResultCode(b);
        localAutoPurchaseDismissCheckConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localAutoPurchaseDismissCheckConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString = iapReceive(localAutoPurchaseDismissCheckConfirm);
    if (localAutoPurchaseDismissCheckConfirm.getResultCode() != 0)
    {
      localAutoPurchaseDismissCheckConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localAutoPurchaseDismissCheckConfirm;
    }
    localAutoPurchaseDismissCheckConfirm.parse(paramString);
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendPurchaseDismissCheck() End");
    return localAutoPurchaseDismissCheckConfirm;
  }
  
  protected static MsgConfirm iapSendCommonInfo()
  {
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendCommonInfo  Start()====================");
    Object localObject3 = CommonF.getModelName(mContext);
    CommonF.LOGGER.i("IAPNet", "modelName= " + (String)localObject3);
    int i = CommonF.getCarrier(mContext);
    CommonF.LOGGER.i("IAPNet", "Carrier= " + i);
    Object localObject1 = CommonF.getIMEI(mContext);
    CommonF.LOGGER.i("IAPNet", "encImei= " + (String)localObject1);
    Object localObject2 = CommonF.getUAProfileData(i);
    CommonF.LOGGER.i("IAPNet", "UACD= " + (String)localObject2);
    int j = ((String)localObject1).length() + 67 + 4 + 1;
    byte[] arrayOfByte1 = new byte[j];
    i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("IR", j - 12);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        i = 0 + 12;
        localObject3 = String.valueOf(localObject3).getBytes();
        System.arraycopy(localObject3, 0, arrayOfByte1, i, localObject3.length);
        i += 50;
        localObject2 = String.valueOf(localObject2).getBytes();
        System.arraycopy(localObject2, 0, arrayOfByte1, i, localObject2.length);
        i += 4;
        arrayOfByte1[i] = ((byte)((String)localObject1).length());
        localObject2 = String.valueOf(localObject1).getBytes();
        System.arraycopy(localObject2, 0, arrayOfByte1, i + 1, localObject2.length);
        i = ((String)localObject1).getBytes().length + 67;
        localObject1 = String.valueOf("0002").getBytes();
        System.arraycopy(localObject1, 0, arrayOfByte1, i, localObject1.length);
        arrayOfByte1[(j - 1)] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localMsgConfirm.setResultCode(b);
        localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localMsgConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    arrayOfByte1 = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(arrayOfByte1);
    CommonF.LOGGER.i("IAPNet", "====================iapSendCommonInfo  End()====================");
    return localMsgConfirm;
  }
  
  protected static CultureLandCashConfirm iapSendCultureLandCashInfoQuery(String paramString1, String paramString2, String paramString3)
  {
    CultureLandCashConfirm localCultureLandCashConfirm = new CultureLandCashConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendCultureLandCashInfoQuery() Start()====================");
    int j = 12 + 10 + 20 + 50 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("CQ", 81);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        i = 0 + 12;
        paramString1 = String.valueOf(paramString1).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        i += 10;
        paramString1 = String.valueOf(paramString2).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        i += 20;
        paramString1 = String.valueOf(paramString3).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        arrayOfByte1[92] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localCultureLandCashConfirm.setResultCode(b);
        localCultureLandCashConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localCultureLandCashConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString1 = iapReceive(localCultureLandCashConfirm);
    if (localCultureLandCashConfirm.getResultCode() != 0)
    {
      localCultureLandCashConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localCultureLandCashConfirm;
    }
    localCultureLandCashConfirm.parse(paramString1);
    CommonF.LOGGER.i("IAPNet", "====================iapSendCultureLandCashInfoQuery() End()====================");
    return localCultureLandCashConfirm;
  }
  
  protected static byte[] iapSendData(byte[] paramArrayOfByte)
  {
    DataPacket localDataPacket = new DataPacket();
    CommonF.LOGGER.e("IAPNet", "[ DEBUG ] iapSendData!!!!() Start ~~~~~~~~~~~~~~~~~~~~");
    int j = paramArrayOfByte.length + 12 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    if (i >= j)
    {
      byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("DP", paramArrayOfByte.length + 1);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 12, paramArrayOfByte.length);
      arrayOfByte1[(j - 1)] = 23;
      if (iapWrite(arrayOfByte1) == 0) {
        break label101;
      }
    }
    label101:
    do
    {
      return null;
      arrayOfByte1[i] = 0;
      i += 1;
      break;
      paramArrayOfByte = iapReceive(localDataPacket);
    } while (localDataPacket.getResultCode() != 0);
    localDataPacket.parse(paramArrayOfByte);
    CommonF.LOGGER.e("IAPNet", "[ DEBUG ] iapSendData() End~~~~~~~~~~~~~~~~~~~~");
    return localDataPacket.getData();
  }
  
  protected static byte[] iapSendDataBP(byte[] paramArrayOfByte)
  {
    DataPacket localDataPacket = new DataPacket();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendDataBP()");
    int j = paramArrayOfByte.length + 12 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    if (i >= j)
    {
      byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("DP", paramArrayOfByte.length + 1);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 12, paramArrayOfByte.length);
      arrayOfByte1[(j - 1)] = 23;
      if (iapWriteBP(arrayOfByte1) == 0) {
        break label101;
      }
    }
    label101:
    do
    {
      return null;
      arrayOfByte1[i] = 0;
      i += 1;
      break;
      paramArrayOfByte = iapReceiveBP(localDataPacket);
      IAPNetworkUtil.packetDebug(paramArrayOfByte, paramArrayOfByte.length);
    } while (localDataPacket.getResultCode() != 0);
    localDataPacket.parse(paramArrayOfByte);
    return localDataPacket.getData();
  }
  
  protected static MsgConfirm iapSendDataMembership(int paramInt, String paramString)
  {
    MsgConfirm localMsgConfirm = new MsgConfirm();
    String str = Build.MODEL;
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendItemMembership()");
    int j = 12 + 2 + 11 + 1;
    if (paramInt != 2)
    {
      i = j;
      if (paramInt != 3) {}
    }
    else
    {
      i = j;
      if (str != null)
      {
        if (str.getBytes().length <= 64) {
          break label293;
        }
        i = j + 64;
      }
    }
    int k = i + 1;
    byte[] arrayOfByte1 = new byte[k];
    int i = 0;
    label84:
    byte[] arrayOfByte2;
    if (i >= k)
    {
      arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("SP", k - 12);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
      i = 0 + 12;
      if (paramInt != 1) {
        break label318;
      }
      arrayOfByte2 = String.valueOf("11").getBytes();
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i, arrayOfByte2.length);
      label147:
      i += 2;
      paramString = String.valueOf(paramString).getBytes();
      System.arraycopy(paramString, 0, arrayOfByte1, i, paramString.length);
      i += 11;
      if (paramInt != 1) {
        break label378;
      }
      arrayOfByte1[i] = 0;
      CommonF.LOGGER.e("IAPNet", "[ DEBUG ] byte_modelLength = " + arrayOfByte1[25]);
    }
    for (;;)
    {
      j = i + 1;
      if (paramInt != 2)
      {
        i = j;
        if (paramInt != 3) {}
      }
      else
      {
        paramString = String.valueOf(str).getBytes();
        System.arraycopy(paramString, 0, arrayOfByte1, j, paramString.length);
        i = paramString.length + 26;
      }
      arrayOfByte1[(k - 1)] = 23;
      byte b = iapWrite(arrayOfByte1);
      if (b == 0) {
        break label391;
      }
      localMsgConfirm.setResultCode(b);
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
      label293:
      i = str.getBytes().length + 26;
      break;
      arrayOfByte1[i] = 0;
      i += 1;
      break label84;
      label318:
      if (paramInt == 2)
      {
        arrayOfByte2 = String.valueOf("12").getBytes();
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i, arrayOfByte2.length);
        break label147;
      }
      if (paramInt != 3) {
        break label147;
      }
      arrayOfByte2 = String.valueOf("13").getBytes();
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i, arrayOfByte2.length);
      break label147;
      label378:
      arrayOfByte1[i] = ((byte)str.length());
    }
    label391:
    paramString = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString);
    return localMsgConfirm;
  }
  
  protected static MsgConfirm iapSendDiscountInfoQuery(ItemInfoConfirm paramItemInfoConfirm, CultureLandCashConfirm paramCultureLandCashConfirm, OKCashbagPointInfoConfirm paramOKCashbagPointInfoConfirm, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendDiscountInfoQuery() Start()====================");
    CommonF.LOGGER.i("IAPNet", "OCBUse: " + paramInt1 + ", dotoriUse: " + paramInt2 + ", cultureUse: " + paramInt3 + ", tCashUse: " + paramInt4);
    paramOKCashbagPointInfoConfirm = paramString1;
    if (paramString1 == null) {
      paramOKCashbagPointInfoConfirm = "0";
    }
    int j = paramOKCashbagPointInfoConfirm.length() + 98 + 1;
    int i = j;
    if (paramString2 != null) {
      i = j + paramString2.length();
    }
    j = i + 6 + 1 + 6 + 1;
    paramString1 = new byte[j];
    i = 0;
    if (i >= j)
    {
      byte[] arrayOfByte = IAPNetworkUtil.iapMakePacketHeader("LM", j - 12);
      System.arraycopy(arrayOfByte, 0, paramString1, 0, arrayOfByte.length);
      i = 0 + 12;
      if (paramInt3 == 0) {
        break label719;
      }
      paramString1[i] = 89;
      i += 1;
      label189:
      if (paramString3 != null)
      {
        paramString3 = String.valueOf(paramString3).getBytes();
        System.arraycopy(paramString3, 0, paramString1, i, paramString3.length);
      }
      i += 20;
      if (paramCultureLandCashConfirm != null)
      {
        paramString3 = String.valueOf(paramCultureLandCashConfirm.getCultureLandUserKey()).getBytes();
        System.arraycopy(paramString3, 0, paramString1, i, paramString3.length);
      }
      i += 12;
      if (paramCultureLandCashConfirm != null)
      {
        paramString3 = String.valueOf(paramCultureLandCashConfirm.getCultureLandUserAuthNum()).getBytes();
        System.arraycopy(paramString3, 0, paramString1, i, paramString3.length);
      }
      i += 25;
      if (paramCultureLandCashConfirm != null)
      {
        paramCultureLandCashConfirm = String.valueOf(paramCultureLandCashConfirm.getCultureLandAuth()).getBytes();
        System.arraycopy(paramCultureLandCashConfirm, 0, paramString1, i, paramCultureLandCashConfirm.length);
      }
      i += 1;
      paramCultureLandCashConfirm = String.valueOf(paramInt3).getBytes();
      System.arraycopy(paramCultureLandCashConfirm, 0, paramString1, i, paramCultureLandCashConfirm.length);
      i += 6;
      if (paramInt2 == 0) {
        break label734;
      }
      paramInt3 = i + 1;
      paramString1[i] = 89;
      label367:
      if (paramItemInfoConfirm == null) {
        break label799;
      }
      if (!paramItemInfoConfirm.getmNCMembershipInfo().equals("N")) {
        break label749;
      }
      i = paramInt3 + 1;
      paramString1[paramInt3] = 78;
      paramInt3 = i;
      label400:
      if (paramItemInfoConfirm == null) {
        break label817;
      }
      paramItemInfoConfirm = String.valueOf(paramItemInfoConfirm.getmNCMembershipNumber()).getBytes();
      System.arraycopy(paramItemInfoConfirm, 0, paramString1, paramInt3, paramItemInfoConfirm.length);
      paramInt3 += 11;
      label432:
      paramItemInfoConfirm = String.valueOf(paramInt2).getBytes();
      System.arraycopy(paramItemInfoConfirm, 0, paramString1, paramInt3, paramItemInfoConfirm.length);
      paramInt2 = paramInt3 + 6;
      if (paramInt1 == 0) {
        break label827;
      }
      paramString1[paramInt2] = 89;
      paramInt2 += 1;
      label475:
      paramInt3 = paramInt2 + 1;
      paramString1[paramInt2] = ((byte)paramOKCashbagPointInfoConfirm.getBytes().length);
      paramInt2 = paramInt3;
      if (paramOKCashbagPointInfoConfirm != null)
      {
        paramInt2 = paramInt3;
        if ((byte)paramOKCashbagPointInfoConfirm.length() != 0)
        {
          paramItemInfoConfirm = String.valueOf(paramOKCashbagPointInfoConfirm).getBytes();
          System.arraycopy(paramItemInfoConfirm, 0, paramString1, paramInt3, paramItemInfoConfirm.length);
          paramInt2 = paramOKCashbagPointInfoConfirm.getBytes().length + 98;
        }
      }
      if (paramString2 == null) {
        break label842;
      }
      paramInt3 = paramInt2 + 1;
      paramString1[paramInt2] = ((byte)paramString2.length());
      paramInt2 = paramInt3;
      label564:
      paramInt3 = paramInt2;
      if (paramString2 != null)
      {
        paramItemInfoConfirm = String.valueOf(paramString2).getBytes();
        System.arraycopy(paramItemInfoConfirm, 0, paramString1, paramInt2, paramItemInfoConfirm.length);
        paramInt3 = paramInt2 + paramString2.getBytes().length;
      }
      paramItemInfoConfirm = String.valueOf(paramInt1).getBytes();
      System.arraycopy(paramItemInfoConfirm, 0, paramString1, paramInt3, paramItemInfoConfirm.length);
      paramInt1 = paramInt3 + 6;
      if (paramInt4 == 0) {
        break label851;
      }
      paramString1[paramInt1] = 89;
      paramInt1 += 1;
    }
    for (;;)
    {
      paramItemInfoConfirm = String.valueOf(paramInt4).getBytes();
      System.arraycopy(paramItemInfoConfirm, 0, paramString1, paramInt1, paramItemInfoConfirm.length);
      paramString1[(j - 1)] = 23;
      byte b = iapWrite(paramString1);
      if (b == 0) {
        break label866;
      }
      localMsgConfirm.setResultCode(b);
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
      paramString1[i] = 0;
      i += 1;
      break;
      label719:
      paramString1[i] = 78;
      i += 1;
      break label189;
      label734:
      paramInt3 = i + 1;
      paramString1[i] = 78;
      break label367;
      label749:
      if (paramItemInfoConfirm.getmNCMembershipInfo().equals("C"))
      {
        i = paramInt3 + 1;
        paramString1[paramInt3] = 67;
        paramInt3 = i;
        break label400;
      }
      i = paramInt3 + 1;
      paramString1[paramInt3] = 0;
      paramInt3 = i;
      break label400;
      label799:
      i = paramInt3 + 1;
      paramString1[paramInt3] = 0;
      paramInt3 = i;
      break label400;
      label817:
      paramInt3 += 11;
      break label432;
      label827:
      paramString1[paramInt2] = 78;
      paramInt2 += 1;
      break label475;
      label842:
      paramInt2 += 1;
      break label564;
      label851:
      paramString1[paramInt1] = 78;
      paramInt1 += 1;
    }
    label866:
    paramItemInfoConfirm = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramItemInfoConfirm);
    CommonF.LOGGER.i("IAPNet", "====================iapSendDiscountInfoQuery() End()====================");
    return localMsgConfirm;
  }
  
  protected static MsgConfirm iapSendDotoriSmsAuthInfoQuery(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendDotoriSmsAuthInfoQuery() Start()====================");
    int j = paramString3.length() + 30 + 1 + paramString4.length() + 10 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("DA", j - 12);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        i = 0 + 12;
        paramString1 = String.valueOf(paramString1).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        i += 11;
        paramString1 = String.valueOf(paramString2).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        i += 6;
        arrayOfByte1[i] = ((byte)paramString3.length());
        paramString1 = String.valueOf(paramString3).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i + 1, paramString1.length);
        i = paramString3.getBytes().length + 30;
        int k = i + 1;
        arrayOfByte1[i] = ((byte)paramString4.length());
        paramString1 = String.valueOf(paramString4).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, k, paramString1.length);
        i = k + paramString4.getBytes().length;
        paramString1 = String.valueOf(paramString5).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        arrayOfByte1[(j - 1)] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localMsgConfirm.setResultCode(b);
        localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localMsgConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString1 = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString1);
    CommonF.LOGGER.i("IAPNet", "====================iapSendDotoriSmsAuthInfoQuery() End()====================");
    return localMsgConfirm;
  }
  
  protected static DotoriSmsAuthConfirm iapSendDotoriSmsAuthNumberInfoQuery(String paramString1, int paramInt, String paramString2)
  {
    DotoriSmsAuthConfirm localDotoriSmsAuthConfirm = new DotoriSmsAuthConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendDotoriSmsAuthNumberInfoQuery() Start()====================");
    String str;
    int i;
    byte[] arrayOfByte1;
    if (paramInt == 2)
    {
      str = "K";
      i = 12 + 11 + 1 + 10 + 1;
      arrayOfByte1 = new byte[i];
      paramInt = 0;
    }
    for (;;)
    {
      if (paramInt >= i)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("DR", 23);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        paramInt = 0 + 12;
        paramString1 = String.valueOf(paramString1).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
        paramInt += 11;
        paramString1 = String.valueOf(str).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
        paramInt += 1;
        paramString1 = String.valueOf(paramString2).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
        arrayOfByte1[34] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break label216;
        }
        localDotoriSmsAuthConfirm.setResultCode(b);
        localDotoriSmsAuthConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localDotoriSmsAuthConfirm;
        if (paramInt == 3)
        {
          str = "L";
          break;
        }
        str = "S";
        break;
      }
      arrayOfByte1[paramInt] = 0;
      paramInt += 1;
    }
    label216:
    paramString1 = iapReceive(localDotoriSmsAuthConfirm);
    if (localDotoriSmsAuthConfirm.getResultCode() != 0)
    {
      localDotoriSmsAuthConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localDotoriSmsAuthConfirm;
    }
    localDotoriSmsAuthConfirm.parse(paramString1);
    CommonF.LOGGER.i("IAPNet", "====================iapSendDotoriSmsAuthNumberInfoQuery() End()====================");
    return localDotoriSmsAuthConfirm;
  }
  
  protected static MsgConfirm iapSendISImeiAuthReq(String paramString)
  {
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendISImeiAuthReq  Start()====================");
    CommonF.LOGGER.i("IAPNet", "MDN= " + paramString);
    int j = 12 + 11 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("AR", 12);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        i = 0 + 12;
        paramString = String.valueOf(paramString).getBytes();
        System.arraycopy(paramString, 0, arrayOfByte1, i, paramString.length);
        arrayOfByte1[23] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localMsgConfirm.setResultCode(b);
        localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localMsgConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString);
    CommonF.LOGGER.i("IAPNet", "====================iapSendISImeiAuthReq  End()====================");
    return localMsgConfirm;
  }
  
  protected static MsgConfirm iapSendImeiAuthReq(String paramString)
  {
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendImeiAuthReq  Start()====================");
    CommonF.LOGGER.i("IAPNet", "MDN= " + paramString);
    int j = 12 + 11 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("AM", 12);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        i = 0 + 12;
        paramString = String.valueOf(paramString).getBytes();
        System.arraycopy(paramString, 0, arrayOfByte1, i, paramString.length);
        arrayOfByte1[23] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localMsgConfirm.setResultCode(b);
        localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localMsgConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString);
    CommonF.LOGGER.i("IAPNet", "====================iapSendImeiAuthReq  End()====================");
    return localMsgConfirm;
  }
  
  protected static void iapSendInit(InitConfirm paramInitConfirm, int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt2, String paramString5, String paramString6, boolean paramBoolean)
  {
    CommonF.LOGGER.i("IAPNet", "====================iapSendInit  Start()====================");
    CommonF.LOGGER.i("IAPNet", "iapSendInit  Start() isInit=" + isInit);
    CommonF.LOGGER.i("IAPNet", "iapSendInit  Start() useBpServer =" + paramBoolean);
    Object localObject = new StringBuilder("iapSendInit  Start() encJuminNumberCheck =");
    if (paramString2 != null) {}
    for (int i = 1;; i = 0)
    {
      CommonF.LOGGER.i("IAPNet", i);
      localObject = paramString2;
      if (paramString2 == null) {
        localObject = "0000000000";
      }
      if (!isInit) {
        break;
      }
      paramInitConfirm.setResultCode((byte)-7);
      return;
    }
    label162:
    label244:
    int j;
    byte[] arrayOfByte1;
    if (paramString4 != null)
    {
      paramString2 = paramString4.getBytes();
      byte[] arrayOfByte2 = String.valueOf(paramInt2).getBytes();
      paramInt2 = 12;
      if (paramString6 == null) {
        break label688;
      }
      paramString4 = "QP";
      paramInt2 = 12 + 100;
      i = paramInt2 + 1 + 8 + 1 + 10 + 11 + 1;
      paramInt2 = i;
      if (paramString2 != null) {
        paramInt2 = i + paramString2.length;
      }
      i = paramInt2 + 7 + 10;
      if (paramInt1 != 2)
      {
        paramInt2 = i;
        if (paramInt1 != 3) {}
      }
      else
      {
        paramInt2 = i + 2;
        if (!paramBoolean) {
          break label696;
        }
        paramInt2 = paramInt2 + 1 + "SENDBPDATA".length();
      }
      j = paramInt2 + 1 + 1;
      arrayOfByte1 = new byte[j];
      paramInt2 = 0;
      label261:
      if (paramInt2 < j) {
        break label711;
      }
      paramString4 = IAPNetworkUtil.iapMakePacketHeader(paramString4, j - 12);
      System.arraycopy(paramString4, 0, arrayOfByte1, 0, paramString4.length);
      paramInt2 = 0 + 12;
      i = paramInt2 + 1;
      arrayOfByte1[paramInt2] = 71;
      System.arraycopy("12.09.17".getBytes(), 0, arrayOfByte1, i, 8);
      paramInt2 = i + 8;
      i = paramInt2 + 1;
      arrayOfByte1[paramInt2] = 65;
      System.arraycopy(paramString1.getBytes(), 0, arrayOfByte1, i, Math.min(paramString1.getBytes().length, 10));
      paramInt2 = i + 10;
      System.arraycopy(paramString3.getBytes(), 0, arrayOfByte1, paramInt2, Math.min(paramString3.getBytes().length, 11));
      paramInt2 += 11;
      if (paramString2 != null) {
        arrayOfByte1[paramInt2] = ((byte)paramString2.length);
      }
      i = paramInt2 + 1;
      paramInt2 = i;
      if (paramString2 != null)
      {
        System.arraycopy(paramString2, 0, arrayOfByte1, i, paramString2.length);
        paramInt2 = paramString2.length + 44;
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, paramInt2, arrayOfByte2.length);
      }
      paramInt2 += 7;
      if (paramString5 != null)
      {
        paramString1 = String.valueOf(paramString5).getBytes();
        if (paramString1.length <= 10) {
          System.arraycopy(paramString1, 0, arrayOfByte1, paramInt2, paramString1.length);
        }
      }
      i = paramInt2 + 10;
      paramInt2 = i;
      if (paramString6 != null)
      {
        paramString1 = String.valueOf(paramString6).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        paramInt2 = i + 100;
      }
      if (paramInt1 != 2)
      {
        i = paramInt2;
        if (paramInt1 != 3) {}
      }
      else
      {
        if (paramInt1 != 2) {
          break label726;
        }
        paramString1 = "12";
        label568:
        paramString1 = String.valueOf(paramString1).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt2, paramString1.length);
        paramInt1 = paramInt2 + 2;
        if (!paramBoolean) {
          break label732;
        }
        paramInt2 = paramInt1 + 1;
        arrayOfByte1[paramInt1] = ((byte)"SENDBPDATA".length());
        paramString1 = "SENDBPDATA".getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt2, paramString1.length);
      }
    }
    for (i = paramInt2 + paramString1.length;; i = paramInt2 + ((String)localObject).getBytes().length)
    {
      arrayOfByte1[i] = 78;
      arrayOfByte1[(j - 1)] = 23;
      byte b = iapWrite(arrayOfByte1);
      if (b == 0) {
        break label778;
      }
      paramInitConfirm.setResultCode(b);
      paramInitConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return;
      paramString2 = null;
      break;
      label688:
      paramString4 = "IP";
      break label162;
      label696:
      paramInt2 = paramInt2 + 1 + ((String)localObject).length();
      break label244;
      label711:
      arrayOfByte1[paramInt2] = 0;
      paramInt2 += 1;
      break label261;
      label726:
      paramString1 = "13";
      break label568;
      label732:
      paramInt2 = paramInt1 + 1;
      arrayOfByte1[paramInt1] = ((byte)((String)localObject).length());
      paramString1 = ((String)localObject).getBytes();
      System.arraycopy(paramString1, 0, arrayOfByte1, paramInt2, paramString1.length);
    }
    label778:
    paramInitConfirm.setResultCode((byte)0);
    isInit = true;
    CommonF.LOGGER.i("IAPNet", "====================iapSendInit  End()====================");
  }
  
  protected static void iapSendInitBP(InitConfirm paramInitConfirm, int paramInt1, String paramString1, String paramString2, byte[] paramArrayOfByte, int paramInt2)
  {
    byte[] arrayOfByte2 = String.valueOf(paramInt2).getBytes();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendInitBP()  __ Start");
    paramInt2 = 12 + 1 + 8 + 1 + 10 + 11 + 1;
    if (paramArrayOfByte != null) {
      paramInt2 = paramArrayOfByte.length + 44;
    }
    int i = paramInt2 + 7 + 10;
    if (paramInt1 != 2)
    {
      paramInt2 = i;
      if (paramInt1 != 3) {}
    }
    else
    {
      paramInt2 = i + 2 + 1 + "SENDBPDATA".length();
    }
    int j = paramInt2 + 1;
    byte[] arrayOfByte1 = new byte[j];
    paramInt2 = 0;
    if (paramInt2 >= j)
    {
      byte[] arrayOfByte3 = IAPNetworkUtil.iapMakePacketHeader("IP", j - 12);
      System.arraycopy(arrayOfByte3, 0, arrayOfByte1, 0, arrayOfByte3.length);
      paramInt2 = 0 + 12;
      i = paramInt2 + 1;
      arrayOfByte1[paramInt2] = 71;
      System.arraycopy("12.09.17".getBytes(), 0, arrayOfByte1, i, 8);
      paramInt2 = i + 8;
      i = paramInt2 + 1;
      arrayOfByte1[paramInt2] = 65;
      System.arraycopy(paramString1.getBytes(), 0, arrayOfByte1, i, Math.min(paramString1.getBytes().length, 10));
      paramInt2 = i + 10;
      System.arraycopy(paramString2.getBytes(), 0, arrayOfByte1, paramInt2, Math.min(paramString2.getBytes().length, 11));
      paramInt2 += 11;
      if (paramArrayOfByte != null) {
        arrayOfByte1[paramInt2] = ((byte)paramArrayOfByte.length);
      }
      i = paramInt2 + 1;
      paramInt2 = i;
      if (paramArrayOfByte != null)
      {
        System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, i, paramArrayOfByte.length);
        paramInt2 = paramArrayOfByte.length + 44;
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, paramInt2, arrayOfByte2.length);
      }
      paramInt2 = paramInt2 + 7 + 10;
      if ((paramInt1 == 2) || (paramInt1 == 3)) {
        if (paramInt1 != 2) {
          break label454;
        }
      }
    }
    label454:
    for (paramString1 = "12";; paramString1 = "13")
    {
      paramString1 = String.valueOf(paramString1).getBytes();
      System.arraycopy(paramString1, 0, arrayOfByte1, paramInt2, paramString1.length);
      paramInt1 = paramInt2 + 2;
      paramInt2 = paramInt1 + 1;
      arrayOfByte1[paramInt1] = ((byte)"SENDBPDATA".length());
      paramString1 = "SENDBPDATA".getBytes();
      System.arraycopy(paramString1, 0, arrayOfByte1, paramInt2, paramString1.length);
      paramInt1 = paramString1.length;
      arrayOfByte1[(j - 1)] = 23;
      byte b = iapWriteBP(arrayOfByte1);
      if (b == 0) {
        break label460;
      }
      paramInitConfirm.setResultCode(b);
      paramInitConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
      return;
      arrayOfByte1[paramInt2] = 0;
      paramInt2 += 1;
      break;
    }
    label460:
    paramInitConfirm.setResultCode((byte)0);
  }
  
  protected static ItemInfoConfirm iapSendItemInfoQuery(String paramString)
  {
    ItemInfoConfirm localItemInfoConfirm = new ItemInfoConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendItemInfoQuery() Start()====================");
    int j = 12 + 10 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("GP", 11);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        arrayOfByte2 = String.valueOf(paramString).getBytes();
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0 + 12, arrayOfByte2.length);
        i = paramString.getBytes().length;
        arrayOfByte1[22] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localItemInfoConfirm.setResultCode(b);
        localItemInfoConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localItemInfoConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString = iapReceive(localItemInfoConfirm);
    if (localItemInfoConfirm.getResultCode() != 0)
    {
      localItemInfoConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localItemInfoConfirm;
    }
    localItemInfoConfirm.parse(paramString);
    CommonF.LOGGER.i("IAPNet", "====================iapSendItemInfoQuery() End()====================");
    return localItemInfoConfirm;
  }
  
  protected static MsgConfirm iapSendItemPurchase(String paramString1, String paramString2, Boolean paramBoolean1, String paramString3, String paramString4, Boolean paramBoolean2)
  {
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendItemPurchase() bUseBPProtocol = " + paramBoolean2 + "  START !!!!!!!!");
    int j = 12 + 10;
    Object localObject2;
    int k;
    Object localObject1;
    int i;
    if (paramBoolean2.booleanValue())
    {
      localObject2 = "BP";
      k = j + 1;
      localObject1 = new byte[k];
      i = 0;
      label73:
      if (i < k) {
        break label502;
      }
      Object localObject3 = (byte[])null;
      localObject3 = new StringBuilder("[ DEBUG ] iapSendItemPurchase()  bTCash=").append(paramBoolean1).append("// PName=");
      if (paramString2 != null) {
        break label517;
      }
      i = 0;
      label115:
      CommonF.LOGGER.i("IAPNet", i);
      localObject2 = IAPNetworkUtil.iapMakePacketHeader((String)localObject2, k - 12);
      System.arraycopy(localObject2, 0, localObject1, 0, localObject2.length);
      i = 0 + 12;
      paramString1 = String.valueOf(paramString1).getBytes();
      System.arraycopy(paramString1, 0, localObject1, i, paramString1.length);
      i += 10;
      if (!paramBoolean2.booleanValue())
      {
        if (!paramBoolean1.booleanValue()) {
          break label523;
        }
        localObject1[i] = 89;
      }
    }
    for (;;)
    {
      i += 1;
      paramString1 = paramString2;
      if (paramString2 != null)
      {
        paramString1 = paramString2;
        if (paramString2.getBytes().length > 122)
        {
          CommonF.LOGGER.i("IAPNet", "pName overflow and reset!!");
          paramString1 = "0";
        }
      }
      if (paramString1 != null) {
        localObject1[i] = ((byte)paramString1.length());
      }
      j = i + 1;
      i = j;
      if (paramString1 != null)
      {
        System.arraycopy(paramString1.getBytes(), 0, localObject1, j, paramString1.getBytes().length);
        i = paramString1.getBytes().length + 24;
      }
      j = i;
      if (paramString3 != null)
      {
        System.arraycopy(paramString3.getBytes(), 0, localObject1, i, paramString3.getBytes().length);
        j = i + 100;
      }
      if (paramString4 != null)
      {
        localObject1[j] = ((byte)paramString4.length());
        i = j + 1;
        System.arraycopy(paramString4.getBytes(), 0, localObject1, i, paramString4.getBytes().length);
        i = paramString4.getBytes().length;
      }
      localObject1[(k - 1)] = 23;
      byte b = iapWrite((byte[])localObject1);
      if (b == 0) {
        break label533;
      }
      localMsgConfirm.setResultCode(b);
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
      localObject1 = "HP";
      j = j + 1 + 1;
      if (paramString2 != null) {
        j = paramString2.getBytes().length + 24;
      }
      i = j;
      if (paramString3 != null)
      {
        localObject1 = "OP";
        i = j + 100 + 1;
      }
      localObject2 = localObject1;
      j = i;
      if (paramString4 == null) {
        break;
      }
      j = i + paramString4.getBytes().length;
      localObject2 = localObject1;
      break;
      label502:
      localObject1[i] = 0;
      i += 1;
      break label73;
      label517:
      i = 1;
      break label115;
      label523:
      localObject1[i] = 78;
    }
    label533:
    paramString1 = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString1);
    return localMsgConfirm;
  }
  
  protected static MsgConfirm iapSendItemPurchaseByDanal(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5, boolean paramBoolean, String paramString6)
  {
    int k = 0;
    Object localObject = "KP";
    MsgConfirm localMsgConfirm = new MsgConfirm();
    int j = 12 + 1;
    if (paramString3 != null) {
      j = paramString3.length() + 13;
    }
    int i;
    String str;
    if (paramString4 == null)
    {
      i = j;
      if (paramString5 == null) {}
    }
    else
    {
      str = "XP";
      int m = 1;
      j = j + 100 + 1;
      localObject = str;
      i = j;
      k = m;
      if (paramString5 != null)
      {
        i = j + paramString5.length();
        k = m;
        localObject = str;
      }
    }
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendItemPurchaseByDanal() STart!! " + (String)localObject);
    j = i + 10 + 2 + 11 + 1 + paramString6.length() + 1 + 1;
    byte[] arrayOfByte1;
    if (paramInt == 2)
    {
      str = "12";
      arrayOfByte1 = new byte[j];
      paramInt = 0;
      label166:
      if (paramInt < j) {
        break label588;
      }
      byte[] arrayOfByte2 = (byte[])null;
      localObject = IAPNetworkUtil.iapMakePacketHeader((String)localObject, j - 12);
      System.arraycopy(localObject, 0, arrayOfByte1, 0, localObject.length);
      paramInt = 0 + 12;
      paramString2 = String.valueOf(paramString2).getBytes();
      System.arraycopy(paramString2, 0, arrayOfByte1, paramInt, paramString2.length);
      paramInt += 10;
      paramString2 = String.valueOf(str).getBytes();
      System.arraycopy(paramString2, 0, arrayOfByte1, paramInt, paramString2.length);
      paramInt += 2;
      paramString1 = String.valueOf(paramString1).getBytes();
      System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
      i = paramInt + 11;
      paramInt = i;
      if (paramString4 != null)
      {
        System.arraycopy(paramString4.getBytes(), 0, arrayOfByte1, i, paramString4.getBytes().length);
        paramInt = i + 100;
      }
      if (paramString3 != null) {
        arrayOfByte1[paramInt] = ((byte)paramString3.length());
      }
      paramInt += 1;
      i = paramInt;
      if (paramString3 != null)
      {
        System.arraycopy(paramString3.getBytes(), 0, arrayOfByte1, paramInt, paramString3.getBytes().length);
        i = paramInt + paramString3.getBytes().length;
      }
      paramInt = i;
      if (k != 0)
      {
        if (paramString5 != null) {
          arrayOfByte1[i] = ((byte)paramString5.length());
        }
        i += 1;
        paramInt = i;
        if (paramString5 != null)
        {
          System.arraycopy(paramString5.getBytes(), 0, arrayOfByte1, i, paramString5.getBytes().length);
          paramInt = i + paramString5.getBytes().length;
        }
      }
      i = paramInt + 1;
      arrayOfByte1[paramInt] = ((byte)paramString6.length());
      paramString1 = String.valueOf(paramString6).getBytes();
      System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
      paramInt = i + paramString6.getBytes().length;
      CommonF.LOGGER.e("DEBUG", "Jumin=" + paramString6.length() + "  // Value = " + paramString6);
      if (!paramBoolean) {
        break label600;
      }
      arrayOfByte1[paramInt] = 89;
    }
    for (;;)
    {
      arrayOfByte1[(j - 1)] = 23;
      byte b = iapWrite(arrayOfByte1);
      IAPNetworkUtil.packetDebug(arrayOfByte1, arrayOfByte1.length);
      if (b == 0) {
        break label609;
      }
      localMsgConfirm.setResultCode(b);
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
      if (paramInt == 3)
      {
        str = "13";
        break;
      }
      str = "11";
      break;
      label588:
      arrayOfByte1[paramInt] = 0;
      paramInt += 1;
      break label166;
      label600:
      arrayOfByte1[paramInt] = 78;
    }
    label609:
    paramString1 = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString1);
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendItemPurchaseByDanal()  End !!!!!!!!");
    return localMsgConfirm;
  }
  
  protected static MsgConfirm iapSendItemQuery(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Object localObject = "LP";
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendItemQuery Start()====================");
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendItemQuery() PID=" + paramString1);
    int j = 12 + 10 + 1;
    if (paramString2 != null)
    {
      j = paramString2.getBytes().length + 23;
      localObject = "EP";
      CommonF.LOGGER.i("IAPNet", "pName: " + paramString2);
    }
    int i = j;
    if (paramString3 != null)
    {
      localObject = "NP";
      i = j + 100 + 1;
      CommonF.LOGGER.i("IAPNet", "pTID: " + paramString3);
    }
    j = i;
    if (paramString4 != null)
    {
      j = i + paramString4.getBytes().length;
      CommonF.LOGGER.i("IAPNet", "pBPInfo: " + paramString4);
    }
    int k = j + 1;
    byte[] arrayOfByte1 = new byte[k];
    i = 0;
    for (;;)
    {
      if (i >= k)
      {
        byte[] arrayOfByte2 = (byte[])null;
        localObject = IAPNetworkUtil.iapMakePacketHeader((String)localObject, k - 12);
        IAPNetworkUtil.packetDebug((byte[])localObject, 12);
        System.arraycopy(localObject, 0, arrayOfByte1, 0, localObject.length);
        i = 0 + 12;
        paramString1 = String.valueOf(paramString1).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        i += 10;
        paramString1 = paramString2;
        if (paramString2 != null)
        {
          paramString1 = paramString2;
          if (paramString2.getBytes().length > 122)
          {
            CommonF.LOGGER.i("IAPNet", "pName overflow and reset!!");
            paramString1 = "0";
          }
        }
        if (paramString1 != null) {
          arrayOfByte1[i] = ((byte)paramString1.getBytes().length);
        }
        j = i + 1;
        i = j;
        if (paramString1 != null)
        {
          System.arraycopy(paramString1.getBytes(), 0, arrayOfByte1, j, paramString1.getBytes().length);
          i = paramString1.getBytes().length + 23;
        }
        j = i;
        if (paramString3 != null)
        {
          System.arraycopy(paramString3.getBytes(), 0, arrayOfByte1, i, paramString3.getBytes().length);
          j = i + 100 + 1;
        }
        if (paramString4 != null)
        {
          arrayOfByte1[j] = ((byte)paramString4.getBytes().length);
          System.arraycopy(paramString4.getBytes(), 0, arrayOfByte1, j, paramString4.getBytes().length);
          i = paramString4.getBytes().length;
        }
        arrayOfByte1[(k - 1)] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localMsgConfirm.setResultCode(b);
        localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localMsgConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString1 = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString1);
    CommonF.LOGGER.i("IAPNet", "====================iapSendItemQuery End()====================");
    return localMsgConfirm;
  }
  
  protected static ItemUseConfirm iapSendItemUse(String paramString)
  {
    ItemUseConfirm localItemUseConfirm = new ItemUseConfirm();
    int j = 12 + 10 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("MP", 11);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        paramString = String.valueOf(paramString).getBytes();
        System.arraycopy(paramString, 0, arrayOfByte1, 0 + 12, paramString.length);
        arrayOfByte1[22] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localItemUseConfirm.setResultCode(b);
        localItemUseConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localItemUseConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString = iapReceive(localItemUseConfirm);
    if (localItemUseConfirm.getResultCode() != 0)
    {
      localItemUseConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localItemUseConfirm;
    }
    localItemUseConfirm.parse(paramString);
    return localItemUseConfirm;
  }
  
  protected static ItemWholeAuthConfirm iapSendItemWholeAuth()
  {
    ItemWholeAuthConfirm localItemWholeAuthConfirm = new ItemWholeAuthConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendItemWholeAuth()");
    int j = 12 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("AP", 1);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        arrayOfByte1[12] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localItemWholeAuthConfirm.setResultCode(b);
        localItemWholeAuthConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localItemWholeAuthConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    arrayOfByte1 = iapReceive(localItemWholeAuthConfirm);
    if (localItemWholeAuthConfirm.getResultCode() != 0)
    {
      localItemWholeAuthConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localItemWholeAuthConfirm;
    }
    localItemWholeAuthConfirm.parse(arrayOfByte1);
    return localItemWholeAuthConfirm;
  }
  
  protected static LGUSmsAuthNumberConfirm iapSendLGUSmsAuthNumberReq(String paramString1, int paramInt, String paramString2, String paramString3)
  {
    LGUSmsAuthNumberConfirm localLGUSmsAuthNumberConfirm = new LGUSmsAuthNumberConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendLGUSmsAuthNumberReq() Start");
    int i = paramString3.length() + 36 + 6 + 1;
    String str;
    byte[] arrayOfByte1;
    if (paramInt == 2)
    {
      str = "12";
      arrayOfByte1 = new byte[i];
      paramInt = 0;
    }
    for (;;)
    {
      if (paramInt >= i)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("MR", i - 12);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        paramInt = 0 + 12;
        paramString1 = String.valueOf(paramString1).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
        paramInt += 10;
        paramString1 = String.valueOf(str).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
        paramInt += 2;
        paramString1 = String.valueOf(paramString2).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
        paramInt += 11;
        arrayOfByte1[paramInt] = ((byte)paramString3.length());
        paramString1 = String.valueOf(paramString3).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt + 1, paramString1.length);
        paramInt = paramString3.getBytes().length + 36;
        CommonF.LOGGER.e("DEBUG", "Jumin=" + paramString3.length() + "  // Value = " + paramString3);
        paramString1 = String.valueOf(SingletonCounter.getInstance().getmPostPay()).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, paramInt, paramString1.length);
        SingletonCounter.getInstance().clear();
        arrayOfByte1[(i - 1)] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break label328;
        }
        localLGUSmsAuthNumberConfirm.setResultCode(b);
        localLGUSmsAuthNumberConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localLGUSmsAuthNumberConfirm;
        if (paramInt == 3)
        {
          str = "13";
          break;
        }
        str = "11";
        break;
      }
      arrayOfByte1[paramInt] = 0;
      paramInt += 1;
    }
    label328:
    paramString1 = iapReceive(localLGUSmsAuthNumberConfirm);
    if (localLGUSmsAuthNumberConfirm.getResultCode() != 0)
    {
      localLGUSmsAuthNumberConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localLGUSmsAuthNumberConfirm;
    }
    localLGUSmsAuthNumberConfirm.parse(paramString1);
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendLGUSmsAuthNumberReq()  End");
    return localLGUSmsAuthNumberConfirm;
  }
  
  protected static MsgConfirm iapSendLGUSmsAuthReq(String paramString1, String paramString2)
  {
    LGUSmsAuthNumberConfirm localLGUSmsAuthNumberConfirm = new LGUSmsAuthNumberConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendLGUSmsAuthReq() Start");
    int j = paramString1.length() + 13 + 1 + paramString2.length() + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("MA", j - 12);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        i = 0 + 12;
        arrayOfByte1[i] = ((byte)paramString1.length());
        arrayOfByte2 = String.valueOf(paramString1).getBytes();
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i + 1, arrayOfByte2.length);
        i = paramString1.getBytes().length + 13;
        CommonF.LOGGER.e("DEBUG", "smsAuthKey: " + paramString1.length() + "  // Value = " + paramString1);
        int k = i + 1;
        arrayOfByte1[i] = ((byte)paramString2.length());
        paramString1 = String.valueOf(paramString2).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, k, paramString1.length);
        i = paramString2.getBytes().length;
        CommonF.LOGGER.e("DEBUG", "OTPNumber: " + paramString2.length() + "  // Value = " + paramString2);
        arrayOfByte1[(j - 1)] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localLGUSmsAuthNumberConfirm.setResultCode(b);
        localLGUSmsAuthNumberConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localLGUSmsAuthNumberConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString1 = iapReceive(localLGUSmsAuthNumberConfirm);
    if (localLGUSmsAuthNumberConfirm.getResultCode() != 0)
    {
      localLGUSmsAuthNumberConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localLGUSmsAuthNumberConfirm;
    }
    localLGUSmsAuthNumberConfirm.parse(paramString1);
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendLGUSmsAuthReq()  End");
    return localLGUSmsAuthNumberConfirm;
  }
  
  protected static MsgConfirm iapSendOCBCardUpdateQuery(String paramString1, String paramString2)
  {
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendOCBCardUpdateQuery() Start()====================");
    int j = paramString2.length() + 14 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("OU", j - 12);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        i = 0 + 12;
        paramString1 = String.valueOf(paramString1).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i, paramString1.length);
        i += 1;
        arrayOfByte1[i] = ((byte)paramString2.length());
        paramString1 = String.valueOf(paramString2).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, i + 1, paramString1.length);
        i = paramString2.getBytes().length;
        arrayOfByte1[(j - 1)] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localMsgConfirm.setResultCode(b);
        localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localMsgConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString1 = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString1);
    CommonF.LOGGER.i("IAPNet", "====================iapSendOCBCardUpdateQuery() End()====================");
    return localMsgConfirm;
  }
  
  protected static OKCashbagPointInfoConfirm iapSendOCBPointInfoQuery(String paramString1, String paramString2)
  {
    OKCashbagPointInfoConfirm localOKCashbagPointInfoConfirm = new OKCashbagPointInfoConfirm();
    CommonF.LOGGER.i("IAPNet", "====================iapSendOKCashbagPointInfoQuery() Start()====================");
    int j = paramString1.length() + 13 + 1 + paramString2.length() + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("OQ", j - 12);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        i = 0 + 12;
        arrayOfByte1[i] = ((byte)paramString1.length());
        arrayOfByte2 = String.valueOf(paramString1).getBytes();
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i + 1, arrayOfByte2.length);
        i = paramString1.getBytes().length + 13;
        int k = i + 1;
        arrayOfByte1[i] = ((byte)paramString2.length());
        paramString1 = String.valueOf(paramString2).getBytes();
        System.arraycopy(paramString1, 0, arrayOfByte1, k, paramString1.length);
        i = paramString2.getBytes().length;
        arrayOfByte1[(j - 1)] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localOKCashbagPointInfoConfirm.setResultCode(b);
        localOKCashbagPointInfoConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localOKCashbagPointInfoConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString1 = iapReceive(localOKCashbagPointInfoConfirm);
    if (localOKCashbagPointInfoConfirm.getResultCode() != 0)
    {
      localOKCashbagPointInfoConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localOKCashbagPointInfoConfirm;
    }
    localOKCashbagPointInfoConfirm.parse(paramString1);
    CommonF.LOGGER.i("IAPNet", "====================iapSendOKCashbagPointInfoQuery() End()====================");
    return localOKCashbagPointInfoConfirm;
  }
  
  protected static MsgConfirm iapSendOTPAgreeCheck(String paramString)
  {
    MsgConfirm localMsgConfirm = new MsgConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendOTPAgreeCheck() Start");
    int j = 12 + 1 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("TP", 2);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        paramString = String.valueOf(paramString).getBytes();
        System.arraycopy(paramString, 0, arrayOfByte1, 0 + 12, paramString.length);
        arrayOfByte1[13] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localMsgConfirm.setResultCode(b);
        localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localMsgConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString = iapReceive(localMsgConfirm);
    if (localMsgConfirm.getResultCode() != 0)
    {
      localMsgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localMsgConfirm;
    }
    localMsgConfirm.parse(paramString);
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendOTPAgreeCheck()  End");
    return localMsgConfirm;
  }
  
  protected static SellerInfoConfirm iapSendSellerInfoReq(String paramString)
  {
    SellerInfoConfirm localSellerInfoConfirm = new SellerInfoConfirm();
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendSellerInfoReq() Start");
    int j = 12 + 10 + 1;
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        byte[] arrayOfByte2 = IAPNetworkUtil.iapMakePacketHeader("BK", 11);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte2.length);
        i = 0 + 12;
        paramString = String.valueOf(paramString).getBytes();
        System.arraycopy(paramString, 0, arrayOfByte1, i, paramString.length);
        arrayOfByte1[22] = 23;
        byte b = iapWrite(arrayOfByte1);
        if (b == 0) {
          break;
        }
        localSellerInfoConfirm.setResultCode(b);
        localSellerInfoConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        return localSellerInfoConfirm;
      }
      arrayOfByte1[i] = 0;
      i += 1;
    }
    paramString = iapReceive(localSellerInfoConfirm);
    if (localSellerInfoConfirm.getResultCode() != 0)
    {
      localSellerInfoConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
      return localSellerInfoConfirm;
    }
    localSellerInfoConfirm.parse(paramString);
    CommonF.LOGGER.i("IAPNet", "[ DEBUG ] iapSendSellerInfoReq()  End");
    return localSellerInfoConfirm;
  }
  
  /* Error */
  protected static byte iapWrite(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: ldc 2
    //   4: monitorenter
    //   5: ldc 8
    //   7: new 76	java/lang/StringBuilder
    //   10: dup
    //   11: ldc_w 770
    //   14: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: getstatic 34	com/feelingk/iap/net/IAPNet:connect	Z
    //   20: invokevirtual 227	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   23: ldc_w 337
    //   26: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: invokestatic 134	com/feelingk/iap/util/CommonF$LOGGER:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   35: getstatic 34	com/feelingk/iap/net/IAPNet:connect	Z
    //   38: istore_2
    //   39: iload_2
    //   40: ifne +11 -> 51
    //   43: bipush 254
    //   45: istore_1
    //   46: ldc 2
    //   48: monitorexit
    //   49: iload_1
    //   50: ireturn
    //   51: aload_0
    //   52: aload_0
    //   53: arraylength
    //   54: invokestatic 146	com/feelingk/iap/net/IAPNetworkUtil:packetDebug	([BI)V
    //   57: getstatic 42	com/feelingk/iap/net/IAPNet:outputStream	Ljava/io/OutputStream;
    //   60: aload_0
    //   61: iconst_0
    //   62: aload_0
    //   63: arraylength
    //   64: invokevirtual 773	java/io/OutputStream:write	([BII)V
    //   67: getstatic 42	com/feelingk/iap/net/IAPNet:outputStream	Ljava/io/OutputStream;
    //   70: invokevirtual 776	java/io/OutputStream:flush	()V
    //   73: ldc 8
    //   75: ldc_w 778
    //   78: invokestatic 134	com/feelingk/iap/util/CommonF$LOGGER:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   81: goto -35 -> 46
    //   84: astore_0
    //   85: ldc 2
    //   87: monitorexit
    //   88: aload_0
    //   89: athrow
    //   90: astore_0
    //   91: ldc 8
    //   93: new 76	java/lang/StringBuilder
    //   96: dup
    //   97: ldc_w 780
    //   100: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   103: aload_0
    //   104: invokevirtual 328	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: invokestatic 74	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   113: aload_0
    //   114: invokevirtual 299	java/net/SocketTimeoutException:printStackTrace	()V
    //   117: bipush 244
    //   119: istore_1
    //   120: goto -74 -> 46
    //   123: astore_0
    //   124: ldc 8
    //   126: new 76	java/lang/StringBuilder
    //   129: dup
    //   130: ldc_w 780
    //   133: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   136: aload_0
    //   137: invokevirtual 328	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: invokestatic 74	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   146: bipush 252
    //   148: istore_1
    //   149: goto -103 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	152	0	paramArrayOfByte	byte[]
    //   1	148	1	b	byte
    //   38	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   5	39	84	finally
    //   51	57	84	finally
    //   57	73	84	finally
    //   73	81	84	finally
    //   91	117	84	finally
    //   124	146	84	finally
    //   57	73	90	java/net/SocketTimeoutException
    //   57	73	123	java/io/IOException
  }
  
  /* Error */
  protected static byte iapWriteBP(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: ldc 2
    //   4: monitorenter
    //   5: getstatic 32	com/feelingk/iap/net/IAPNet:connectBP	Z
    //   8: istore_2
    //   9: iload_2
    //   10: ifne +11 -> 21
    //   13: bipush 254
    //   15: istore_1
    //   16: ldc 2
    //   18: monitorexit
    //   19: iload_1
    //   20: ireturn
    //   21: getstatic 48	com/feelingk/iap/net/IAPNet:outputStreamBP	Ljava/io/OutputStream;
    //   24: aload_0
    //   25: iconst_0
    //   26: aload_0
    //   27: arraylength
    //   28: invokevirtual 773	java/io/OutputStream:write	([BII)V
    //   31: getstatic 48	com/feelingk/iap/net/IAPNet:outputStreamBP	Ljava/io/OutputStream;
    //   34: invokevirtual 776	java/io/OutputStream:flush	()V
    //   37: goto -21 -> 16
    //   40: astore_0
    //   41: ldc 8
    //   43: new 76	java/lang/StringBuilder
    //   46: dup
    //   47: ldc_w 782
    //   50: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   53: aload_0
    //   54: invokevirtual 328	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: invokestatic 74	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   63: bipush 252
    //   65: istore_1
    //   66: goto -50 -> 16
    //   69: astore_0
    //   70: ldc 2
    //   72: monitorexit
    //   73: aload_0
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	paramArrayOfByte	byte[]
    //   1	65	1	b	byte
    //   8	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   21	37	40	java/io/IOException
    //   5	9	69	finally
    //   21	37	69	finally
    //   41	63	69	finally
  }
  
  protected static boolean isConnect()
  {
    return connect;
  }
  
  protected static boolean isWifi()
  {
    return isWifi;
  }
  
  protected static void setWifi(boolean paramBoolean)
  {
    isWifi = paramBoolean;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.IAPNet
 * JD-Core Version:    0.7.0.1
 */