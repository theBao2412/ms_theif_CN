package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.Config.Config;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class XMLParser
{
  private static final String TAG = "XMLParser";
  
  public static Response parseXML(InputStream paramInputStream, String paramString)
  {
    if (Config.DEBUG) {
      Config.LogI("XMLParser", "parseXML() start");
    }
    Object localObject = DocumentBuilderFactory.newInstance();
    if (localObject == null) {
      return null;
    }
    try
    {
      localObject = ((DocumentBuilderFactory)localObject).newDocumentBuilder();
      if (localObject == null)
      {
        Config.LogI("XMLParser", "builder is null");
        return null;
      }
      paramInputStream = ((DocumentBuilder)localObject).parse(paramInputStream);
      if (paramInputStream == null)
      {
        Config.LogI("XMLParser", "dom is null");
        return null;
      }
      paramInputStream = paramInputStream.getDocumentElement();
      if (paramInputStream == null)
      {
        Config.LogI("XMLParser", "root is null");
        return null;
      }
      paramInputStream = paramInputStream.getChildNodes();
      if (paramInputStream == null)
      {
        Config.LogI("XMLParser", "list is null");
        return null;
      }
      if (paramString.equalsIgnoreCase("getSymKeyGen"))
      {
        paramString = new ResGetSymKeyGen();
        paramString.parseXML(paramInputStream);
        return paramString;
      }
    }
    catch (ParserConfigurationException paramInputStream)
    {
      Config.LogD("XMLParser", paramInputStream.toString(), paramInputStream);
      return null;
      if ((paramString.equalsIgnoreCase("getUseDiList")) || (paramString.equalsIgnoreCase("getDownloadDiList")))
      {
        paramString = new ResDIListExpand();
        paramString.parseXML(paramInputStream);
        return paramString;
      }
    }
    catch (SAXException paramInputStream)
    {
      Config.LogD("XMLParser", paramInputStream.toString(), paramInputStream);
      return null;
      if ((paramString.equalsIgnoreCase("getBuyDiList")) || (paramString.equalsIgnoreCase("getAllDiList")) || (paramString.equalsIgnoreCase("getGiftDiList")) || (paramString.equalsIgnoreCase("getReceiveDiList")))
      {
        paramString = new ResDIList();
        paramString.parseXML(paramInputStream);
        return paramString;
      }
    }
    catch (IOException paramInputStream)
    {
      Config.LogD("XMLParser", "parsing() : " + paramInputStream.toString(), paramInputStream);
      return null;
    }
    if (paramString.equalsIgnoreCase("getDiDetail"))
    {
      paramString = new ResDIDetail();
      paramString.parseXML(paramInputStream);
      return paramString;
    }
    if ((paramString.equalsIgnoreCase("buyDi")) || (paramString.equalsIgnoreCase("buyCancelDi")) || (paramString.equalsIgnoreCase("giftDi")) || (paramString.equalsIgnoreCase("reGiftDi")) || (paramString.equalsIgnoreCase("approvedUseDi")))
    {
      paramString = new ResDIBuy();
      paramString.parseXML(paramInputStream);
      return paramString;
    }
    if (paramString.equalsIgnoreCase("esBuyDi"))
    {
      paramString = new ResDIesBuy();
      paramString.parseXML(paramInputStream);
      return paramString;
    }
    if (paramString.equalsIgnoreCase("approvedDownDi"))
    {
      paramString = new ResDIApproveDown();
      paramString.parseXML(paramInputStream);
      return paramString;
    }
    if (paramString.equalsIgnoreCase("getFile"))
    {
      paramString = new ResDIGetFile();
      paramString.parseXML(paramInputStream);
      return paramString;
    }
    if (paramString.equalsIgnoreCase("checkShowId"))
    {
      paramString = new ResCheckShowId();
      paramString.parseXML(paramInputStream);
      return paramString;
    }
    if (paramString.equalsIgnoreCase("checkCoin"))
    {
      paramString = new ResCheckCoin();
      paramString.parseXML(paramInputStream);
      return paramString;
    }
    return null;
  }
  
  public static ResponseOld parseXML_OLD(InputStream paramInputStream, String paramString)
  {
    if (Config.DEBUG) {
      Config.LogI("XMLParser", "parseXML() start");
    }
    Object localObject = DocumentBuilderFactory.newInstance();
    if (localObject == null) {
      return null;
    }
    try
    {
      localObject = ((DocumentBuilderFactory)localObject).newDocumentBuilder();
      if (localObject == null)
      {
        if (Config.DEBUG) {
          Config.LogI("XMLParser", "builder is null");
        }
      }
      else
      {
        paramInputStream = ((DocumentBuilder)localObject).parse(paramInputStream);
        if (paramInputStream == null)
        {
          if (!Config.DEBUG) {
            break label211;
          }
          Config.LogI("XMLParser", "dom is null");
          break label211;
        }
        paramInputStream = paramInputStream.getDocumentElement();
        if (paramInputStream == null)
        {
          if (!Config.DEBUG) {
            break label213;
          }
          Config.LogI("XMLParser", "root is null");
          break label213;
        }
        paramInputStream = paramInputStream.getChildNodes();
        if (paramInputStream == null)
        {
          if (!Config.DEBUG) {
            break label215;
          }
          Config.LogI("XMLParser", "list is null");
          break label215;
        }
        if (paramString.equalsIgnoreCase("esBuyDi"))
        {
          paramString = new ResponseOld();
          paramString.parseXML(paramInputStream);
          return paramString;
        }
      }
    }
    catch (ParserConfigurationException paramInputStream)
    {
      Config.LogD("XMLParser", paramInputStream.toString(), paramInputStream);
      return null;
      return null;
    }
    catch (SAXException paramInputStream)
    {
      Config.LogD("XMLParser", paramInputStream.toString(), paramInputStream);
      return null;
    }
    catch (IOException paramInputStream)
    {
      Config.LogD("XMLParser", "parsing() : " + paramInputStream.toString(), paramInputStream);
      return null;
    }
    return null;
    label211:
    return null;
    label213:
    return null;
    label215:
    return null;
  }
  
  private static void print(NodeList paramNodeList, int paramInt)
  {
    if (paramNodeList == null) {}
    for (;;)
    {
      return;
      int j = paramNodeList.getLength();
      if (j > 0)
      {
        int i = 0;
        while (i < j)
        {
          Node localNode = paramNodeList.item(i);
          if (Config.DEBUG) {
            Config.LogD("XMLParser", "[" + paramInt + "] " + localNode.getNodeName() + ":" + localNode.getNodeValue() + ":" + localNode.getNodeType());
          }
          print(localNode.getChildNodes(), paramInt + 1);
          i += 1;
        }
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.XMLParser
 * JD-Core Version:    0.7.0.1
 */