.class final Lnet/daum/adam/publisher/impl/b/b$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AdCommandHttpContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field a:Lnet/daum/adam/publisher/impl/b/a;

.field b:Ljava/lang/String;

.field final synthetic c:Lnet/daum/adam/publisher/impl/b/b;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lnet/daum/adam/publisher/impl/b/b;Lnet/daum/adam/publisher/impl/b/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->c:Lnet/daum/adam/publisher/impl/b/b;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 133
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->d:Z

    .line 134
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->e:Z

    .line 135
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->f:Z

    .line 136
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->g:Z

    .line 137
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->h:Z

    .line 140
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/b/b$a;->a:Lnet/daum/adam/publisher/impl/b/a;

    .line 141
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 228
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->d:Z

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/b/a;->b(I)V

    .line 233
    const-string v1, "AdCommandHttpContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result Code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->e:Z

    if-eqz v1, :cond_4

    .line 235
    const-string v1, "cmd"

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/b/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b/a;->d(Ljava/lang/String;)V

    .line 237
    const-string v1, "AdCommandHttpContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cmd Parameter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_3
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b/a;->e(Ljava/lang/String;)V

    .line 240
    const-string v1, "AdCommandHttpContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Imp Parameter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_4
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->g:Z

    if-eqz v1, :cond_5

    .line 243
    sput-object v0, Lnet/daum/adam/publisher/impl/b/a;->f:Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_5
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->f:Z

    if-eqz v1, :cond_6

    .line 246
    sput-object v0, Lnet/daum/adam/publisher/impl/b/a;->g:Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_6
    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->h:Z

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b/a;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 268
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->d:Z

    .line 259
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->e:Z

    .line 260
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->f:Z

    .line 261
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->g:Z

    .line 262
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->h:Z

    .line 263
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 147
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 152
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_c

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 162
    :goto_0
    const-string v0, "result"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iput-boolean v5, p0, Lnet/daum/adam/publisher/impl/b/b$a;->d:Z

    .line 221
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object p1, p2

    .line 156
    goto :goto_0

    .line 165
    :cond_2
    const-string v0, "action"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    const-string v0, "for"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->b:Ljava/lang/String;

    .line 169
    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "interval"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    const-string v2, "delay"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    if-eqz v1, :cond_4

    .line 174
    const-string v2, "AdCommandHttpContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Interval : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/b/b$a;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lnet/daum/adam/publisher/impl/b/a;->a(I)V

    .line 181
    :cond_3
    :goto_2
    const-string v1, "cmd"

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/b/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    const-string v1, "AdCommandHttpContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cmd Action Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b/a;->a(Ljava/lang/String;)V

    .line 189
    :goto_3
    const-string v1, "agree"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iput-boolean v5, p0, Lnet/daum/adam/publisher/impl/b/b$a;->g:Z

    goto :goto_1

    .line 176
    :cond_4
    if-eqz v2, :cond_3

    .line 177
    const-string v1, "AdCommandHttpContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Delay : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/b/a;->a(I)V

    goto :goto_2

    .line 185
    :cond_5
    const-string v1, "AdCommandHttpContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Imp Action Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/b$a;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b/a;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 192
    :cond_6
    const-string v0, "item"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    iput-boolean v5, p0, Lnet/daum/adam/publisher/impl/b/b$a;->e:Z

    goto/16 :goto_1

    .line 197
    :cond_7
    const-string v0, "agree"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 200
    const-string v0, "value"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    sput-boolean v5, Lnet/daum/adam/publisher/impl/b/a;->h:Z

    goto/16 :goto_1

    .line 205
    :cond_8
    sput-boolean v2, Lnet/daum/adam/publisher/impl/b/a;->h:Z

    goto/16 :goto_1

    .line 207
    :cond_9
    const-string v0, "canwithdrawal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    iput-boolean v5, p0, Lnet/daum/adam/publisher/impl/b/b$a;->f:Z

    .line 210
    const-string v0, "value"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 212
    sput-boolean v5, Lnet/daum/adam/publisher/impl/b/a;->i:Z

    goto/16 :goto_1

    .line 214
    :cond_a
    sput-boolean v2, Lnet/daum/adam/publisher/impl/b/a;->i:Z

    goto/16 :goto_1

    .line 216
    :cond_b
    const-string v0, "msg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/b/b$a;->g:Z

    if-nez v0, :cond_0

    .line 219
    iput-boolean v5, p0, Lnet/daum/adam/publisher/impl/b/b$a;->h:Z

    goto/16 :goto_1

    :cond_c
    move-object p1, p3

    goto/16 :goto_0
.end method
