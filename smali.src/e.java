import android.os.Bundle;
import java.util.HashMap;

public final class e
{
  private String a;
  private HashMap<String, String> b;
  
  public e(Bundle paramBundle)
  {
    this.a = paramBundle.getString("action");
    paramBundle = paramBundle.getSerializable("params");
    if ((paramBundle instanceof HashMap)) {}
    for (paramBundle = (HashMap)paramBundle;; paramBundle = null)
    {
      this.b = paramBundle;
      return;
    }
  }
  
  public e(String paramString)
  {
    this.a = paramString;
  }
  
  public e(String paramString, HashMap<String, String> paramHashMap)
  {
    this(paramString);
    this.b = paramHashMap;
  }
  
  public final Bundle a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("action", this.a);
    localBundle.putSerializable("params", this.b);
    return localBundle;
  }
  
  public final String b()
  {
    return this.a;
  }
  
  public final HashMap<String, String> c()
  {
    return this.b;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     e
 * JD-Core Version:    0.7.0.1
 */