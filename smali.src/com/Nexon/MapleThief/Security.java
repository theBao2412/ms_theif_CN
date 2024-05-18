package com.Nexon.MapleThief;

import android.text.TextUtils;
import android.util.Log;
import com.Nexon.MapleThief.util.Base64;
import com.Nexon.MapleThief.util.Base64DecoderException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Security
{
  private static final String KEY_FACTORY_ALGORITHM = "RSA";
  private static final SecureRandom RANDOM = new SecureRandom();
  private static final String SIGNATURE_ALGORITHM = "SHA1withRSA";
  private static final String TAG = "Security";
  private static HashSet<Long> sKnownNonces = new HashSet();
  
  public static long generateNonce()
  {
    long l = RANDOM.nextLong();
    sKnownNonces.add(Long.valueOf(l));
    return l;
  }
  
  public static PublicKey generatePublicKey(String paramString)
  {
    try
    {
      paramString = Base64.decode(paramString);
      paramString = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(paramString));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString);
    }
    catch (InvalidKeySpecException paramString)
    {
      Log.e("Security", "Invalid key specification.");
      throw new IllegalArgumentException(paramString);
    }
    catch (Base64DecoderException paramString)
    {
      Log.e("Security", "Base64 decoding failed.");
      throw new IllegalArgumentException(paramString);
    }
  }
  
  public static boolean isNonceKnown(long paramLong)
  {
    return sKnownNonces.contains(Long.valueOf(paramLong));
  }
  
  public static void removeNonce(long paramLong)
  {
    sKnownNonces.remove(Long.valueOf(paramLong));
  }
  
  public static boolean verify(PublicKey paramPublicKey, String paramString1, String paramString2)
  {
    try
    {
      Signature localSignature = Signature.getInstance("SHA1withRSA");
      localSignature.initVerify(paramPublicKey);
      localSignature.update(paramString1.getBytes());
      if (!localSignature.verify(Base64.decode(paramString2)))
      {
        Log.e("Security", "Signature verification failed.");
        return false;
      }
      return true;
    }
    catch (NoSuchAlgorithmException paramPublicKey)
    {
      Log.e("Security", "NoSuchAlgorithmException.");
      return false;
    }
    catch (InvalidKeyException paramPublicKey)
    {
      Log.e("Security", "Invalid key specification.");
      return false;
    }
    catch (SignatureException paramPublicKey)
    {
      Log.e("Security", "Signature exception.");
      return false;
    }
    catch (Base64DecoderException paramPublicKey)
    {
      Log.e("Security", "Base64 decoding failed.");
    }
    return false;
  }
  
  public static ArrayList<VerifiedPurchase> verifyPurchase(String paramString1, String paramString2)
  {
    if (paramString1 == null)
    {
      Log.e("Security", "data is null");
      return null;
    }
    int k = 0;
    if (!TextUtils.isEmpty(paramString2))
    {
      boolean bool = verify(generatePublicKey("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmpmy6JJMX7ja5O7nAnAU0K2j0hi19jV40/Qg0mqrNt4esrIsE6ppC9yDECx0VCvrxkVstpJKOUACMpiLZEAASgGZqYzHGhDqECkIPpPnnTAH95B6smteL/OP5S9EHhDHtvxFF7EaW4cdZu3wMdprmoGWsW6T5h8GXAenANG78LuRlVQwMFGBh8oROJP7DiT9aHe4ICPWgwSL90JLJq0GoVfUmpGNJpmS8E5AQAtvScb8FrfRVXLcl9GP6vswWB6PPuafuuca5Js2eRX11tb1Mck2BlqAqRBkPuBIDoF5GGkUlcXI1b9JQXzgY0KDGGQ6ABt1P9Gw3R/MEBZPpzBkbwIDAQAB"), paramString1, paramString2);
      k = bool;
      if (!bool)
      {
        Log.w("Security", "signature does not match data.");
        return null;
      }
    }
    int i = 0;
    long l1;
    try
    {
      paramString1 = new JSONObject(paramString1);
      l1 = paramString1.optLong("nonce");
      paramString2 = paramString1.optJSONArray("orders");
      if (paramString2 != null) {
        i = paramString2.length();
      }
      if (!isNonceKnown(l1))
      {
        Log.w("Security", "Nonce not found: " + l1);
        return null;
      }
    }
    catch (JSONException paramString1)
    {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    for (;;)
    {
      if (j >= i)
      {
        removeNonce(l1);
        return localArrayList;
      }
      try
      {
        Object localObject = paramString2.getJSONObject(j);
        Consts.PurchaseState localPurchaseState = Consts.PurchaseState.valueOf(((JSONObject)localObject).getInt("purchaseState"));
        String str1 = ((JSONObject)localObject).getString("productId");
        ((JSONObject)localObject).getString("packageName");
        long l2 = ((JSONObject)localObject).getLong("purchaseTime");
        String str2 = ((JSONObject)localObject).optString("orderId", "");
        paramString1 = null;
        if (((JSONObject)localObject).has("notificationId")) {
          paramString1 = ((JSONObject)localObject).getString("notificationId");
        }
        localObject = ((JSONObject)localObject).optString("developerPayload", null);
        if ((localPurchaseState != Consts.PurchaseState.PURCHASED) || (k != 0)) {
          localArrayList.add(new VerifiedPurchase(localPurchaseState, paramString1, str1, str2, l2, (String)localObject));
        }
      }
      catch (JSONException paramString1)
      {
        Log.e("Security", "JSON exception: ", paramString1);
        return null;
      }
      j += 1;
    }
  }
  
  public static class VerifiedPurchase
  {
    public String developerPayload;
    public String notificationId;
    public String orderId;
    public String productId;
    public Consts.PurchaseState purchaseState;
    public long purchaseTime;
    
    public VerifiedPurchase(Consts.PurchaseState paramPurchaseState, String paramString1, String paramString2, String paramString3, long paramLong, String paramString4)
    {
      this.purchaseState = paramPurchaseState;
      this.notificationId = paramString1;
      this.productId = paramString2;
      this.orderId = paramString3;
      this.purchaseTime = paramLong;
      this.developerPayload = paramString4;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.Security
 * JD-Core Version:    0.7.0.1
 */