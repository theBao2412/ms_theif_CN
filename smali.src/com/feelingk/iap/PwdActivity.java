package com.feelingk.iap;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.feelingk.iap.util.CommonF.LOGGER;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.CommonString.Index;
import java.io.IOException;
import java.io.InputStream;

public class PwdActivity
  extends Activity
{
  private String RES_VERT_FILE_PATH = "/res/";
  String TAG = "PwdActivity";
  InputStream btn_pad_nor = null;
  InputStream btn_pad_sel;
  int buttonHeight;
  int buttonWidth = 0;
  private String decryptPwd = null;
  Button delete = null;
  StateListDrawable deleteDrawables = new StateListDrawable();
  StateListDrawable eightDrawables = new StateListDrawable();
  EditText et1;
  EditText et2;
  EditText et3;
  EditText et4 = null;
  StateListDrawable fiveDrawables = new StateListDrawable();
  StateListDrawable fourDrawables = new StateListDrawable();
  Boolean honeyCombFlag;
  Boolean hvga = Boolean.valueOf(false);
  String inputNum = "";
  InputStream isdelete;
  Drawable iset = null;
  InputStream iset1;
  StateListDrawable nineDrawables = new StateListDrawable();
  StateListDrawable noneDrawables = new StateListDrawable();
  Drawable nor;
  int numCheck = 0;
  StateListDrawable oneDrawables = new StateListDrawable();
  TextView pwdText = null;
  Drawable sel;
  StateListDrawable sevenDrawables = new StateListDrawable();
  StateListDrawable sixDrawables = new StateListDrawable();
  StateListDrawable threeDrawables = new StateListDrawable();
  StateListDrawable twoDrawables = new StateListDrawable();
  StateListDrawable zeroDrawables = new StateListDrawable();
  
  public void checkDot()
  {
    InputStream localInputStream;
    Drawable localDrawable;
    if (this.numCheck != 0)
    {
      this.delete.setText("");
      localInputStream = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "keypad_back.png");
      localDrawable = Drawable.createFromStream(localInputStream, "none");
    }
    try
    {
      localInputStream.close();
      localDrawable.setBounds(30, 2, localDrawable.getIntrinsicWidth() + 15, localDrawable.getIntrinsicHeight() - 7);
      this.delete.setCompoundDrawables(localDrawable, null, null, null);
      if (this.numCheck == 1)
      {
        this.et1.setBackgroundDrawable(this.iset);
        return;
      }
    }
    catch (IOException localIOException)
    {
      do
      {
        for (;;)
        {
          localIOException.printStackTrace();
        }
        if (this.numCheck == 2)
        {
          this.et2.setBackgroundDrawable(this.iset);
          return;
        }
        if (this.numCheck == 3)
        {
          this.et3.setBackgroundDrawable(this.iset);
          return;
        }
      } while (this.numCheck != 4);
      this.et4.setBackgroundDrawable(this.iset);
    }
  }
  
  public void checkInputNum()
  {
    CommonF.LOGGER.e(this.TAG, "checkInputNum 들어옴");
    if (this.decryptPwd.equals(this.inputNum))
    {
      CommonF.LOGGER.e(this.TAG, "비밀번호 일치");
      if (this.inputNum.equals(this.decryptPwd))
      {
        Intent localIntent = new Intent(this, IAPActivity.class);
        localIntent.putExtra("result", this.decryptPwd);
        setResult(-1, localIntent);
      }
      finish();
      return;
    }
    CommonF.LOGGER.e(this.TAG, "패스워드 에러");
    this.pwdText.setText(CommonString.getString(CommonString.Index.RETRY_ENTER_PASSWORD));
    this.numCheck = 0;
    this.inputNum = "";
    this.et1.setBackgroundDrawable(null);
    this.et2.setBackgroundDrawable(null);
    this.et3.setBackgroundDrawable(null);
    this.et4.setBackgroundDrawable(null);
    this.delete.setCompoundDrawables(null, null, null, null);
    this.delete.setBackgroundDrawable(this.deleteDrawables);
    this.delete.setText(CommonString.getString(CommonString.Index.CANCEL));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.decryptPwd = getIntent().getExtras().getString("pwd").toString();
    this.btn_pad_sel = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "btn_pad_sel.png");
    this.btn_pad_nor = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "btn_pad_nor.png");
    this.sel = Drawable.createFromStream(this.btn_pad_sel, "btn_pad_sel");
    this.nor = Drawable.createFromStream(this.btn_pad_nor, "btn_pad_nor");
    this.iset1 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "inputbox_pw_dot.png");
    this.iset = Drawable.createFromStream(this.iset1, "inputbox_pw_dot");
    try
    {
      this.btn_pad_sel.close();
      this.btn_pad_nor.close();
      this.iset1.close();
      this.btn_pad_sel = null;
      this.btn_pad_nor = null;
      this.iset1 = null;
      paramBundle = new DisplayMetrics();
      getWindowManager().getDefaultDisplay().getMetrics(paramBundle);
      int i = paramBundle.widthPixels;
      int j = paramBundle.heightPixels;
      this.buttonWidth = (i / 4);
      this.buttonHeight = (j / 4);
      if (((i == 320) && (j == 480)) || ((i == 480) && (j == 320))) {
        this.hvga = Boolean.valueOf(true);
      }
      if (i > j)
      {
        this.honeyCombFlag = Boolean.valueOf(true);
        i = ((WindowManager)getSystemService("window")).getDefaultDisplay().getOrientation();
        CommonF.LOGGER.i(this.TAG, "rotation : " + i);
        switch (i)
        {
        default: 
          return;
        }
      }
    }
    catch (IOException paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
        continue;
        this.honeyCombFlag = Boolean.valueOf(false);
      }
      CommonF.LOGGER.i(this.TAG, "Portrait : 0");
      if (this.honeyCombFlag.booleanValue())
      {
        viewLandscape();
        return;
      }
      viewPortrait();
      return;
    }
    CommonF.LOGGER.i(this.TAG, "Landscape : 90");
    if (!this.honeyCombFlag.booleanValue())
    {
      viewPortrait();
      return;
    }
    viewLandscape();
    return;
    CommonF.LOGGER.i(this.TAG, "Portrait : 180");
    if (this.honeyCombFlag.booleanValue())
    {
      viewLandscape();
      return;
    }
    viewPortrait();
    return;
    CommonF.LOGGER.i(this.TAG, "Landscape : 270");
    if (!this.honeyCombFlag.booleanValue())
    {
      viewPortrait();
      return;
    }
    viewLandscape();
  }
  
  public void viewLandscape()
  {
    CommonF.LOGGER.i(this.TAG, "viewLandscape");
    LinearLayout localLinearLayout1 = new LinearLayout(this);
    localLinearLayout1.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    localLinearLayout1.setOrientation(0);
    localLinearLayout1.setGravity(17);
    Object localObject1 = new LinearLayout(this);
    ((LinearLayout)localObject1).setOrientation(1);
    Object localObject2 = new LinearLayout.LayoutParams(0, -1, 1.0F);
    ((LinearLayout)localObject1).setBackgroundColor(Color.parseColor("#3C3C3C"));
    ((LinearLayout)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
    ((LinearLayout)localObject1).setGravity(17);
    localLinearLayout1.addView((View)localObject1);
    localObject2 = new ImageView(this);
    Object localObject3 = new LinearLayout.LayoutParams(110, 40);
    ((LinearLayout.LayoutParams)localObject3).setMargins(0, 25, 0, 20);
    ((ImageView)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
    localObject3 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "logo_pw.png");
    ((ImageView)localObject2).setImageDrawable(Drawable.createFromStream((InputStream)localObject3, "none"));
    try
    {
      ((InputStream)localObject3).close();
      ((LinearLayout)localObject1).addView((View)localObject2);
      this.pwdText = new TextView(this);
      this.pwdText.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
      this.pwdText.setGravity(17);
      this.pwdText.setTextSize(1, 15.0F);
      this.pwdText.setTextColor(Color.parseColor("#ffffff"));
      this.pwdText.setText(CommonString.getString(CommonString.Index.T_STORE_INPUT_PASSWORD));
      ((LinearLayout)localObject1).addView(this.pwdText);
      localObject2 = new LinearLayout(this);
      localObject3 = new LinearLayout.LayoutParams(-1, -2);
      ((LinearLayout.LayoutParams)localObject3).setMargins(0, 15, 0, 20);
      ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
      localObject3 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "bg_line.png");
      ((LinearLayout)localObject2).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject3, "none"));
    }
    catch (IOException localIOException4)
    {
      try
      {
        ((InputStream)localObject3).close();
        ((LinearLayout)localObject1).addView((View)localObject2);
        localObject3 = new LinearLayout(this);
        ((LinearLayout)localObject3).setOrientation(0);
        localObject2 = new LinearLayout.LayoutParams(-1, -2);
        ((LinearLayout.LayoutParams)localObject2).setMargins(5, 0, 5, 0);
        ((LinearLayout)localObject3).setGravity(17);
        ((LinearLayout)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject2);
        ((LinearLayout)localObject1).addView((View)localObject3);
        if (this.hvga.booleanValue())
        {
          localObject2 = new LinearLayout.LayoutParams(50, 40);
          localObject1 = new LinearLayout.LayoutParams(50, 40);
          ((LinearLayout.LayoutParams)localObject1).setMargins(15, 0, 0, 0);
          ((LinearLayout.LayoutParams)localObject1).setMargins(10, 0, 0, 0);
          localObject4 = new LinearLayout(this);
          ((LinearLayout)localObject4).setFocusable(true);
          ((LinearLayout)localObject4).setFocusableInTouchMode(true);
          ((LinearLayout)localObject4).setGravity(17);
          localObject5 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "inputbox_pw.png");
          ((LinearLayout)localObject4).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject5, "none"));
        }
      }
      catch (IOException localIOException4)
      {
        try
        {
          ((InputStream)localObject5).close();
          ((LinearLayout)localObject4).setLayoutParams((ViewGroup.LayoutParams)localObject2);
          ((LinearLayout)localObject3).addView((View)localObject4);
          this.et1 = new EditText(this);
          this.et1.setImeOptions(268435456);
          this.et1.setGravity(17);
          this.et1.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
          this.et1.setBackgroundDrawable(null);
          ((LinearLayout)localObject4).addView(this.et1);
          localObject2 = new LinearLayout(this);
          ((LinearLayout)localObject2).setFocusable(true);
          ((LinearLayout)localObject2).setFocusableInTouchMode(true);
          ((LinearLayout)localObject2).setGravity(17);
          localObject4 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "inputbox_pw.png");
          ((LinearLayout)localObject2).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject4, "none"));
        }
        catch (IOException localIOException4)
        {
          try
          {
            ((InputStream)localObject4).close();
            ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
            ((LinearLayout)localObject3).addView((View)localObject2);
            this.et2 = new EditText(this);
            this.et2.setImeOptions(268435456);
            this.et2.setGravity(17);
            this.et2.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
            this.et2.setBackgroundDrawable(null);
            ((LinearLayout)localObject2).addView(this.et2);
            localObject2 = new LinearLayout(this);
            ((LinearLayout)localObject2).setFocusable(true);
            ((LinearLayout)localObject2).setFocusableInTouchMode(true);
            ((LinearLayout)localObject2).setGravity(17);
            localObject4 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "inputbox_pw.png");
            ((LinearLayout)localObject2).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject4, "none"));
          }
          catch (IOException localIOException4)
          {
            try
            {
              ((InputStream)localObject4).close();
              ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
              ((LinearLayout)localObject3).addView((View)localObject2);
              this.et3 = new EditText(this);
              this.et3.setImeOptions(268435456);
              this.et3.setGravity(17);
              this.et3.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
              this.et3.setBackgroundDrawable(null);
              ((LinearLayout)localObject2).addView(this.et3);
              localObject2 = new LinearLayout(this);
              ((LinearLayout)localObject2).setFocusable(true);
              ((LinearLayout)localObject2).setFocusableInTouchMode(true);
              ((LinearLayout)localObject2).setGravity(17);
              localObject4 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "inputbox_pw.png");
              ((LinearLayout)localObject2).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject4, "none"));
            }
            catch (IOException localIOException4)
            {
              try
              {
                for (;;)
                {
                  ((InputStream)localObject4).close();
                  ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  ((LinearLayout)localObject3).addView((View)localObject2);
                  this.et4 = new EditText(this);
                  this.et4.setImeOptions(268435456);
                  this.et4.setGravity(17);
                  this.et4.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
                  this.et4.setBackgroundDrawable(null);
                  ((LinearLayout)localObject2).addView(this.et4);
                  localObject1 = new LinearLayout(this);
                  ((LinearLayout)localObject1).setOrientation(1);
                  localObject2 = new LinearLayout.LayoutParams(0, -1, 1.0F);
                  ((LinearLayout)localObject1).setBackgroundColor(Color.parseColor("#212121"));
                  ((LinearLayout.LayoutParams)localObject2).setMargins(2, 0, 2, 0);
                  ((LinearLayout)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
                  ((LinearLayout)localObject1).setGravity(17);
                  localLinearLayout1.addView((View)localObject1);
                  localObject2 = this.oneDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.oneDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.twoDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.twoDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.threeDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.threeDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.fourDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.fourDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.fiveDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.fiveDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.sixDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.sixDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.sevenDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.sevenDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.eightDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.eightDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.nineDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.nineDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.noneDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.zeroDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.zeroDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = this.deleteDrawables;
                  localObject3 = this.sel;
                  ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
                  localObject2 = this.deleteDrawables;
                  localObject3 = this.nor;
                  ((StateListDrawable)localObject2).addState(new int[0], (Drawable)localObject3);
                  localObject2 = new LinearLayout(this);
                  ((LinearLayout)localObject2).setOrientation(1);
                  localObject3 = new LinearLayout.LayoutParams(-1, -1);
                  ((LinearLayout)localObject2).setGravity(17);
                  ((LinearLayout)localObject2).setBackgroundColor(Color.parseColor("#212121"));
                  ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
                  ((LinearLayout)localObject1).addView((View)localObject2);
                  Object localObject6 = new LinearLayout(this);
                  ((LinearLayout)localObject6).setOrientation(0);
                  LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0F);
                  localLayoutParams.topMargin = 5;
                  ((LinearLayout)localObject6).setGravity(17);
                  ((LinearLayout)localObject6).setLayoutParams(localLayoutParams);
                  ((LinearLayout)localObject2).addView((View)localObject6);
                  Object localObject7 = new LinearLayout.LayoutParams(0, this.buttonWidth - 20, 1.0F);
                  ((LinearLayout.LayoutParams)localObject7).topMargin = 1;
                  localObject1 = new LinearLayout.LayoutParams(0, this.buttonWidth - 20, 1.0F);
                  ((LinearLayout.LayoutParams)localObject1).topMargin = 1;
                  localObject3 = new Button(this);
                  ((Button)localObject3).setBackgroundDrawable(this.oneDrawables);
                  ((Button)localObject3).setGravity(17);
                  ((Button)localObject3).setText("1");
                  ((Button)localObject3).setTextSize(1, 30.0F);
                  ((Button)localObject3).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject7);
                  ((LinearLayout)localObject6).addView((View)localObject3);
                  Object localObject4 = new Button(this);
                  ((Button)localObject4).setBackgroundDrawable(this.twoDrawables);
                  ((Button)localObject4).setGravity(17);
                  ((Button)localObject4).setText("2");
                  ((Button)localObject4).setTextSize(1, 30.0F);
                  ((Button)localObject4).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject4).setLayoutParams((ViewGroup.LayoutParams)localObject7);
                  ((LinearLayout)localObject6).addView((View)localObject4);
                  Object localObject5 = new Button(this);
                  ((Button)localObject5).setBackgroundDrawable(this.threeDrawables);
                  ((Button)localObject5).setGravity(17);
                  ((Button)localObject5).setText("3");
                  ((Button)localObject5).setTextSize(1, 30.0F);
                  ((Button)localObject5).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject5).setLayoutParams((ViewGroup.LayoutParams)localObject7);
                  ((LinearLayout)localObject6).addView((View)localObject5);
                  Object localObject8 = new LinearLayout(this);
                  ((LinearLayout)localObject8).setOrientation(0);
                  ((LinearLayout)localObject8).setGravity(17);
                  ((LinearLayout)localObject8).setLayoutParams(localLayoutParams);
                  ((LinearLayout)localObject2).addView((View)localObject8);
                  localObject6 = new Button(this);
                  ((Button)localObject6).setBackgroundDrawable(this.fourDrawables);
                  ((Button)localObject6).setGravity(17);
                  ((Button)localObject6).setText("4");
                  ((Button)localObject6).setTextSize(1, 30.0F);
                  ((Button)localObject6).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject6).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  ((LinearLayout)localObject8).addView((View)localObject6);
                  localObject7 = new Button(this);
                  ((Button)localObject7).setBackgroundDrawable(this.fiveDrawables);
                  ((Button)localObject7).setGravity(17);
                  ((Button)localObject7).setText("5");
                  ((Button)localObject7).setTextSize(1, 30.0F);
                  ((Button)localObject7).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject7).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  ((LinearLayout)localObject8).addView((View)localObject7);
                  Button localButton1 = new Button(this);
                  localButton1.setBackgroundDrawable(this.sixDrawables);
                  localButton1.setGravity(17);
                  localButton1.setText("6");
                  localButton1.setTextSize(1, 30.0F);
                  localButton1.setTextColor(Color.parseColor("#ffffff"));
                  localButton1.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  ((LinearLayout)localObject8).addView(localButton1);
                  LinearLayout localLinearLayout2 = new LinearLayout(this);
                  localLinearLayout2.setOrientation(0);
                  localLinearLayout2.setGravity(17);
                  localLinearLayout2.setLayoutParams(localLayoutParams);
                  ((LinearLayout)localObject2).addView(localLinearLayout2);
                  localObject8 = new Button(this);
                  ((Button)localObject8).setBackgroundDrawable(this.sevenDrawables);
                  ((Button)localObject8).setGravity(17);
                  ((Button)localObject8).setText("7");
                  ((Button)localObject8).setTextSize(1, 30.0F);
                  ((Button)localObject8).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject8).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView((View)localObject8);
                  Button localButton2 = new Button(this);
                  localButton2.setBackgroundDrawable(this.eightDrawables);
                  localButton2.setGravity(17);
                  localButton2.setText("8");
                  localButton2.setTextSize(1, 30.0F);
                  localButton2.setTextColor(Color.parseColor("#ffffff"));
                  localButton2.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView(localButton2);
                  Button localButton3 = new Button(this);
                  localButton3.setBackgroundDrawable(this.nineDrawables);
                  localButton3.setGravity(17);
                  localButton3.setText("9");
                  localButton3.setTextSize(1, 30.0F);
                  localButton3.setTextColor(Color.parseColor("#ffffff"));
                  localButton3.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView(localButton3);
                  localLinearLayout2 = new LinearLayout(this);
                  localLinearLayout2.setOrientation(0);
                  localLinearLayout2.setGravity(17);
                  localLinearLayout2.setLayoutParams(localLayoutParams);
                  ((LinearLayout)localObject2).addView(localLinearLayout2);
                  localObject2 = new Button(this);
                  ((Button)localObject2).setBackgroundDrawable(this.noneDrawables);
                  ((Button)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView((View)localObject2);
                  localObject2 = new Button(this);
                  ((Button)localObject2).setBackgroundDrawable(this.zeroDrawables);
                  ((Button)localObject2).setGravity(17);
                  ((Button)localObject2).setText("0");
                  ((Button)localObject2).setTextSize(1, 30.0F);
                  ((Button)localObject2).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView((View)localObject2);
                  this.delete = new Button(this);
                  this.delete.setBackgroundDrawable(this.deleteDrawables);
                  this.delete.setGravity(17);
                  this.delete.setText(CommonString.getString(CommonString.Index.CANCEL));
                  this.delete.setTextSize(1, 20.0F);
                  this.delete.setTextColor(Color.parseColor("#ffffff"));
                  this.delete.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView(this.delete);
                  setContentView(localLinearLayout1);
                  ((Button)localObject3).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "1";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject4).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "2";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject5).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "3";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject6).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "4";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject7).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "5";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  localButton1.setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "6";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject8).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "7";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  localButton2.setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "8";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  localButton3.setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "9";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject2).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "0";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  this.delete.setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck == 1)
                      {
                        PwdActivity.this.delete.setBackgroundDrawable(null);
                        PwdActivity.this.delete.setText(CommonString.getString(CommonString.Index.CANCEL));
                      }
                      if (PwdActivity.this.numCheck > 0)
                      {
                        PwdActivity.this.inputNum = PwdActivity.this.inputNum.substring(0, PwdActivity.this.numCheck - 1);
                        if (PwdActivity.this.numCheck == 1)
                        {
                          PwdActivity.this.et1.setBackgroundDrawable(null);
                          PwdActivity.this.delete.setBackgroundDrawable(PwdActivity.this.deleteDrawables);
                          PwdActivity.this.delete.setCompoundDrawables(null, null, null, null);
                        }
                        if (PwdActivity.this.numCheck == 2) {
                          PwdActivity.this.et2.setBackgroundDrawable(null);
                        }
                        if (PwdActivity.this.numCheck == 3) {
                          PwdActivity.this.et3.setBackgroundDrawable(null);
                        }
                        if (PwdActivity.this.numCheck == 4) {
                          PwdActivity.this.et4.setBackgroundDrawable(null);
                        }
                      }
                      if (PwdActivity.this.numCheck == 0) {
                        PwdActivity.this.finish();
                      }
                      paramAnonymousView = PwdActivity.this;
                      paramAnonymousView.numCheck -= 1;
                    }
                  });
                  return;
                  localIOException1 = localIOException1;
                  localIOException1.printStackTrace();
                  continue;
                  localIOException2 = localIOException2;
                  localIOException2.printStackTrace();
                  continue;
                  localObject2 = new LinearLayout.LayoutParams(55, 55);
                  localObject1 = new LinearLayout.LayoutParams(55, 55);
                  ((LinearLayout.LayoutParams)localObject1).setMargins(15, 0, 0, 0);
                  continue;
                  localIOException6 = localIOException6;
                  localIOException6.printStackTrace();
                  continue;
                  localIOException3 = localIOException3;
                  localIOException3.printStackTrace();
                }
                localIOException4 = localIOException4;
                localIOException4.printStackTrace();
              }
              catch (IOException localIOException5)
              {
                for (;;)
                {
                  localIOException5.printStackTrace();
                }
              }
            }
          }
        }
      }
    }
  }
  
  public void viewPortrait()
  {
    CommonF.LOGGER.i(this.TAG, "viewPortrait");
    LinearLayout localLinearLayout1 = new LinearLayout(this);
    localLinearLayout1.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    localLinearLayout1.setOrientation(1);
    localLinearLayout1.setBackgroundColor(Color.parseColor("#3C3C3C"));
    localLinearLayout1.setGravity(17);
    Object localObject1 = new LinearLayout(this);
    ((LinearLayout)localObject1).setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0F));
    ((LinearLayout)localObject1).setGravity(17);
    ((LinearLayout)localObject1).setOrientation(1);
    localLinearLayout1.addView((View)localObject1);
    Object localObject2 = new ImageView(this);
    Object localObject3 = new LinearLayout.LayoutParams(110, 40);
    ((LinearLayout.LayoutParams)localObject3).setMargins(0, 25, 0, 20);
    ((LinearLayout.LayoutParams)localObject3).gravity = 17;
    ((ImageView)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
    localObject3 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "logo_pw.png");
    ((ImageView)localObject2).setImageDrawable(Drawable.createFromStream((InputStream)localObject3, "none"));
    try
    {
      ((InputStream)localObject3).close();
      ((LinearLayout)localObject1).addView((View)localObject2);
      this.pwdText = new TextView(this);
      this.pwdText.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
      this.pwdText.setGravity(17);
      this.pwdText.setTextSize(1, 15.0F);
      this.pwdText.setTextColor(Color.parseColor("#ffffff"));
      this.pwdText.setText(CommonString.getString(CommonString.Index.T_STORE_INPUT_PASSWORD));
      ((LinearLayout)localObject1).addView(this.pwdText);
      localObject2 = new LinearLayout(this);
      localObject3 = new LinearLayout.LayoutParams(-1, -2);
      ((LinearLayout.LayoutParams)localObject3).setMargins(0, 15, 0, 20);
      ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
      localObject3 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "bg_line.png");
      ((LinearLayout)localObject2).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject3, "none"));
    }
    catch (IOException localIOException4)
    {
      try
      {
        ((InputStream)localObject3).close();
        ((LinearLayout)localObject1).addView((View)localObject2);
        localObject3 = new LinearLayout(this);
        ((LinearLayout)localObject3).setOrientation(0);
        localObject2 = new LinearLayout.LayoutParams(-1, -2);
        ((LinearLayout.LayoutParams)localObject2).setMargins(0, 0, 0, 15);
        ((LinearLayout)localObject3).setGravity(17);
        ((LinearLayout)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject2);
        ((LinearLayout)localObject1).addView((View)localObject3);
        if (this.hvga.booleanValue())
        {
          localObject2 = new LinearLayout.LayoutParams(50, 40);
          localObject1 = new LinearLayout.LayoutParams(50, 40);
          ((LinearLayout.LayoutParams)localObject1).setMargins(15, 0, 0, 0);
          localObject4 = new LinearLayout(this);
          ((LinearLayout)localObject4).setFocusable(true);
          ((LinearLayout)localObject4).setFocusableInTouchMode(true);
          ((LinearLayout)localObject4).setGravity(17);
          localObject5 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "inputbox_pw.png");
          ((LinearLayout)localObject4).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject5, "none"));
        }
      }
      catch (IOException localIOException4)
      {
        try
        {
          ((InputStream)localObject5).close();
          ((LinearLayout)localObject4).setLayoutParams((ViewGroup.LayoutParams)localObject2);
          ((LinearLayout)localObject3).addView((View)localObject4);
          this.et1 = new EditText(this);
          this.et1.setImeOptions(268435456);
          this.et1.setGravity(17);
          this.et1.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
          this.et1.setBackgroundDrawable(null);
          ((LinearLayout)localObject4).addView(this.et1);
          localObject2 = new LinearLayout(this);
          ((LinearLayout)localObject2).setFocusable(true);
          ((LinearLayout)localObject2).setFocusableInTouchMode(true);
          ((LinearLayout)localObject2).setGravity(17);
          localObject4 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "inputbox_pw.png");
          ((LinearLayout)localObject2).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject4, "none"));
        }
        catch (IOException localIOException4)
        {
          try
          {
            ((InputStream)localObject4).close();
            ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
            ((LinearLayout)localObject3).addView((View)localObject2);
            this.et2 = new EditText(this);
            this.et2.setImeOptions(268435456);
            this.et2.setGravity(17);
            this.et2.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
            this.et2.setBackgroundDrawable(null);
            ((LinearLayout)localObject2).addView(this.et2);
            localObject2 = new LinearLayout(this);
            ((LinearLayout)localObject2).setFocusable(true);
            ((LinearLayout)localObject2).setFocusableInTouchMode(true);
            ((LinearLayout)localObject2).setGravity(17);
            localObject4 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "inputbox_pw.png");
            ((LinearLayout)localObject2).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject4, "none"));
          }
          catch (IOException localIOException4)
          {
            try
            {
              ((InputStream)localObject4).close();
              ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
              ((LinearLayout)localObject3).addView((View)localObject2);
              this.et3 = new EditText(this);
              this.et3.setImeOptions(268435456);
              this.et3.setGravity(17);
              this.et3.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
              this.et3.setBackgroundDrawable(null);
              ((LinearLayout)localObject2).addView(this.et3);
              localObject2 = new LinearLayout(this);
              ((LinearLayout)localObject2).setFocusable(true);
              ((LinearLayout)localObject2).setFocusableInTouchMode(true);
              ((LinearLayout)localObject2).setGravity(17);
              localObject4 = getClass().getResourceAsStream(this.RES_VERT_FILE_PATH + "inputbox_pw.png");
              ((LinearLayout)localObject2).setBackgroundDrawable(Drawable.createFromStream((InputStream)localObject4, "none"));
            }
            catch (IOException localIOException4)
            {
              try
              {
                for (;;)
                {
                  ((InputStream)localObject4).close();
                  ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  ((LinearLayout)localObject3).addView((View)localObject2);
                  this.et4 = new EditText(this);
                  this.et4.setImeOptions(268435456);
                  this.et4.setGravity(17);
                  this.et4.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
                  this.et4.setBackgroundDrawable(null);
                  ((LinearLayout)localObject2).addView(this.et4);
                  localObject1 = this.oneDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.oneDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.twoDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.twoDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.threeDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.threeDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.fourDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.fourDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.fiveDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.fiveDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.sixDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.sixDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.sevenDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.sevenDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.eightDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.eightDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.nineDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.nineDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.noneDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.zeroDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.zeroDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  localObject1 = this.deleteDrawables;
                  localObject2 = this.sel;
                  ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject2);
                  localObject1 = this.deleteDrawables;
                  localObject2 = this.nor;
                  ((StateListDrawable)localObject1).addState(new int[0], (Drawable)localObject2);
                  Object localObject5 = new LinearLayout(this);
                  ((LinearLayout)localObject5).setOrientation(1);
                  localObject1 = new LinearLayout.LayoutParams(-1, 0, 1.0F);
                  ((LinearLayout)localObject5).setGravity(17);
                  ((LinearLayout)localObject5).setBackgroundColor(Color.parseColor("#212121"));
                  ((LinearLayout)localObject5).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout1.addView((View)localObject5);
                  Object localObject6 = new LinearLayout(this);
                  ((LinearLayout)localObject6).setOrientation(0);
                  LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
                  localLayoutParams.topMargin = 5;
                  ((LinearLayout)localObject6).setGravity(17);
                  ((LinearLayout)localObject6).setLayoutParams(localLayoutParams);
                  ((LinearLayout)localObject5).addView((View)localObject6);
                  Object localObject7 = new LinearLayout.LayoutParams(0, this.buttonWidth - 20, 1.0F);
                  ((LinearLayout.LayoutParams)localObject7).topMargin = 1;
                  localObject1 = new LinearLayout.LayoutParams(0, this.buttonWidth - 20, 1.0F);
                  ((LinearLayout.LayoutParams)localObject1).topMargin = 1;
                  localObject2 = new Button(this);
                  ((Button)localObject2).setBackgroundDrawable(this.oneDrawables);
                  ((Button)localObject2).setGravity(17);
                  ((Button)localObject2).setText("1");
                  ((Button)localObject2).setTextSize(1, 30.0F);
                  ((Button)localObject2).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject7);
                  ((LinearLayout)localObject6).addView((View)localObject2);
                  localObject3 = new Button(this);
                  ((Button)localObject3).setBackgroundDrawable(this.twoDrawables);
                  ((Button)localObject3).setGravity(17);
                  ((Button)localObject3).setText("2");
                  ((Button)localObject3).setTextSize(1, 30.0F);
                  ((Button)localObject3).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject7);
                  ((LinearLayout)localObject6).addView((View)localObject3);
                  Object localObject4 = new Button(this);
                  ((Button)localObject4).setBackgroundDrawable(this.threeDrawables);
                  ((Button)localObject4).setGravity(17);
                  ((Button)localObject4).setText("3");
                  ((Button)localObject4).setTextSize(1, 30.0F);
                  ((Button)localObject4).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject4).setLayoutParams((ViewGroup.LayoutParams)localObject7);
                  ((LinearLayout)localObject6).addView((View)localObject4);
                  Object localObject8 = new LinearLayout(this);
                  ((LinearLayout)localObject8).setOrientation(0);
                  ((LinearLayout)localObject8).setGravity(17);
                  ((LinearLayout)localObject8).setLayoutParams(localLayoutParams);
                  ((LinearLayout)localObject5).addView((View)localObject8);
                  localObject6 = new Button(this);
                  ((Button)localObject6).setBackgroundDrawable(this.fourDrawables);
                  ((Button)localObject6).setGravity(17);
                  ((Button)localObject6).setText("4");
                  ((Button)localObject6).setTextSize(1, 30.0F);
                  ((Button)localObject6).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject6).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  ((LinearLayout)localObject8).addView((View)localObject6);
                  localObject7 = new Button(this);
                  ((Button)localObject7).setBackgroundDrawable(this.fiveDrawables);
                  ((Button)localObject7).setGravity(17);
                  ((Button)localObject7).setText("5");
                  ((Button)localObject7).setTextSize(1, 30.0F);
                  ((Button)localObject7).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject7).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  ((LinearLayout)localObject8).addView((View)localObject7);
                  Button localButton1 = new Button(this);
                  localButton1.setBackgroundDrawable(this.sixDrawables);
                  localButton1.setGravity(17);
                  localButton1.setText("6");
                  localButton1.setTextSize(1, 30.0F);
                  localButton1.setTextColor(Color.parseColor("#ffffff"));
                  localButton1.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  ((LinearLayout)localObject8).addView(localButton1);
                  LinearLayout localLinearLayout2 = new LinearLayout(this);
                  localLinearLayout2.setOrientation(0);
                  localLinearLayout2.setGravity(17);
                  localLinearLayout2.setLayoutParams(localLayoutParams);
                  ((LinearLayout)localObject5).addView(localLinearLayout2);
                  localObject8 = new Button(this);
                  ((Button)localObject8).setBackgroundDrawable(this.sevenDrawables);
                  ((Button)localObject8).setGravity(17);
                  ((Button)localObject8).setText("7");
                  ((Button)localObject8).setTextSize(1, 30.0F);
                  ((Button)localObject8).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject8).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView((View)localObject8);
                  Button localButton2 = new Button(this);
                  localButton2.setBackgroundDrawable(this.eightDrawables);
                  localButton2.setGravity(17);
                  localButton2.setText("8");
                  localButton2.setTextSize(1, 30.0F);
                  localButton2.setTextColor(Color.parseColor("#ffffff"));
                  localButton2.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView(localButton2);
                  Button localButton3 = new Button(this);
                  localButton3.setBackgroundDrawable(this.nineDrawables);
                  localButton3.setGravity(17);
                  localButton3.setText("9");
                  localButton3.setTextSize(1, 30.0F);
                  localButton3.setTextColor(Color.parseColor("#ffffff"));
                  localButton3.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView(localButton3);
                  localLinearLayout2 = new LinearLayout(this);
                  localLinearLayout2.setOrientation(0);
                  localLinearLayout2.setGravity(17);
                  localLinearLayout2.setLayoutParams(localLayoutParams);
                  ((LinearLayout)localObject5).addView(localLinearLayout2);
                  localObject5 = new Button(this);
                  ((Button)localObject5).setBackgroundDrawable(this.noneDrawables);
                  ((Button)localObject5).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView((View)localObject5);
                  localObject5 = new Button(this);
                  ((Button)localObject5).setBackgroundDrawable(this.zeroDrawables);
                  ((Button)localObject5).setGravity(17);
                  ((Button)localObject5).setText("0");
                  ((Button)localObject5).setTextSize(1, 30.0F);
                  ((Button)localObject5).setTextColor(Color.parseColor("#ffffff"));
                  ((Button)localObject5).setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView((View)localObject5);
                  this.delete = new Button(this);
                  this.delete.setBackgroundDrawable(this.deleteDrawables);
                  this.delete.setGravity(17);
                  this.delete.setText(CommonString.getString(CommonString.Index.CANCEL));
                  this.delete.setTextSize(1, 20.0F);
                  this.delete.setTextColor(Color.parseColor("#ffffff"));
                  this.delete.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  localLinearLayout2.addView(this.delete);
                  setContentView(localLinearLayout1);
                  ((Button)localObject2).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "1";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject3).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "2";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject4).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "3";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject6).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "4";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject7).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "5";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  localButton1.setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "6";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject8).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "7";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  localButton2.setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "8";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  localButton3.setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "9";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  ((Button)localObject5).setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck < 4)
                      {
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.numCheck += 1;
                        PwdActivity.this.checkDot();
                        paramAnonymousView = PwdActivity.this;
                        paramAnonymousView.inputNum += "0";
                      }
                      if (PwdActivity.this.inputNum.length() == 4) {
                        PwdActivity.this.checkInputNum();
                      }
                    }
                  });
                  this.delete.setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymousView)
                    {
                      if (PwdActivity.this.numCheck == 1)
                      {
                        PwdActivity.this.delete.setBackgroundDrawable(null);
                        PwdActivity.this.delete.setText(CommonString.getString(CommonString.Index.CANCEL));
                      }
                      if (PwdActivity.this.numCheck > 0)
                      {
                        PwdActivity.this.inputNum = PwdActivity.this.inputNum.substring(0, PwdActivity.this.numCheck - 1);
                        if (PwdActivity.this.numCheck == 1)
                        {
                          PwdActivity.this.et1.setBackgroundDrawable(null);
                          PwdActivity.this.delete.setBackgroundDrawable(PwdActivity.this.deleteDrawables);
                          PwdActivity.this.delete.setCompoundDrawables(null, null, null, null);
                        }
                        if (PwdActivity.this.numCheck == 2) {
                          PwdActivity.this.et2.setBackgroundDrawable(null);
                        }
                        if (PwdActivity.this.numCheck == 3) {
                          PwdActivity.this.et3.setBackgroundDrawable(null);
                        }
                        if (PwdActivity.this.numCheck == 4) {
                          PwdActivity.this.et4.setBackgroundDrawable(null);
                        }
                      }
                      if (PwdActivity.this.numCheck == 0) {
                        PwdActivity.this.finish();
                      }
                      paramAnonymousView = PwdActivity.this;
                      paramAnonymousView.numCheck -= 1;
                    }
                  });
                  return;
                  localIOException1 = localIOException1;
                  localIOException1.printStackTrace();
                  continue;
                  localIOException2 = localIOException2;
                  localIOException2.printStackTrace();
                  continue;
                  localObject2 = new LinearLayout.LayoutParams(60, 55);
                  localObject1 = new LinearLayout.LayoutParams(60, 55);
                  ((LinearLayout.LayoutParams)localObject1).setMargins(15, 0, 0, 0);
                  continue;
                  localIOException6 = localIOException6;
                  localIOException6.printStackTrace();
                  continue;
                  localIOException3 = localIOException3;
                  localIOException3.printStackTrace();
                }
                localIOException4 = localIOException4;
                localIOException4.printStackTrace();
              }
              catch (IOException localIOException5)
              {
                for (;;)
                {
                  localIOException5.printStackTrace();
                }
              }
            }
          }
        }
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.PwdActivity
 * JD-Core Version:    0.7.0.1
 */