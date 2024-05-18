package com.kt.olleh.inapp.util;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.kt.olleh.inapp.Config.Config;
import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import java.util.Stack;
import junit.framework.Assert;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class UIParser
{
  private static final String TAG = "UIParser";
  private Context mContext;
  private Hashtable<String, Integer> mHash;
  private int mIndex;
  private Stack mLayoutStack;
  
  public UIParser(Context paramContext)
  {
    this.mContext = paramContext;
    this.mHash = new Hashtable();
    this.mLayoutStack = new Stack();
    this.mIndex = 0;
  }
  
  private View createView(XmlPullParser paramXmlPullParser)
  {
    Object localObject2 = paramXmlPullParser.getName();
    Object localObject1 = null;
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    if (((String)localObject2).equals("LinearLayout")) {
      paramXmlPullParser = new LinearLayout(this.mContext);
    }
    while (paramXmlPullParser == null)
    {
      localObject1 = null;
      return localObject1;
      if (((String)localObject2).equals("TextView"))
      {
        paramXmlPullParser = new TextView(this.mContext);
      }
      else if (((String)localObject2).equals("ImageView"))
      {
        paramXmlPullParser = new ImageView(this.mContext);
      }
      else if (((String)localObject2).equals("Button"))
      {
        paramXmlPullParser = new Button(this.mContext);
      }
      else if (((String)localObject2).equals("EditText"))
      {
        paramXmlPullParser = new EditText(this.mContext);
      }
      else
      {
        Assert.fail("Unhandled tag:" + (String)localObject2);
        paramXmlPullParser = (XmlPullParser)localObject1;
      }
    }
    localObject1 = findAttribute(localAttributeSet, "android:id");
    if (localObject1 != null) {
      setID(paramXmlPullParser, (String)localObject1);
    }
    localObject1 = findAttribute(localAttributeSet, "android:background");
    if (localObject1 != null)
    {
      if (((String)localObject1).startsWith("#")) {
        paramXmlPullParser.setBackgroundColor(Color.parseColor((String)localObject1));
      }
    }
    else
    {
      label231:
      localObject1 = findAttribute(localAttributeSet, "android:visibility");
      if (localObject1 != null)
      {
        if (!((String)localObject1).equals("gone")) {
          break label607;
        }
        paramXmlPullParser.setVisibility(8);
      }
      label262:
      if (!(paramXmlPullParser instanceof LinearLayout)) {
        break label671;
      }
      localObject1 = (LinearLayout)paramXmlPullParser;
      localObject2 = findAttribute(localAttributeSet, "android:orientation");
      if (localObject2 != null)
      {
        if (!((String)localObject2).equals("horizontal")) {
          break label643;
        }
        ((LinearLayout)localObject1).setOrientation(0);
      }
      label306:
      localObject2 = findAttribute(localAttributeSet, "android:gravity");
      if (localObject2 != null)
      {
        if (!((String)localObject2).equals("center")) {
          break label662;
        }
        ((LinearLayout)localObject1).setGravity(17);
      }
    }
    label607:
    label1148:
    do
    {
      Object localObject3;
      Object localObject4;
      String str1;
      for (;;)
      {
        localObject1 = paramXmlPullParser;
        if (this.mLayoutStack.size() <= 0) {
          break;
        }
        setPadding(paramXmlPullParser, localAttributeSet);
        paramXmlPullParser.setLayoutParams(loadLayoutParams(localAttributeSet, (ViewGroup)this.mLayoutStack.peek()));
        return paramXmlPullParser;
        if ((paramXmlPullParser instanceof EditText))
        {
          localObject1 = (EditText)paramXmlPullParser;
          localObject2 = new StateListDrawable();
          localObject3 = Drawable.createFromStream(getClass().getResourceAsStream("/drawable-hdpi/a_inputbox_p.png"), "a_inputbox_p");
          ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
          localObject3 = Drawable.createFromStream(getClass().getResourceAsStream("/drawable-hdpi/a_inputbox_f.png"), "a_inputbox_f");
          ((StateListDrawable)localObject2).addState(new int[] { 16842908 }, (Drawable)localObject3);
          localObject3 = Drawable.createFromStream(getClass().getResourceAsStream("/drawable-hdpi/a_inputbox_n.png"), "a_inputbox_n");
          ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
          ((EditText)localObject1).setBackgroundDrawable((Drawable)localObject2);
          break label231;
        }
        if ((paramXmlPullParser instanceof Button))
        {
          localObject1 = (Button)paramXmlPullParser;
          localObject2 = new StateListDrawable();
          localObject3 = Drawable.createFromStream(getClass().getResourceAsStream("/drawable-hdpi/popup_btn_sel.png"), "popup_btn_sel");
          ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
          localObject3 = Drawable.createFromStream(getClass().getResourceAsStream("/drawable-hdpi/popup_btn.png"), "popup_btn");
          ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
          ((Button)localObject1).setBackgroundDrawable((Drawable)localObject2);
          break label231;
        }
        paramXmlPullParser.setBackgroundDrawable(Drawable.createFromStream(openFile((String)localObject1), (String)localObject1));
        break label231;
        if (((String)localObject1).equals("visible"))
        {
          paramXmlPullParser.setVisibility(0);
          break label262;
        }
        if (!((String)localObject1).equals("invisible")) {
          break label262;
        }
        paramXmlPullParser.setVisibility(4);
        break label262;
        if (!((String)localObject2).equals("vertical")) {
          break label306;
        }
        ((LinearLayout)localObject1).setOrientation(1);
        break label306;
        ((LinearLayout)localObject1).setGravity(5);
        continue;
        if (!(paramXmlPullParser instanceof EditText)) {
          break label933;
        }
        localObject1 = (EditText)paramXmlPullParser;
        localObject2 = findAttribute(localAttributeSet, "android:text");
        localObject3 = findAttribute(localAttributeSet, "android:textSize");
        localObject4 = findAttribute(localAttributeSet, "android:textColor");
        str1 = findAttribute(localAttributeSet, "android:gravity");
        if (localObject2 != null) {
          ((EditText)localObject1).setText(((String)localObject2).replace("\\n", "\n"));
        }
        if (localObject3 != null) {
          ((EditText)localObject1).setTextSize(readSize((String)localObject3));
        }
        if (localObject4 != null) {
          ((EditText)localObject1).setTextColor(Color.parseColor((String)localObject4));
        }
        if (str1 != null)
        {
          setGravity((View)localObject1, str1);
          setPadding((View)localObject1, localAttributeSet);
          localObject2 = findAttribute(localAttributeSet, "android:maxLines");
          if (localObject2 != null) {
            ((EditText)localObject1).setMaxLines(readInt((String)localObject2));
          }
          localObject2 = findAttribute(localAttributeSet, "android:singleLine");
          if ((localObject2 != null) && (((String)localObject2).equals("true"))) {
            ((EditText)localObject1).setSingleLine(true);
          }
          localObject2 = findAttribute(localAttributeSet, "android:imeOptions");
          if (localObject2 != null)
          {
            if (!((String)localObject2).equals("actionNext")) {
              break label923;
            }
            ((EditText)localObject1).setImeOptions(5);
          }
        }
        for (;;)
        {
          if (findAttribute(localAttributeSet, "android:inputType") == null) {
            break label931;
          }
          ((EditText)localObject1).setInputType(129);
          break;
          ((EditText)localObject1).setGravity(19);
          break label789;
          ((EditText)localObject1).setImeOptions(6);
        }
      }
      if ((paramXmlPullParser instanceof TextView))
      {
        localObject1 = (TextView)paramXmlPullParser;
        localObject3 = findAttribute(localAttributeSet, "android:text");
        localObject4 = findAttribute(localAttributeSet, "android:textSize");
        str1 = findAttribute(localAttributeSet, "android:textColor");
        localObject2 = findAttribute(localAttributeSet, "android:gravity");
        String str2 = findAttribute(localAttributeSet, "android:ellipsize");
        String str3 = findAttribute(localAttributeSet, "android:singleLine");
        if (localObject3 != null) {
          ((TextView)localObject1).setText(((String)localObject3).replace("\\n", "\n"));
        }
        if (str3 != null)
        {
          if (str3.equals("true")) {
            ((TextView)localObject1).setSingleLine(true);
          }
        }
        else
        {
          if (str2 != null)
          {
            if (!str2.equals("end")) {
              break label1148;
            }
            ((TextView)localObject1).setEllipsize(TextUtils.TruncateAt.END);
          }
          if (localObject4 != null) {
            ((TextView)localObject1).setTextSize(readSize((String)localObject4));
          }
          if (str1 != null)
          {
            if (!str1.startsWith("#")) {
              break label1170;
            }
            ((TextView)localObject1).setTextColor(Color.parseColor(str1));
          }
          if (localObject2 == null) {
            break label1322;
          }
          ((TextView)localObject1).setGravity(17);
        }
        for (;;)
        {
          ((TextView)localObject1).setLineSpacing(0.0F, 1.15F);
          break;
          ((TextView)localObject1).setSingleLine(false);
          break label1049;
          if (!str2.equals("marque")) {
            break label1073;
          }
          ((TextView)localObject1).setEllipsize(TextUtils.TruncateAt.MARQUEE);
          break label1073;
          localObject3 = new int[1];
          int i = Color.parseColor("#FFFFFF");
          int j = Color.parseColor("#171717");
          localObject3 = new ColorStateList(new int[][] { { 16842919 }, localObject3 }, new int[] { i, j });
          ((TextView)localObject1).setClickable(true);
          ((TextView)localObject1).setTextColor((ColorStateList)localObject3);
          localObject3 = new StateListDrawable();
          localObject4 = Drawable.createFromStream(getClass().getResourceAsStream("/drawable-hdpi/e_popup_list_p.png"), "e_popup_list_bg");
          ((StateListDrawable)localObject3).addState(new int[] { 16842919 }, (Drawable)localObject4);
          localObject4 = Drawable.createFromStream(getClass().getResourceAsStream("/drawable-hdpi/e_popup_list_bg.png"), "e_popup_list_bg");
          ((StateListDrawable)localObject3).addState(new int[0], (Drawable)localObject4);
          ((TextView)localObject1).setBackgroundDrawable((Drawable)localObject3);
          break label1115;
          ((TextView)localObject1).setGravity(19);
        }
      }
    } while (!(paramXmlPullParser instanceof Button));
    label643:
    label662:
    label671:
    label931:
    label933:
    label1073:
    label1115:
    localObject1 = (Button)paramXmlPullParser;
    label789:
    label923:
    label1322:
    localObject2 = findAttribute(localAttributeSet, "android:gravity");
    label1049:
    if (localObject2 != null)
    {
      if (!((String)localObject2).equals("center")) {
        break label1432;
      }
      ((Button)localObject1).setGravity(17);
    }
    for (;;)
    {
      label1170:
      localObject2 = findAttribute(localAttributeSet, "android:textSize");
      if (localObject2 != null) {
        ((Button)localObject1).setTextSize(readSize((String)localObject2));
      }
      localObject2 = findAttribute(localAttributeSet, "android:textColor");
      if (localObject2 == null) {
        break;
      }
      ((Button)localObject1).setTextColor(Color.parseColor((String)localObject2));
      break;
      label1432:
      ((Button)localObject1).setGravity(5);
    }
  }
  
  private int dipToInt(float paramFloat)
  {
    if (paramFloat == 0.0F) {
      return 0;
    }
    return (int)TypedValue.applyDimension(1, paramFloat, this.mContext.getResources().getDisplayMetrics());
  }
  
  private String findAttribute(AttributeSet paramAttributeSet, String paramString)
  {
    int i = 0;
    for (;;)
    {
      if (i >= paramAttributeSet.getAttributeCount())
      {
        i = paramString.indexOf(":");
        if (i == -1) {
          break;
        }
        return paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", paramString.substring(i + 1));
      }
      if (paramAttributeSet.getAttributeName(i).equals(paramString)) {
        return paramAttributeSet.getAttributeValue(i);
      }
      i += 1;
    }
    return null;
  }
  
  private String findPath(String paramString)
  {
    return findPath(paramString, false);
  }
  
  private String findPath(String paramString, boolean paramBoolean)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    String[] arrayOfString;
    do
    {
      do
      {
        do
        {
          return str;
          str = paramString;
        } while (!paramString.startsWith("@drawable/"));
        arrayOfString = paramString.split("/");
        str = paramString;
      } while (arrayOfString == null);
      str = paramString;
    } while (arrayOfString.length <= 1);
    if (paramBoolean) {
      return "/drawable-hdpi/" + arrayOfString[1] + ".9.png";
    }
    return "/drawable-hdpi/" + arrayOfString[1] + ".png";
  }
  
  private View inflate(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    this.mLayoutStack.clear();
    this.mHash.clear();
    this.mIndex = 0;
    Stack localStack = new Stack();
    int i = paramXmlPullParser.getEventType();
    Object localObject1 = null;
    if (i == 1) {
      return localObject1;
    }
    Object localObject2 = localObject1;
    switch (i)
    {
    default: 
      localObject2 = localObject1;
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      localObject1 = localObject2;
      break;
      localStack.clear();
      localObject2 = localObject1;
      continue;
      localStack.push(new StringBuffer());
      View localView = createView(paramXmlPullParser);
      if (localView == null) {
        break;
      }
      if (localObject1 == null) {
        localObject1 = localView;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (!(localView instanceof ViewGroup)) {
          break;
        }
        this.mLayoutStack.push((ViewGroup)localView);
        localObject2 = localObject1;
        break;
        ((ViewGroup)this.mLayoutStack.peek()).addView(localView);
      }
      ((StringBuffer)localStack.peek()).append(paramXmlPullParser.getText());
      localObject2 = localObject1;
      continue;
      localStack.pop();
      localObject2 = localObject1;
      if (isLayout(paramXmlPullParser.getName()))
      {
        this.mLayoutStack.pop();
        localObject2 = localObject1;
      }
    }
  }
  
  private boolean isLayout(String paramString)
  {
    return paramString.endsWith("Layout");
  }
  
  private ViewGroup.LayoutParams loadLayoutParams(AttributeSet paramAttributeSet, ViewGroup paramViewGroup)
  {
    Object localObject = null;
    String str1 = findAttribute(paramAttributeSet, "android:layout_width");
    String str2 = findAttribute(paramAttributeSet, "android:layout_height");
    int i = readSize(str1);
    int j = readSize(str2);
    if ((paramViewGroup instanceof LinearLayout)) {
      localObject = new LinearLayout.LayoutParams(i, j);
    }
    paramViewGroup = (ViewGroup)localObject;
    if ((localObject instanceof LinearLayout.LayoutParams))
    {
      paramViewGroup = (LinearLayout.LayoutParams)localObject;
      localObject = findAttribute(paramAttributeSet, "android:layout_gravity");
      if (localObject != null) {
        if (!((String)localObject).equals("center")) {
          break label228;
        }
      }
    }
    label228:
    for (paramViewGroup.gravity = 17;; paramViewGroup.gravity = 5)
    {
      localObject = findAttribute(paramAttributeSet, "android:layout_weight");
      if (localObject != null) {
        paramViewGroup.weight = Float.parseFloat((String)localObject);
      }
      localObject = findAttribute(paramAttributeSet, "android:layout_marginTop");
      str1 = findAttribute(paramAttributeSet, "android:layout_marginLeft");
      str2 = findAttribute(paramAttributeSet, "android:layout_marginRight");
      paramAttributeSet = findAttribute(paramAttributeSet, "android:layout_marginBottom");
      if (localObject != null) {
        paramViewGroup.topMargin = readDPSize((String)localObject);
      }
      if (str1 != null) {
        paramViewGroup.leftMargin = readDPSize(str1);
      }
      if (str2 != null) {
        paramViewGroup.rightMargin = readDPSize(str2);
      }
      if (paramAttributeSet != null) {
        paramViewGroup.bottomMargin = readDPSize(paramAttributeSet);
      }
      return paramViewGroup;
    }
  }
  
  private InputStream openFile(String paramString)
  {
    InputStream localInputStream2 = getClass().getResourceAsStream(findPath(paramString));
    InputStream localInputStream1 = localInputStream2;
    if (localInputStream2 == null) {
      localInputStream1 = getClass().getResourceAsStream(findPath(paramString, true));
    }
    return localInputStream1;
  }
  
  private int readDPSize(String paramString)
  {
    if (paramString != null) {
      try
      {
        if ((paramString.length() > 3) && (paramString.endsWith("dip")))
        {
          int i = dipToInt(Float.parseFloat(paramString.substring(0, paramString.length() - 3)));
          return i;
        }
      }
      catch (NumberFormatException paramString)
      {
        return -1;
      }
    }
    return Integer.parseInt(paramString);
  }
  
  private int readFontSize(String paramString)
  {
    try
    {
      float f = Float.parseFloat(paramString.substring(0, paramString.length() - 3));
      return (int)(float)(f / 1.5D);
    }
    catch (NumberFormatException paramString) {}
    return -1;
  }
  
  private int readInt(String paramString)
  {
    int i = 0;
    if (paramString != null) {}
    try
    {
      i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString)
    {
      Config.LogD("UIParser", paramString.toString(), paramString);
    }
    return 0;
  }
  
  private int readSize(String paramString)
  {
    int i = -1;
    if ("wrap_content".equals(paramString)) {
      i = -2;
    }
    while ("fill_parent".equals(paramString)) {
      return i;
    }
    if (paramString != null) {
      try
      {
        if ((paramString.length() > 3) && (paramString.endsWith("dip")))
        {
          i = dipToInt(Float.parseFloat(paramString.substring(0, paramString.length() - 3)));
          return i;
        }
      }
      catch (NumberFormatException paramString)
      {
        return -1;
      }
    }
    if ((paramString != null) && (paramString.length() > 2) && (paramString.endsWith("pt"))) {
      return (int)((float)(Float.parseFloat(paramString.substring(0, paramString.length() - 2)) / 1.5D) * 1.0F);
    }
    return Integer.parseInt(paramString);
  }
  
  private int setGravity(View paramView, String paramString)
  {
    if (paramString != null)
    {
      paramView = paramString.split("|");
      int k = 0;
      if (paramView != null)
      {
        int j = 0;
        if (j >= paramView.length) {
          return k;
        }
        int i;
        if (paramView[j].equalsIgnoreCase("top")) {
          i = k | 0x30;
        }
        for (;;)
        {
          j += 1;
          k = i;
          break;
          if (paramView[j].equalsIgnoreCase("bottom"))
          {
            i = k | 0x50;
          }
          else if (paramView[j].equalsIgnoreCase("left"))
          {
            i = k | 0x3;
          }
          else if (paramView[j].equalsIgnoreCase("right"))
          {
            i = k | 0x5;
          }
          else if (paramView[j].equalsIgnoreCase("center_vertical"))
          {
            i = k | 0x10;
          }
          else if (paramView[j].equalsIgnoreCase("fill_vertical"))
          {
            i = k | 0x70;
          }
          else if (paramView[j].equalsIgnoreCase("center_horizontal"))
          {
            i = k | 0x1;
          }
          else if (paramView[j].equalsIgnoreCase("fill_horizontal"))
          {
            i = k | 0x7;
          }
          else if (paramView[j].equalsIgnoreCase("center"))
          {
            i = k | 0x11;
          }
          else if (paramView[j].equalsIgnoreCase("fill"))
          {
            i = k | 0x77;
          }
          else if (paramView[j].equalsIgnoreCase("clip_vertical"))
          {
            i = k | 0x80;
          }
          else
          {
            i = k;
            if (paramView[j].equalsIgnoreCase("clip_horizontal")) {
              i = k | 0x8;
            }
          }
        }
      }
    }
    return 17;
  }
  
  private void setPadding(View paramView, AttributeSet paramAttributeSet)
  {
    int j = 0;
    int i = 0;
    int m = 0;
    int k = 0;
    String str = findAttribute(paramAttributeSet, "android:padding");
    if (str != null)
    {
      i = readDPSize(str);
      k = i;
      m = i;
      j = i;
      int n = i;
      i = j;
      j = n;
    }
    str = findAttribute(paramAttributeSet, "android:paddingTop");
    if (str != null) {
      m = readDPSize(str);
    }
    str = findAttribute(paramAttributeSet, "android:paddingBottom");
    if (str != null) {
      k = readDPSize(str);
    }
    str = findAttribute(paramAttributeSet, "android:paddingLeft");
    if (str != null) {
      j = readDPSize(str);
    }
    paramAttributeSet = findAttribute(paramAttributeSet, "android:paddingRight");
    if (paramAttributeSet != null) {
      i = readDPSize(paramAttributeSet);
    }
    paramView.setPadding(j, m, i, k);
  }
  
  public View Start(String paramString)
  {
    try
    {
      XmlPullParser localXmlPullParser = XmlPullParserFactory.newInstance().newPullParser();
      localXmlPullParser.setInput(getClass().getResourceAsStream(paramString), "utf-8");
      paramString = inflate(localXmlPullParser);
      return paramString;
    }
    catch (XmlPullParserException paramString)
    {
      Config.LogD("UIParser", paramString.toString(), paramString);
      return null;
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        Config.LogD("UIParser", paramString.toString(), paramString);
      }
    }
  }
  
  public void clear()
  {
    if (this.mHash != null)
    {
      this.mHash.clear();
      this.mHash = null;
    }
    this.mContext = null;
  }
  
  public int getID(String paramString)
  {
    if (this.mHash == null) {
      return -1;
    }
    return ((Integer)this.mHash.get(paramString)).intValue();
  }
  
  public void setID(View paramView, String paramString)
  {
    paramString = paramString.split("/");
    if (paramString.length <= 0) {
      return;
    }
    paramView.setId(this.mIndex);
    this.mHash.put(paramString[1], new Integer(this.mIndex));
    this.mIndex += 1;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.util.UIParser
 * JD-Core Version:    0.7.0.1
 */