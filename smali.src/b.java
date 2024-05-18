com.google.ads.util.AdUtil
com.google.ads.util.a
java.net.HttpURLConnection
java.util.StringTokenizer

b
  

  a
  b
  c
  d
  
  b, 
  
    a = paramc;
    this.b = paramd;
  }
  
  private void a(HttpURLConnection paramHttpURLConnection)
  {
    Object localObject = paramHttpURLConnection.getHeaderField("X-Afma-Tracking-Urls");
    if (localObject != null)
    {
      localObject = new StringTokenizer((String)localObject);
      while (((StringTokenizer)localObject).hasMoreTokens())
      {
        String str = ((StringTokenizer)localObject).nextToken();
        this.b.a(str);
      }
    }
    b(paramHttpURLConnection);
    localObject = paramHttpURLConnection.getHeaderField("X-Afma-Refresh-Rate");
    if (localObject != null) {}
    try
    {
      f = Float.parseFloat((String)localObject);
      this.b.a(f);
      if (!this.b.p()) {
        this.b.d();
      }
      localObject = paramHttpURLConnection.getHeaderField("X-Afma-Interstitial-Timeout");
      if (localObject == null) {}
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        float f = Float.parseFloat((String)localObject);
        this.b.a((f * 1000.0F));
        paramHttpURLConnection = paramHttpURLConnection.getHeaderField("X-Afma-Orientation");
        if (paramHttpURLConnection != null)
        {
          if (paramHttpURLConnection.equals("portrait")) {
            this.a.a(AdUtil.b());
          }
        }
        else
        {
          return;
          localNumberFormatException1 = localNumberFormatException1;
          a.b("Could not get refresh value: " + (String)localObject, localNumberFormatException1);
        }
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        do
        {
          for (;;)
          {
            a.b("Could not get timeout value: " + (String)localObject, localNumberFormatException2);
          }
        } while (!paramHttpURLConnection.equals("landscape"));
        this.a.a(AdUtil.a());
      }
    }
  }
  
  private void b(HttpURLConnection paramHttpURLConnection)
  {
    paramHttpURLConnection = paramHttpURLConnection.getHeaderField("X-Afma-Click-Tracking-Urls");
    if (paramHttpURLConnection != null)
    {
      paramHttpURLConnection = new StringTokenizer(paramHttpURLConnection);
      while (paramHttpURLConnection.hasMoreTokens())
      {
        String str = paramHttpURLConnection.nextToken();
        this.a.a(str);
      }
    }
  }
  
  final void a()
  {
    this.c = true;
  }
  
  final void a(String paramString)
  {
    this.d = paramString;
    this.c = false;
    new Thread(this).start();
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 121	b:c	Z
    //   4: ifne +52 -> 56
    //   7: new 140	java/net/URL
    //   10: dup
    //   11: aload_0
    //   12: getfield 123	b:d	Ljava/lang/String;
    //   15: invokespecial 141	java/net/URL:<init>	(Ljava/lang/String;)V
    //   18: invokevirtual 145	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   21: checkcast 30	java/net/HttpURLConnection
    //   24: astore_2
    //   25: aload_0
    //   26: getfield 22	b:b	Ld;
    //   29: invokevirtual 149	d:e	()Landroid/app/Activity;
    //   32: astore_3
    //   33: aload_3
    //   34: ifnonnull +23 -> 57
    //   37: ldc 151
    //   39: invokestatic 153	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: getfield 20	b:a	Lc;
    //   46: getstatic 159	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   49: invokevirtual 162	c:a	(Lcom/google/ads/AdRequest$ErrorCode;)V
    //   52: aload_2
    //   53: invokevirtual 165	java/net/HttpURLConnection:disconnect	()V
    //   56: return
    //   57: aload_2
    //   58: aload_3
    //   59: invokevirtual 171	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   62: invokestatic 174	com/google/ads/util/AdUtil:a	(Ljava/net/HttpURLConnection;Landroid/content/Context;)V
    //   65: aload_2
    //   66: iconst_0
    //   67: invokevirtual 178	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   70: aload_2
    //   71: invokevirtual 181	java/net/HttpURLConnection:connect	()V
    //   74: aload_2
    //   75: invokevirtual 184	java/net/HttpURLConnection:getResponseCode	()I
    //   78: istore_1
    //   79: sipush 300
    //   82: iload_1
    //   83: if_icmpgt +116 -> 199
    //   86: iload_1
    //   87: sipush 400
    //   90: if_icmpge +109 -> 199
    //   93: aload_2
    //   94: ldc 186
    //   96: invokevirtual 34	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   99: astore_3
    //   100: aload_3
    //   101: ifnonnull +63 -> 164
    //   104: new 95	java/lang/StringBuilder
    //   107: dup
    //   108: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   111: ldc 188
    //   113: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: iload_1
    //   117: invokevirtual 191	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   120: ldc 193
    //   122: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokestatic 153	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   131: aload_0
    //   132: getfield 20	b:a	Lc;
    //   135: getstatic 159	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   138: invokevirtual 162	c:a	(Lcom/google/ads/AdRequest$ErrorCode;)V
    //   141: aload_2
    //   142: invokevirtual 165	java/net/HttpURLConnection:disconnect	()V
    //   145: return
    //   146: astore_2
    //   147: ldc 195
    //   149: aload_2
    //   150: invokestatic 197	com/google/ads/util/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   153: aload_0
    //   154: getfield 20	b:a	Lc;
    //   157: getstatic 159	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   160: invokevirtual 162	c:a	(Lcom/google/ads/AdRequest$ErrorCode;)V
    //   163: return
    //   164: aload_0
    //   165: aload_2
    //   166: invokespecial 199	b:a	(Ljava/net/HttpURLConnection;)V
    //   169: aload_0
    //   170: aload_3
    //   171: putfield 123	b:d	Ljava/lang/String;
    //   174: aload_2
    //   175: invokevirtual 165	java/net/HttpURLConnection:disconnect	()V
    //   178: goto -178 -> 0
    //   181: astore_2
    //   182: ldc 201
    //   184: aload_2
    //   185: invokestatic 110	com/google/ads/util/a:b	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   188: aload_0
    //   189: getfield 20	b:a	Lc;
    //   192: getstatic 204	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   195: invokevirtual 162	c:a	(Lcom/google/ads/AdRequest$ErrorCode;)V
    //   198: return
    //   199: iload_1
    //   200: sipush 200
    //   203: if_icmpne +197 -> 400
    //   206: aload_0
    //   207: aload_2
    //   208: invokespecial 199	b:a	(Ljava/net/HttpURLConnection;)V
    //   211: new 206	java/io/BufferedReader
    //   214: dup
    //   215: new 208	java/io/InputStreamReader
    //   218: dup
    //   219: aload_2
    //   220: invokevirtual 212	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   223: invokespecial 215	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   226: sipush 4096
    //   229: invokespecial 218	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   232: astore_3
    //   233: new 95	java/lang/StringBuilder
    //   236: dup
    //   237: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   240: astore 4
    //   242: aload_0
    //   243: getfield 121	b:c	Z
    //   246: ifne +58 -> 304
    //   249: aload_3
    //   250: invokevirtual 221	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   253: astore 5
    //   255: aload 5
    //   257: ifnull +47 -> 304
    //   260: aload 4
    //   262: aload 5
    //   264: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: pop
    //   268: aload 4
    //   270: ldc 223
    //   272: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: pop
    //   276: goto -34 -> 242
    //   279: astore_3
    //   280: aload_2
    //   281: invokevirtual 165	java/net/HttpURLConnection:disconnect	()V
    //   284: aload_3
    //   285: athrow
    //   286: astore_2
    //   287: ldc 225
    //   289: aload_2
    //   290: invokestatic 197	com/google/ads/util/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   293: aload_0
    //   294: getfield 20	b:a	Lc;
    //   297: getstatic 159	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   300: invokevirtual 162	c:a	(Lcom/google/ads/AdRequest$ErrorCode;)V
    //   303: return
    //   304: aload 4
    //   306: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   309: astore_3
    //   310: new 95	java/lang/StringBuilder
    //   313: dup
    //   314: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   317: ldc 227
    //   319: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: aload_3
    //   323: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   329: invokestatic 228	com/google/ads/util/a:a	(Ljava/lang/String;)V
    //   332: aload_3
    //   333: ifnull +13 -> 346
    //   336: aload_3
    //   337: invokevirtual 231	java/lang/String:trim	()Ljava/lang/String;
    //   340: invokevirtual 234	java/lang/String:length	()I
    //   343: ifgt +40 -> 383
    //   346: new 95	java/lang/StringBuilder
    //   349: dup
    //   350: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   353: ldc 236
    //   355: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: aload_3
    //   359: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   365: invokestatic 228	com/google/ads/util/a:a	(Ljava/lang/String;)V
    //   368: aload_0
    //   369: getfield 20	b:a	Lc;
    //   372: getstatic 239	com/google/ads/AdRequest$ErrorCode:NO_FILL	Lcom/google/ads/AdRequest$ErrorCode;
    //   375: invokevirtual 162	c:a	(Lcom/google/ads/AdRequest$ErrorCode;)V
    //   378: aload_2
    //   379: invokevirtual 165	java/net/HttpURLConnection:disconnect	()V
    //   382: return
    //   383: aload_0
    //   384: getfield 20	b:a	Lc;
    //   387: aload_3
    //   388: aload_0
    //   389: getfield 123	b:d	Ljava/lang/String;
    //   392: invokevirtual 242	c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   395: aload_2
    //   396: invokevirtual 165	java/net/HttpURLConnection:disconnect	()V
    //   399: return
    //   400: iload_1
    //   401: sipush 400
    //   404: if_icmpne +23 -> 427
    //   407: ldc 244
    //   409: invokestatic 153	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   412: aload_0
    //   413: getfield 20	b:a	Lc;
    //   416: getstatic 247	com/google/ads/AdRequest$ErrorCode:INVALID_REQUEST	Lcom/google/ads/AdRequest$ErrorCode;
    //   419: invokevirtual 162	c:a	(Lcom/google/ads/AdRequest$ErrorCode;)V
    //   422: aload_2
    //   423: invokevirtual 165	java/net/HttpURLConnection:disconnect	()V
    //   426: return
    //   427: new 95	java/lang/StringBuilder
    //   430: dup
    //   431: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   434: ldc 249
    //   436: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   439: iload_1
    //   440: invokevirtual 191	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   443: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   446: invokestatic 153	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   449: aload_0
    //   450: getfield 20	b:a	Lc;
    //   453: getstatic 159	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   456: invokevirtual 162	c:a	(Lcom/google/ads/AdRequest$ErrorCode;)V
    //   459: aload_2
    //   460: invokevirtual 165	java/net/HttpURLConnection:disconnect	()V
    //   463: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	464	0	this	b
    //   78	362	1	i	int
    //   24	118	2	localHttpURLConnection	HttpURLConnection
    //   146	29	2	localMalformedURLException	java.net.MalformedURLException
    //   181	100	2	localIOException	java.io.IOException
    //   286	174	2	localException	java.lang.Exception
    //   32	218	3	localObject1	Object
    //   279	6	3	localObject2	Object
    //   309	79	3	str1	String
    //   240	65	4	localStringBuilder	java.lang.StringBuilder
    //   253	10	5	str2	String
    // Exception table:
    //   from	to	target	type
    //   0	25	146	java/net/MalformedURLException
    //   52	56	146	java/net/MalformedURLException
    //   141	145	146	java/net/MalformedURLException
    //   174	178	146	java/net/MalformedURLException
    //   280	286	146	java/net/MalformedURLException
    //   378	382	146	java/net/MalformedURLException
    //   395	399	146	java/net/MalformedURLException
    //   422	426	146	java/net/MalformedURLException
    //   459	463	146	java/net/MalformedURLException
    //   0	25	181	java/io/IOException
    //   52	56	181	java/io/IOException
    //   141	145	181	java/io/IOException
    //   174	178	181	java/io/IOException
    //   280	286	181	java/io/IOException
    //   378	382	181	java/io/IOException
    //   395	399	181	java/io/IOException
    //   422	426	181	java/io/IOException
    //   459	463	181	java/io/IOException
    //   25	33	279	finally
    //   37	52	279	finally
    //   57	79	279	finally
    //   93	100	279	finally
    //   104	141	279	finally
    //   164	174	279	finally
    //   206	242	279	finally
    //   242	255	279	finally
    //   260	276	279	finally
    //   304	332	279	finally
    //   336	346	279	finally
    //   346	378	279	finally
    //   383	395	279	finally
    //   407	422	279	finally
    //   427	459	279	finally
    //   0	25	286	java/lang/Exception
    //   52	56	286	java/lang/Exception
    //   141	145	286	java/lang/Exception
    //   174	178	286	java/lang/Exception
    //   280	286	286	java/lang/Exception
    //   378	382	286	java/lang/Exception
    //   395	399	286	java/lang/Exception
    //   422	426	286	java/lang/Exception
    //   459	463	286	java/lang/Exception
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     b
 * JD-Core Version:    0.7.0.1
 */