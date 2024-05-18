package com.kt.olleh.potection;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.kaf.IKafManager;
import com.kaf.KafManager;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Method;

public class ProtectionService
{
  public static final int APP_ILLEGAL_COPY = -1;
  public static final int APP_REGAL = 0;
  public static final int FUNC_INITIALIZING = -4;
  public static final int INVALID_CONTEXT = -2;
  public static final int OLLEHMARKET_NOT_INSTALLED = -3;
  public static final int UNKNOWN_ERROR = -5;
  private static ProtectionService pService = null;
  
  private int a(Context paramContext)
  {
    int j = -5;
    int k;
    if (paramContext == null)
    {
      Log.e("KTArmService", "[ArmService.verifyApp] Context is null.");
      k = -2;
    }
    for (;;)
    {
      return k;
      int i;
      if (new File("/system/framework/kafdex.jar").exists()) {
        try
        {
          i = KafManager.getInstance().Initialize(paramContext, 1);
          if (i == 0) {
            return 0;
          }
          if (i == -2) {
            return 0;
          }
          if (i == -3) {
            return -1;
          }
          return -5;
        }
        catch (IllegalArgumentException paramContext)
        {
          paramContext = paramContext.getMessage();
          if ("Context value is null".equals(paramContext))
          {
            Log.e("KTArmService", "[ArmService.verifyApp] Context is null.");
            return -2;
          }
          if (!"Invalid copyright".equals(paramContext)) {
            break label740;
          }
          Log.e("KTArmService", "[ArmService.verifyApp] Invalid copyright.");
          return -2;
        }
        catch (Exception paramContext)
        {
          Log.e("KTArmService", "[ArmService.verifyApp] " + paramContext.toString());
          return -5;
        }
        catch (Throwable paramContext)
        {
          Log.e("KTArmService", "[ArmService.verifyApp] " + paramContext.toString());
          return -5;
        }
      } else {
        try
        {
          Object localObject1 = paramContext.getContentResolver().query(Uri.parse("content://com.kt.olleh.istore.API_PROVIDER/API?method=verifyApp&packageName=" + paramContext.getPackageName() + "&copyRight=" + 1), null, null, null, null);
          if (localObject1 == null)
          {
            try
            {
              localObject1 = b(paramContext);
              i = -5;
            }
            catch (Exception localException2)
            {
              for (;;)
              {
                str = localException2.getMessage();
                if ("NameNotFoundException".equalsIgnoreCase(str))
                {
                  Log.d("KTArmService", "[ArmService.verifyApp] com.kt.olleh.istore Name Not Found Exception.");
                  i = -3;
                  localObject3 = null;
                }
                else if ("Initialize".equalsIgnoreCase(str))
                {
                  i = -4;
                  localObject3 = null;
                }
                else
                {
                  Log.e("KTArmService", "[ArmService.verifyApp] " + localObject3.toString());
                  localObject3 = null;
                  i = -5;
                  continue;
                  i = j;
                  if (k != -1) {
                    if (k == -2)
                    {
                      i = 0;
                    }
                    else if (k == -3)
                    {
                      i = -1;
                    }
                    else if (k == -4)
                    {
                      i = -3;
                    }
                    else
                    {
                      i = j;
                      if (k == -5) {
                        i = -4;
                      }
                    }
                  }
                }
              }
            }
            k = i;
            if (localObject1 == null) {
              continue;
            }
            try
            {
              k = ((IKafManager)localObject1).Initialize(paramContext, 1);
              if (k != 0) {
                break label384;
              }
              i = 0;
            }
            catch (IllegalArgumentException paramContext)
            {
              for (;;)
              {
                Object localObject2;
                String str;
                paramContext = paramContext.getMessage();
                if ("Context value is null".equals(paramContext))
                {
                  Log.e("KTArmService", "[ArmService.verifyApp] Context is null.");
                  i = -2;
                }
                else
                {
                  if (!"Invalid copyright".equals(paramContext)) {
                    break;
                  }
                  Log.e("KTArmService", "[ArmService.verifyApp] Invalid copyright.");
                  i = -2;
                }
              }
            }
            catch (Exception paramContext)
            {
              for (;;)
              {
                Log.e("KTArmService", "[ArmService.verifyApp] " + paramContext.toString());
                i = j;
              }
            }
            catch (Throwable paramContext)
            {
              for (;;)
              {
                Log.e("KTArmService", "[ArmService.verifyApp] " + paramContext.toString());
                i = j;
              }
            }
            return i;
          }
        }
        catch (Exception localException1)
        {
          Object localObject3;
          for (;;)
          {
            Log.e("KTArmService", "[ArmService.verifyApp] " + localException1.toString());
            localObject2 = null;
            continue;
            label384:
            i = j;
            for (;;)
            {
              try
              {
                if (localObject3.getCount() > 0)
                {
                  localObject3.moveToFirst();
                  i = localObject3.getInt(localObject3.getColumnIndex("ResultCode"));
                  if (i != 0) {
                    continue;
                  }
                  i = localObject3.getInt(localObject3.getColumnIndex("AuthResult"));
                  if (i != 0) {
                    continue;
                  }
                  i = 0;
                }
                k = i;
                if (localObject3 != null)
                {
                  localObject3.close();
                  k = i;
                }
              }
              catch (Exception paramContext)
              {
                Log.e("KTArmService", "[ArmService.verifyApp] " + paramContext.toString());
                k = j;
                if (localObject3 == null) {
                  continue;
                }
                localObject3.close();
                k = j;
                continue;
              }
              finally
              {
                if (localObject3 == null) {
                  continue;
                }
                localObject3.close();
              }
              return k;
              i = -1;
              continue;
              Log.e("KTArmService", "[ArmService.verifyApp] verifyApp fail.. ResultCode : " + i);
              i = -1;
            }
          }
        }
      }
    }
    label740:
    return -5;
  }
  
