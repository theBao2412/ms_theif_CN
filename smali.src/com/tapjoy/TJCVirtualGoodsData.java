package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Environment;
import android.os.StatFs;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class TJCVirtualGoodsData
{
  public static final String PREFS_CURRENCY_KEY = "currencyName";
  public static final String PREFS_FILE_NAME = "TJCPrefsFile";
  public static final String PREFS_POINTS_KEY = "tapPoints";
  private static final String TAPJOY_DATABASE = "TapjoyDatabase";
  private static final String TAPJOY_FILE_SYSTEM = "TapjoyFileSystem";
  private static final String TAPJOY_VIRTUAL_GOODS_DATA = "TapjoyVirtualGoodsData";
  private static Context context = null;
  private static String currencyName;
  private static String tapPoints;
  private static String userID = null;
  private String basePathSaveToPhone;
  private String basePathSaveToSDCard;
  private String clientPackage;
  
  public TJCVirtualGoodsData(Context paramContext, String paramString)
  {
    context = paramContext;
    this.clientPackage = paramString;
    this.basePathSaveToPhone = ("data/data/" + this.clientPackage + "/vgDownloads/");
    this.basePathSaveToSDCard = (Environment.getExternalStorageDirectory().toString() + "/" + this.clientPackage + "/vgDownloads/");
    paramContext = context.getSharedPreferences("TJCPrefsFile", 0);
    currencyName = paramContext.getString("currencyName", "Points");
    tapPoints = paramContext.getInt("tapPoints", 0);
  }
  
  public static void clearRow(Context paramContext, String paramString)
  {
    TapjoyDatabaseUtil.getTapjoyDatabase(paramContext).rawQuery("DELETE FROM tapjoy_VGStoreItems WHERE VGStoreItemID='" + paramString + "'", null);
  }
  
  public static void createFilesAndFolders(String paramString, ZipEntry paramZipEntry, ZipFile paramZipFile)
    throws Exception
  {
    String str1 = paramZipEntry.getName();
    if (paramZipEntry.isDirectory())
    {
      paramString = new File((paramString + str1).replaceAll(" ", "%20"));
      if ((!paramString.exists()) && (paramString.mkdirs())) {
        TapjoyLog.i("TapjoyFileSystem", "Created directory");
      }
      return;
    }
    Object localObject = "";
    for (;;)
    {
      int i;
      try
      {
        if (str1.indexOf('/') > -1)
        {
          str2 = str1.substring(0, str1.lastIndexOf("/"));
          File localFile = new File((paramString + str2).replaceAll(" ", "%20"));
          localObject = str2;
          if (!localFile.exists())
          {
            localObject = str2;
            if (localFile.mkdirs())
            {
              TapjoyLog.i("TapjoyFileSystem", "Created directory");
              localObject = str2;
            }
          }
        }
        String str2 = str1.substring(str1.lastIndexOf("/") + 1, str1.length());
        if (str2.startsWith("."))
        {
          str1 = "DOT" + str2.substring(1, str2.length());
          str1 = localObject + "/" + str1;
        }
        localObject = new File(paramString, str1.replaceAll(" ", "%20"));
        if (!((File)localObject).createNewFile()) {
          break;
        }
        paramString = new byte[1024];
        localObject = new FileOutputStream((File)localObject);
        paramZipEntry = paramZipFile.getInputStream(paramZipEntry);
        i = paramZipEntry.read(paramString, 0, 1024);
        if (i <= -1)
        {
          ((FileOutputStream)localObject).close();
          return;
        }
      }
      catch (Exception paramString)
      {
        TapjoyLog.e("TapjoyFileSystem", "createFilesAndFolders: " + paramString.toString());
        throw paramString;
      }
      ((FileOutputStream)localObject).write(paramString, 0, i);
    }
  }
  
  public static boolean deleteDir(File paramFile)
  {
    boolean bool2 = false;
    TapjoyLog.i("TapjoyFileSystem", "deleting directory: " + paramFile.getPath());
    boolean bool1 = bool2;
    String[] arrayOfString;
    int i;
    if (paramFile.exists()) {
      if (paramFile.isDirectory())
      {
        arrayOfString = paramFile.list();
        i = 0;
      }
    }
    for (;;)
    {
      if (i >= arrayOfString.length) {
        bool1 = paramFile.delete();
      }
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!deleteDir(new File(paramFile, arrayOfString[i])));
      i += 1;
    }
  }
  
  public static String getCurrencyName()
  {
    return currencyName;
  }
  
  public static String getDataFileHashForVGStoreItemID(Context paramContext, String paramString)
  {
    Cursor localCursor = TapjoyDatabaseUtil.getTapjoyDatabase(paramContext).rawQuery("SELECT DataFileHash FROM tapjoy_VGStoreItems WHERE VGStoreItemID='" + paramString + "'", null);
    paramContext = "";
    paramString = paramContext;
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      if (localCursor.isFirst()) {
        paramContext = localCursor.getString(localCursor.getColumnIndex("DataFileHash"));
      }
      localCursor.close();
      paramString = paramContext;
    }
    return paramString;
  }
  
  public static String getPoints()
  {
    return tapPoints;
  }
  
  public static ArrayList<VGStoreItem> getPurchasedItems(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = TapjoyDatabaseUtil.getTapjoyDatabase(paramContext).rawQuery("SELECT i.VGStoreItemID,i.AppleProductID,i.Price,i.Name,i.Description,i.ItemTypeName,i.ItemsOwned,i.ThumbImageName,i.FullImageName,i.DataFileName,i.DataFileHash,a.AttributeName,a.AttributeValue FROM tapjoy_VGStoreItems i   left join tapjoy_VGStoreItemAttribute a on (i.VGStoreItemID=a.VGStoreItemID )  ", null);
    int i = localCursor.getColumnIndex("VGStoreItemID");
    int j = localCursor.getColumnIndex("AttributeName");
    int k = localCursor.getColumnIndex("AttributeValue");
    int m = localCursor.getColumnIndex("AppleProductID");
    int n = localCursor.getColumnIndex("Price");
    int i1 = localCursor.getColumnIndex("Name");
    int i2 = localCursor.getColumnIndex("Description");
    int i3 = localCursor.getColumnIndex("ItemTypeName");
    int i4 = localCursor.getColumnIndex("ItemsOwned");
    int i5 = localCursor.getColumnIndex("ThumbImageName");
    int i6 = localCursor.getColumnIndex("FullImageName");
    int i7 = localCursor.getColumnIndex("DataFileName");
    int i8 = localCursor.getColumnIndex("DataFileHash");
    Object localObject1 = null;
    localCursor.moveToFirst();
    Object localObject4;
    Object localObject2;
    Object localObject3;
    if (localCursor.isFirst())
    {
      paramContext = ",";
      localObject4 = localCursor.getString(i);
      if (paramContext.indexOf((String)localObject4) <= -1) {
        break label368;
      }
      localObject2 = localCursor.getString(j);
      localObject3 = localCursor.getString(k);
      localObject4 = new VGStoreItemAttributeValue();
      ((VGStoreItemAttributeValue)localObject4).setAttributeType(TJCStringUtility.getStringFromSpecialCharacter((String)localObject2));
      ((VGStoreItemAttributeValue)localObject4).setAttributeValue(TJCStringUtility.getStringFromSpecialCharacter((String)localObject3));
      localObject2 = paramContext;
      localObject3 = localObject1;
      if (localObject1 != null)
      {
        if (((VGStoreItem)localObject1).getVgStoreItemsAttributeValueList() == null) {
          break label334;
        }
        ((VGStoreItem)localObject1).getVgStoreItemsAttributeValueList().add(localObject4);
        localObject3 = localObject1;
        localObject2 = paramContext;
      }
    }
    for (;;)
    {
      paramContext = (Context)localObject2;
      localObject1 = localObject3;
      if (localCursor.moveToNext()) {
        break;
      }
      localCursor.close();
      return localArrayList;
      label334:
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).add(localObject4);
      ((VGStoreItem)localObject1).setVgStoreItemsAttributeValueList((ArrayList)localObject2);
      localObject2 = paramContext;
      localObject3 = localObject1;
      continue;
      label368:
      localObject3 = new VGStoreItem();
      localObject2 = paramContext + (String)localObject4 + ",";
      paramContext = localCursor.getString(m);
      int i9 = localCursor.getInt(n);
      localObject1 = localCursor.getString(i1);
      String str1 = localCursor.getString(i2);
      String str2 = localCursor.getString(i3);
      int i10 = localCursor.getInt(i4);
      String str3 = localCursor.getString(i5);
      String str4 = localCursor.getString(i6);
      String str5 = localCursor.getString(i7);
      String str6 = localCursor.getString(i8);
      Object localObject5 = localCursor.getString(j);
      String str7 = localCursor.getString(k);
      VGStoreItemAttributeValue localVGStoreItemAttributeValue = new VGStoreItemAttributeValue();
      localVGStoreItemAttributeValue.setAttributeType(TJCStringUtility.getStringFromSpecialCharacter((String)localObject5));
      localVGStoreItemAttributeValue.setAttributeValue(TJCStringUtility.getStringFromSpecialCharacter(str7));
      localObject5 = new ArrayList();
      if ((localVGStoreItemAttributeValue != null) && (localVGStoreItemAttributeValue.getAttributeType() != null)) {
        ((ArrayList)localObject5).add(localVGStoreItemAttributeValue);
      }
      ((VGStoreItem)localObject3).setVgStoreItemID((String)localObject4);
      ((VGStoreItem)localObject3).setProductID(paramContext);
      ((VGStoreItem)localObject3).setPrice(Integer.valueOf(i9).intValue());
      ((VGStoreItem)localObject3).setName(TJCStringUtility.getStringFromSpecialCharacter((String)localObject1));
      ((VGStoreItem)localObject3).setDescription(TJCStringUtility.getStringFromSpecialCharacter(str1));
      ((VGStoreItem)localObject3).setVgStoreItemTypeName(TJCStringUtility.getStringFromSpecialCharacter(str2));
      ((VGStoreItem)localObject3).setNumberOwned(Integer.valueOf(i10).intValue());
      ((VGStoreItem)localObject3).setThumbImageUrl(str3);
      ((VGStoreItem)localObject3).setFullImageUrl(str4);
      ((VGStoreItem)localObject3).setDatafileUrl(str5);
      ((VGStoreItem)localObject3).setDataFileHash(str6);
      ((VGStoreItem)localObject3).setVgStoreItemsAttributeValueList((ArrayList)localObject5);
      localArrayList.add(localObject3);
    }
  }
  
  public static String getUserID()
  {
    return userID;
  }
  
  private static VGStoreItem parseNodeForStoreItems(Node paramNode)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramNode != null)
    {
      localObject1 = localObject2;
      if (paramNode.getNodeType() == 1)
      {
        localObject1 = new VGStoreItem();
        localObject2 = (Element)paramNode;
        String str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("VGStoreItemID"));
        if ((str != null) && (!str.equals(""))) {
          ((VGStoreItem)localObject1).setVgStoreItemID(str);
        }
        str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("AppleProductID"));
        if ((str != null) && (!str.equals(""))) {
          ((VGStoreItem)localObject1).setProductID(str);
        }
        str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("Price"));
        if ((str != null) && (!str.equals(""))) {
          ((VGStoreItem)localObject1).setPrice(Integer.parseInt(str));
        }
        str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("Name"));
        if ((str != null) && (!str.equals(""))) {
          ((VGStoreItem)localObject1).setName(str);
        }
        str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("Description"));
        if ((str != null) && (!str.equals(""))) {
          ((VGStoreItem)localObject1).setDescription(str);
        }
        str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("VGStoreItemTypeName"));
        if ((str != null) && (!str.equals(""))) {
          ((VGStoreItem)localObject1).setVgStoreItemTypeName(str);
        }
        str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("NumberOwned"));
        if ((str != null) && (!str.equals(""))) {
          ((VGStoreItem)localObject1).setNumberOwned(Integer.parseInt(str));
        }
        str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("ThumbImageURL"));
        if ((str != null) && (!str.equals(""))) {
          ((VGStoreItem)localObject1).setThumbImageUrl(str);
        }
        str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("FullImageURL"));
        if ((str != null) && (!str.equals(""))) {
          ((VGStoreItem)localObject1).setFullImageUrl(str);
        }
        str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("DatafileURL"));
        if ((str != null) && (!str.equals(""))) {
          ((VGStoreItem)localObject1).setDatafileUrl(str);
        }
        localObject2 = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("DataHash"));
        if ((localObject2 != null) && (!((String)localObject2).equals(""))) {
          ((VGStoreItem)localObject1).setDataFileHash((String)localObject2);
        }
        ((VGStoreItem)localObject1).setVgStoreItemsAttributeValueList(parseNodeForStoreItemsAttributes(paramNode));
      }
    }
    try
    {
      int i = ((VGStoreItem)localObject1).getNumberOwned();
      paramNode = TapjoyDatabaseUtil.getTapjoyDatabase(context);
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("UPDATE tapjoy_VGStoreItems SET ItemsOwned='" + i + "' ");
      ((StringBuilder)localObject2).append("WHERE VGStoreItemID='" + ((VGStoreItem)localObject1).getVgStoreItemID() + "'");
      paramNode.execSQL(((StringBuilder)localObject2).toString());
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("UPDATE tapjoy_VGStoreItemAttribute SET AttributeValue='" + i + "' ");
      ((StringBuilder)localObject2).append("WHERE VGStoreItemID='" + ((VGStoreItem)localObject1).getVgStoreItemID() + "' AND AttributeName='quantity'");
      paramNode.execSQL(((StringBuilder)localObject2).toString());
      return localObject1;
    }
    catch (Exception paramNode) {}
    return localObject1;
  }
  
  private static ArrayList<VGStoreItemAttributeValue> parseNodeForStoreItemsAttributes(Node paramNode)
  {
    paramNode = (Element)paramNode;
    ArrayList localArrayList = new ArrayList();
    NodeList localNodeList = paramNode.getElementsByTagName("VGStoreItemAttributeValueReturnClass");
    int i = 0;
    for (;;)
    {
      if (i >= localNodeList.getLength()) {
        return localArrayList;
      }
      Object localObject = localNodeList.item(i);
      VGStoreItemAttributeValue localVGStoreItemAttributeValue = null;
      paramNode = localVGStoreItemAttributeValue;
      if (localObject != null)
      {
        paramNode = localVGStoreItemAttributeValue;
        if (((Node)localObject).getNodeType() == 1)
        {
          localVGStoreItemAttributeValue = new VGStoreItemAttributeValue();
          paramNode = (Element)localObject;
          localObject = TapjoyUtil.getNodeTrimValue(paramNode.getElementsByTagName("AttributeType"));
          if ((localObject != null) && (!((String)localObject).equals(""))) {
            localVGStoreItemAttributeValue.setAttributeType((String)localObject);
          }
          localObject = TapjoyUtil.getNodeTrimValue(paramNode.getElementsByTagName("AttributeValue"));
          paramNode = localVGStoreItemAttributeValue;
          if (localObject != null)
          {
            paramNode = localVGStoreItemAttributeValue;
            if (!((String)localObject).equals(""))
            {
              localVGStoreItemAttributeValue.setAttributeValue((String)localObject);
              paramNode = localVGStoreItemAttributeValue;
            }
          }
        }
      }
      localArrayList.add(paramNode);
      i += 1;
    }
  }
  
  public static ArrayList<String> parsePurchaseVGWithCurrencyResponse(String paramString, Context paramContext)
  {
    paramContext = DocumentBuilderFactory.newInstance();
    for (;;)
    {
      int i;
      try
      {
        paramString = new ByteArrayInputStream(paramString.getBytes("UTF-8"));
        paramContext = paramContext.newDocumentBuilder().parse(paramString);
        paramString = new ArrayList();
        Object localObject1 = paramContext.getElementsByTagName("UserAccountObject");
        i = 0;
        if (i >= ((NodeList)localObject1).getLength())
        {
          paramContext = paramContext.getElementsByTagName("TapjoyConnectReturnObject");
          i = 0;
          if (i >= paramContext.getLength()) {
            return paramString;
          }
        }
        else
        {
          localObject2 = ((NodeList)localObject1).item(i);
          if (((Node)localObject2).getNodeType() != 1) {
            break label398;
          }
          localObject2 = (Element)localObject2;
          String str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("TapPoints"));
          if ((str != null) && (!str.equals(""))) {
            savePoints(Integer.parseInt(str));
          }
          str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("PointsID"));
          if ((str != null) && (!str.equals(""))) {
            saveUserID(str);
          }
          localObject2 = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("CurrencyName"));
          if ((localObject2 == null) || (((String)localObject2).equals(""))) {
            break label398;
          }
          saveCurrencyName((String)localObject2);
          break label398;
        }
        localObject1 = paramContext.item(i);
        if (((Node)localObject1).getNodeType() != 1) {
          break label405;
        }
        localObject1 = (Element)localObject1;
        Object localObject2 = TapjoyUtil.getNodeTrimValue(((Element)localObject1).getElementsByTagName("Message"));
        if ((localObject2 != null) && (!((String)localObject2).equals("")))
        {
          paramString.add(localObject2);
          localObject2 = TapjoyUtil.getNodeTrimValue(((Element)localObject1).getElementsByTagName("Success"));
          if (localObject2 != null)
          {
            paramString.add(localObject2);
            localObject1 = TapjoyUtil.getNodeTrimValue(((Element)localObject1).getElementsByTagName("ErrorMessage"));
            if ((localObject1 == null) || (((String)localObject1).equals(""))) {
              break label388;
            }
            paramString.add(localObject1);
            break label405;
          }
        }
        else
        {
          paramString.add("");
          continue;
        }
        paramString.add("");
      }
      catch (Exception paramString)
      {
        TapjoyLog.e("TapjoyVirtualGoodsData", "parseVGPurchaseResponse: " + paramString.toString());
        return null;
      }
      continue;
      label388:
      paramString.add("");
      break label405;
      label398:
      i += 1;
      continue;
      label405:
      i += 1;
    }
  }
  
  public static ArrayList<VGStoreItem> parseVGItemListResponse(String paramString, int paramInt, Context paramContext)
    throws Exception
  {
    Object localObject1 = DocumentBuilderFactory.newInstance();
    paramContext = null;
    for (;;)
    {
      int i;
      try
      {
        paramString = new ByteArrayInputStream(paramString.getBytes("UTF-8"));
        Document localDocument = ((DocumentBuilderFactory)localObject1).newDocumentBuilder().parse(paramString);
        localObject1 = new ArrayList();
        paramString = localDocument.getElementsByTagName("UserAccountObject");
        i = 0;
        Object localObject2;
        if (i >= paramString.getLength())
        {
          localObject2 = localDocument.getElementsByTagName("VGStoreItemReturnClass");
          i = 0;
          paramString = paramContext;
          if (i >= ((NodeList)localObject2).getLength())
          {
            paramContext = localDocument.getElementsByTagName("MoreDataAvailable");
            int j = 0;
            i = j;
            if (paramContext.getLength() > 0)
            {
              paramString = (Element)paramString;
              paramString = TapjoyUtil.getNodeTrimValue(paramContext);
              i = j;
              if (paramString != null)
              {
                i = j;
                if (!paramString.equals("")) {
                  i = Integer.parseInt(paramString);
                }
              }
            }
            if (paramInt != 0) {
              continue;
            }
            VGStoreItem.availableItemsMoreDataAvailable = i;
            return localObject1;
          }
        }
        else
        {
          localObject2 = paramString.item(i);
          if (((Node)localObject2).getNodeType() != 1) {
            break label403;
          }
          localObject2 = (Element)localObject2;
          String str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("TapPoints"));
          if ((str != null) && (!str.equals("")))
          {
            TapjoyLog.i("TapjoyVirtualGoodsData", "Virtual Currency: " + str);
            savePoints(Integer.parseInt(str));
          }
          str = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("PointsID"));
          if ((str != null) && (!str.equals(""))) {
            saveUserID(str);
          }
          localObject2 = TapjoyUtil.getNodeTrimValue(((Element)localObject2).getElementsByTagName("CurrencyName"));
          if ((localObject2 == null) || (((String)localObject2).equals(""))) {
            break label403;
          }
          saveCurrencyName((String)localObject2);
          break label403;
        }
        paramString = ((NodeList)localObject2).item(i);
        ((ArrayList)localObject1).add(parseNodeForStoreItems(paramString));
        i += 1;
        continue;
        if (paramInt == 1)
        {
          VGStoreItem.purchasedItemsMoreDataAvailable = i;
          return localObject1;
        }
      }
      catch (Exception paramString)
      {
        TapjoyLog.e("TapjoyVirtualGoodsData", "parseVGItemListResponse: " + paramString.toString());
        throw new Exception(paramString.getMessage());
      }
      return localObject1;
      label403:
      i += 1;
    }
  }
  
  public static boolean rowExists(Context paramContext, String paramString)
  {
    paramContext = TapjoyDatabaseUtil.getTapjoyDatabase(paramContext).rawQuery("SELECT * FROM tapjoy_VGStoreItems WHERE VGStoreItemID='" + paramString + "'", null);
    boolean bool1 = false;
    boolean bool2 = false;
    if (paramContext != null)
    {
      bool1 = bool2;
      if (paramContext.moveToFirst()) {
        bool1 = true;
      }
      paramContext.close();
    }
    return bool1;
  }
  
  private static void saveCurrencyName(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("TJCPrefsFile", 0).edit();
    localEditor.putString("currencyName", paramString);
    localEditor.commit();
    currencyName = paramString;
  }
  
  private static void savePoints(int paramInt)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("TJCPrefsFile", 0).edit();
    localEditor.putInt("tapPoints", paramInt);
    localEditor.commit();
    tapPoints = paramInt;
  }
  
  private static void saveUserID(String paramString)
  {
    userID = paramString;
  }
  
  public void deleteVGZip(VGStoreItem paramVGStoreItem, boolean paramBoolean)
  {
    if (paramVGStoreItem == null) {}
    String str;
    File localFile;
    do
    {
      return;
      str = paramVGStoreItem.getDatafileUrl();
      localFile = null;
    } while (str.length() == 0);
    TapjoyLog.i("TapjoyFileSystem", "delete getDatafileUrl: " + str);
    int i = str.substring(0, str.lastIndexOf("/") - 1).lastIndexOf("/");
    paramVGStoreItem = localFile;
    if (i > -1)
    {
      paramVGStoreItem = localFile;
      if (str.length() > i)
      {
        str = str.substring(i + 1, str.length() - 1);
        TapjoyLog.i("TapjoyFileSystem", "storeItemFolder: " + str);
        paramVGStoreItem = localFile;
        if (str != null)
        {
          paramVGStoreItem = localFile;
          if (!str.equals("")) {
            if (!paramBoolean) {
              break label296;
            }
          }
        }
      }
    }
    label296:
    for (paramVGStoreItem = Environment.getExternalStorageDirectory().toString() + "/" + this.clientPackage + "/tempZipDownloads/" + str + ".zip";; paramVGStoreItem = "data/data/" + this.clientPackage + "/tempZipDownloads/" + str + ".zip") {
      for (;;)
      {
        TapjoyLog.i("TapjoyFileSystem", "deleteVGZip: " + paramVGStoreItem);
        try
        {
          localFile = new File(paramVGStoreItem);
          if (!localFile.exists()) {
            break;
          }
          TapjoyLog.i("TapjoyFileSystem", "deleting file at: " + paramVGStoreItem);
          localFile.delete();
          return;
        }
        catch (Exception paramVGStoreItem)
        {
          TapjoyLog.e("TapjoyFileSystem", "Error deleting virtual good zip file: " + paramVGStoreItem.toString());
          return;
        }
      }
    }
  }
  
  public boolean extractZipFileToFolder(File paramFile, String paramString)
  {
    TapjoyLog.i("TapjoyVirtualGoodsData", "extractZipFileToFolder file: " + paramFile.getName() + ", size: " + paramFile.length() + ", destinationFolder: " + paramString);
    bool = true;
    File localFile = new File(paramString);
    TapjoyLog.i("TapjoyVirtualGoodsData", "File saving to: " + localFile.getPath());
    TapjoyLog.i("TapjoyVirtualGoodsData", "File saving to: " + localFile.getName());
    Object localObject = new StatFs(Environment.getDataDirectory().getPath());
    long l = ((StatFs)localObject).getAvailableBlocks() * ((StatFs)localObject).getBlockSize();
    TapjoyLog.i("TapjoyFileSystem", "FREE INTERNAL MEMORY: " + l / 1024L + " KB");
    localObject = new StatFs(Environment.getExternalStorageDirectory().getPath());
    l = ((StatFs)localObject).getAvailableBlocks() * ((StatFs)localObject).getBlockSize();
    TapjoyLog.i("TapjoyFileSystem", "FREE EXTERNAL MEMORY: " + l / 1024L + " KB");
    if (localFile.mkdirs()) {
      TapjoyLog.i("TapjoyVirtualGoodsData", "Created directory: " + localFile.getPath());
    }
    for (;;)
    {
      try
      {
        paramFile = new ZipFile(paramFile);
        localObject = paramFile.entries();
        if (((Enumeration)localObject).hasMoreElements()) {
          continue;
        }
        paramFile.close();
      }
      catch (Exception paramFile)
      {
        ZipEntry localZipEntry;
        TapjoyLog.e("TapjoyVirtualGoodsData", "Extraction failed e: " + paramFile.toString());
        bool = false;
        continue;
      }
      if (!bool) {
        deleteDir(localFile);
      }
      return bool;
      localZipEntry = (ZipEntry)((Enumeration)localObject).nextElement();
      if (localZipEntry != null) {
        try
        {
          createFilesAndFolders(paramString, localZipEntry, paramFile);
        }
        catch (Exception localException)
        {
          TapjoyLog.e("TapjoyVirtualGoodsData", "Error trying to create files and folders e: " + localException.toString());
          bool = false;
        }
      }
    }
  }
  
  public void saveInfo(VGStoreItem paramVGStoreItem, boolean paramBoolean)
  {
    TapjoyLog.i("TapjoyDatabase", "saveInfo to SQL DB: " + paramVGStoreItem.getName());
    int i = 1;
    Object localObject1 = paramVGStoreItem.getDatafileUrl();
    SQLiteDatabase localSQLiteDatabase;
    StringBuilder localStringBuilder;
    Object localObject3;
    Object localObject2;
    if ((localObject1 != null) && (!((String)localObject1).equals("")))
    {
      localObject1 = ((String)localObject1).substring(((String)localObject1).lastIndexOf("/") + 1, ((String)localObject1).length() - 4);
      if (paramBoolean)
      {
        localObject1 = this.basePathSaveToSDCard + (String)localObject1;
        TapjoyLog.i("TapjoyDatabase", "dataFileUrl: " + (String)localObject1);
        localSQLiteDatabase = TapjoyDatabaseUtil.getTapjoyDatabase(context);
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("INSERT INTO tapjoy_VGStoreItems (VGStoreItemID, AppleProductID, Price, Name,Description , ItemTypeName , ItemsOwned , ThumbImageName , FullImageName , DataFileName , DataFileHash)");
        localStringBuilder.append(" VALUES (");
        localStringBuilder.append("'" + paramVGStoreItem.getVgStoreItemID() + "',");
        localStringBuilder.append("'" + paramVGStoreItem.getProductID() + "',");
        localObject3 = paramVGStoreItem.getPrice();
        localObject2 = localObject3;
        if (((String)localObject3).indexOf(",") > -1) {
          localObject2 = ((String)localObject3).replaceAll(",", "");
        }
        localStringBuilder.append(localObject2 + ",");
        localStringBuilder.append("'" + TJCStringUtility.replaceSpecialChars(paramVGStoreItem.getName()) + "',");
        localStringBuilder.append("'" + TJCStringUtility.replaceSpecialChars(paramVGStoreItem.getDescription()) + "',");
        localStringBuilder.append("'" + TJCStringUtility.replaceSpecialChars(paramVGStoreItem.getVgStoreItemTypeName()) + "',");
        localStringBuilder.append(paramVGStoreItem.getNumberOwned() + ",");
        localStringBuilder.append("'" + paramVGStoreItem.getThumbImageUrl() + "',");
        localStringBuilder.append("'" + paramVGStoreItem.getFullImageUrl() + "',");
        localStringBuilder.append("'" + (String)localObject1 + "',");
        localStringBuilder.append("'" + paramVGStoreItem.getDataFileHash() + "')");
      }
    }
    for (;;)
    {
      try
      {
        localSQLiteDatabase.execSQL(localStringBuilder.toString());
        if (i != 0)
        {
          localObject1 = paramVGStoreItem.getVgStoreItemsAttributeValueList();
          i = 0;
          if (i < ((List)localObject1).size()) {}
        }
        else
        {
          return;
          localObject1 = this.basePathSaveToPhone + (String)localObject1;
          break;
          localObject1 = "";
        }
      }
      catch (SQLException localSQLException1)
      {
        TapjoyLog.i("TapjoyDatabase", "Row already exists");
        i = 0;
        continue;
        localObject2 = (VGStoreItemAttributeValue)localSQLException1.get(i);
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append("INSERT INTO tapjoy_VGStoreItemAttribute ( VGStoreItemID, AttributeName, AttributeValue)");
        ((StringBuilder)localObject3).append(" Values (");
        ((StringBuilder)localObject3).append("'" + paramVGStoreItem.getVgStoreItemID() + "',");
        ((StringBuilder)localObject3).append("'" + TJCStringUtility.replaceSpecialChars(((VGStoreItemAttributeValue)localObject2).getAttributeType()) + "',");
        ((StringBuilder)localObject3).append("'" + TJCStringUtility.replaceSpecialChars(((VGStoreItemAttributeValue)localObject2).getAttributeValue()) + "')");
      }
      try
      {
        localSQLiteDatabase.execSQL(((StringBuilder)localObject3).toString());
        i += 1;
      }
      catch (SQLException localSQLException2)
      {
        for (;;)
        {
          TapjoyLog.e("TapjoyDatabase", "SQLException while trying to insert into table: " + localSQLException2.toString());
        }
      }
    }
  }
  
  public static class TJCSQLLiteDatabase
    extends SQLiteOpenHelper
  {
    private static final String DATABASE_NAME = "TapjoyLocalDB.sql";
    private static final int DATABASE_VERSION = 720;
    SQLiteDatabase tapjoyDatabase = null;
    
    public TJCSQLLiteDatabase(Context paramContext)
    {
      super("TapjoyLocalDB.sql", null, 720);
    }
    
    public SQLiteDatabase getTapjoyDatabase()
    {
      return getWritableDatabase();
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE tapjoy_VGStoreItems(VGStoreItemID TEXT PRIMARY KEY, AppleProductID TEXT(50), Price INTEGER, Name TEXT(100),Description TEXT(1000), ItemTypeName TEXT(100), ItemsOwned INTEGER, ThumbImageName TEXT(100), FullImageName TEXT(100), DataFileName TEXT(100), DataFileHash TEXT(100))");
      paramSQLiteDatabase.execSQL("CREATE TABLE tapjoy_VGStoreItemAttribute(id INTEGER PRIMARY KEY, VGStoreItemID TEXT, AttributeName TEXT(100), AttributeValue TEXT(100))");
    }
    
    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      TapjoyLog.w("TapjoyDatabase", "****************************************");
      TapjoyLog.w("TapjoyDatabase", "Upgrading database from version " + paramInt1 + " to " + paramInt2 + ", which will add new column to DB");
      TapjoyLog.w("TapjoyDatabase", "****************************************");
      try
      {
        paramSQLiteDatabase.execSQL("ALTER TABLE tapjoy_VGStoreItems ADD DataFileHash TEXT(100)");
        return;
      }
      catch (Exception paramSQLiteDatabase)
      {
        TapjoyLog.e("SQLUpgrade", "No need to add the column 'DataFileHash'");
      }
    }
  }
  
  public static class TJCStringUtility
  {
    public static String getStringFromSpecialCharacter(String paramString)
    {
      if (paramString != null) {
        return paramString.replaceAll("COMMA", "'");
      }
      return null;
    }
    
    public static String replaceSpecialChars(String paramString)
    {
      if (paramString != null) {
        return paramString.replaceAll("'", "COMMA");
      }
      return null;
    }
  }
  
  public static class TJCUtility
  {
    public static long externalFreeMemorySize()
    {
      if (Environment.getExternalStorageState().equals("mounted"))
      {
        StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return localStatFs.getAvailableBlocks() * localStatFs.getBlockSize();
      }
      return -1L;
    }
    
    public static long internalFreeMemorySize()
    {
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      return localStatFs.getAvailableBlocks() * localStatFs.getBlockSize();
    }
  }
  
  public static class TapjoyDatabaseUtil
  {
    public static TJCVirtualGoodsData.TJCSQLLiteDatabase db = null;
    
    public static SQLiteDatabase getTapjoyDatabase(Context paramContext)
    {
      if (db == null) {
        db = new TJCVirtualGoodsData.TJCSQLLiteDatabase(paramContext);
      }
      return db.getTapjoyDatabase();
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TJCVirtualGoodsData
 * JD-Core Version:    0.7.0.1
 */