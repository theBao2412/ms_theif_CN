package com.skt.arm.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IArmService
  extends IInterface
{
  public abstract int executeArm(String paramString)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IArmService
  {
    private static final String DESCRIPTOR = "com.skt.arm.aidl.IArmService";
    static final int TRANSACTION_executeArm = 1;
    
    public Stub()
    {
      attachInterface(this, "com.skt.arm.aidl.IArmService");
    }
    
    public static IArmService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.skt.arm.aidl.IArmService");
      if ((localIInterface != null) && ((localIInterface instanceof IArmService))) {
        return (IArmService)localIInterface;
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
        paramParcel2.writeString("com.skt.arm.aidl.IArmService");
        return true;
      }
      paramParcel1.enforceInterface("com.skt.arm.aidl.IArmService");
      paramInt1 = executeArm(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      return true;
    }
    
    private static class Proxy
      implements IArmService
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
      
      public int executeArm(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.skt.arm.aidl.IArmService");
          localParcel1.writeString(paramString);
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getInterfaceDescriptor()
      {
        return "com.skt.arm.aidl.IArmService";
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.skt.arm.aidl.IArmService
 * JD-Core Version:    0.7.0.1
 */