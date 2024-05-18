import com.google.ads.util.a;
import java.lang.ref.WeakReference;

public final class x
  implements Runnable
{
  private WeakReference<d> a;
  
  public x(d paramd)
  {
    this.a = new WeakReference(paramd);
  }
  
  public final void run()
  {
    d locald = (d)this.a.get();
    if (locald == null)
    {
      a.a("The ad must be gone, so cancelling the refresh timer.");
      return;
    }
    locald.x();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     x
 * JD-Core Version:    0.7.0.1
 */