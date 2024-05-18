package com.lguplus.common.bill;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IBillSocket
  extends IInterface
{
  public abstract void close()
    throws RemoteException;
  
  public abstract boolean connect(String paramString1, String paramString2, int paramInt)
    throws RemoteException;
  
  public abstract String getLastErrorMsg()
    throws RemoteException;
  
  public abstract int readByOffset(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws RemoteException;
  
  public abstract int readBytes(byte[] paramArrayOfByte)
    throws RemoteException;
  
  public abstract boolean writeByOffset(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws RemoteException;
  
  public abstract boolean writeBytes(byte[] paramArrayOfByte)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IBillSocket
  {
    private static final String DESCRIPTOR = "com.lguplus.common.bill.IBillSocket";
    static final int TRANSACTION_close = 2;
    static final int TRANSACTION_connect = 1;
    static final int TRANSACTION_getLastErrorMsg = 7;
    static final int TRANSACTION_readByOffset = 4;
    static final int TRANSACTION_readBytes = 3;
    static final int TRANSACTION_writeByOffset = 6;
    static final int TRANSACTION_writeBytes = 5;
    
    public Stub()
    {
      attachInterface(this, "com.lguplus.common.bill.IBillSocket");
    }
    
    public static IBillSocket asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.lguplus.common.bill.IBillSocket");
      if ((localIInterface != null) && ((localIInterface instanceof IBillSocket))) {
        return (IBillSocket)localIInterface;
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
      int j = 0;
      int k = 0;
      int i = 0;
      boolean bool;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.lguplus.common.bill.IBillSocket");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.lguplus.common.bill.IBillSocket");
        bool = connect(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramInt1 = i;
        if (bool) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.lguplus.common.bill.IBillSocket");
        close();
        paramParcel2.writeNoException();
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.lguplus.common.bill.IBillSocket");
        paramInt1 = paramParcel1.readInt();
        if (paramInt1 < 0) {}
        for (paramParcel1 = (byte[])null;; paramParcel1 = new byte[paramInt1])
        {
          paramInt1 = readBytes(paramParcel1);
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          paramParcel2.writeByteArray(paramParcel1);
          return true;
        }
      case 4: 
        paramParcel1.enforceInterface("com.lguplus.common.bill.IBillSocket");
        paramInt1 = paramParcel1.readInt();
        if (paramInt1 < 0) {}
        for (byte[] arrayOfByte = (byte[])null;; arrayOfByte = new byte[paramInt1])
        {
          paramInt1 = readByOffset(arrayOfByte, paramParcel1.readInt(), paramParcel1.readInt());
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          paramParcel2.writeByteArray(arrayOfByte);
          return true;
        }
      case 5: 
        paramParcel1.enforceInterface("com.lguplus.common.bill.IBillSocket");
        bool = writeBytes(paramParcel1.createByteArray());
        paramParcel2.writeNoException();
        paramInt1 = j;
        if (bool) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.lguplus.common.bill.IBillSocket");
        bool = writeByOffset(paramParcel1.createByteArray(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramInt1 = k;
        if (bool) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      }
      paramParcel1.enforceInterface("com.lguplus.common.bill.IBillSocket");
      paramParcel1 = getLastErrorMsg();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    }
    
    private static class Proxy
      implements IBillSocket
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
      
      public void close()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.lguplus.common.bill.IBillSocket");
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public boolean connect(String paramString1, String paramString2, int paramInt)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore 4
        //   3: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   6: astore 5
        //   8: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   11: astore 6
        //   13: aload 5
        //   15: ldc 33
        //   17: invokevirtual 37	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   20: aload 5
        //   22: aload_1
        //   23: invokevirtual 55	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   26: aload 5
        //   28: aload_2
        //   29: invokevirtual 55	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   32: aload 5
        //   34: iload_3
        //   35: invokevirtual 59	android/os/Parcel:writeInt	(I)V
        //   38: aload_0
        //   39: getfield 19	com/lguplus/common/bill/IBillSocket$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   42: iconst_1
        //   43: aload 5
        //   45: aload 6
        //   47: iconst_0
        //   48: invokeinterface 43 5 0
        //   53: pop
        //   54: aload 6
        //   56: invokevirtual 46	android/os/Parcel:readException	()V
        //   59: aload 6
        //   61: invokevirtual 63	android/os/Parcel:readInt	()I
        //   64: istore_3
        //   65: iload_3
        //   66: ifeq +16 -> 82
        //   69: aload 6
        //   71: invokevirtual 49	android/os/Parcel:recycle	()V
        //   74: aload 5
        //   76: invokevirtual 49	android/os/Parcel:recycle	()V
        //   79: iload 4
        //   81: ireturn
        //   82: iconst_0
        //   83: istore 4
        //   85: goto -16 -> 69
        //   88: astore_1
        //   89: aload 6
        //   91: invokevirtual 49	android/os/Parcel:recycle	()V
        //   94: aload 5
        //   96: invokevirtual 49	android/os/Parcel:recycle	()V
        //   99: aload_1
        //   100: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	101	0	this	Proxy
        //   0	101	1	paramString1	String
        //   0	101	2	paramString2	String
        //   0	101	3	paramInt	int
        //   1	83	4	bool	boolean
        //   6	89	5	localParcel1	Parcel
        //   11	79	6	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   13	65	88	finally
      }
      
      public String getInterfaceDescriptor()
      {
        return "com.lguplus.common.bill.IBillSocket";
      }
      
      public String getLastErrorMsg()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.lguplus.common.bill.IBillSocket");
          this.mRemote.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public int readByOffset(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 4
        //   5: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 5
        //   10: aload 4
        //   12: ldc 33
        //   14: invokevirtual 37	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload_1
        //   18: ifnonnull +66 -> 84
        //   21: aload 4
        //   23: iconst_m1
        //   24: invokevirtual 59	android/os/Parcel:writeInt	(I)V
        //   27: aload 4
        //   29: iload_2
        //   30: invokevirtual 59	android/os/Parcel:writeInt	(I)V
        //   33: aload 4
        //   35: iload_3
        //   36: invokevirtual 59	android/os/Parcel:writeInt	(I)V
        //   39: aload_0
        //   40: getfield 19	com/lguplus/common/bill/IBillSocket$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   43: iconst_4
        //   44: aload 4
        //   46: aload 5
        //   48: iconst_0
        //   49: invokeinterface 43 5 0
        //   54: pop
        //   55: aload 5
        //   57: invokevirtual 46	android/os/Parcel:readException	()V
        //   60: aload 5
        //   62: invokevirtual 63	android/os/Parcel:readInt	()I
        //   65: istore_2
        //   66: aload 5
        //   68: aload_1
        //   69: invokevirtual 75	android/os/Parcel:readByteArray	([B)V
        //   72: aload 5
        //   74: invokevirtual 49	android/os/Parcel:recycle	()V
        //   77: aload 4
        //   79: invokevirtual 49	android/os/Parcel:recycle	()V
        //   82: iload_2
        //   83: ireturn
        //   84: aload 4
        //   86: aload_1
        //   87: arraylength
        //   88: invokevirtual 59	android/os/Parcel:writeInt	(I)V
        //   91: goto -64 -> 27
        //   94: astore_1
        //   95: aload 5
        //   97: invokevirtual 49	android/os/Parcel:recycle	()V
        //   100: aload 4
        //   102: invokevirtual 49	android/os/Parcel:recycle	()V
        //   105: aload_1
        //   106: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	107	0	this	Proxy
        //   0	107	1	paramArrayOfByte	byte[]
        //   0	107	2	paramInt1	int
        //   0	107	3	paramInt2	int
        //   3	98	4	localParcel1	Parcel
        //   8	88	5	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	17	94	finally
        //   21	27	94	finally
        //   27	72	94	finally
        //   84	91	94	finally
      }
      
      /* Error */
      public int readBytes(byte[] paramArrayOfByte)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 33
        //   12: invokevirtual 37	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_1
        //   16: ifnonnull +51 -> 67
        //   19: aload_3
        //   20: iconst_m1
        //   21: invokevirtual 59	android/os/Parcel:writeInt	(I)V
        //   24: aload_0
        //   25: getfield 19	com/lguplus/common/bill/IBillSocket$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   28: iconst_3
        //   29: aload_3
        //   30: aload 4
        //   32: iconst_0
        //   33: invokeinterface 43 5 0
        //   38: pop
        //   39: aload 4
        //   41: invokevirtual 46	android/os/Parcel:readException	()V
        //   44: aload 4
        //   46: invokevirtual 63	android/os/Parcel:readInt	()I
        //   49: istore_2
        //   50: aload 4
        //   52: aload_1
        //   53: invokevirtual 75	android/os/Parcel:readByteArray	([B)V
        //   56: aload 4
        //   58: invokevirtual 49	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 49	android/os/Parcel:recycle	()V
        //   65: iload_2
        //   66: ireturn
        //   67: aload_3
        //   68: aload_1
        //   69: arraylength
        //   70: invokevirtual 59	android/os/Parcel:writeInt	(I)V
        //   73: goto -49 -> 24
        //   76: astore_1
        //   77: aload 4
        //   79: invokevirtual 49	android/os/Parcel:recycle	()V
        //   82: aload_3
        //   83: invokevirtual 49	android/os/Parcel:recycle	()V
        //   86: aload_1
        //   87: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	88	0	this	Proxy
        //   0	88	1	paramArrayOfByte	byte[]
        //   49	17	2	i	int
        //   3	80	3	localParcel1	Parcel
        //   7	71	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	15	76	finally
        //   19	24	76	finally
        //   24	56	76	finally
        //   67	73	76	finally
      }
      
      public boolean writeByOffset(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
        throws RemoteException
      {
        boolean bool = false;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.lguplus.common.bill.IBillSocket");
          localParcel1.writeByteArray(paramArrayOfByte);
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          this.mRemote.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramInt1 = localParcel2.readInt();
          if (paramInt1 != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean writeBytes(byte[] paramArrayOfByte)
        throws RemoteException
      {
        boolean bool = false;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.lguplus.common.bill.IBillSocket");
          localParcel1.writeByteArray(paramArrayOfByte);
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          if (i != 0) {
            bool = true;
          }
          return bool;
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
 * Qualified Name:     com.lguplus.common.bill.IBillSocket
 * JD-Core Version:    0.7.0.1
 */