  private static String a(Context paramContext, ApplicationInfo paramApplicationInfo)
  {
    try
    {
      paramContext = a(paramContext, "JarFile");
      if (paramContext == null)
      {
        paramContext = paramApplicationInfo.dataDir + "/lib/libkafdex.so";
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      File localFile;
      do
      {
        for (;;)
        {
          paramContext.printStackTrace();
          paramContext = null;
        }
        localFile = new File(paramContext);
        if (!localFile.exists()) {
          break;
        }
      } while (!localFile.isDirectory());
    }
    return paramApplicationInfo.dataDir + "/lib/libkafdex.so";
  }
  
  /* Error */
  private static String a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 196
    //   4: invokestatic 118	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   7: astore_3
    //   8: aload_0
    //   9: invokevirtual 102	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   12: aload_3
    //   13: aconst_null
    //   14: ldc 198
    //   16: iconst_1
    //   17: anewarray 74	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: aload_1
    //   23: aastore
    //   24: aconst_null
    //   25: invokevirtual 124	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   28: astore_0
    //   29: aload_0
    //   30: ifnull +98 -> 128
    //   33: aload_0
    //   34: astore_1
    //   35: aload_0
    //   36: invokeinterface 150 1 0
    //   41: ifle +87 -> 128
    //   44: aload_0
    //   45: astore_1
    //   46: aload_0
    //   47: invokeinterface 153 1 0
    //   52: pop
    //   53: aload_0
    //   54: astore_1
    //   55: aload_0
    //   56: aload_0
    //   57: ldc 200
    //   59: invokeinterface 159 2 0
    //   64: invokeinterface 204 2 0
    //   69: astore_2
    //   70: aload_2
    //   71: astore_1
    //   72: aload_0
    //   73: ifnull +9 -> 82
    //   76: aload_0
    //   77: invokeinterface 168 1 0
    //   82: aload_1
    //   83: areturn
    //   84: astore_2
    //   85: aconst_null
    //   86: astore_0
    //   87: aload_0
    //   88: astore_1
    //   89: aload_2
    //   90: invokevirtual 191	java/lang/Exception:printStackTrace	()V
    //   93: aload_0
    //   94: ifnull +9 -> 103
    //   97: aload_0
    //   98: invokeinterface 168 1 0
    //   103: aconst_null
    //   104: areturn
    //   105: astore_0
    //   106: aload_2
    //   107: astore_1
    //   108: aload_1
    //   109: ifnull +9 -> 118
    //   112: aload_1
    //   113: invokeinterface 168 1 0
    //   118: aload_0
    //   119: athrow
    //   120: astore_0
    //   121: goto -13 -> 108
    //   124: astore_2
    //   125: goto -38 -> 87
    //   128: aconst_null
    //   129: astore_1
    //   130: goto -58 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	paramContext	Context
    //   0	133	1	paramString	String
    //   1	70	2	str	String
    //   84	23	2	localException1	Exception
    //   124	1	2	localException2	Exception
    //   7	6	3	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   2	29	84	java/lang/Exception
    //   2	29	105	finally
    //   35	44	120	finally
    //   46	53	120	finally
    //   55	70	120	finally
    //   89	93	120	finally
    //   35	44	124	java/lang/Exception
    //   46	53	124	java/lang/Exception
    //   55	70	124	java/lang/Exception
  }
  
