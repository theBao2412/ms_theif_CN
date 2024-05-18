.class public Lcom/kt/olleh/inapp/util/UIParser;
.super Ljava/lang/Object;
.source "UIParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIParser"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mLayoutStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    .line 47
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    .line 49
    return-void
.end method

.method private createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 38
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 161
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 162
    .local v21, "name":Ljava/lang/String;
    const/16 v23, 0x0

    .line 163
    .local v23, "result":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 165
    .local v3, "atts":Landroid/util/AttributeSet;
    const-string v34, "LinearLayout"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 166
    new-instance v23, Landroid/widget/LinearLayout;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    .restart local v23    # "result":Landroid/view/View;
    :goto_0
    if-nez v23, :cond_6

    .line 179
    const/16 v23, 0x0

    .line 421
    .end local v23    # "result":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v23

    .line 167
    .restart local v23    # "result":Landroid/view/View;
    :cond_1
    const-string v34, "TextView"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 168
    new-instance v23, Landroid/widget/TextView;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 169
    :cond_2
    const-string v34, "ImageView"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 170
    new-instance v23, Landroid/widget/ImageView;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 171
    :cond_3
    const-string v34, "Button"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 172
    new-instance v23, Landroid/widget/Button;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 173
    :cond_4
    const-string v34, "EditText"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 174
    new-instance v23, Landroid/widget/EditText;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 176
    :cond_5
    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Unhandled tag:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_6
    const-string v34, "android:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 182
    .local v12, "id":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->setID(Landroid/view/View;Ljava/lang/String;)V

    .line 185
    :cond_7
    const-string v34, "android:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 186
    .local v13, "image":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 188
    const-string v34, "#"

    move-object/from16 v0, v34

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 190
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    :cond_8
    :goto_2
    const-string v34, "android:visibility"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 239
    .local v33, "visible":Ljava/lang/String;
    if-eqz v33, :cond_9

    .line 241
    const-string v34, "gone"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 242
    const/16 v34, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_9
    :goto_3
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v34, v0

    if-eqz v34, :cond_13

    move-object/from16 v19, v23

    .line 251
    check-cast v19, Landroid/widget/LinearLayout;

    .line 252
    .local v19, "ll":Landroid/widget/LinearLayout;
    const-string v34, "android:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 253
    .local v22, "orient":Ljava/lang/String;
    if-eqz v22, :cond_a

    .line 255
    const-string v34, "horizontal"

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 256
    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 261
    :cond_a
    :goto_4
    const-string v34, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 262
    .local v11, "gravity":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 264
    const-string v34, "center"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_12

    .line 265
    const/16 v34, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 416
    .end local v11    # "gravity":Ljava/lang/String;
    .end local v19    # "ll":Landroid/widget/LinearLayout;
    .end local v22    # "orient":Ljava/lang/String;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/Stack;->size()I

    move-result v34

    if-lez v34, :cond_0

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/kt/olleh/inapp/util/UIParser;->setPadding(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 194
    .end local v33    # "visible":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v34, v0

    if-eqz v34, :cond_d

    move-object/from16 v8, v23

    .line 196
    check-cast v8, Landroid/widget/EditText;

    .line 198
    .local v8, "btn":Landroid/widget/EditText;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 200
    .local v10, "drawables":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    const-string v35, "/drawable-hdpi/a_inputbox_p.png"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 201
    .local v15, "in":Ljava/io/InputStream;
    const-string v34, "a_inputbox_p"

    move-object/from16 v0, v34

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 202
    .local v7, "btPress":Landroid/graphics/drawable/Drawable;
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x10100a7

    aput v36, v34, v35

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    const-string v35, "/drawable-hdpi/a_inputbox_f.png"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 205
    const-string v34, "a_inputbox_f"

    move-object/from16 v0, v34

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 206
    .local v4, "btFocus":Landroid/graphics/drawable/Drawable;
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x101009c

    aput v36, v34, v35

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    const-string v35, "/drawable-hdpi/a_inputbox_n.png"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 209
    const-string v34, "a_inputbox_n"

    move-object/from16 v0, v34

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 210
    .local v5, "btOn":Landroid/graphics/drawable/Drawable;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 214
    .end local v4    # "btFocus":Landroid/graphics/drawable/Drawable;
    .end local v5    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v7    # "btPress":Landroid/graphics/drawable/Drawable;
    .end local v8    # "btn":Landroid/widget/EditText;
    .end local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "in":Ljava/io/InputStream;
    :cond_d
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v34, v0

    if-eqz v34, :cond_e

    move-object/from16 v8, v23

    .line 216
    check-cast v8, Landroid/widget/Button;

    .line 218
    .local v8, "btn":Landroid/widget/Button;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 220
    .restart local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    const-string v35, "/drawable-hdpi/popup_btn_sel.png"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 221
    .restart local v15    # "in":Ljava/io/InputStream;
    const-string v34, "popup_btn_sel"

    move-object/from16 v0, v34

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 222
    .local v6, "btOver":Landroid/graphics/drawable/Drawable;
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x10100a7

    aput v36, v34, v35

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    const-string v35, "/drawable-hdpi/popup_btn.png"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 225
    const-string v34, "popup_btn"

    move-object/from16 v0, v34

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 226
    .restart local v5    # "btOn":Landroid/graphics/drawable/Drawable;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 232
    .end local v5    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v6    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v8    # "btn":Landroid/widget/Button;
    .end local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "in":Ljava/io/InputStream;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/kt/olleh/inapp/util/UIParser;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 233
    .local v17, "is":Ljava/io/InputStream;
    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 243
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v33    # "visible":Ljava/lang/String;
    :cond_f
    const-string v34, "visible"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_10

    .line 244
    const/16 v34, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 245
    :cond_10
    const-string v34, "invisible"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_9

    .line 246
    const/16 v34, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 257
    .restart local v19    # "ll":Landroid/widget/LinearLayout;
    .restart local v22    # "orient":Ljava/lang/String;
    :cond_11
    const-string v34, "vertical"

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 258
    const/16 v34, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_4

    .line 267
    .restart local v11    # "gravity":Ljava/lang/String;
    :cond_12
    const/16 v34, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_5

    .line 270
    .end local v11    # "gravity":Ljava/lang/String;
    .end local v19    # "ll":Landroid/widget/LinearLayout;
    .end local v22    # "orient":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v34, v0

    if-eqz v34, :cond_1c

    move-object/from16 v32, v23

    .line 272
    check-cast v32, Landroid/widget/EditText;

    .line 273
    .local v32, "tv":Landroid/widget/EditText;
    const-string v34, "android:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 274
    .local v26, "text":Ljava/lang/String;
    const-string v34, "android:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 275
    .local v31, "textSize":Ljava/lang/String;
    const-string v34, "android:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 276
    .local v27, "textColor":Ljava/lang/String;
    const-string v34, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 277
    .local v29, "textGravity":Ljava/lang/String;
    if-eqz v26, :cond_14

    .line 279
    const-string v34, "\\n"

    const-string v35, "\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 280
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_14
    if-eqz v31, :cond_15

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 286
    :cond_15
    if-eqz v27, :cond_16

    .line 287
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 289
    :cond_16
    if-eqz v29, :cond_1a

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->setGravity(Landroid/view/View;Ljava/lang/String;)I

    .line 294
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3}, Lcom/kt/olleh/inapp/util/UIParser;->setPadding(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 296
    const-string v34, "android:maxLines"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 297
    .local v20, "maxLines":Ljava/lang/String;
    if-eqz v20, :cond_17

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readInt(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 300
    :cond_17
    const-string v34, "android:singleLine"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 301
    .local v24, "singeline":Ljava/lang/String;
    if-eqz v24, :cond_18

    const-string v34, "true"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_18

    .line 302
    const/16 v34, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 304
    :cond_18
    const-string v34, "android:imeOptions"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 305
    .local v14, "imeOptions":Ljava/lang/String;
    if-eqz v14, :cond_19

    .line 307
    const-string v34, "actionNext"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1b

    .line 308
    const/16 v34, 0x5

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 313
    :cond_19
    :goto_7
    const-string v34, "android:inputType"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 314
    .local v16, "inputType":Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 316
    const/16 v34, 0x81

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_5

    .line 292
    .end local v14    # "imeOptions":Ljava/lang/String;
    .end local v16    # "inputType":Ljava/lang/String;
    .end local v20    # "maxLines":Ljava/lang/String;
    .end local v24    # "singeline":Ljava/lang/String;
    :cond_1a
    const/16 v34, 0x13

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_6

    .line 310
    .restart local v14    # "imeOptions":Ljava/lang/String;
    .restart local v20    # "maxLines":Ljava/lang/String;
    .restart local v24    # "singeline":Ljava/lang/String;
    :cond_1b
    const/16 v34, 0x6

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_7

    .line 319
    .end local v14    # "imeOptions":Ljava/lang/String;
    .end local v20    # "maxLines":Ljava/lang/String;
    .end local v24    # "singeline":Ljava/lang/String;
    .end local v26    # "text":Ljava/lang/String;
    .end local v27    # "textColor":Ljava/lang/String;
    .end local v29    # "textGravity":Ljava/lang/String;
    .end local v31    # "textSize":Ljava/lang/String;
    .end local v32    # "tv":Landroid/widget/EditText;
    :cond_1c
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v34, v0

    if-eqz v34, :cond_26

    move-object/from16 v32, v23

    .line 321
    check-cast v32, Landroid/widget/TextView;

    .line 322
    .local v32, "tv":Landroid/widget/TextView;
    const-string v34, "android:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 323
    .restart local v26    # "text":Ljava/lang/String;
    const-string v34, "android:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 324
    .restart local v31    # "textSize":Ljava/lang/String;
    const-string v34, "android:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 325
    .restart local v27    # "textColor":Ljava/lang/String;
    const-string v34, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 326
    .restart local v29    # "textGravity":Ljava/lang/String;
    const-string v34, "android:ellipsize"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 327
    .local v28, "textEllipsize":Ljava/lang/String;
    const-string v34, "android:singleLine"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 329
    .local v30, "textSingleLine":Ljava/lang/String;
    if-eqz v26, :cond_1d

    .line 331
    const-string v34, "\\n"

    const-string v35, "\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 332
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_1d
    if-eqz v30, :cond_1e

    .line 337
    const-string v34, "true"

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_22

    .line 339
    const/16 v34, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 347
    :cond_1e
    :goto_8
    if-eqz v28, :cond_1f

    .line 349
    const-string v34, "end"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_23

    .line 350
    sget-object v34, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 355
    :cond_1f
    :goto_9
    if-eqz v31, :cond_20

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 358
    :cond_20
    if-eqz v27, :cond_21

    .line 360
    const-string v34, "#"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 361
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    :cond_21
    :goto_a
    if-eqz v29, :cond_25

    .line 388
    const/16 v34, 0x11

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 391
    :goto_b
    const/16 v34, 0x0

    const v35, 0x3f933333    # 1.15f

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_5

    .line 343
    :cond_22
    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_8

    .line 351
    :cond_23
    const-string v34, "marque"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 352
    sget-object v34, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_9

    .line 364
    :cond_24
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [[I

    move-object/from16 v25, v0

    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x10100a7

    aput v37, v35, v36

    aput-object v35, v25, v34

    const/16 v34, 0x1

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    aput-object v35, v25, v34

    .line 366
    .local v25, "stateList":[[I
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v9, v0, [I

    const/16 v34, 0x0

    const-string v35, "#FFFFFF"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    aput v35, v9, v34

    const/16 v34, 0x1

    const-string v35, "#171717"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    aput v35, v9, v34

    .line 368
    .local v9, "colors":[I
    new-instance v18, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 370
    .local v18, "list":Landroid/content/res/ColorStateList;
    const/16 v34, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 371
    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 373
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 375
    .restart local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    const-string v35, "/drawable-hdpi/e_popup_list_p.png"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 376
    .restart local v15    # "in":Ljava/io/InputStream;
    const-string v34, "e_popup_list_bg"

    move-object/from16 v0, v34

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 377
    .restart local v6    # "btOver":Landroid/graphics/drawable/Drawable;
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x10100a7

    aput v36, v34, v35

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    const-string v35, "/drawable-hdpi/e_popup_list_bg.png"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 380
    const-string v34, "e_popup_list_bg"

    move-object/from16 v0, v34

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 381
    .restart local v5    # "btOn":Landroid/graphics/drawable/Drawable;
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 383
    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 390
    .end local v5    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v6    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v9    # "colors":[I
    .end local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "in":Ljava/io/InputStream;
    .end local v18    # "list":Landroid/content/res/ColorStateList;
    .end local v25    # "stateList":[[I
    :cond_25
    const/16 v34, 0x13

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_b

    .line 393
    .end local v26    # "text":Ljava/lang/String;
    .end local v27    # "textColor":Ljava/lang/String;
    .end local v28    # "textEllipsize":Ljava/lang/String;
    .end local v29    # "textGravity":Ljava/lang/String;
    .end local v30    # "textSingleLine":Ljava/lang/String;
    .end local v31    # "textSize":Ljava/lang/String;
    .end local v32    # "tv":Landroid/widget/TextView;
    :cond_26
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v34, v0

    if-eqz v34, :cond_b

    move-object/from16 v8, v23

    .line 395
    check-cast v8, Landroid/widget/Button;

    .line 397
    .restart local v8    # "btn":Landroid/widget/Button;
    const-string v34, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 398
    .restart local v11    # "gravity":Ljava/lang/String;
    if-eqz v11, :cond_27

    .line 400
    const-string v34, "center"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_29

    .line 401
    const/16 v34, 0x11

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 406
    :cond_27
    :goto_c
    const-string v34, "android:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 407
    .restart local v31    # "textSize":Ljava/lang/String;
    if-eqz v31, :cond_28

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 410
    :cond_28
    const-string v34, "android:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 411
    .restart local v27    # "textColor":Ljava/lang/String;
    if-eqz v27, :cond_b

    .line 412
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_5

    .line 403
    .end local v27    # "textColor":Ljava/lang/String;
    .end local v31    # "textSize":Ljava/lang/String;
    :cond_29
    const/16 v34, 0x5

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_c
.end method

.method private dipToInt(F)I
    .locals 3
    .param p1, "number"    # F

    .prologue
    .line 666
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 668
    const/4 v0, 0x0

    .line 672
    :goto_0
    return v0

    .line 671
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 672
    .local v0, "num":I
    goto :goto_0
.end method

.method private findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "atts"    # Landroid/util/AttributeSet;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 542
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 543
    .local v1, "ix":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 544
    const-string v2, "http://schemas.android.com/apk/res/android"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 546
    .end local v1    # "ix":I
    :goto_1
    return-object v2

    .line 539
    :cond_0
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 540
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 538
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    .restart local v1    # "ix":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 718
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kt/olleh/inapp/util/UIParser;->findPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "bNine"    # Z

    .prologue
    const/4 v3, 0x1

    .line 695
    if-nez p1, :cond_1

    .line 696
    const/4 p1, 0x0

    .line 713
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 698
    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    const-string v1, "@drawable/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "split":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 703
    if-eqz p2, :cond_2

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/drawable-hdpi/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".9.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 706
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/drawable-hdpi/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 106
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 107
    const/4 v4, 0x0

    iput v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    .line 109
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 110
    .local v0, "data":Ljava/util/Stack;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 111
    .local v1, "evt":I
    const/4 v2, 0x0

    .line 112
    .local v2, "root":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 151
    return-object v2

    .line 114
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 149
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 125
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 127
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 129
    if-nez v2, :cond_3

    .line 130
    move-object v2, v3

    .line 133
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 134
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 132
    .restart local v3    # "v":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 140
    .end local v3    # "v":Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 144
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kt/olleh/inapp/util/UIParser;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "Layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 13
    .param p1, "atts"    # Landroid/util/AttributeSet;
    .param p2, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 551
    const/4 v4, 0x0

    .line 552
    .local v4, "lps":Landroid/view/ViewGroup$LayoutParams;
    const-string v12, "android:layout_width"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 553
    .local v11, "width":Ljava/lang/String;
    const-string v12, "android:layout_height"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "height":Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v9

    .line 555
    .local v9, "w":I
    invoke-direct {p0, v2}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v1

    .line 557
    .local v1, "h":I
    instance-of v12, p2, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 558
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lps":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 560
    .restart local v4    # "lps":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v12, v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v12, :cond_7

    move-object v3, v4

    .line 562
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 563
    .local v3, "l":Landroid/widget/LinearLayout$LayoutParams;
    const-string v12, "android:layout_gravity"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "gravity":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 566
    const-string v12, "center"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 567
    const/16 v12, 0x11

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 572
    :cond_1
    :goto_0
    const-string v12, "android:layout_weight"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 573
    .local v10, "weight":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 574
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 575
    :cond_2
    const-string v12, "android:layout_marginTop"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 576
    .local v8, "marginTop":Ljava/lang/String;
    const-string v12, "android:layout_marginLeft"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, "marginLeft":Ljava/lang/String;
    const-string v12, "android:layout_marginRight"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 578
    .local v7, "marginRight":Ljava/lang/String;
    const-string v12, "android:layout_marginBottom"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, "marginBottom":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 580
    invoke-direct {p0, v8}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 581
    :cond_3
    if-eqz v6, :cond_4

    .line 582
    invoke-direct {p0, v6}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 583
    :cond_4
    if-eqz v7, :cond_5

    .line 584
    invoke-direct {p0, v7}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 585
    :cond_5
    if-eqz v5, :cond_6

    .line 586
    invoke-direct {p0, v5}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 587
    :cond_6
    move-object v4, v3

    .line 589
    .end local v0    # "gravity":Ljava/lang/String;
    .end local v3    # "l":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "marginBottom":Ljava/lang/String;
    .end local v6    # "marginLeft":Ljava/lang/String;
    .end local v7    # "marginRight":Ljava/lang/String;
    .end local v8    # "marginTop":Ljava/lang/String;
    .end local v10    # "weight":Ljava/lang/String;
    :cond_7
    return-object v4

    .line 569
    .restart local v0    # "gravity":Ljava/lang/String;
    .restart local v3    # "l":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    const/4 v12, 0x5

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private openFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 723
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->findPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 724
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 726
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->findPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 729
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    return-object v0
.end method

.method private readDPSize(Ljava/lang/String;)I
    .locals 4
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 648
    const/4 v1, 0x0

    .line 651
    .local v1, "size":F
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    const-string v2, "dip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 654
    invoke-direct {p0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->dipToInt(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 661
    :goto_0
    return v2

    .line 657
    :catch_0
    move-exception v0

    .line 659
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0

    .line 661
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private readFontSize(Ljava/lang/String;)I
    .locals 7
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 626
    const/4 v2, 0x0

    .line 631
    .local v2, "size":F
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 637
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    div-double/2addr v3, v5

    double-to-float v0, v3

    .line 638
    .local v0, "dpChange":F
    float-to-int v3, v0

    .end local v0    # "dpChange":F
    :goto_0
    return v3

    .line 633
    :catch_0
    move-exception v1

    .line 635
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private readInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 678
    const/4 v1, 0x0

    .line 681
    .local v1, "size":I
    if-eqz p1, :cond_0

    .line 683
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 690
    :cond_0
    :goto_0
    return v1

    .line 686
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "UIParser"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private readSize(Ljava/lang/String;)I
    .locals 8
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v4, -0x1

    .line 594
    const/high16 v0, 0x3f800000    # 1.0f

    .line 595
    .local v0, "density":F
    const-string v5, "wrap_content"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 596
    const/4 v4, -0x2

    .line 621
    :cond_0
    :goto_0
    return v4

    .line 597
    :cond_1
    const-string v5, "fill_parent"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 604
    const/4 v3, 0x0

    .line 605
    .local v3, "size":F
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    const-string v5, "dip"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 607
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 608
    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/util/UIParser;->dipToInt(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 611
    :catch_0
    move-exception v2

    .line 613
    .local v2, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 615
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    const-string v4, "pt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 617
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 618
    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 619
    .local v1, "dpChange":F
    mul-float v4, v1, v0

    float-to-int v4, v4

    goto :goto_0

    .line 621
    .end local v1    # "dpChange":F
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method private setGravity(Landroid/view/View;Ljava/lang/String;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "layoutGravity"    # Ljava/lang/String;

    .prologue
    .line 426
    if-eqz p2, :cond_d

    .line 428
    const-string v3, "|"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "split":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 430
    .local v0, "gravity":I
    if-eqz v2, :cond_d

    .line 432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 488
    .end local v0    # "gravity":I
    .end local v1    # "i":I
    .end local v2    # "split":[Ljava/lang/String;
    :goto_1
    return v0

    .line 434
    .restart local v0    # "gravity":I
    .restart local v1    # "i":I
    .restart local v2    # "split":[Ljava/lang/String;
    :cond_0
    aget-object v3, v2, v1

    const-string v4, "top"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    or-int/lit8 v0, v0, 0x30

    .line 432
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_2
    aget-object v3, v2, v1

    const-string v4, "bottom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 440
    or-int/lit8 v0, v0, 0x50

    goto :goto_2

    .line 442
    :cond_3
    aget-object v3, v2, v1

    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 444
    or-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 446
    :cond_4
    aget-object v3, v2, v1

    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 448
    or-int/lit8 v0, v0, 0x5

    goto :goto_2

    .line 450
    :cond_5
    aget-object v3, v2, v1

    const-string v4, "center_vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 452
    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    .line 454
    :cond_6
    aget-object v3, v2, v1

    const-string v4, "fill_vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 456
    or-int/lit8 v0, v0, 0x70

    goto :goto_2

    .line 458
    :cond_7
    aget-object v3, v2, v1

    const-string v4, "center_horizontal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 460
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 462
    :cond_8
    aget-object v3, v2, v1

    const-string v4, "fill_horizontal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 464
    or-int/lit8 v0, v0, 0x7

    goto :goto_2

    .line 466
    :cond_9
    aget-object v3, v2, v1

    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 468
    or-int/lit8 v0, v0, 0x11

    goto :goto_2

    .line 470
    :cond_a
    aget-object v3, v2, v1

    const-string v4, "fill"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 472
    or-int/lit8 v0, v0, 0x77

    goto :goto_2

    .line 474
    :cond_b
    aget-object v3, v2, v1

    const-string v4, "clip_vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 476
    or-int/lit16 v0, v0, 0x80

    goto/16 :goto_2

    .line 478
    :cond_c
    aget-object v3, v2, v1

    const-string v4, "clip_horizontal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    or-int/lit8 v0, v0, 0x8

    goto/16 :goto_2

    .line 488
    .end local v0    # "gravity":I
    .end local v1    # "i":I
    .end local v2    # "split":[Ljava/lang/String;
    :cond_d
    const/16 v0, 0x11

    goto/16 :goto_1
.end method

.method private setPadding(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "atts"    # Landroid/util/AttributeSet;

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, "left":I
    const/4 v7, 0x0

    .line 495
    .local v7, "right":I
    const/4 v9, 0x0

    .line 496
    .local v9, "top":I
    const/4 v0, 0x0

    .line 498
    .local v0, "bottom":I
    const-string v10, "android:padding"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "padding":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 501
    invoke-direct {p0, v2}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 502
    .local v8, "size":I
    move v0, v8

    move v9, v8

    move v7, v8

    move v1, v8

    .line 505
    .end local v8    # "size":I
    :cond_0
    const-string v10, "android:paddingTop"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, "paddingTop":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 508
    invoke-direct {p0, v6}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 509
    .restart local v8    # "size":I
    move v9, v8

    .line 512
    .end local v8    # "size":I
    :cond_1
    const-string v10, "android:paddingBottom"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, "paddingBottom":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 515
    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 516
    .restart local v8    # "size":I
    move v0, v8

    .line 519
    .end local v8    # "size":I
    :cond_2
    const-string v10, "android:paddingLeft"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, "paddingLeft":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 522
    invoke-direct {p0, v4}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 523
    .restart local v8    # "size":I
    move v1, v8

    .line 526
    .end local v8    # "size":I
    :cond_3
    const-string v10, "android:paddingRight"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "paddingRight":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 529
    invoke-direct {p0, v5}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 530
    .restart local v8    # "size":I
    move v7, v8

    .line 533
    .end local v8    # "size":I
    :cond_4
    invoke-virtual {p1, v1, v9, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 534
    return-void
.end method


# virtual methods
.method public Start(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "xmlFileFname"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v3, 0x0

    .line 85
    .local v3, "parse":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 86
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 88
    .local v2, "is":Ljava/io/InputStream;
    const-string v5, "utf-8"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/util/UIParser;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 100
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "UIParser"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "UIParser"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 56
    iput-object v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    .line 59
    :cond_0
    iput-object v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public getID(Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, -0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setID(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-gtz v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 76
    iget-object v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    goto :goto_0
.end method
