package net.daum.adam.publisher.impl.b;

import java.util.List;
import net.daum.adam.publisher.impl.e;
import org.apache.http.NameValuePair;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class b
  extends net.daum.adam.publisher.impl.a
{
  private static final String a = b.class.getSimpleName();
  
  public b(String paramString)
  {
    super(paramString);
  }
  
  public a b(String paramString)
  {
    return c(paramString, null);
  }
  
  public a b(String paramString, List<NameValuePair> paramList)
  {
    return c(paramString, paramList);
  }
  
  /* Error */
  a c(String paramString, List<NameValuePair> paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_2
    //   4: ifnull +166 -> 170
    //   7: aload 5
    //   9: astore 4
    //   11: aload_0
    //   12: aload_1
    //   13: aload_2
    //   14: invokevirtual 38	net/daum/adam/publisher/impl/b/b:a	(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    //   17: astore_1
    //   18: aload_1
    //   19: ifnull +303 -> 322
    //   22: aload 5
    //   24: astore 4
    //   26: aload_1
    //   27: invokeinterface 44 1 0
    //   32: invokeinterface 50 1 0
    //   37: istore_3
    //   38: aload 5
    //   40: astore 4
    //   42: ldc 52
    //   44: new 54	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 56	java/lang/StringBuilder:<init>	()V
    //   51: ldc 58
    //   53: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: iload_3
    //   57: invokevirtual 65	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   60: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokestatic 73	net/daum/adam/publisher/impl/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   66: iload_3
    //   67: sipush 200
    //   70: if_icmpne +213 -> 283
    //   73: aload 5
    //   75: astore 4
    //   77: aload_1
    //   78: invokeinterface 77 1 0
    //   83: invokeinterface 83 1 0
    //   88: astore 6
    //   90: aload 6
    //   92: ifnull +137 -> 229
    //   95: aload 5
    //   97: astore 4
    //   99: ldc 52
    //   101: ldc 85
    //   103: invokestatic 73	net/daum/adam/publisher/impl/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   106: aload 5
    //   108: astore 4
    //   110: invokestatic 91	javax/xml/parsers/SAXParserFactory:newInstance	()Ljavax/xml/parsers/SAXParserFactory;
    //   113: astore_2
    //   114: new 93	net/daum/adam/publisher/impl/b/a
    //   117: dup
    //   118: invokespecial 94	net/daum/adam/publisher/impl/b/a:<init>	()V
    //   121: astore_1
    //   122: aload_2
    //   123: invokevirtual 98	javax/xml/parsers/SAXParserFactory:newSAXParser	()Ljavax/xml/parsers/SAXParser;
    //   126: invokevirtual 104	javax/xml/parsers/SAXParser:getXMLReader	()Lorg/xml/sax/XMLReader;
    //   129: astore_2
    //   130: aload_2
    //   131: new 6	net/daum/adam/publisher/impl/b/b$a
    //   134: dup
    //   135: aload_0
    //   136: aload_1
    //   137: invokespecial 107	net/daum/adam/publisher/impl/b/b$a:<init>	(Lnet/daum/adam/publisher/impl/b/b;Lnet/daum/adam/publisher/impl/b/a;)V
    //   140: invokeinterface 113 2 0
    //   145: aload_2
    //   146: new 115	org/xml/sax/InputSource
    //   149: dup
    //   150: aload 6
    //   152: invokespecial 118	org/xml/sax/InputSource:<init>	(Ljava/io/InputStream;)V
    //   155: invokeinterface 122 2 0
    //   160: aload_1
    //   161: astore 4
    //   163: aload 6
    //   165: invokevirtual 127	java/io/InputStream:close	()V
    //   168: aload_1
    //   169: areturn
    //   170: aload 5
    //   172: astore 4
    //   174: aload_0
    //   175: aload_1
    //   176: invokevirtual 130	net/daum/adam/publisher/impl/b/b:a	(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    //   179: astore_1
    //   180: goto -162 -> 18
    //   183: astore 4
    //   185: aconst_null
    //   186: astore_1
    //   187: aload_1
    //   188: astore_2
    //   189: iconst_4
    //   190: invokestatic 135	net/daum/adam/publisher/impl/b/c:a	(I)V
    //   193: aload_1
    //   194: astore_2
    //   195: getstatic 18	net/daum/adam/publisher/impl/b/b:a	Ljava/lang/String;
    //   198: ldc 137
    //   200: aload 4
    //   202: invokestatic 140	net/daum/adam/publisher/impl/e:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   205: goto -45 -> 160
    //   208: aload_1
    //   209: astore_2
    //   210: iconst_4
    //   211: invokestatic 135	net/daum/adam/publisher/impl/b/c:a	(I)V
    //   214: aload_1
    //   215: astore_2
    //   216: getstatic 18	net/daum/adam/publisher/impl/b/b:a	Ljava/lang/String;
    //   219: ldc 137
    //   221: aload 4
    //   223: invokestatic 140	net/daum/adam/publisher/impl/e:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   226: goto -66 -> 160
    //   229: aload 5
    //   231: astore 4
    //   233: iconst_4
    //   234: invokestatic 135	net/daum/adam/publisher/impl/b/c:a	(I)V
    //   237: aload 5
    //   239: astore 4
    //   241: new 142	net/daum/adam/publisher/impl/AdException
    //   244: dup
    //   245: getstatic 148	net/daum/adam/publisher/impl/AdError:AD_DOWNLOAD_ERROR_HTTPFAILED	Lnet/daum/adam/publisher/impl/AdError;
    //   248: invokespecial 151	net/daum/adam/publisher/impl/AdException:<init>	(Lnet/daum/adam/publisher/impl/AdError;)V
    //   251: astore_1
    //   252: aload 5
    //   254: astore 4
    //   256: aload_1
    //   257: invokevirtual 154	net/daum/adam/publisher/impl/AdException:printStackTrace	()V
    //   260: aload 5
    //   262: astore 4
    //   264: aload_1
    //   265: athrow
    //   266: astore_1
    //   267: iconst_4
    //   268: invokestatic 135	net/daum/adam/publisher/impl/b/c:a	(I)V
    //   271: getstatic 18	net/daum/adam/publisher/impl/b/b:a	Ljava/lang/String;
    //   274: ldc 156
    //   276: aload_1
    //   277: invokestatic 140	net/daum/adam/publisher/impl/e:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   280: aload 4
    //   282: areturn
    //   283: aload 5
    //   285: astore 4
    //   287: iconst_4
    //   288: invokestatic 135	net/daum/adam/publisher/impl/b/c:a	(I)V
    //   291: aload 5
    //   293: astore 4
    //   295: getstatic 18	net/daum/adam/publisher/impl/b/b:a	Ljava/lang/String;
    //   298: new 54	java/lang/StringBuilder
    //   301: dup
    //   302: invokespecial 56	java/lang/StringBuilder:<init>	()V
    //   305: ldc 158
    //   307: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: iload_3
    //   311: invokevirtual 65	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   314: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   317: invokestatic 73	net/daum/adam/publisher/impl/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   320: aconst_null
    //   321: areturn
    //   322: aload 5
    //   324: astore 4
    //   326: iconst_4
    //   327: invokestatic 135	net/daum/adam/publisher/impl/b/c:a	(I)V
    //   330: aload 5
    //   332: astore 4
    //   334: getstatic 18	net/daum/adam/publisher/impl/b/b:a	Ljava/lang/String;
    //   337: ldc 160
    //   339: invokestatic 73	net/daum/adam/publisher/impl/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   342: aconst_null
    //   343: areturn
    //   344: astore_1
    //   345: aload_2
    //   346: astore 4
    //   348: goto -81 -> 267
    //   351: astore 4
    //   353: goto -145 -> 208
    //   356: astore 4
    //   358: goto -171 -> 187
    //   361: astore 4
    //   363: aconst_null
    //   364: astore_1
    //   365: goto -157 -> 208
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	368	0	this	b
    //   0	368	1	paramString	String
    //   0	368	2	paramList	List<NameValuePair>
    //   37	274	3	i	int
    //   9	164	4	localObject1	java.lang.Object
    //   183	39	4	localSAXException1	SAXException
    //   231	116	4	localObject2	java.lang.Object
    //   351	1	4	localException1	java.lang.Exception
    //   356	1	4	localSAXException2	SAXException
    //   361	1	4	localException2	java.lang.Exception
    //   1	330	5	localObject3	java.lang.Object
    //   88	76	6	localInputStream	java.io.InputStream
    // Exception table:
    //   from	to	target	type
    //   114	122	183	org/xml/sax/SAXException
    //   11	18	266	java/lang/Exception
    //   26	38	266	java/lang/Exception
    //   42	66	266	java/lang/Exception
    //   77	90	266	java/lang/Exception
    //   99	106	266	java/lang/Exception
    //   110	114	266	java/lang/Exception
    //   163	168	266	java/lang/Exception
    //   174	180	266	java/lang/Exception
    //   233	237	266	java/lang/Exception
    //   241	252	266	java/lang/Exception
    //   256	260	266	java/lang/Exception
    //   264	266	266	java/lang/Exception
    //   287	291	266	java/lang/Exception
    //   295	320	266	java/lang/Exception
    //   326	330	266	java/lang/Exception
    //   334	342	266	java/lang/Exception
    //   189	193	344	java/lang/Exception
    //   195	205	344	java/lang/Exception
    //   210	214	344	java/lang/Exception
    //   216	226	344	java/lang/Exception
    //   122	160	351	java/lang/Exception
    //   122	160	356	org/xml/sax/SAXException
    //   114	122	361	java/lang/Exception
  }
  
  private final class a
    extends DefaultHandler
  {
    a a;
    String b;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;
    private boolean g = false;
    private boolean h = false;
    
    public a(a parama)
    {
      this.a = parama;
    }
    
    public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
      throws SAXException
    {
      paramArrayOfChar = new String(paramArrayOfChar, paramInt1, paramInt2);
      if ((paramArrayOfChar == null) || (paramArrayOfChar.length() < 1)) {}
      do
      {
        return;
        if (this.d)
        {
          this.a.b(Integer.parseInt(paramArrayOfChar));
          e.b("AdCommandHttpContext", "Result Code : " + paramArrayOfChar);
          return;
        }
        if (this.e)
        {
          if ("cmd".equals(this.b))
          {
            this.a.d(paramArrayOfChar);
            e.b("AdCommandHttpContext", "Cmd Parameter : " + paramArrayOfChar);
            return;
          }
          this.a.e(paramArrayOfChar);
          e.b("AdCommandHttpContext", "Imp Parameter : " + paramArrayOfChar);
          return;
        }
        if (this.g)
        {
          a.f = paramArrayOfChar;
          return;
        }
        if (this.f)
        {
          a.g = paramArrayOfChar;
          return;
        }
      } while (!this.h);
      this.a.f(paramArrayOfChar);
    }
    
    public void endDocument()
      throws SAXException
    {}
    
    public void endElement(String paramString1, String paramString2, String paramString3)
      throws SAXException
    {
      this.d = false;
      this.e = false;
      this.f = false;
      this.g = false;
      this.h = false;
    }
    
    public void startDocument()
      throws SAXException
    {}
    
    public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
      throws SAXException
    {
      if (paramString3.length() < 1) {
        if (paramString1.length() <= 0) {}
      }
      for (;;)
      {
        if ("result".equals(paramString1)) {
          this.d = true;
        }
        label227:
        do
        {
          for (;;)
          {
            return;
            paramString1 = paramString2;
            break;
            if (!"action".equals(paramString1)) {
              break label262;
            }
            this.b = paramAttributes.getValue("for");
            paramString1 = paramAttributes.getValue("type");
            paramString2 = paramAttributes.getValue("interval");
            paramString3 = paramAttributes.getValue("delay");
            if (paramString2 != null)
            {
              e.b("AdCommandHttpContext", "Set Interval : " + paramString2);
              this.a.a(Integer.parseInt(paramString2));
              if (!"cmd".equals(this.b)) {
                break label227;
              }
              e.b("AdCommandHttpContext", "Cmd Action Type: " + paramString1);
              this.a.a(paramString1);
            }
            for (;;)
            {
              if (!"agree".equals(paramString1)) {
                break label260;
              }
              this.g = true;
              return;
              if (paramString3 == null) {
                break;
              }
              e.b("AdCommandHttpContext", "Set Delay : " + paramString3);
              this.a.a(Integer.parseInt(paramString3));
              break;
              e.b("AdCommandHttpContext", "Imp Action Type: " + paramString1);
              this.a.b(paramString1);
            }
          }
          if ("item".equals(paramString1))
          {
            this.e = true;
            return;
          }
          if ("agree".equals(paramString1))
          {
            if (paramAttributes.getValue("value").toLowerCase().equals("y"))
            {
              a.h = true;
              return;
            }
            a.h = false;
            return;
          }
          if ("canwithdrawal".equals(paramString1))
          {
            this.f = true;
            if (paramAttributes.getValue("value").toLowerCase().equals("y"))
            {
              a.i = true;
              return;
            }
            a.i = false;
            return;
          }
        } while ((!"msg".equals(paramString1)) || (this.d) || (this.e) || (this.f) || (this.g));
        label260:
        label262:
        this.h = true;
        return;
        paramString1 = paramString3;
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.b.b
 * JD-Core Version:    0.7.0.1
 */