  private IKafManager b(Context paramContext)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo("com.kt.olleh.istore", 128);
      if (localApplicationInfo == null) {
        throw new Exception("NameNotFoundException");
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        localObject1 = null;
      }
      Object localObject2 = ((ApplicationInfo)localObject1).dataDir;
      Object localObject1 = new File(localObject2 + "/kafcache");
      File localFile1 = new File(localObject2 + "/lib/libkafdex.so");
      File localFile2 = new File(localObject2 + "/kafcache/device_info.xml");
      localObject2 = new File(localObject2 + "/kafcache/kaf_conf.xml");
      if (e(paramContext))
      {
        int i = d(paramContext);
        if ((!((File)localObject1).exists()) || (!localFile1.exists()) || (!localFile2.exists()) || (!((File)localObject2).exists()))
        {
          localObject1 = new Intent();
          ((Intent)localObject1).setAction("com.kaf.action.KAF_LIB_INSTALL");
          if (i != 3) {
            ((Intent)localObject1).putExtra("initialize_command", "1");
          }
          for (;;)
          {
            ((Intent)localObject1).putExtra("package_name", paramContext.getPackageName());
            paramContext.startService((Intent)localObject1);
            throw new Exception("Initialize");
            ((Intent)localObject1).putExtra("initialize_command", "2");
          }
        }
        try
        {
          paramContext = (IKafManager)c(paramContext).loadClass("com.kt.ikaf.KafManager").getDeclaredMethod("getInstance", new Class[0]).invoke(null, null);
          return paramContext;
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
        }
      }
    }
    return null;
  }
  
  private DexClassLoader c(Context paramContext)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo("com.kt.olleh.istore", 1);
      File localFile = new File(localApplicationInfo.dataDir + "/kafcache");
      paramContext = new DexClassLoader(a(paramContext, localApplicationInfo), localFile.getAbsolutePath(), null, getClass().getClassLoader());
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  /* Error */
  private static int d(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 196
    //   4: invokestatic 118	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   7: astore_3
    //   8: aload_0
    //   9: invokevirtual 102	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   12: aload_3
    //   13: iconst_1
    //   14: anewarray 74	java/lang/String
    //   17: dup
    //   18: iconst_0
    //   19: ldc 200
    //   21: aastore
    //   22: ldc_w 298
    //   25: aconst_null
    //   26: aconst_null
    //   27: invokevirtual 124	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   30: astore_0
    //   31: aload_0
    //   32: astore_2
    //   33: aload_2
    //   34: ifnull +101 -> 135
    //   37: aload_2
    //   38: astore_0
    //   39: aload_2
    //   40: invokeinterface 153 1 0
    //   45: pop
    //   46: aload_2
    //   47: astore_0
    //   48: aload_2
    //   49: invokeinterface 150 1 0
    //   54: istore_1
    //   55: iload_1
    //   56: ifgt +17 -> 73
    //   59: iconst_0
    //   60: istore_1
    //   61: aload_2
    //   62: ifnull +9 -> 71
    //   65: aload_2
    //   66: invokeinterface 168 1 0
    //   71: iload_1
    //   72: ireturn
    //   73: aload_2
    //   74: astore_0
    //   75: aload_2
    //   76: iconst_0
    //   77: invokeinterface 204 2 0
    //   82: invokestatic 303	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   85: istore_1
    //   86: goto -25 -> 61
    //   89: astore_3
    //   90: aconst_null
    //   91: astore_2
    //   92: aload_2
    //   93: astore_0
    //   94: aload_3
    //   95: invokevirtual 191	java/lang/Exception:printStackTrace	()V
    //   98: aload_2
    //   99: ifnull +9 -> 108
    //   102: aload_2
    //   103: invokeinterface 168 1 0
    //   108: iconst_0
    //   109: ireturn
    //   110: astore_0
    //   111: aload_2
    //   112: ifnull +9 -> 121
    //   115: aload_2
    //   116: invokeinterface 168 1 0
    //   121: aload_0
    //   122: athrow
    //   123: astore_3
    //   124: aload_0
    //   125: astore_2
    //   126: aload_3
    //   127: astore_0
    //   128: goto -17 -> 111
    //   131: astore_3
    //   132: goto -40 -> 92
    //   135: iconst_0
    //   136: istore_1
    //   137: goto -76 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	paramContext	Context
    //   54	83	1	i	int
    //   1	125	2	localContext	Context
    //   7	6	3	localUri	Uri
    //   89	6	3	localException1	Exception
    //   123	4	3	localObject	Object
    //   131	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   2	31	89	java/lang/Exception
    //   2	31	110	finally
    //   39	46	123	finally
    //   48	55	123	finally
    //   75	86	123	finally
    //   94	98	123	finally
    //   39	46	131	java/lang/Exception
    //   48	55	131	java/lang/Exception
    //   75	86	131	java/lang/Exception
  }
  
  private static boolean e(Context paramContext)
  {
    boolean bool = false;
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo("com.kt.olleh.istore", 128);
      if (paramContext != null) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public static ProtectionService getProtection()
  {
    try
    {
      if (pService == null) {
        pService = new ProtectionService();
      }
      ProtectionService localProtectionService = pService;
      return localProtectionService;
    }
    finally {}
  }
  
  public int verifyApp(Context paramContext)
  {
    Log.i("KTArmService", "**** KT App Protection Service (Release Date: 111110) ****");
    return a(paramContext);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.potection.ProtectionService
 * JD-Core Version:    0.7.0.1
 */