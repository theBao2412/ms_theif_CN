package com.kt.olleh.manager.purchase;

import android.util.Log;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class AES
{
  private Cipher mCipher;
  private IvParameterSpec mIv;
  private SecretKeySpec mKey;
  
  public AES(String paramString1, String paramString2)
    throws Exception
  {
    if ((paramString1 == null) || ("".equals(paramString1))) {
      throw new NullPointerException("The key cannot be null or an empty string..");
    }
    if ((paramString2 == null) || ("".equals(paramString2))) {
      throw new NullPointerException("The initial vector cannot be null or an empty string.");
    }
    this.mCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
    this.mKey = new SecretKeySpec(localMessageDigest.digest(paramString1.getBytes("UTF-8")), "AES");
    this.mIv = new IvParameterSpec(localMessageDigest.digest(paramString2.getBytes("UTF-8")));
  }
  
  public static byte[] decodeBase64(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = (byte[])null;
    try
    {
      Class localClass = Class.forName("org.apache.commons.codec.binary.Base64");
      paramArrayOfByte = (byte[])localClass.getMethod("decodeBase64", new Class[] { [B.class }).invoke(localClass, new Object[] { paramArrayOfByte });
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      Log.e("AES", paramArrayOfByte.toString(), paramArrayOfByte);
    }
    return arrayOfByte;
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
    catch (Exception paramArrayOfByte)
    {
      Log.e("AES", paramArrayOfByte.toString(), paramArrayOfByte);
    }
    return arrayOfByte;
  }
  
  public String decrypt(String paramString)
    throws Exception
  {
    if ((paramString == null) || ("".equals(paramString))) {
      throw new NullPointerException("The cipher string cannot be null or an empty string.");
    }
    if ((this.mIv == null) || ("".equals(this.mIv))) {
      this.mCipher.init(2, this.mKey);
    }
    for (;;)
    {
      paramString = decodeBase64(paramString.getBytes());
      return new String(this.mCipher.doFinal(paramString), "UTF-8");
      this.mCipher.init(2, this.mKey, this.mIv);
    }
  }
  
  public String encrypt(String paramString)
    throws Exception
  {
    if ((paramString == null) || ("".equals(paramString))) {
      throw new NullPointerException("The cipher string cannot be null or an empty string.");
    }
    if ((this.mIv == null) || ("".equals(this.mIv))) {
      this.mCipher.init(1, this.mKey);
    }
    for (;;)
    {
      paramString = paramString.getBytes("UTF-8");
      return new String(encodeBase64(this.mCipher.doFinal(paramString)));
      this.mCipher.init(1, this.mKey, this.mIv);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.manager.purchase.AES
 * JD-Core Version:    0.7.0.1
 */