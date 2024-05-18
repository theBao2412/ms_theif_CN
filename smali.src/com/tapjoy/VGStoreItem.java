package com.tapjoy;

import android.graphics.drawable.Drawable;
import java.util.ArrayList;

public final class VGStoreItem
{
  public static final int MAX_ITEMS = 25;
  public static final int PURCHASED_ITEM = 1;
  public static final int STORE_ITEM = 0;
  public static int availableItemsMoreDataAvailable = 0;
  public static int purchasedItemsMoreDataAvailable = 0;
  private String dataFileHash = "";
  private String datafileUrl = "";
  private String description = "";
  private String fullImageUrl = "";
  private String name = "";
  private int numberOwned = 0;
  private int price = 0;
  private String productID = "";
  private boolean shown = true;
  private Drawable thumbImage = null;
  private String thumbImageUrl = "";
  private String vgStoreItemID = "";
  private String vgStoreItemTypeName = "";
  ArrayList<VGStoreItemAttributeValue> vgStoreItemsAttributeValueList = null;
  
  public String getDataFileHash()
  {
    return this.dataFileHash;
  }
  
  public String getDatafileUrl()
  {
    return this.datafileUrl;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public String getFullImageUrl()
  {
    return this.fullImageUrl;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public int getNumberOwned()
  {
    return this.numberOwned;
  }
  
  public int getPrice()
  {
    return this.price;
  }
  
  public String getProductID()
  {
    return this.productID;
  }
  
  public Drawable getThumbImage()
  {
    return this.thumbImage;
  }
  
  public String getThumbImageUrl()
  {
    return this.thumbImageUrl;
  }
  
  public String getVgStoreItemID()
  {
    return this.vgStoreItemID;
  }
  
  public String getVgStoreItemTypeName()
  {
    return this.vgStoreItemTypeName;
  }
  
  public ArrayList<VGStoreItemAttributeValue> getVgStoreItemsAttributeValueList()
  {
    return this.vgStoreItemsAttributeValueList;
  }
  
  public boolean isShown()
  {
    return this.shown;
  }
  
  public void setDataFileHash(String paramString)
  {
    this.dataFileHash = paramString;
  }
  
  public void setDatafileUrl(String paramString)
  {
    this.datafileUrl = paramString;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setFullImageUrl(String paramString)
  {
    this.fullImageUrl = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNumberOwned(int paramInt)
  {
    this.numberOwned = paramInt;
  }
  
  public void setPrice(int paramInt)
  {
    this.price = paramInt;
  }
  
  public void setProductID(String paramString)
  {
    this.productID = paramString;
  }
  
  public void setShown(boolean paramBoolean)
  {
    this.shown = paramBoolean;
  }
  
  public void setThumbImage(Drawable paramDrawable)
  {
    this.thumbImage = paramDrawable;
  }
  
  public void setThumbImageUrl(String paramString)
  {
    this.thumbImageUrl = paramString;
  }
  
  public void setVgStoreItemID(String paramString)
  {
    this.vgStoreItemID = paramString;
  }
  
  public void setVgStoreItemTypeName(String paramString)
  {
    this.vgStoreItemTypeName = paramString;
  }
  
  public void setVgStoreItemsAttributeValueList(ArrayList<VGStoreItemAttributeValue> paramArrayList)
  {
    this.vgStoreItemsAttributeValueList = paramArrayList;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.VGStoreItem
 * JD-Core Version:    0.7.0.1
 */