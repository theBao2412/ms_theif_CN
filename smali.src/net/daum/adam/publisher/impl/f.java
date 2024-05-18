package net.daum.adam.publisher.impl;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public class f
  extends a
{
  private static final String a = "AdHttpContext";
  private ArrayList<b> b = null;
  
  protected f(ArrayList<b> paramArrayList, String paramString)
  {
    super(paramString);
    this.b = paramArrayList;
  }
  
  protected void b(String paramString)
    throws AdException
  {
    c(paramString, null);
  }
  
  void b(String paramString, List<NameValuePair> paramList)
    throws AdException
  {
    if (paramList != null) {}
    try
    {
      for (paramString = a(paramString, paramList);; paramString = a(paramString))
      {
        if (paramString == null) {
          break label253;
        }
        if (b() != 200) {
          break label203;
        }
        paramString = paramString.getEntity().getContent();
        if (paramString == null) {
          break label173;
        }
        paramList = SAXParserFactory.newInstance();
        try
        {
          paramList = paramList.newSAXParser().getXMLReader();
          paramList.setContentHandler(new a(this.b));
          paramList.parse(new InputSource(paramString));
          paramString.close();
          return;
        }
        catch (SAXException paramString)
        {
          a(a.a.a);
          throw new AdException(AdError.AD_DOWNLOAD_ERROR_INVALIDAD, "XML parsing error : " + paramString.toString());
        }
      }
      a(a.a.a);
    }
    catch (Exception paramString)
    {
      a(a.a.a);
      paramString = new AdException(AdError.AD_DOWNLOAD_ERROR_HTTPFAILED, paramString.toString());
      e.a("AdHttpContext", "requestBody", paramString);
      throw paramString;
    }
    label173:
    paramString = new AdException(AdError.AD_DOWNLOAD_ERROR_HTTPFAILED, "There is no advertisement");
    e.a("AdHttpContext", "requestBody", paramString);
    throw paramString;
    label203:
    a(a.a.a);
    paramString = new AdException(AdError.AD_DOWNLOAD_ERROR_HTTPFAILED, "server doesn't response : " + b());
    e.a("AdHttpContext", "requestBody", paramString);
    throw paramString;
    label253:
    a(a.a.a);
    paramString = new AdException(AdError.AD_DOWNLOAD_ERROR_HTTPFAILED, "server doesn't response");
    e.a("AdHttpContext", "requestBody", paramString);
    throw paramString;
  }
  
  protected void c(String paramString, List<NameValuePair> paramList)
    throws AdException
  {
    try
    {
      a(a.a.b);
      b(paramString, paramList);
      if ((a() != a.a.a) && (this.b.size() > 0))
      {
        if ((b)this.b.get(0) != null)
        {
          a(a.a.c);
          return;
        }
        a(a.a.a);
        this.b.clear();
        return;
      }
    }
    catch (AdException paramString)
    {
      if (a().equals(a.a.a)) {
        this.b.clear();
      }
      throw paramString;
    }
    a(a.a.a);
    this.b.clear();
  }
  
  private class a
    extends DefaultHandler
  {
    private ArrayList<b> b = null;
    private b c = null;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private String k;
    private boolean l;
    private boolean m;
    
    protected a()
    {
      Object localObject;
      this.b = localObject;
    }
    
    private void a()
    {
      if (this.c != null)
      {
        if (!"H".equals(this.c.a())) {
          break label38;
        }
        if (this.c.d() == null) {
          this.c = null;
        }
      }
      label38:
      do
      {
        return;
        if (!"MRAID".equals(this.c.a())) {
          break;
        }
      } while ((this.c.f() != null) && (this.c.g() != null));
      this.c = null;
      return;
      this.c = null;
    }
    
    public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      paramArrayOfChar = new String(paramArrayOfChar, paramInt1, paramInt2);
      if ((paramArrayOfChar != null) && (paramArrayOfChar.length() > 0)) {
        if (this.c != null)
        {
          if (this.d) {
            this.c.a(paramArrayOfChar);
          }
          if (this.e) {
            this.c.b(paramArrayOfChar);
          }
          if (this.f) {
            this.c.c(paramArrayOfChar);
          }
          if (this.g) {
            this.c.e(paramArrayOfChar);
          }
          if ((this.h) && (this.i)) {
            this.c.g(paramArrayOfChar);
          }
          if ((this.h) && (this.j)) {
            this.c.h(paramArrayOfChar);
          }
        }
      }
      while ((this.c == null) || ((!this.d) && (!this.e) && (!this.f))) {
        return;
      }
      this.c = null;
    }
    
    public void endDocument()
      throws SAXException
    {
      if ((!this.l) || (!this.m)) {
        this.b.removeAll(this.b);
      }
    }
    
    public void endElement(String paramString1, String paramString2, String paramString3)
      throws SAXException
    {
      if (paramString2.equals("DAP")) {
        this.l = true;
      }
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if (!paramString2.equals("COLL")) {
                break;
              }
              a();
            } while (this.c == null);
            this.b.add(this.c);
            return;
          } while (paramString2.equals("AD"));
          if (paramString2.equals("type"))
          {
            this.d = false;
            return;
          }
          if (paramString2.equals("curl"))
          {
            this.e = false;
            return;
          }
          if (paramString2.equals("turl"))
          {
            this.f = false;
            return;
          }
          if (paramString2.equals("html"))
          {
            this.g = false;
            return;
          }
          if (paramString2.equals("mraid"))
          {
            this.h = false;
            return;
          }
          if (!paramString2.equals("url")) {
            break;
          }
        } while (!this.h);
        this.i = false;
        return;
      } while ((!paramString2.equals("placementtype")) || (!this.h));
      this.j = false;
    }
    
    public void startDocument()
      throws SAXException
    {
      this.d = false;
      this.e = false;
      this.f = false;
      this.k = null;
      this.h = false;
      this.i = false;
      this.j = false;
      this.l = false;
      this.m = false;
    }
    
    public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
      throws SAXException
    {
      if (paramString2.equals("DAP"))
      {
        this.k = paramAttributes.getValue("version");
        this.l = false;
      }
      do
      {
        do
        {
          do
          {
            return;
            if (paramString2.equals("COLL"))
            {
              if (paramAttributes.getValue("name").equals("MOBILEAD"))
              {
                this.m = true;
                return;
              }
              this.m = false;
              return;
            }
            if (!paramString2.equals("AD")) {
              break;
            }
            this.c = new b();
          } while (this.k == null);
          this.c.f(this.k);
          return;
          if (paramString2.equals("type"))
          {
            this.d = true;
            return;
          }
          if (paramString2.equals("curl"))
          {
            this.e = true;
            return;
          }
          if (paramString2.equals("turl"))
          {
            this.f = true;
            return;
          }
          if (paramString2.equals("html"))
          {
            this.g = true;
            return;
          }
          if (paramString2.equals("mraid"))
          {
            this.h = true;
            return;
          }
          if (!paramString2.equals("url")) {
            break;
          }
        } while (!this.h);
        this.i = true;
        return;
      } while ((!paramString2.equals("placementtype")) || (!this.h));
      this.j = true;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.f
 * JD-Core Version:    0.7.0.1
 */