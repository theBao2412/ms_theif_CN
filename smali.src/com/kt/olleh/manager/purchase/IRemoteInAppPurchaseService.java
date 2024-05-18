package com.kt.olleh.manager.purchase;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.Map;

public abstract interface IRemoteInAppPurchaseService
  extends IInterface
{
  public abstract Map cancel(String paramString1, String paramString2, String paramString3)
    throws RemoteException;
  
  public abstract Map purchase(String paramString1, String paramString2, String paramString3)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IRemoteInAppPurchaseService
  {
    private static final String DESCRIPTOR = "com.kt.olleh.manager.purchase.IRemoteInAppPurchaseService";
    static final int TRANSACTION_cancel = 2;
    static final int TRANSACTION_purchase = 1;
    
    public Stub()
    {
      attachInterface(this, "com.kt.olleh.manager.purchase.IRemoteInAppPurchaseService");
    }
    
    public static IRemoteInAppPurchaseService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.kt.olleh.manager.purchase.IRemoteInAppPurchaseService");
      if ((localIInterface != null) && ((localIInterface instanceof IRemoteInAppPurchaseService))) {
        return (IRemoteInAppPurchaseService)localIInterface;
      }
      return new Proxy(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.kt.olleh.manager.purchase.IRemoteInAppPurchaseService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.kt.olleh.manager.purchase.IRemoteInAppPurchaseService");
        paramParcel1 = purchase(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeMap(paramParcel1);
        return true;
      }
      paramParcel1.enforceInterface("com.kt.olleh.manager.purchase.IRemoteInAppPurchaseService");
      paramParcel1 = cancel(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeMap(paramParcel1);
      return true;
    }
    
    private static class Proxy
      implements IRemoteInAppPurchaseService
    {
      private IBinder mRemote;
      
      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.mRemote;
      }
      
      public Map cancel(String paramString1, String paramString2, String paramString3)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.kt.olleh.manager.purchase.IRemoteInAppPurchaseService");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeString(paramString3);
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramString1 = localParcel2.readHashMap(getClass().getClassLoader());
          return paramString1;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getInterfaceDescriptor()
      {
        return "com.kt.olleh.manager.purchase.IRemoteInAppPurchaseService";
      }
      
      public Map purchase(String paramString1, String paramString2, String paramString3)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.kt.olleh.manager.purchase.IRemoteInAppPurchaseService");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeString(paramString3);
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramString1 = localParcel2.readHashMap(getClass().getClassLoader());
          return paramString1;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.manager.purchase.IRemoteInAppPurchaseService
 * JD-Core Version:    0.7.0.1
 */