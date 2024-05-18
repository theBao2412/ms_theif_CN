package com.feelingk.iap.gui.data;

import com.feelingk.iap.net.SellerInfoConfirm;

public class PurchaseItem
{
  public boolean AfterAutoPurchaseInfoAgree;
  public boolean AutoPurchaseCheck;
  public boolean FinalVersionCheck;
  public boolean IsExistDotoriSmsAuthLogFile;
  public SellerInfoConfirm SellerInfoConfirm;
  public boolean bUseTCash;
  public int dotoriBalance;
  public String dotoriLinkInfo;
  public String itemName;
  public int itemPrice;
  public int itemPurchasePrice;
  public int itemTCash;
  public String itemUseDate;
  public String ocbCardNumber;
  public String ocbRegisterInfo;
  
  public PurchaseItem(String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, String paramString4, int paramInt3, boolean paramBoolean1, int paramInt4, String paramString5, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, SellerInfoConfirm paramSellerInfoConfirm)
  {
    this.itemName = paramString1;
    this.itemUseDate = paramString2;
    this.itemPrice = paramInt1;
    this.itemTCash = paramInt2;
    this.ocbRegisterInfo = paramString3;
    this.ocbCardNumber = paramString4;
    this.itemPurchasePrice = paramInt3;
    this.bUseTCash = paramBoolean1;
    this.dotoriBalance = paramInt4;
    this.dotoriLinkInfo = paramString5;
    this.FinalVersionCheck = paramBoolean2;
    this.AutoPurchaseCheck = paramBoolean3;
    this.AfterAutoPurchaseInfoAgree = paramBoolean4;
    this.IsExistDotoriSmsAuthLogFile = paramBoolean5;
    this.SellerInfoConfirm = paramSellerInfoConfirm;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.gui.data.PurchaseItem
 * JD-Core Version:    0.7.0.1
 */