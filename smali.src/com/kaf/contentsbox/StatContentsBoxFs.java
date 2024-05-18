package com.kaf.contentsbox;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class StatContentsBoxFs
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new StatContentsBoxFs.1();
  public int blockCount;
  public int blockSize;
  public int freeBlocks;
  public int usedBlocks;
  public int usedContentsBox;
  
  public StatContentsBoxFs(int paramInt1, int paramInt2, int paramInt3)
  {
    this.blockCount = paramInt2;
    this.blockSize = paramInt1;
    this.freeBlocks = paramInt3;
    this.usedBlocks = (paramInt2 - paramInt3);
  }
  
  protected StatContentsBoxFs(Parcel paramParcel)
  {
    this.blockSize = paramParcel.readInt();
    this.blockCount = paramParcel.readInt();
    this.freeBlocks = paramParcel.readInt();
    this.usedBlocks = paramParcel.readInt();
    this.usedContentsBox = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getBlockCount()
  {
    return this.blockCount;
  }
  
  public int getBlockSize()
  {
    return this.blockSize;
  }
  
  public int getFreeBlocks()
  {
    return this.freeBlocks;
  }
  
  public int getUsedBlocks()
  {
    return this.usedBlocks;
  }
  
  public int getUsedContentsBox()
  {
    return this.usedContentsBox;
  }
  
  public void setBlockCount(int paramInt)
  {
    this.blockCount = paramInt;
  }
  
  public void setBlockSize(int paramInt)
  {
    this.blockSize = paramInt;
  }
  
  public void setFreeBlocks(int paramInt)
  {
    this.freeBlocks = paramInt;
  }
  
  public void setUsedBlocks(int paramInt)
  {
    this.usedBlocks = paramInt;
  }
  
  public void setUsedContentsBox(int paramInt)
  {
    this.usedContentsBox = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.blockSize);
    paramParcel.writeInt(this.blockCount);
    paramParcel.writeInt(this.freeBlocks);
    paramParcel.writeInt(this.usedBlocks);
    paramParcel.writeInt(this.usedContentsBox);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.contentsbox.StatContentsBoxFs
 * JD-Core Version:    0.7.0.1
 */