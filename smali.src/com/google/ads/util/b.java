package com.google.ads.util;

import java.io.UnsupportedEncodingException;

public class b
{
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    int j;
    int i;
    int m;
    label169:
    for (;;)
    {
      int k;
      b localb;
      try
      {
        k = paramArrayOfByte.length;
        localb = new b();
        j = k / 3 * 4;
        if (!localb.d) {
          break label120;
        }
        i = j;
        if (k % 3 > 0) {
          i = j + 4;
        }
        if ((!localb.e) || (k <= 0)) {
          break label169;
        }
        m = (k - 1) / 57;
        if (!localb.f) {
          break;
        }
        j = 2;
      }
      catch (UnsupportedEncodingException paramArrayOfByte)
      {
        label71:
        throw new AssertionError(paramArrayOfByte);
      }
      localb.a = new byte[i];
      localb.a(paramArrayOfByte, k);
      if ((!a) && (localb.b != i))
      {
        throw new AssertionError();
        label120:
        i = j;
      }
      switch (k % 3)
      {
      case 0: 
        paramArrayOfByte = new String(localb.a, "US-ASCII");
        return paramArrayOfByte;
      }
    }
    for (;;)
    {
      i = j * (m + 1) + i;
      break label71;
      i = j;
      break;
      i = j + 2;
      break;
      i = j + 3;
      break;
      j = 1;
    }
  }
  
  public static abstract class a
  {
    public byte[] a;
    public int b;
  }
  
  public static final class b
    extends b.a
  {
    private static final byte[] h;
    private static final byte[] i;
    public int c = 0;
    public final boolean d = false;
    public final boolean e = false;
    public final boolean f = false;
    private final byte[] j = new byte[2];
    private int k;
    private final byte[] l = i;
    
    static
    {
      if (!b.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        g = bool;
        h = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
        i = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
        return;
      }
    }
    
    public b()
    {
      this.a = null;
      if (this.e) {}
      for (int m = 19;; m = -1)
      {
        this.k = m;
        return;
      }
    }
    
    public final boolean a(byte[] paramArrayOfByte, int paramInt)
    {
      int i1 = 0;
      byte[] arrayOfByte1 = this.l;
      byte[] arrayOfByte2 = this.a;
      int n = this.k;
      int i4 = paramInt + 0;
      int m;
      label60:
      int i2;
      switch (this.c)
      {
      default: 
        paramInt = -1;
        m = 0;
        if (paramInt != -1)
        {
          arrayOfByte2[0] = arrayOfByte1[(paramInt >> 18 & 0x3F)];
          arrayOfByte2[1] = arrayOfByte1[(paramInt >> 12 & 0x3F)];
          arrayOfByte2[2] = arrayOfByte1[(paramInt >> 6 & 0x3F)];
          i2 = 4;
          arrayOfByte2[3] = arrayOfByte1[(paramInt & 0x3F)];
          n -= 1;
          if (n == 0)
          {
            paramInt = i2;
            if (this.f)
            {
              paramInt = 5;
              arrayOfByte2[4] = 13;
            }
            i2 = paramInt + 1;
            arrayOfByte2[paramInt] = 10;
            n = 19;
            paramInt = i2;
          }
        }
        break;
      }
      for (;;)
      {
        label168:
        if (m + 3 <= i4)
        {
          i2 = (paramArrayOfByte[m] & 0xFF) << 16 | (paramArrayOfByte[(m + 1)] & 0xFF) << 8 | paramArrayOfByte[(m + 2)] & 0xFF;
          arrayOfByte2[paramInt] = arrayOfByte1[(i2 >> 18 & 0x3F)];
          arrayOfByte2[(paramInt + 1)] = arrayOfByte1[(i2 >> 12 & 0x3F)];
          arrayOfByte2[(paramInt + 2)] = arrayOfByte1[(i2 >> 6 & 0x3F)];
          arrayOfByte2[(paramInt + 3)] = arrayOfByte1[(i2 & 0x3F)];
          m += 3;
          paramInt += 4;
          n -= 1;
          if (n != 0) {
            break label1029;
          }
          if (!this.f) {
            break label1026;
          }
          n = paramInt + 1;
          arrayOfByte2[paramInt] = 13;
          paramInt = n;
        }
        label1026:
        for (;;)
        {
          n = paramInt + 1;
          arrayOfByte2[paramInt] = 10;
          i2 = 19;
          paramInt = n;
          n = i2;
          break label168;
          paramInt = -1;
          m = 0;
          break label60;
          if (2 > i4) {
            break;
          }
          paramInt = this.j[0];
          m = paramArrayOfByte[0];
          i2 = paramArrayOfByte[1];
          this.c = 0;
          paramInt = (paramInt & 0xFF) << 16 | (m & 0xFF) << 8 | i2 & 0xFF;
          m = 2;
          break label60;
          if (i4 <= 0) {
            break;
          }
          paramInt = this.j[0];
          m = this.j[1];
          i2 = paramArrayOfByte[0];
          this.c = 0;
          paramInt = (paramInt & 0xFF) << 16 | (m & 0xFF) << 8 | i2 & 0xFF;
          m = 1;
          break label60;
          int i3;
          if (m - this.c == i4 - 1)
          {
            if (this.c > 0) {
              i2 = this.j[0];
            }
            for (i1 = 1;; i1 = 0)
            {
              i2 = (i2 & 0xFF) << 4;
              this.c -= i1;
              i3 = paramInt + 1;
              arrayOfByte2[paramInt] = arrayOfByte1[(i2 >> 6 & 0x3F)];
              i1 = i3 + 1;
              arrayOfByte2[i3] = arrayOfByte1[(i2 & 0x3F)];
              paramInt = i1;
              if (this.d)
              {
                i2 = i1 + 1;
                arrayOfByte2[i1] = 61;
                paramInt = i2 + 1;
                arrayOfByte2[i2] = 61;
              }
              i1 = paramInt;
              if (this.e)
              {
                i1 = paramInt;
                if (this.f)
                {
                  arrayOfByte2[paramInt] = 13;
                  i1 = paramInt + 1;
                }
                arrayOfByte2[i1] = 10;
                i1 += 1;
              }
              i2 = m;
              if ((g) || (this.c == 0)) {
                break;
              }
              throw new AssertionError();
              i2 = paramArrayOfByte[m];
              m += 1;
            }
          }
          if (m - this.c == i4 - 2) {
            if (this.c > 1)
            {
              i2 = this.j[0];
              i1 = 1;
              label703:
              if (this.c <= 0) {
                break label899;
              }
              i3 = this.j[i1];
              i1 += 1;
              label725:
              i2 = (i3 & 0xFF) << 2 | (i2 & 0xFF) << 10;
              this.c -= i1;
              i1 = paramInt + 1;
              arrayOfByte2[paramInt] = arrayOfByte1[(i2 >> 12 & 0x3F)];
              i3 = i1 + 1;
              arrayOfByte2[i1] = arrayOfByte1[(i2 >> 6 & 0x3F)];
              paramInt = i3 + 1;
              arrayOfByte2[i3] = arrayOfByte1[(i2 & 0x3F)];
              if (!this.d) {
                break label1023;
              }
              i1 = paramInt + 1;
              arrayOfByte2[paramInt] = 61;
              paramInt = i1;
            }
          }
          label899:
          label1023:
          for (;;)
          {
            i1 = paramInt;
            if (this.e)
            {
              i1 = paramInt;
              if (this.f)
              {
                arrayOfByte2[paramInt] = 13;
                i1 = paramInt + 1;
              }
              arrayOfByte2[i1] = 10;
              i1 += 1;
            }
            i2 = m;
            break;
            i2 = paramArrayOfByte[m];
            m += 1;
            break label703;
            i3 = paramArrayOfByte[m];
            m += 1;
            break label725;
            i2 = m;
            i1 = paramInt;
            if (!this.e) {
              break;
            }
            i2 = m;
            i1 = paramInt;
            if (paramInt <= 0) {
              break;
            }
            i2 = m;
            i1 = paramInt;
            if (n == 19) {
              break;
            }
            if (this.f)
            {
              i1 = paramInt + 1;
              arrayOfByte2[paramInt] = 13;
              paramInt = i1;
            }
            for (;;)
            {
              i1 = paramInt + 1;
              arrayOfByte2[paramInt] = 10;
              i2 = m;
              break;
              if ((!g) && (i2 != i4)) {
                throw new AssertionError();
              }
              this.b = i1;
              this.k = n;
              return true;
            }
          }
        }
        label1029:
        continue;
        paramInt = 4;
        continue;
        paramInt = 0;
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.google.ads.util.b
 * JD-Core Version:    0.7.0.1
 */