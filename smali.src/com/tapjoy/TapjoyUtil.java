package com.tapjoy;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class TapjoyUtil
{
  private static final String TAPJOY_UTIL = "TapjoyUtil";
  
  public static String SHA1(String paramString)
    throws NoSuchAlgorithmException, UnsupportedEncodingException
  {
    return hashAlgorithm("SHA-1", paramString);
  }
  
  public static String SHA256(String paramString)
    throws NoSuchAlgorithmException, UnsupportedEncodingException
  {
    return hashAlgorithm("SHA-256", paramString);
  }
  
  public static Document buildDocument(String paramString)
  {
    try
    {
      DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
      paramString = new ByteArrayInputStream(paramString.getBytes("UTF-8"));
      paramString = localDocumentBuilderFactory.newDocumentBuilder().parse(paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      TapjoyLog.e("TapjoyUtil", "buildDocument exception: " + paramString.toString());
    }
    return null;
  }
  
  private static String convertToHex(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i >= paramArrayOfByte.length) {
      return localStringBuffer.toString();
    }
    int k = paramArrayOfByte[i] >>> 4 & 0xF;
    int j = 0;
    for (;;)
    {
      if ((k >= 0) && (k <= 9)) {
        localStringBuffer.append((char)(k + 48));
      }
      for (;;)
      {
        k = paramArrayOfByte[i] & 0xF;
        if (j < 1) {
          break label91;
        }
        i += 1;
        break;
        localStringBuffer.append((char)(k - 10 + 97));
      }
      label91:
      j += 1;
    }
  }
  
  public static void deleteFileOrDirectory(File paramFile)
  {
    File[] arrayOfFile;
    int j;
    int i;
    if (paramFile.isDirectory())
    {
      arrayOfFile = paramFile.listFiles();
      j = arrayOfFile.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j)
      {
        TapjoyLog.i("TapjoyUtil", "****************************************");
        TapjoyLog.i("TapjoyUtil", "deleteFileOrDirectory: " + paramFile.getAbsolutePath());
        TapjoyLog.i("TapjoyUtil", "****************************************");
        paramFile.delete();
        return;
      }
      deleteFileOrDirectory(arrayOfFile[i]);
      i += 1;
    }
  }
  
  public static String getNodeTrimValue(NodeList paramNodeList)
  {
    Object localObject2 = null;
    Object localObject3 = (Element)paramNodeList.item(0);
    paramNodeList = "";
    Object localObject1 = localObject2;
    int j;
    int i;
    if (localObject3 != null)
    {
      localObject3 = ((Element)localObject3).getChildNodes();
      j = ((NodeList)localObject3).getLength();
      i = 0;
    }
    for (;;)
    {
      if (i >= j)
      {
        localObject1 = localObject2;
        if (paramNodeList != null)
        {
          localObject1 = localObject2;
          if (!paramNodeList.equals("")) {
            localObject1 = paramNodeList.trim();
          }
        }
        return localObject1;
      }
      Node localNode = ((NodeList)localObject3).item(i);
      localObject1 = paramNodeList;
      if (localNode != null) {
        localObject1 = paramNodeList + localNode.getNodeValue();
      }
      i += 1;
      paramNodeList = (NodeList)localObject1;
    }
  }
  
  public static String hashAlgorithm(String paramString1, String paramString2)
    throws NoSuchAlgorithmException, UnsupportedEncodingException
  {
    byte[] arrayOfByte = new byte[40];
    paramString1 = MessageDigest.getInstance(paramString1);
    paramString1.update(paramString2.getBytes("iso-8859-1"), 0, paramString2.length());
    return convertToHex(paramString1.digest());
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyUtil
 * JD-Core Version:    0.7.0.1
 */