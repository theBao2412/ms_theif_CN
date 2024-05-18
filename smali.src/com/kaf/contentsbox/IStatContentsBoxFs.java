package com.kaf.contentsbox;

public abstract class IStatContentsBoxFs
{
  public IStatContentsBoxFs() {}
  
  public IStatContentsBoxFs(int paramInt1, int paramInt2, int paramInt3) {}
  
  public int describeContents()
  {
    return -1;
  }
  
  public int getBlockCount()
  {
    return -1;
  }
  
  public int getBlockSize()
  {
    return -1;
  }
  
  public int getFreeBlocks()
  {
    return -1;
  }
  
  public int getUsedBlocks()
  {
    return -1;
  }
  
  public int getUsedContentsBox()
  {
    return -1;
  }
  
  public void setBlockCount(int paramInt) {}
  
  public void setBlockSize(int paramInt) {}
  
  public void setFreeBlocks(int paramInt) {}
  
  public void setUsedBlocks(int paramInt) {}
  
  public void setUsedContentsBox(int paramInt) {}
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.contentsbox.IStatContentsBoxFs
 * JD-Core Version:    0.7.0.1
 */