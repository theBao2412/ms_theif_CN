package net.daum.adam.publisher.impl.d;

import java.lang.reflect.Array;

public final class c
{
  private static final double A = 1.0D;
  private static final double B = 0.9996D;
  private static final double C = 0.9999D;
  private static final double D = 115.8D;
  private static final double E = -474.99000000000001D;
  private static final double F = -674.11000000000001D;
  private static final double G = 1.16D;
  private static final double H = -2.31D;
  private static final double I = -1.63D;
  private static final double J = -6.43D;
  private static final int K = 1;
  private static final double L = 0.0D;
  private static final double M = 500000.0D;
  private static final double N = 2000000.0D;
  private static final double O = 1000000.0D;
  private static final double P = 500000.0D;
  private static final double Q = 200000.0D;
  private static final double R = 600000.0D;
  private static final double S = 400000.0D;
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  public static final int f = 6;
  public static final int g = 7;
  public static final int h = 8;
  public static final int i = 9;
  public static final int j = 10;
  public static final int k = 11;
  public static final int l = 12;
  public static final double m = 127.0D;
  public static final double n = 38.0D;
  public static final double o = 128.0D;
  public static final double p = 38.0D;
  public static final double q = 129.0D;
  public static final double r = 0.0D;
  public static final double s = 127.5D;
  public static final double t = 38.0D;
  private static final double w = 6378137.0D;
  private static final double x = 0.003352810664747481D;
  private static final double y = 6377397.1550000003D;
  private static final double z = 0.003342773179939979D;
  private double T = 0.0D;
  private double U = 0.0D;
  private double V = 0.0D;
  private double W = 0.0D;
  private double X = 0.0D;
  private double Y = 0.0D;
  private double Z = 0.0D;
  private double aa = 0.0D;
  private int[][] ab = (int[][])Array.newInstance(Integer.TYPE, new int[] { 8, 4 });
  private int[][] ac = (int[][])Array.newInstance(Integer.TYPE, new int[] { 8, 4 });
  int[][] u;
  int[][] v;
  
  public c()
  {
    int[] arrayOfInt1 = { 0, 50000 };
    int[] arrayOfInt2 = { 0, 10000 };
    int[] arrayOfInt3 = { -70378, -136 };
    int[] arrayOfInt4 = { -144738, -2161 };
    int[] arrayOfInt5 = { 23510, -111 };
    int[] arrayOfInt6 = { 0, 50000 };
    this.u = new int[][] { { 0, 50000 }, arrayOfInt1, arrayOfInt2, arrayOfInt3, arrayOfInt4, arrayOfInt5, arrayOfInt6, { 0, 50000 } };
    this.v = new int[][] { { 0, -50000 }, { 0, -50000 }, { 0, -10000 }, { 70378, 136 }, { 144738, 2161 }, { -23510, 111 }, { 0, -50000 }, { 0, -50000 } };
    this.ab[0] = { 112500, -50000, 146000, 3000 };
    this.ab[1] = { 146000, -50000, 191600, 8600 };
    this.ab[2] = { 130000, 44000, 145000, 58000 };
    this.ab[3] = { 532500, 437500, 557500, 462500 };
    this.ab[4] = { 625000, 412500, 650000, 437500 };
    this.ab[5] = { -12500, 462500, 5000, 512500 };
    this.ab[6] = { 191600, -50000, 194200, 2700 };
    this.ab[7] = { 194200, -50000, 200000, 8600 };
    int i1 = 0;
    while (i1 < this.ab.length)
    {
      this.ac[i1] = ((int[])this.ab[i1].clone());
      arrayOfInt1 = this.ac[i1];
      arrayOfInt1[0] += this.u[i1][0];
      arrayOfInt1 = this.ac[i1];
      arrayOfInt1[1] += this.u[i1][1];
      arrayOfInt1 = this.ac[i1];
      arrayOfInt1[2] += this.u[i1][0];
      arrayOfInt1 = this.ac[i1];
      arrayOfInt1[3] += this.u[i1][1];
      i1 += 1;
    }
  }
  
