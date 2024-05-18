.class Lnet/daum/adam/publisher/impl/f$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AdHttpContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/f;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/daum/adam/publisher/impl/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lnet/daum/adam/publisher/impl/b;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z


# direct methods
.method protected constructor <init>(Lnet/daum/adam/publisher/impl/f;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/daum/adam/publisher/impl/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/f$a;->a:Lnet/daum/adam/publisher/impl/f;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 141
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->b:Ljava/util/ArrayList;

    .line 142
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    .line 159
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/f$a;->b:Ljava/util/ArrayList;

    .line 160
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "H"

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    iput-object v2, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v0, "MRAID"

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    :cond_2
    iput-object v2, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    goto :goto_0

    .line 173
    :cond_3
    iput-object v2, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 274
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 275
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    if-eqz v1, :cond_5

    .line 276
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->d:Z

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b;->a(Ljava/lang/String;)V

    .line 279
    :cond_0
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->e:Z

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b;->b(Ljava/lang/String;)V

    .line 282
    :cond_1
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->f:Z

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b;->c(Ljava/lang/String;)V

    .line 285
    :cond_2
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->g:Z

    if-eqz v1, :cond_3

    .line 286
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b;->e(Ljava/lang/String;)V

    .line 288
    :cond_3
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->h:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->i:Z

    if-eqz v1, :cond_4

    .line 289
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b;->g(Ljava/lang/String;)V

    .line 291
    :cond_4
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->h:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->j:Z

    if-eqz v1, :cond_5

    .line 292
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b;->h(Ljava/lang/String;)V

    .line 302
    :cond_5
    :goto_0
    return-void

    .line 296
    :cond_6
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    if-eqz v0, :cond_5

    .line 297
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/f$a;->d:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/f$a;->e:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/f$a;->f:Z

    if-eqz v0, :cond_5

    .line 298
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 195
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/f$a;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/f$a;->m:Z

    if-nez v0, :cond_1

    .line 196
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 198
    :cond_1
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 240
    const-string v0, "DAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/f$a;->l:Z

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const-string v0, "COLL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/f$a;->a()V

    .line 244
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_2
    const-string v0, "AD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->d:Z

    goto :goto_0

    .line 250
    :cond_3
    const-string v0, "curl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->e:Z

    goto :goto_0

    .line 252
    :cond_4
    const-string v0, "turl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->f:Z

    goto :goto_0

    .line 254
    :cond_5
    const-string v0, "html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 255
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->g:Z

    goto :goto_0

    .line 256
    :cond_6
    const-string v0, "mraid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->h:Z

    goto :goto_0

    .line 258
    :cond_7
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 259
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/f$a;->h:Z

    if-eqz v0, :cond_0

    .line 260
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->i:Z

    goto :goto_0

    .line 262
    :cond_8
    const-string v0, "placementtype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/f$a;->h:Z

    if-eqz v0, :cond_0

    .line 264
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->j:Z

    goto :goto_0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 180
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->d:Z

    .line 181
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->e:Z

    .line 182
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->f:Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->k:Ljava/lang/String;

    .line 185
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->h:Z

    .line 186
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->i:Z

    .line 187
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->j:Z

    .line 189
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->l:Z

    .line 190
    iput-boolean v1, p0, Lnet/daum/adam/publisher/impl/f$a;->m:Z

    .line 191
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 202
    const-string v0, "DAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "version"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->k:Ljava/lang/String;

    .line 204
    iput-boolean v3, p0, Lnet/daum/adam/publisher/impl/f$a;->l:Z

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v0, "COLL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOBILEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iput-boolean v2, p0, Lnet/daum/adam/publisher/impl/f$a;->m:Z

    goto :goto_0

    .line 209
    :cond_2
    iput-boolean v3, p0, Lnet/daum/adam/publisher/impl/f$a;->m:Z

    goto :goto_0

    .line 211
    :cond_3
    const-string v0, "AD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    new-instance v0, Lnet/daum/adam/publisher/impl/b;

    invoke-direct {v0}, Lnet/daum/adam/publisher/impl/b;-><init>()V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    .line 213
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f$a;->c:Lnet/daum/adam/publisher/impl/b;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f$a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/b;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_4
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    iput-boolean v2, p0, Lnet/daum/adam/publisher/impl/f$a;->d:Z

    goto :goto_0

    .line 218
    :cond_5
    const-string v0, "curl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    iput-boolean v2, p0, Lnet/daum/adam/publisher/impl/f$a;->e:Z

    goto :goto_0

    .line 220
    :cond_6
    const-string v0, "turl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    iput-boolean v2, p0, Lnet/daum/adam/publisher/impl/f$a;->f:Z

    goto :goto_0

    .line 222
    :cond_7
    const-string v0, "html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    iput-boolean v2, p0, Lnet/daum/adam/publisher/impl/f$a;->g:Z

    goto :goto_0

    .line 224
    :cond_8
    const-string v0, "mraid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 225
    iput-boolean v2, p0, Lnet/daum/adam/publisher/impl/f$a;->h:Z

    goto :goto_0

    .line 226
    :cond_9
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 227
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/f$a;->h:Z

    if-eqz v0, :cond_0

    .line 228
    iput-boolean v2, p0, Lnet/daum/adam/publisher/impl/f$a;->i:Z

    goto :goto_0

    .line 230
    :cond_a
    const-string v0, "placementtype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/f$a;->h:Z

    if-eqz v0, :cond_0

    .line 232
    iput-boolean v2, p0, Lnet/daum/adam/publisher/impl/f$a;->j:Z

    goto/16 :goto_0
.end method
