package com.kt.olleh.inapp.crypt;

import java.lang.reflect.Method;
import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class AESCrypt
{
  private static final String AESTYPE = "AES/ECB/PKCS5Padding";
  
  public static byte[] decodeBase64(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = (byte[])null;
    try
    {
      Class localClass = Class.forName("org.apache.commons.codec.binary.Base64");
      paramArrayOfByte = (byte[])localClass.getMethod("decodeBase64", new Class[] { [B.class }).invoke(localClass, new Object[] { paramArrayOfByte });
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte) {}
    return arrayOfByte;
  }
  
  public static String decrypt(String paramString1, String paramString2)
    throws Exception
  {
    if ((paramString1 == null) || ("".equals(paramString1))) {
      throw new NullPointerException("The key can not be null or an empty string..");
    }
    if ((paramString2 == null) || ("".equals(paramString2))) {
      throw new NullPointerException("The cipher string can not be null or an empty string.");
    }
    Object localObject = (byte[])null;
    localObject = Cipher.getInstance("AES/ECB/PKCS5Padding");
    ((Cipher)localObject).init(2, generateKey(paramString1));
    return new String(((Cipher)localObject).doFinal(decodeBase64(paramString2.getBytes()))).trim();
  }
  
  public static byte[] encodeBase64(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = (byte[])null;
    try
    {
      Class localClass = Class.forName("org.apache.commons.codec.binary.Base64");
      paramArrayOfByte = (byte[])localClass.getMethod("encodeBase64", new Class[] { [B.class }).invoke(localClass, new Object[] { paramArrayOfByte });
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte) {}
    return arrayOfByte;
  }
  
  public static String encrypt(String paramString1, String paramString2)
    throws Exception
  {
    if ((paramString1 == null) || ("".equals(paramString1))) {
      throw new NullPointerException("The key can not be null or an empty string..");
    }
    if ((paramString2 == null) || ("".equals(paramString2))) {
      throw new NullPointerException("The cipher string can not be null or an empty string.");
    }
    Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
    localCipher.init(1, generateKey(paramString1));
    return new String(encodeBase64(localCipher.doFinal(paramString2.getBytes())));
  }
  
  private static Key generateKey(String paramString)
    throws Exception
  {
    return new SecretKeySpec(paramString.getBytes(), "AES");
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.crypt.AESCrypt
 * JD-Core Version:    0.7.0.1
 */