  private void a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6, double paramDouble7, int paramInt)
  {
    double d1 = Math.atan(1.0D) / 45.0D;
    this.T = paramDouble1;
    this.U = paramDouble2;
    this.V = paramDouble3;
    this.W = (paramDouble4 / 3600.0D * d1);
    this.X = (paramDouble5 / 3600.0D * d1);
    this.Y = (d1 * (paramDouble6 / 3600.0D));
    this.Z = (1.0E-006D * paramDouble7);
    this.aa = paramInt;
  }
  
  private double[] a(double paramDouble1, double paramDouble2)
  {
    return a(a(paramDouble2, paramDouble1, 6377397.1550000003D, 0.003342773179939979D, 600000.0D, 400000.0D, 0.9999D, 38.0D, 128.0D));
  }
  
  private double[] a(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    return new double[] { (1.0D + this.Z) * (this.Y * paramDouble2 - this.X * paramDouble3) + paramDouble1 + this.T, (1.0D + this.Z) * (-this.Y * paramDouble1 + this.W * paramDouble3) + paramDouble2 + this.U, (1.0D + this.Z) * (this.X * paramDouble1 - this.W * paramDouble2) + paramDouble3 + this.V };
  }
  
  private double[] a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    return a(a(paramDouble2, paramDouble1, 6377397.1550000003D, 0.003342773179939979D, 500000.0D, 200000.0D, 1.0D, paramDouble4, paramDouble3 + 0.002890277777777778D));
  }
  
  private double[] a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5)
  {
    double[] arrayOfDouble1 = new double[3];
    arrayOfDouble1 = e(paramDouble1, paramDouble2, paramDouble3);
    if (this.aa == 1.0D) {}
    for (arrayOfDouble1 = a(arrayOfDouble1[0], arrayOfDouble1[1], arrayOfDouble1[2]);; arrayOfDouble1 = c(arrayOfDouble1[0], arrayOfDouble1[1], arrayOfDouble1[2]))
    {
      double[] arrayOfDouble2 = new double[2];
      arrayOfDouble1 = d(arrayOfDouble1[0], arrayOfDouble1[1], arrayOfDouble1[2], paramDouble4, paramDouble5);
      arrayOfDouble1[0] += 0.0D;
      arrayOfDouble1[1] += 0.0D;
      return arrayOfDouble1;
    }
  }
  
  private double[] a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6, double paramDouble7, double paramDouble8, double paramDouble9)
  {
    double d1 = paramDouble4;
    if (paramDouble4 > 1.0D) {
      d1 = 1.0D / paramDouble4;
    }
    double d5 = Math.atan(1.0D) / 45.0D;
    paramDouble1 *= d5;
    paramDouble4 = paramDouble8 * d5;
    paramDouble8 = 1.0D / d1;
    paramDouble8 = (paramDouble8 - 1.0D) * paramDouble3 / paramDouble8;
    double d10 = (Math.pow(paramDouble3, 2.0D) - Math.pow(paramDouble8, 2.0D)) / Math.pow(paramDouble3, 2.0D);
    double d11 = (Math.pow(paramDouble3, 2.0D) - Math.pow(paramDouble8, 2.0D)) / Math.pow(paramDouble8, 2.0D);
    double d4 = (paramDouble3 - paramDouble8) / (paramDouble8 + paramDouble3);
    paramDouble8 = (1.0D - d4 + 5.0D * (Math.pow(d4, 2.0D) - Math.pow(d4, 3.0D)) / 4.0D + 81.0D * (Math.pow(d4, 4.0D) - Math.pow(d4, 5.0D)) / 64.0D) * paramDouble3;
    d1 = 3.0D * paramDouble3 * (d4 - Math.pow(d4, 2.0D) + 7.0D * (Math.pow(d4, 3.0D) - Math.pow(d4, 4.0D)) / 8.0D + 55.0D * Math.pow(d4, 5.0D) / 64.0D) / 2.0D;
    double d2 = 15.0D * paramDouble3 * (Math.pow(d4, 2.0D) - Math.pow(d4, 3.0D) + 3.0D * (Math.pow(d4, 4.0D) - Math.pow(d4, 5.0D)) / 4.0D) / 16.0D;
    double d3 = 35.0D * paramDouble3 * (Math.pow(d4, 3.0D) - Math.pow(d4, 4.0D) + 11.0D * Math.pow(d4, 5.0D) / 16.0D) / 48.0D;
    d4 = (Math.pow(d4, 4.0D) - Math.pow(d4, 5.0D)) * (315.0D * paramDouble3) / 512.0D;
    paramDouble2 = paramDouble2 * d5 - d5 * paramDouble9;
    paramDouble9 = Math.sin(2.0D * paramDouble4);
    d5 = Math.sin(4.0D * paramDouble4);
    double d6 = Math.sin(6.0D * paramDouble4);
    double d7 = Math.sin(paramDouble4 * 8.0D);
    double d17 = Math.sin(paramDouble1);
    double d8 = Math.cos(paramDouble1);
    double d9 = d17 / d8;
    double d23 = d11 * Math.pow(d8, 2.0D);
    paramDouble3 /= Math.sqrt(1.0D - d10 * Math.pow(Math.sin(paramDouble1), 2.0D));
    d10 = Math.sin(2.0D * paramDouble1);
    d11 = Math.sin(4.0D * paramDouble1);
    double d12 = Math.sin(6.0D * paramDouble1);
    double d13 = Math.sin(paramDouble1 * 8.0D);
    double d14 = paramDouble3 * d17 * d8 * paramDouble7 / 2.0D;
    double d15 = paramDouble3 * d17 * Math.pow(d8, 3.0D) * paramDouble7 * (5.0D - Math.pow(d9, 2.0D) + 9.0D * d23 + 4.0D * Math.pow(d23, 2.0D)) / 24.0D;
    double d16 = paramDouble3 * d17 * Math.pow(d8, 5.0D) * paramDouble7 * (61.0D - 58.0D * Math.pow(d9, 2.0D) + Math.pow(d9, 4.0D) + 270.0D * d23 - 330.0D * Math.pow(d9, 2.0D) * d23 + 445.0D * Math.pow(d23, 2.0D) + 324.0D * Math.pow(d23, 3.0D) - 680.0D * Math.pow(d9, 2.0D) * Math.pow(d23, 2.0D) + 88.0D * Math.pow(d23, 4.0D) - 600.0D * Math.pow(d9, 2.0D) * Math.pow(d23, 3.0D) - 192.0D * Math.pow(d9, 2.0D) * Math.pow(d23, 4.0D)) / 720.0D;
    d17 = d17 * paramDouble3 * Math.pow(d8, 7.0D) * paramDouble7 * (1385.0D - 3111.0D * Math.pow(d9, 2.0D) + 543.0D * Math.pow(d9, 4.0D) - Math.pow(d9, 6.0D)) / 40320.0D;
    double d18 = Math.pow(paramDouble2, 2.0D);
    double d19 = Math.pow(paramDouble2, 4.0D);
    double d20 = Math.pow(paramDouble2, 6.0D);
    double d21 = Math.pow(paramDouble2, 8.0D);
    double d22 = Math.pow(d8, 3.0D) * paramDouble3 * paramDouble7 * (1.0D - Math.pow(d9, 2.0D) + d23) / 6.0D;
    double d24 = Math.pow(d8, 5.0D);
    double d25 = Math.pow(d9, 2.0D);
    double d26 = Math.pow(d9, 4.0D);
    double d27 = Math.pow(d9, 2.0D);
    double d28 = Math.pow(d23, 2.0D);
    double d29 = Math.pow(d23, 3.0D);
    double d30 = Math.pow(d9, 2.0D);
    double d31 = Math.pow(d23, 2.0D);
    double d32 = Math.pow(d9, 2.0D);
    d23 = d24 * paramDouble3 * paramDouble7 * (5.0D - 18.0D * d25 + d26 + 14.0D * d23 - 58.0D * d27 * d23 + 13.0D * d28 + 4.0D * d29 - 64.0D * d30 * d31 - Math.pow(d23, 3.0D) * (25.0D * d32)) / 120.0D;
    d9 = paramDouble3 * Math.pow(d8, 7.0D) * paramDouble7 * (61.0D - 479.0D * Math.pow(d9, 2.0D) + 179.0D * Math.pow(d9, 4.0D) - Math.pow(d9, 6.0D)) / 5040.0D;
    d24 = Math.pow(paramDouble2, 3.0D);
    d25 = Math.pow(paramDouble2, 5.0D);
    return new double[] { (d13 * d4 + (paramDouble8 * paramDouble1 - d1 * d10 + d11 * d2 - d12 * d3)) * paramDouble7 + d14 * d18 + d19 * d15 + d20 * d16 + d17 * d21 - (paramDouble8 * paramDouble4 - paramDouble9 * d1 + d5 * d2 - d6 * d3 + d7 * d4) * paramDouble7 + paramDouble5, Math.pow(paramDouble2, 7.0D) * d9 + (paramDouble3 * d8 * paramDouble7 * paramDouble2 + paramDouble6 + d22 * d24 + d25 * d23) };
  }
  
  private double[] a(double paramDouble1, double paramDouble2, boolean paramBoolean)
  {
    double[] arrayOfDouble = new double[2];
    int i1;
    double d1;
    if (paramBoolean)
    {
      i1 = 0;
      if (i1 >= this.ab.length) {
        break label316;
      }
      if ((paramDouble1 > this.ab[i1][0]) && (paramDouble1 < this.ab[i1][2]) && (paramDouble2 > this.ab[i1][1]) && (paramDouble2 < this.ab[i1][3]))
      {
        d2 = this.u[i1][0];
        d1 = 0.0D + this.u[i1][1];
      }
    }
    for (double d2 = 0.0D + d2;; d2 = 0.0D)
    {
      arrayOfDouble[0] = ((int)((d2 + paramDouble1) * 2.5D + 0.5D));
      arrayOfDouble[1] = ((int)((d1 + paramDouble2) * 2.5D + 0.5D));
      for (;;)
      {
        return arrayOfDouble;
        i1 += 1;
        break;
        arrayOfDouble[0] = (paramDouble1 / 2.5D);
        arrayOfDouble[1] = (paramDouble2 / 2.5D);
        i1 = 0;
        while (i1 < this.ac.length)
        {
          if ((arrayOfDouble[0] > this.ac[i1][0]) && (arrayOfDouble[0] < this.ac[i1][2]) && (arrayOfDouble[1] > this.ac[i1][1]) && (arrayOfDouble[1] < this.ac[i1][3]))
          {
            arrayOfDouble[0] += this.v[i1][0];
            arrayOfDouble[1] += this.v[i1][1];
            return arrayOfDouble;
          }
          i1 += 1;
        }
      }
      label316:
      d1 = 0.0D;
    }
  }
  
  private double[] a(double[] paramArrayOfDouble)
  {
    double d1 = paramArrayOfDouble[0];
    paramArrayOfDouble[0] = paramArrayOfDouble[1];
    paramArrayOfDouble[1] = d1;
    return paramArrayOfDouble;
  }
  
  private double[] b(double paramDouble1, double paramDouble2)
  {
    double[] arrayOfDouble = a(a(paramDouble2, paramDouble1, 6377397.1550000003D, 0.003342773179939979D, 500000.0D, 200000.0D, 1.0D, 38.0D, 127.00289027777778D));
    return a(arrayOfDouble[0], arrayOfDouble[1], true);
  }
  
  private double[] b(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    paramDouble1 = (paramDouble1 - this.T) * (1.0D + this.Z);
    paramDouble2 = (paramDouble2 - this.U) * (1.0D + this.Z);
    paramDouble3 = (paramDouble3 - this.V) * (1.0D + this.Z);
    double d1 = 1.0D / (1.0D + this.Z);
    double d2 = this.Y;
    double d3 = this.X;
    double d4 = 1.0D / (1.0D + this.Z);
    double d5 = this.Y;
    double d6 = this.W;
    double d7 = 1.0D / (1.0D + this.Z);
    return new double[] { d1 * (paramDouble1 - d2 * paramDouble2 + d3 * paramDouble3), d4 * (d5 * paramDouble1 + paramDouble2 - d6 * paramDouble3), (paramDouble1 * -this.X + paramDouble2 * this.W + paramDouble3) * d7 };
  }
  
  private double[] b(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    return a(a(paramDouble2, paramDouble1, 6377397.1550000003D, 0.003342773179939979D, 0.0D, 500000.0D, 0.9996D, paramDouble4, paramDouble3));
  }
  
  private double[] b(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5)
  {
    double[] arrayOfDouble = new double[3];
    arrayOfDouble = c(paramDouble1, paramDouble2, paramDouble3, paramDouble4, paramDouble5);
    if (this.aa == 1.0D) {}
    for (arrayOfDouble = b(arrayOfDouble[0], arrayOfDouble[1], arrayOfDouble[2]);; arrayOfDouble = d(arrayOfDouble[0], arrayOfDouble[1], arrayOfDouble[2])) {
      return f(arrayOfDouble[0], arrayOfDouble[1], arrayOfDouble[2]);
    }
  }
  
  private double[] b(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6, double paramDouble7, double paramDouble8, double paramDouble9)
  {
    double d1 = paramDouble4;
    if (paramDouble4 > 1.0D) {
      d1 = 1.0D / paramDouble4;
    }
    paramDouble4 = Math.atan(1.0D) / 45.0D;
    double d6 = paramDouble8 * paramDouble4;
    paramDouble8 = 1.0D / d1;
    double d2 = (paramDouble8 - 1.0D) * paramDouble3 / paramDouble8;
    d1 = (Math.pow(paramDouble3, 2.0D) - Math.pow(d2, 2.0D)) / Math.pow(paramDouble3, 2.0D);
    paramDouble8 = (Math.pow(paramDouble3, 2.0D) - Math.pow(d2, 2.0D)) / Math.pow(d2, 2.0D);
    double d7 = (paramDouble3 - d2) / (d2 + paramDouble3);
    d2 = (1.0D - d7 + 5.0D * (Math.pow(d7, 2.0D) - Math.pow(d7, 3.0D)) / 4.0D + 81.0D * (Math.pow(d7, 4.0D) - Math.pow(d7, 5.0D)) / 64.0D) * paramDouble3;
    double d3 = 3.0D * paramDouble3 * (d7 - Math.pow(d7, 2.0D) + 7.0D * (Math.pow(d7, 3.0D) - Math.pow(d7, 4.0D)) / 8.0D + 55.0D * Math.pow(d7, 5.0D) / 64.0D) / 2.0D;
    double d4 = 15.0D * paramDouble3 * (Math.pow(d7, 2.0D) - Math.pow(d7, 3.0D) + 3.0D * (Math.pow(d7, 4.0D) - Math.pow(d7, 5.0D)) / 4.0D) / 16.0D;
    double d5 = 35.0D * paramDouble3 * (Math.pow(d7, 3.0D) - Math.pow(d7, 4.0D) + 11.0D * Math.pow(d7, 5.0D) / 16.0D) / 48.0D;
    d7 = (Math.pow(d7, 4.0D) - Math.pow(d7, 5.0D)) * (315.0D * paramDouble3) / 512.0D;
    double d8 = Math.sin(2.0D * d6);
    double d9 = Math.sin(4.0D * d6);
    double d10 = Math.sin(6.0D * d6);
    paramDouble5 = ((Math.sin(d6 * 8.0D) * d7 + (d2 * d6 - d8 * d3 + d9 * d4 - d10 * d5)) * paramDouble7 + paramDouble1 - paramDouble5) / paramDouble7;
    paramDouble1 = paramDouble5 / ((1.0D - d1) * paramDouble3 / Math.pow(Math.sqrt(1.0D - Math.pow(Math.sin(0.0D), 2.0D) * d1), 3.0D));
    int i1 = 1;
    while (i1 <= 5)
    {
      paramDouble1 += (paramDouble5 - (d2 * paramDouble1 - Math.sin(2.0D * paramDouble1) * d3 + Math.sin(4.0D * paramDouble1) * d4 - Math.sin(6.0D * paramDouble1) * d5 + Math.sin(8.0D * paramDouble1) * d7)) / ((1.0D - d1) * paramDouble3 / Math.pow(Math.sqrt(1.0D - Math.pow(Math.sin(paramDouble1), 2.0D) * d1), 3.0D));
      i1 += 1;
    }
    d3 = (1.0D - d1) * paramDouble3 / Math.pow(Math.sqrt(1.0D - Math.pow(Math.sin(paramDouble1), 2.0D) * d1), 3.0D);
    paramDouble3 /= Math.sqrt(1.0D - d1 * Math.pow(Math.sin(paramDouble1), 2.0D));
    d1 = Math.sin(paramDouble1);
    paramDouble5 = Math.cos(paramDouble1);
    d2 = d1 / paramDouble5;
    d10 = paramDouble8 * Math.pow(paramDouble5, 2.0D);
    paramDouble2 -= paramDouble6;
    paramDouble6 = d2 / (2.0D * d3 * paramDouble3 * Math.pow(paramDouble7, 2.0D));
    paramDouble8 = (5.0D + 3.0D * Math.pow(d2, 2.0D) + d10 - 4.0D * Math.pow(d10, 2.0D) - 9.0D * Math.pow(d2, 2.0D) * d10) * d2 / (24.0D * d3 * Math.pow(paramDouble3, 3.0D) * Math.pow(paramDouble7, 4.0D));
    d1 = (61.0D + 90.0D * Math.pow(d2, 2.0D) + 46.0D * d10 + 45.0D * Math.pow(d2, 4.0D) - 252.0D * Math.pow(d2, 2.0D) * d10 - 3.0D * Math.pow(d10, 2.0D) + 100.0D * Math.pow(d10, 3.0D) - 66.0D * Math.pow(d2, 2.0D) * Math.pow(d10, 2.0D) - 90.0D * Math.pow(d2, 4.0D) * d10 + 88.0D * Math.pow(d10, 4.0D) + 225.0D * Math.pow(d2, 4.0D) * Math.pow(d10, 2.0D) + 84.0D * Math.pow(d2, 2.0D) * Math.pow(d10, 3.0D) - 192.0D * Math.pow(d2, 2.0D) * Math.pow(d10, 4.0D)) * d2 / (720.0D * d3 * Math.pow(paramDouble3, 5.0D) * Math.pow(paramDouble7, 6.0D));
    d3 = (1385.0D + 3633.0D * Math.pow(d2, 2.0D) + 4095.0D * Math.pow(d2, 4.0D) + 1575.0D * Math.pow(d2, 6.0D)) * d2 / (d3 * 40320.0D * Math.pow(paramDouble3, 7.0D) * Math.pow(paramDouble7, 8.0D));
    d4 = Math.pow(paramDouble2, 2.0D);
    d5 = Math.pow(paramDouble2, 4.0D);
    d6 = Math.pow(paramDouble2, 6.0D);
    d7 = Math.pow(paramDouble2, 8.0D);
    d8 = 1.0D / (paramDouble3 * paramDouble5 * paramDouble7);
    d9 = (1.0D + 2.0D * Math.pow(d2, 2.0D) + d10) / (6.0D * Math.pow(paramDouble3, 3.0D) * paramDouble5 * Math.pow(paramDouble7, 3.0D));
    double d11 = Math.pow(d2, 2.0D);
    double d12 = Math.pow(d10, 2.0D);
    double d13 = Math.pow(d2, 2.0D);
    double d14 = Math.pow(d2, 4.0D);
    double d15 = Math.pow(d10, 3.0D);
    double d16 = Math.pow(d2, 2.0D);
    double d17 = Math.pow(d10, 2.0D);
    double d18 = Math.pow(d2, 2.0D);
    d10 = (Math.pow(d10, 3.0D) * (24.0D * d18) + (5.0D + 6.0D * d10 + 28.0D * d11 - 3.0D * d12 + 8.0D * d13 * d10 + 24.0D * d14 - 4.0D * d15 + 4.0D * d16 * d17)) / (120.0D * Math.pow(paramDouble3, 5.0D) * paramDouble5 * Math.pow(paramDouble7, 5.0D));
    d11 = Math.pow(d2, 2.0D);
    d12 = Math.pow(d2, 4.0D);
    paramDouble3 = (Math.pow(d2, 6.0D) * 720.0D + (61.0D + 662.0D * d11 + 1320.0D * d12)) / (Math.pow(paramDouble3, 7.0D) * 5040.0D * paramDouble5 * Math.pow(paramDouble7, 7.0D));
    paramDouble5 = Math.pow(paramDouble2, 3.0D);
    paramDouble7 = Math.pow(paramDouble2, 5.0D);
    d2 = Math.pow(paramDouble2, 7.0D);
    return new double[] { (paramDouble1 - paramDouble6 * d4 + d5 * paramDouble8 - d6 * d1 + d3 * d7) / paramDouble4, (paramDouble9 * paramDouble4 + (d8 * paramDouble2 - paramDouble5 * d9 + d10 * paramDouble7 - paramDouble3 * d2)) / paramDouble4 };
  }
  
  private double[] c(double paramDouble1, double paramDouble2)
  {
    a(115.8D, -474.99000000000001D, -674.11000000000001D, 1.16D, -2.31D, -1.63D, -6.43D, 1);
    return a(b(paramDouble2, paramDouble1, 0.0D, 6377397.1550000003D, 0.003342773179939979D));
  }
  
  private double[] c(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    return new double[] { (1.0D + this.Z) * (this.Y * paramDouble2 + paramDouble1 - this.X * paramDouble3) + this.T, (1.0D + this.Z) * (-this.Y * paramDouble1 + paramDouble2 + this.W * paramDouble3) + this.U, (1.0D + this.Z) * (this.X * paramDouble1 - this.W * paramDouble2 + paramDouble3) + this.V };
  }
  
  private double[] c(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    a(115.8D, -474.99000000000001D, -674.11000000000001D, 1.16D, -2.31D, -1.63D, -6.43D, 1);
    return a(a(paramDouble2, paramDouble1, 6378137.0D, 0.003352810664747481D, 0.0D, 500000.0D, 0.9996D, paramDouble4, paramDouble3));
  }
  
  private double[] c(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5)
  {
    double d1 = paramDouble5;
    if (paramDouble5 > 1.0D) {
      d1 = 1.0D / paramDouble5;
    }
    paramDouble5 = Math.atan(1.0D) / 45.0D;
    paramDouble1 *= paramDouble5;
    paramDouble2 = paramDouble5 * paramDouble2;
    paramDouble5 = 1.0D / d1;
    double d4 = (paramDouble5 - 1.0D) * paramDouble4 / paramDouble5;
    paramDouble5 = paramDouble4 / Math.sqrt(1.0D - (Math.pow(paramDouble4, 2.0D) - Math.pow(d4, 2.0D)) / Math.pow(paramDouble4, 2.0D) * Math.pow(Math.sin(paramDouble1), 2.0D));
    d1 = Math.cos(paramDouble1);
    double d2 = Math.cos(paramDouble2);
    double d3 = Math.cos(paramDouble1);
    paramDouble2 = Math.sin(paramDouble2);
    paramDouble4 = Math.pow(d4, 2.0D) / Math.pow(paramDouble4, 2.0D);
    return new double[] { (paramDouble5 + paramDouble3) * d1 * d2, paramDouble2 * ((paramDouble5 + paramDouble3) * d3), Math.sin(paramDouble1) * (paramDouble4 * paramDouble5 + paramDouble3) };
  }
  
  private double[] d(double paramDouble1, double paramDouble2)
  {
    return a(a(paramDouble2, paramDouble1, 6377397.1550000003D, 0.003342773179939979D, 2000000.0D, 1000000.0D, 0.9996D, 38.0D, 127.50289027777778D));
  }
  
  private double[] d(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    paramDouble1 -= this.T;
    paramDouble2 -= this.U;
    paramDouble3 -= this.V;
    double d1 = 1.0D / (1.0D + this.Z);
    double d2 = this.Y;
    double d3 = this.X;
    double d4 = 1.0D / (1.0D + this.Z);
    double d5 = this.Y;
    double d6 = this.W;
    double d7 = 1.0D / (1.0D + this.Z);
    return new double[] { d1 * (paramDouble1 - d2 * paramDouble2 + d3 * paramDouble3), d4 * (d5 * paramDouble1 + paramDouble2 - d6 * paramDouble3), (paramDouble1 * -this.X + paramDouble2 * this.W + paramDouble3) * d7 };
  }
  
  private double[] d(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    return a(a(paramDouble2, paramDouble1, 6378137.0D, 0.003352810664747481D, 500000.0D, 200000.0D, 1.0D, paramDouble4, paramDouble3));
  }
  
  private double[] d(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5)
  {
    double d2 = 0.0D;
    double d1 = paramDouble5;
    if (paramDouble5 > 1.0D) {
      d1 = 1.0D / paramDouble5;
    }
    double d3 = Math.atan(1.0D) / 45.0D;
    paramDouble5 = 1.0D / d1;
    double d4 = (paramDouble5 - 1.0D) * paramDouble4 / paramDouble5;
    double d5 = (Math.pow(paramDouble4, 2.0D) - Math.pow(d4, 2.0D)) / Math.pow(paramDouble4, 2.0D);
    double d6 = Math.atan(paramDouble2 / paramDouble1);
    double d7 = Math.sqrt(paramDouble1 * paramDouble1 + paramDouble2 * paramDouble2);
    int i1 = 0;
    paramDouble2 = 0.0D;
    d1 = paramDouble4;
    for (paramDouble5 = d2;; paramDouble5 = d2)
    {
      i1 += 1;
      paramDouble5 = Math.atan(paramDouble3 / Math.sqrt(Math.pow(paramDouble5 + d1 * (Math.pow(d4, 2.0D) / Math.pow(paramDouble4, 2.0D)), 2.0D) - Math.pow(paramDouble3, 2.0D)));
      if (Math.abs(paramDouble5 - paramDouble2) < 1.E-018D) {}
      do
      {
        double[] arrayOfDouble = new double[2];
        arrayOfDouble[0] = (paramDouble5 / d3);
        arrayOfDouble[1] = (d6 / d3);
        if (paramDouble1 < 0.0D) {
          arrayOfDouble[1] = (180.0D + arrayOfDouble[1]);
        }
        if (arrayOfDouble[1] < 0.0D) {
          arrayOfDouble[1] = (360.0D + arrayOfDouble[1]);
        }
        return arrayOfDouble;
        d1 = paramDouble4 / Math.sqrt(1.0D - Math.pow(Math.sin(paramDouble5), 2.0D) * d5);
        d2 = d7 / Math.cos(paramDouble5) - d1;
      } while (i1 > 30);
      paramDouble2 = paramDouble5;
    }
  }
  
  private double[] e(double paramDouble1, double paramDouble2)
  {
    a(115.8D, -474.99000000000001D, -674.11000000000001D, 1.16D, -2.31D, -1.63D, -6.43D, 1);
    return a(a(paramDouble2, paramDouble1, 6378137.0D, 0.003352810664747481D, 2000000.0D, 1000000.0D, 0.9996D, 38.0D, 127.5D));
  }
  
  private double[] e(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    return c(paramDouble1, paramDouble2, paramDouble3, 6378137.0D, 0.003352810664747481D);
  }
  
  private double[] e(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    return a(b(paramDouble2, paramDouble1, 6377397.1550000003D, 0.003342773179939979D, 500000.0D, 200000.0D, 1.0D, paramDouble4, paramDouble3 + 0.002890277777777778D));
  }
  
  private double[] f(double paramDouble1, double paramDouble2)
  {
    a(115.8D, -474.99000000000001D, -674.11000000000001D, 1.16D, -2.31D, -1.63D, -6.43D, 1);
    return a(a(paramDouble2, paramDouble1, 0.0D, 6377397.1550000003D, 0.003342773179939979D));
  }
  
  private double[] f(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    return d(paramDouble1, paramDouble2, paramDouble3, 6378137.0D, 0.003352810664747481D);
  }
  
  private double[] f(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    a(115.8D, -474.99000000000001D, -674.11000000000001D, 1.16D, -2.31D, -1.63D, -6.43D, 1);
    return a(b(paramDouble2, paramDouble1, 6378137.0D, 0.003352810664747481D, 0.0D, 500000.0D, 0.9996D, paramDouble4, paramDouble3));
  }
  
  private double[] g(double paramDouble1, double paramDouble2)
  {
    return a(a(paramDouble2, paramDouble1, 6378137.0D, 0.003352810664747481D, 600000.0D, 400000.0D, 0.9999D, 38.0D, 128.0D));
  }
  
  private double[] g(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    return a(b(paramDouble2, paramDouble1, 6377397.1550000003D, 0.003342773179939979D, 0.0D, 500000.0D, 0.9996D, paramDouble4, paramDouble3));
  }
  
  private double[] h(double paramDouble1, double paramDouble2)
  {
    double[] arrayOfDouble = a(a(paramDouble2, paramDouble1, 6378137.0D, 0.003352810664747481D, 500000.0D, 200000.0D, 1.0D, 38.0D, 127.0D));
    arrayOfDouble[0] = Math.round(arrayOfDouble[0] * 2.5D);
    arrayOfDouble[1] = Math.round(arrayOfDouble[1] * 2.5D);
    return arrayOfDouble;
  }
  
  private double[] h(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    return a(b(paramDouble2, paramDouble1, 6378137.0D, 0.003352810664747481D, 500000.0D, 200000.0D, 1.0D, paramDouble4, paramDouble3));
  }
  
  private double[] i(double paramDouble1, double paramDouble2)
  {
    return a(b(paramDouble2, paramDouble1, 6377397.1550000003D, 0.003342773179939979D, 2000000.0D, 1000000.0D, 0.9996D, 38.0D, 127.50289027777778D));
  }
  
  private double[] j(double paramDouble1, double paramDouble2)
  {
    a(115.8D, -474.99000000000001D, -674.11000000000001D, 1.16D, -2.31D, -1.63D, -6.43D, 1);
    return a(b(paramDouble2, paramDouble1, 6378137.0D, 0.003352810664747481D, 2000000.0D, 1000000.0D, 0.9996D, 38.0D, 127.5D));
  }
  
  private double[] k(double paramDouble1, double paramDouble2)
  {
    return a(b(paramDouble2, paramDouble1, 6377397.1550000003D, 0.003342773179939979D, 600000.0D, 400000.0D, 0.9999D, 38.0D, 128.0D));
  }
  
  private double[] l(double paramDouble1, double paramDouble2)
  {
    double[] arrayOfDouble = a(paramDouble1, paramDouble2, false);
    return a(b(arrayOfDouble[1], arrayOfDouble[0], 6377397.1550000003D, 0.003342773179939979D, 500000.0D, 200000.0D, 1.0D, 38.0D, 127.00289027777778D));
  }
  
  private double[] m(double paramDouble1, double paramDouble2)
  {
    return a(b(paramDouble2, paramDouble1, 6378137.0D, 0.003352810664747481D, 600000.0D, 400000.0D, 0.9999D, 38.0D, 128.0D));
  }
  
  private double[] n(double paramDouble1, double paramDouble2)
  {
    double[] arrayOfDouble = new double[2];
    arrayOfDouble[0] = (paramDouble1 / 2.5D);
    arrayOfDouble[1] = (paramDouble2 / 2.5D);
    return a(b(arrayOfDouble[1], arrayOfDouble[0], 6378137.0D, 0.003352810664747481D, 500000.0D, 200000.0D, 1.0D, 38.0D, 127.0D));
  }
  
  public double[] a(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    double d1;
    switch (paramInt)
    {
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 127.0D;
        paramDouble6 = 38.0D;
      }
      arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return a(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 2: 
      arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return a(arrayOfDouble[0], arrayOfDouble[1]);
    case 3: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 129.0D;
        paramDouble6 = 0.0D;
      }
      arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
      return c(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 4: 
      arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return b(arrayOfDouble[0], arrayOfDouble[1]);
    case 5: 
      arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return c(arrayOfDouble[0], arrayOfDouble[1]);
    case 6: 
      return e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
    case 7: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 127.0D;
        paramDouble6 = 38.0D;
      }
      arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
      return d(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 8: 
      arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
      return g(arrayOfDouble[0], arrayOfDouble[1]);
    case 9: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 129.0D;
        paramDouble6 = 0.0D;
      }
      arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return b(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 10: 
      arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
      return h(arrayOfDouble[0], arrayOfDouble[1]);
    case 11: 
      arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
      return e(arrayOfDouble[0], arrayOfDouble[1]);
    }
    double[] arrayOfDouble = e(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
    return d(arrayOfDouble[0], arrayOfDouble[1]);
  }
  
  public double[] a(double paramDouble1, double paramDouble2, int paramInt1, int paramInt2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    switch (paramInt1)
    {
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      if (paramDouble3 <= 0.0D)
      {
        paramDouble3 = 127.0D;
        paramDouble4 = 38.0D;
      }
      break;
    }
    for (;;)
    {
      return a(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
      if (paramDouble3 <= 0.0D)
      {
        paramDouble3 = 128.0D;
        paramDouble4 = 38.0D;
      }
      for (;;)
      {
        return b(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
        if (paramDouble3 <= 0.0D)
        {
          paramDouble3 = 129.0D;
          paramDouble4 = 0.0D;
        }
        for (;;)
        {
          return c(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
          if (paramDouble3 <= 0.0D)
          {
            paramDouble3 = 127.0D;
            paramDouble4 = 38.0D;
          }
          for (;;)
          {
            return d(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
            return e(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
            return f(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
            if (paramDouble3 <= 0.0D)
            {
              paramDouble3 = 127.0D;
              paramDouble4 = 38.0D;
            }
            for (;;)
            {
              return g(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
              if (paramDouble3 <= 0.0D)
              {
                paramDouble3 = 128.0D;
                paramDouble4 = 38.0D;
              }
              for (;;)
              {
                return h(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
                if (paramDouble3 <= 0.0D)
                {
                  paramDouble3 = 129.0D;
                  paramDouble4 = 0.0D;
                }
                for (;;)
                {
                  return j(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
                  if (paramDouble3 <= 0.0D)
                  {
                    paramDouble3 = 127.0D;
                    paramDouble4 = 38.0D;
                  }
                  for (;;)
                  {
                    return i(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
                    if (paramDouble3 <= 0.0D)
                    {
                      paramDouble3 = 127.5D;
                      paramDouble4 = 38.0D;
                    }
                    for (;;)
                    {
                      return k(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
                      if (paramDouble3 <= 0.0D)
                      {
                        paramDouble3 = 127.5D;
                        paramDouble4 = 38.0D;
                      }
                      for (;;)
                      {
                        return l(paramDouble1, paramDouble2, paramInt2, paramDouble3, paramDouble4, paramDouble5, paramDouble6);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  public double[] b(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    switch (paramInt)
    {
    case 2: 
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 127.0D;
        paramDouble6 = 38.0D;
      }
      break;
    }
    for (;;)
    {
      double[] arrayOfDouble = k(paramDouble1, paramDouble2);
      return a(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 129.0D;
        paramDouble6 = 0.0D;
      }
      for (;;)
      {
        arrayOfDouble = k(paramDouble1, paramDouble2);
        arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
        return c(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
        arrayOfDouble = k(paramDouble1, paramDouble2);
        return b(arrayOfDouble[0], arrayOfDouble[1]);
        arrayOfDouble = k(paramDouble1, paramDouble2);
        return c(arrayOfDouble[0], arrayOfDouble[1]);
        return k(paramDouble1, paramDouble2);
        if (paramDouble5 <= 0.0D)
        {
          paramDouble3 = 127.0D;
          paramDouble6 = 38.0D;
        }
        for (;;)
        {
          arrayOfDouble = k(paramDouble1, paramDouble2);
          arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
          return d(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
          arrayOfDouble = k(paramDouble1, paramDouble2);
          arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
          return g(arrayOfDouble[0], arrayOfDouble[1]);
          if (paramDouble5 <= 0.0D)
          {
            paramDouble3 = 129.0D;
            paramDouble6 = 0.0D;
          }
          for (;;)
          {
            arrayOfDouble = k(paramDouble1, paramDouble2);
            return b(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
            arrayOfDouble = k(paramDouble1, paramDouble2);
            arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
            return h(arrayOfDouble[0], arrayOfDouble[1]);
            arrayOfDouble = k(paramDouble1, paramDouble2);
            arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
            return e(arrayOfDouble[0], arrayOfDouble[1]);
            arrayOfDouble = k(paramDouble1, paramDouble2);
            return d(arrayOfDouble[0], arrayOfDouble[1]);
            paramDouble3 = paramDouble5;
          }
          paramDouble3 = paramDouble5;
        }
        paramDouble3 = paramDouble5;
      }
      paramDouble3 = paramDouble5;
    }
  }
  
  public double[] c(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    double d1;
    switch (paramInt)
    {
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 127.0D;
        paramDouble6 = 38.0D;
      }
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return a(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 2: 
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return a(arrayOfDouble[0], arrayOfDouble[1]);
    case 3: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 129.0D;
        paramDouble6 = 0.0D;
      }
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return c(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 4: 
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return b(arrayOfDouble[0], arrayOfDouble[1]);
    case 5: 
      return f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
    case 6: 
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return f(arrayOfDouble[0], arrayOfDouble[1]);
    case 7: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 127.0D;
        paramDouble6 = 38.0D;
      }
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return d(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 8: 
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return g(arrayOfDouble[0], arrayOfDouble[1]);
    case 9: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 129.0D;
        paramDouble6 = 0.0D;
      }
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return b(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 10: 
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return h(arrayOfDouble[0], arrayOfDouble[1]);
    case 11: 
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return e(arrayOfDouble[0], arrayOfDouble[1]);
    }
    double[] arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
    arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
    return d(arrayOfDouble[0], arrayOfDouble[1]);
  }
  
  public double[] d(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    switch (paramInt)
    {
    case 4: 
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 127.0D;
        paramDouble6 = 38.0D;
      }
      break;
    }
    for (;;)
    {
      double[] arrayOfDouble = l(paramDouble1, paramDouble2);
      return a(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
      arrayOfDouble = l(paramDouble1, paramDouble2);
      return a(arrayOfDouble[0], arrayOfDouble[1]);
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 129.0D;
        paramDouble6 = 0.0D;
      }
      for (;;)
      {
        arrayOfDouble = l(paramDouble1, paramDouble2);
        arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
        return c(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
        arrayOfDouble = l(paramDouble1, paramDouble2);
        return c(arrayOfDouble[0], arrayOfDouble[1]);
        return l(paramDouble1, paramDouble2);
        if (paramDouble5 <= 0.0D)
        {
          paramDouble3 = 127.0D;
          paramDouble6 = 38.0D;
        }
        for (;;)
        {
          arrayOfDouble = l(paramDouble1, paramDouble2);
          arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
          return d(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
          arrayOfDouble = l(paramDouble1, paramDouble2);
          arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
          return g(arrayOfDouble[0], arrayOfDouble[1]);
          if (paramDouble5 <= 0.0D)
          {
            paramDouble3 = 129.0D;
            paramDouble6 = 0.0D;
          }
          for (;;)
          {
            arrayOfDouble = l(paramDouble1, paramDouble2);
            return b(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
            arrayOfDouble = l(paramDouble1, paramDouble2);
            arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
            return h(arrayOfDouble[0], arrayOfDouble[1]);
            arrayOfDouble = l(paramDouble1, paramDouble2);
            arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
            return e(arrayOfDouble[0], arrayOfDouble[1]);
            arrayOfDouble = l(paramDouble1, paramDouble2);
            return d(arrayOfDouble[0], arrayOfDouble[1]);
            paramDouble3 = paramDouble5;
          }
          paramDouble3 = paramDouble5;
        }
        paramDouble3 = paramDouble5;
      }
      paramDouble3 = paramDouble5;
    }
  }
  
  public double[] e(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    double[] arrayOfDouble = new double[2];
    arrayOfDouble[0] = paramDouble1;
    arrayOfDouble[1] = paramDouble2;
    switch (paramInt)
    {
    case 5: 
    default: 
      return arrayOfDouble;
    case 1: 
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 127.0D;
        paramDouble6 = 38.0D;
      }
      break;
    }
    for (;;)
    {
      arrayOfDouble = f(paramDouble1, paramDouble2);
      return a(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
      arrayOfDouble = f(paramDouble1, paramDouble2);
      return a(arrayOfDouble[0], arrayOfDouble[1]);
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 129.0D;
        paramDouble6 = 0.0D;
      }
      for (;;)
      {
        return c(paramDouble1, paramDouble2, paramDouble3, paramDouble6);
        arrayOfDouble = f(paramDouble1, paramDouble2);
        return b(arrayOfDouble[0], arrayOfDouble[1]);
        return f(paramDouble1, paramDouble2);
        if (paramDouble5 <= 0.0D)
        {
          paramDouble3 = 127.0D;
          paramDouble6 = 38.0D;
        }
        for (;;)
        {
          return d(paramDouble1, paramDouble2, paramDouble3, paramDouble6);
          return g(paramDouble1, paramDouble2);
          if (paramDouble5 <= 0.0D)
          {
            paramDouble3 = 129.0D;
            paramDouble6 = 0.0D;
          }
          for (;;)
          {
            arrayOfDouble = f(paramDouble1, paramDouble2);
            return b(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
            return h(paramDouble1, paramDouble2);
            return e(arrayOfDouble[0], arrayOfDouble[1]);
            arrayOfDouble = f(paramDouble1, paramDouble2);
            return d(arrayOfDouble[0], arrayOfDouble[1]);
            paramDouble3 = paramDouble5;
          }
          paramDouble3 = paramDouble5;
        }
        paramDouble3 = paramDouble5;
      }
      paramDouble3 = paramDouble5;
    }
  }
  
  public double[] f(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    switch (paramInt)
    {
    case 6: 
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 127.0D;
        paramDouble6 = 38.0D;
      }
      break;
    }
    for (;;)
    {
      return a(paramDouble1, paramDouble2, paramDouble3, paramDouble6);
      return a(paramDouble1, paramDouble2);
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 129.0D;
        paramDouble6 = 0.0D;
      }
      for (;;)
      {
        double[] arrayOfDouble = c(paramDouble1, paramDouble2);
        return c(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
        return b(paramDouble1, paramDouble2);
        return c(paramDouble1, paramDouble2);
        if (paramDouble5 <= 0.0D)
        {
          paramDouble3 = 127.0D;
          paramDouble6 = 38.0D;
        }
        for (;;)
        {
          arrayOfDouble = c(paramDouble1, paramDouble2);
          return d(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
          arrayOfDouble = c(paramDouble1, paramDouble2);
          return g(arrayOfDouble[0], arrayOfDouble[1]);
          if (paramDouble5 <= 0.0D)
          {
            paramDouble3 = 129.0D;
            paramDouble6 = 0.0D;
          }
          for (;;)
          {
            return b(paramDouble1, paramDouble2, paramDouble3, paramDouble6);
            arrayOfDouble = c(paramDouble1, paramDouble2);
            return h(arrayOfDouble[0], arrayOfDouble[1]);
            arrayOfDouble = c(paramDouble1, paramDouble2);
            return e(arrayOfDouble[0], arrayOfDouble[1]);
            return d(paramDouble1, paramDouble2);
            paramDouble3 = paramDouble5;
          }
          paramDouble3 = paramDouble5;
        }
        paramDouble3 = paramDouble5;
      }
      paramDouble3 = paramDouble5;
    }
  }
  
  public double[] g(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    double d1;
    switch (paramInt)
    {
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 127.0D;
        paramDouble6 = 38.0D;
      }
      arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return a(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 2: 
      arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return a(arrayOfDouble[0], arrayOfDouble[1]);
    case 3: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 129.0D;
        paramDouble6 = 0.0D;
      }
      arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return c(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 4: 
      arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return b(arrayOfDouble[0], arrayOfDouble[1]);
    case 5: 
      return h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
    case 6: 
      arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return f(arrayOfDouble[0], arrayOfDouble[1]);
    case 7: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 127.0D;
        paramDouble6 = 38.0D;
      }
      arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return d(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 8: 
      arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return g(arrayOfDouble[0], arrayOfDouble[1]);
    case 9: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 129.0D;
        paramDouble6 = 0.0D;
      }
      arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return b(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 10: 
      arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return h(arrayOfDouble[0], arrayOfDouble[1]);
    case 11: 
      arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return e(arrayOfDouble[0], arrayOfDouble[1]);
    }
    double[] arrayOfDouble = h(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
    arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
    return d(arrayOfDouble[0], arrayOfDouble[1]);
  }
  
  public double[] h(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    switch (paramInt)
    {
    case 2: 
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 127.0D;
        paramDouble6 = 38.0D;
      }
      break;
    }
    for (;;)
    {
      double[] arrayOfDouble = m(paramDouble1, paramDouble2);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return a(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 129.0D;
        paramDouble6 = 0.0D;
      }
      for (;;)
      {
        arrayOfDouble = m(paramDouble1, paramDouble2);
        return c(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
        arrayOfDouble = m(paramDouble1, paramDouble2);
        arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
        return b(arrayOfDouble[0], arrayOfDouble[1]);
        return m(paramDouble1, paramDouble2);
        arrayOfDouble = m(paramDouble1, paramDouble2);
        return f(arrayOfDouble[0], arrayOfDouble[1]);
        if (paramDouble5 <= 0.0D)
        {
          paramDouble3 = 127.0D;
          paramDouble6 = 38.0D;
        }
        for (;;)
        {
          arrayOfDouble = m(paramDouble1, paramDouble2);
          return d(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
          arrayOfDouble = m(paramDouble1, paramDouble2);
          return g(arrayOfDouble[0], arrayOfDouble[1]);
          if (paramDouble5 <= 0.0D)
          {
            paramDouble3 = 129.0D;
            paramDouble6 = 0.0D;
          }
          for (;;)
          {
            arrayOfDouble = m(paramDouble1, paramDouble2);
            arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
            return b(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
            arrayOfDouble = m(paramDouble1, paramDouble2);
            return h(arrayOfDouble[0], arrayOfDouble[1]);
            arrayOfDouble = m(paramDouble1, paramDouble2);
            return e(arrayOfDouble[0], arrayOfDouble[1]);
            arrayOfDouble = m(paramDouble1, paramDouble2);
            arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
            return d(arrayOfDouble[0], arrayOfDouble[1]);
            paramDouble3 = paramDouble5;
          }
          paramDouble3 = paramDouble5;
        }
        paramDouble3 = paramDouble5;
      }
      paramDouble3 = paramDouble5;
    }
  }
  
  public double[] i(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    switch (paramInt)
    {
    case 10: 
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 127.0D;
        paramDouble6 = 38.0D;
      }
      break;
    }
    for (;;)
    {
      double[] arrayOfDouble = n(paramDouble1, paramDouble2);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return a(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
      arrayOfDouble = n(paramDouble1, paramDouble2);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return a(arrayOfDouble[0], arrayOfDouble[1]);
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 129.0D;
        paramDouble6 = 0.0D;
      }
      for (;;)
      {
        arrayOfDouble = n(paramDouble1, paramDouble2);
        return c(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
        arrayOfDouble = n(paramDouble1, paramDouble2);
        arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
        return b(arrayOfDouble[0], arrayOfDouble[1]);
        return n(paramDouble1, paramDouble2);
        arrayOfDouble = n(paramDouble1, paramDouble2);
        return f(arrayOfDouble[0], arrayOfDouble[1]);
        if (paramDouble5 <= 0.0D)
        {
          paramDouble3 = 127.0D;
          paramDouble6 = 38.0D;
        }
        for (;;)
        {
          arrayOfDouble = n(paramDouble1, paramDouble2);
          return d(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
          arrayOfDouble = n(paramDouble1, paramDouble2);
          return g(arrayOfDouble[0], arrayOfDouble[1]);
          if (paramDouble5 <= 0.0D)
          {
            paramDouble3 = 129.0D;
            paramDouble6 = 0.0D;
          }
          for (;;)
          {
            arrayOfDouble = n(paramDouble1, paramDouble2);
            arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
            return b(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
            arrayOfDouble = n(paramDouble1, paramDouble2);
            return e(arrayOfDouble[0], arrayOfDouble[1]);
            arrayOfDouble = n(paramDouble1, paramDouble2);
            arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
            return d(arrayOfDouble[0], arrayOfDouble[1]);
            paramDouble3 = paramDouble5;
          }
          paramDouble3 = paramDouble5;
        }
        paramDouble3 = paramDouble5;
      }
      paramDouble3 = paramDouble5;
    }
  }
  
  public double[] j(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    double d1;
    switch (paramInt)
    {
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 127.0D;
        paramDouble6 = 38.0D;
      }
      arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return a(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 2: 
      arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return a(arrayOfDouble[0], arrayOfDouble[1]);
    case 3: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 129.0D;
        paramDouble6 = 0.0D;
      }
      arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
      return c(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 4: 
      arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return b(arrayOfDouble[0], arrayOfDouble[1]);
    case 5: 
      arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return c(arrayOfDouble[0], arrayOfDouble[1]);
    case 6: 
      return g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
    case 7: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 127.0D;
        paramDouble6 = 38.0D;
      }
      arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
      return d(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 8: 
      arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
      return g(arrayOfDouble[0], arrayOfDouble[1]);
    case 9: 
      d1 = paramDouble5;
      if (paramDouble5 <= 0.0D)
      {
        d1 = 129.0D;
        paramDouble6 = 0.0D;
      }
      arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return b(arrayOfDouble[0], arrayOfDouble[1], d1, paramDouble6);
    case 10: 
      arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
      return h(arrayOfDouble[0], arrayOfDouble[1]);
    case 11: 
      arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
      return e(arrayOfDouble[0], arrayOfDouble[1]);
    }
    double[] arrayOfDouble = g(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
    return d(arrayOfDouble[0], arrayOfDouble[1]);
  }
  
  public double[] k(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    switch (paramInt)
    {
    case 11: 
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 127.0D;
        paramDouble6 = 38.0D;
      }
      break;
    }
    for (;;)
    {
      double[] arrayOfDouble = j(paramDouble1, paramDouble2);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return a(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
      arrayOfDouble = j(paramDouble1, paramDouble2);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return a(arrayOfDouble[0], arrayOfDouble[1]);
      if (paramDouble5 <= 0.0D) {}
      arrayOfDouble = f(paramDouble1, paramDouble2, paramDouble3, paramDouble4);
      return e(arrayOfDouble[0], arrayOfDouble[1]);
      arrayOfDouble = j(paramDouble1, paramDouble2);
      arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
      return b(arrayOfDouble[0], arrayOfDouble[1]);
      return j(paramDouble1, paramDouble2);
      arrayOfDouble = j(paramDouble1, paramDouble2);
      return f(arrayOfDouble[0], arrayOfDouble[1]);
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 127.0D;
        paramDouble6 = 38.0D;
      }
      for (;;)
      {
        arrayOfDouble = j(paramDouble1, paramDouble2);
        return d(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
        arrayOfDouble = j(paramDouble1, paramDouble2);
        return g(arrayOfDouble[0], arrayOfDouble[1]);
        if (paramDouble5 <= 0.0D)
        {
          paramDouble3 = 129.0D;
          paramDouble6 = 0.0D;
        }
        for (;;)
        {
          arrayOfDouble = j(paramDouble1, paramDouble2);
          arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
          return b(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
          arrayOfDouble = j(paramDouble1, paramDouble2);
          return h(arrayOfDouble[0], arrayOfDouble[1]);
          arrayOfDouble = j(paramDouble1, paramDouble2);
          arrayOfDouble = f(arrayOfDouble[0], arrayOfDouble[1]);
          return d(arrayOfDouble[0], arrayOfDouble[1]);
          paramDouble3 = paramDouble5;
        }
        paramDouble3 = paramDouble5;
      }
      paramDouble3 = paramDouble5;
    }
  }
  
  public double[] l(double paramDouble1, double paramDouble2, int paramInt, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    switch (paramInt)
    {
    default: 
      return new double[] { paramDouble1, paramDouble2 };
    case 1: 
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 127.0D;
        paramDouble6 = 38.0D;
      }
      break;
    }
    for (;;)
    {
      double[] arrayOfDouble = i(paramDouble1, paramDouble2);
      return a(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
      arrayOfDouble = i(paramDouble1, paramDouble2);
      return a(arrayOfDouble[0], arrayOfDouble[1]);
      if (paramDouble5 <= 0.0D)
      {
        paramDouble3 = 129.0D;
        paramDouble6 = 0.0D;
      }
      for (;;)
      {
        arrayOfDouble = i(paramDouble1, paramDouble2);
        arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
        return c(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
        arrayOfDouble = i(paramDouble1, paramDouble2);
        return b(arrayOfDouble[0], arrayOfDouble[1]);
        arrayOfDouble = i(paramDouble1, paramDouble2);
        return c(arrayOfDouble[0], arrayOfDouble[1]);
        return i(paramDouble1, paramDouble2);
        if (paramDouble5 <= 0.0D)
        {
          paramDouble3 = 127.0D;
          paramDouble6 = 38.0D;
        }
        for (;;)
        {
          arrayOfDouble = i(paramDouble1, paramDouble2);
          arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
          return d(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
          arrayOfDouble = i(paramDouble1, paramDouble2);
          arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
          return g(arrayOfDouble[0], arrayOfDouble[1]);
          if (paramDouble5 <= 0.0D)
          {
            paramDouble3 = 129.0D;
            paramDouble6 = 0.0D;
          }
          for (;;)
          {
            arrayOfDouble = i(paramDouble1, paramDouble2);
            return b(arrayOfDouble[0], arrayOfDouble[1], paramDouble3, paramDouble6);
            arrayOfDouble = i(paramDouble1, paramDouble2);
            arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
            return h(arrayOfDouble[0], arrayOfDouble[1]);
            arrayOfDouble = i(paramDouble1, paramDouble2);
            arrayOfDouble = c(arrayOfDouble[0], arrayOfDouble[1]);
            return e(arrayOfDouble[0], arrayOfDouble[1]);
            paramDouble3 = paramDouble5;
          }
          paramDouble3 = paramDouble5;
        }
        paramDouble3 = paramDouble5;
      }
      paramDouble3 = paramDouble5;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.d.c
 * JD-Core Version:    0.7.0.1
 */