.class public final Lnet/daum/adam/publisher/impl/d/c;
.super Ljava/lang/Object;
.source "TransCoordinator.java"


# static fields
.field private static final A:D = 1.0

.field private static final B:D = 0.9996

.field private static final C:D = 0.9999

.field private static final D:D = 115.8

.field private static final E:D = -474.99

.field private static final F:D = -674.11

.field private static final G:D = 1.16

.field private static final H:D = -2.31

.field private static final I:D = -1.63

.field private static final J:D = -6.43

.field private static final K:I = 0x1

.field private static final L:D = 0.0

.field private static final M:D = 500000.0

.field private static final N:D = 2000000.0

.field private static final O:D = 1000000.0

.field private static final P:D = 500000.0

.field private static final Q:D = 200000.0

.field private static final R:D = 600000.0

.field private static final S:D = 400000.0

.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9

.field public static final j:I = 0xa

.field public static final k:I = 0xb

.field public static final l:I = 0xc

.field public static final m:D = 127.0

.field public static final n:D = 38.0

.field public static final o:D = 128.0

.field public static final p:D = 38.0

.field public static final q:D = 129.0

.field public static final r:D = 0.0

.field public static final s:D = 127.5

.field public static final t:D = 38.0

.field private static final w:D = 6378137.0

.field private static final x:D = 0.0033528106647474805

.field private static final y:D = 6377397.155

.field private static final z:D = 0.0033427731799399794


# instance fields
.field private T:D

.field private U:D

.field private V:D

.field private W:D

.field private X:D

.field private Y:D

.field private Z:D

.field private aa:D

.field private ab:[[I

.field private ac:[[I

.field u:[[I

.field v:[[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    const/4 v4, 0x4

    const/4 v6, 0x2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide v0, p0, Lnet/daum/adam/publisher/impl/d/c;->T:D

    .line 72
    iput-wide v0, p0, Lnet/daum/adam/publisher/impl/d/c;->U:D

    .line 73
    iput-wide v0, p0, Lnet/daum/adam/publisher/impl/d/c;->V:D

    .line 74
    iput-wide v0, p0, Lnet/daum/adam/publisher/impl/d/c;->W:D

    .line 75
    iput-wide v0, p0, Lnet/daum/adam/publisher/impl/d/c;->X:D

    .line 76
    iput-wide v0, p0, Lnet/daum/adam/publisher/impl/d/c;->Y:D

    .line 77
    iput-wide v0, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    .line 78
    iput-wide v0, p0, Lnet/daum/adam/publisher/impl/d/c;->aa:D

    .line 80
    const/16 v0, 0x8

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    .line 81
    const/16 v0, 0x8

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    .line 83
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v3, v6, [I

    fill-array-data v3, :array_3

    aput-object v3, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v3, v6, [I

    fill-array-data v3, :array_5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    new-array v3, v6, [I

    fill-array-data v3, :array_6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    new-array v3, v6, [I

    fill-array-data v3, :array_7

    aput-object v3, v0, v1

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->u:[[I

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v7

    new-array v1, v6, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v3, v6, [I

    fill-array-data v3, :array_b

    aput-object v3, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v3, v6, [I

    fill-array-data v3, :array_d

    aput-object v3, v0, v1

    const/4 v1, 0x6

    new-array v3, v6, [I

    fill-array-data v3, :array_e

    aput-object v3, v0, v1

    const/4 v1, 0x7

    new-array v3, v6, [I

    fill-array-data v3, :array_f

    aput-object v3, v0, v1

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->v:[[I

    .line 87
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    new-array v1, v4, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v2

    .line 88
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    new-array v1, v4, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v7

    .line 89
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    new-array v1, v4, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v6

    .line 90
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    const/4 v1, 0x3

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v0, v1

    .line 91
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    new-array v1, v4, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v4

    .line 92
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    const/4 v1, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v0, v1

    .line 93
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    const/4 v1, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v0, v1

    .line 94
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    const/4 v1, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v0, v1

    move v1, v2

    .line 96
    :goto_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 97
    iget-object v3, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    aget-object v0, v0, v1

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v3, v1

    .line 98
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    aget-object v0, v0, v1

    aget v3, v0, v2

    iget-object v4, p0, Lnet/daum/adam/publisher/impl/d/c;->u:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 99
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    aget-object v0, v0, v1

    aget v3, v0, v7

    iget-object v4, p0, Lnet/daum/adam/publisher/impl/d/c;->u:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    .line 100
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    aget-object v0, v0, v1

    aget v3, v0, v6

    iget-object v4, p0, Lnet/daum/adam/publisher/impl/d/c;->u:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    add-int/2addr v3, v4

    aput v3, v0, v6

    .line 101
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    aget-object v0, v0, v1

    const/4 v3, 0x3

    aget v4, v0, v3

    iget-object v5, p0, Lnet/daum/adam/publisher/impl/d/c;->u:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 103
    :cond_0
    return-void

    .line 83
    nop

    :array_0
    .array-data 4
        0x0
        0xc350
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xc350
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2710
    .end array-data

    :array_3
    .array-data 4
        -0x112ea
        -0x88
    .end array-data

    :array_4
    .array-data 4
        -0x23562
        -0x871
    .end array-data

    :array_5
    .array-data 4
        0x5bd6
        -0x6f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0xc350
    .end array-data

    :array_7
    .array-data 4
        0x0
        0xc350
    .end array-data

    .line 84
    :array_8
    .array-data 4
        0x0
        -0xc350
    .end array-data

    :array_9
    .array-data 4
        0x0
        -0xc350
    .end array-data

    :array_a
    .array-data 4
        0x0
        -0x2710
    .end array-data

    :array_b
    .array-data 4
        0x112ea
        0x88
    .end array-data

    :array_c
    .array-data 4
        0x23562
        0x871
    .end array-data

    :array_d
    .array-data 4
        -0x5bd6
        0x6f
    .end array-data

    :array_e
    .array-data 4
        0x0
        -0xc350
    .end array-data

    :array_f
    .array-data 4
        0x0
        -0xc350
    .end array-data

    .line 87
    :array_10
    .array-data 4
        0x1b774
        -0xc350
        0x23a50
        0xbb8
    .end array-data

    .line 88
    :array_11
    .array-data 4
        0x23a50
        -0xc350
        0x2ec70
        0x2198
    .end array-data

    .line 89
    :array_12
    .array-data 4
        0x1fbd0
        0xabe0
        0x23668
        0xe290
    .end array-data

    .line 90
    :array_13
    .array-data 4
        0x82014
        0x6acfc
        0x881bc
        0x70ea4
    .end array-data

    .line 91
    :array_14
    .array-data 4
        0x98968
        0x64b54
        0x9eb10
        0x6acfc
    .end array-data

    .line 92
    :array_15
    .array-data 4
        -0x30d4
        0x70ea4
        0x1388
        0x7d1f4
    .end array-data

    .line 93
    :array_16
    .array-data 4
        0x2ec70
        -0xc350
        0x2f698
        0xa8c
    .end array-data

    .line 94
    :array_17
    .array-data 4
        0x2f698
        -0xc350
        0x30d40
        0x2198
    .end array-data
.end method

.method private a(DDDDDDDI)V
    .locals 5

    .prologue
    .line 1280
    .line 1281
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    const-wide v3, 0x4046800000000000L    # 45.0

    div-double/2addr v1, v3

    .line 1283
    iput-wide p1, p0, Lnet/daum/adam/publisher/impl/d/c;->T:D

    .line 1284
    iput-wide p3, p0, Lnet/daum/adam/publisher/impl/d/c;->U:D

    .line 1285
    iput-wide p5, p0, Lnet/daum/adam/publisher/impl/d/c;->V:D

    .line 1286
    const-wide v3, 0x40ac200000000000L    # 3600.0

    div-double v3, p7, v3

    mul-double/2addr v3, v1

    iput-wide v3, p0, Lnet/daum/adam/publisher/impl/d/c;->W:D

    .line 1287
    const-wide v3, 0x40ac200000000000L    # 3600.0

    div-double v3, p9, v3

    mul-double/2addr v3, v1

    iput-wide v3, p0, Lnet/daum/adam/publisher/impl/d/c;->X:D

    .line 1288
    const-wide v3, 0x40ac200000000000L    # 3600.0

    div-double v3, p11, v3

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lnet/daum/adam/publisher/impl/d/c;->Y:D

    .line 1289
    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v1, v1, p13

    iput-wide v1, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    .line 1290
    move/from16 v0, p15

    int-to-double v1, v0

    iput-wide v1, p0, Lnet/daum/adam/publisher/impl/d/c;->aa:D

    .line 1291
    return-void
.end method

.method private a(DD)[D
    .locals 20

    .prologue
    .line 1098
    const-wide v6, 0x415853ed49eb851fL    # 6377397.155

    const-wide v8, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    const-wide v10, 0x41224f8000000000L    # 600000.0

    const-wide v12, 0x41186a0000000000L    # 400000.0

    const-wide v14, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide/high16 v18, 0x4060000000000000L    # 128.0

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private a(DDD)[D
    .locals 8

    .prologue
    .line 1298
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 1300
    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Y:D

    mul-double/2addr v4, p3

    iget-wide v6, p0, Lnet/daum/adam/publisher/impl/d/c;->X:D

    mul-double/2addr v6, p5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v2, p1

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->T:D

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 1301
    const/4 v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Y:D

    neg-double v4, v4

    mul-double/2addr v4, p1

    iget-wide v6, p0, Lnet/daum/adam/publisher/impl/d/c;->W:D

    mul-double/2addr v6, p5

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v2, p3

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->U:D

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 1302
    const/4 v1, 0x2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->X:D

    mul-double/2addr v4, p1

    iget-wide v6, p0, Lnet/daum/adam/publisher/impl/d/c;->W:D

    mul-double/2addr v6, p3

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v2, p5

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->V:D

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 1304
    return-object v0
.end method

.method private a(DDDD)[D
    .locals 20

    .prologue
    .line 1094
    const-wide v6, 0x415853ed49eb851fL    # 6377397.155

    const-wide v8, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    const-wide v10, 0x411e848000000000L    # 500000.0

    const-wide v12, 0x41086a0000000000L    # 200000.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v1, 0x3f67ad5a11056a73L    # 0.0028902777777777776

    add-double v18, p5, v1

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-wide/from16 v16, p7

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private a(DDDDD)[D
    .locals 11

    .prologue
    .line 1354
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 1355
    invoke-direct/range {p0 .. p6}, Lnet/daum/adam/publisher/impl/d/c;->e(DDD)[D

    move-result-object v0

    .line 1357
    iget-wide v1, p0, Lnet/daum/adam/publisher/impl/d/c;->aa:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 1358
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/daum/adam/publisher/impl/d/c;->a(DDD)[D

    move-result-object v0

    .line 1363
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [D

    .line 1364
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    move-object v0, p0

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDDD)[D

    move-result-object v0

    .line 1366
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const-wide/16 v4, 0x0

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 1367
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const-wide/16 v4, 0x0

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 1369
    return-object v0

    .line 1360
    :cond_0
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/daum/adam/publisher/impl/d/c;->c(DDD)[D

    move-result-object v0

    goto :goto_0
.end method

.method private a(DDDDDDDDD)[D
    .locals 36

    .prologue
    .line 1497
    .line 1508
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p7, v4

    if-lez v4, :cond_0

    .line 1509
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double p7, v4, p7

    .line 1511
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x4046800000000000L    # 45.0

    div-double/2addr v4, v6

    .line 1513
    mul-double v6, p1, v4

    .line 1514
    mul-double v8, p3, v4

    .line 1515
    mul-double v10, p15, v4

    .line 1516
    mul-double v4, v4, p17

    .line 1519
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double v12, v12, p7

    .line 1520
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v14, v12, v14

    mul-double v14, v14, p5

    div-double v12, v14, v12

    .line 1523
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v16

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p5

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    div-double v14, v14, v16

    .line 1526
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p5

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    div-double v16, v16, v18

    .line 1529
    sub-double v18, p5, v12

    add-double v12, v12, p5

    div-double v12, v18, v12

    .line 1530
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v12

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v22

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v24

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    div-double v20, v20, v22

    add-double v18, v18, v20

    const-wide v20, 0x4054400000000000L    # 81.0

    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v22

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v24

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4050000000000000L    # 64.0

    div-double v20, v20, v22

    add-double v18, v18, v20

    mul-double v18, v18, p5

    .line 1531
    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v20, v20, p5

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v22

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    sub-double v22, v12, v22

    const-wide/high16 v24, 0x401c000000000000L    # 7.0

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v26

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v28

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    sub-double v26, v26, v28

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4020000000000000L    # 8.0

    div-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x404b800000000000L    # 55.0

    const-wide/high16 v26, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v26

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4050000000000000L    # 64.0

    div-double v24, v24, v26

    add-double v22, v22, v24

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    .line 1532
    const-wide/high16 v22, 0x402e000000000000L    # 15.0

    mul-double v22, v22, p5

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v24

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v26

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v28

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v30

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    div-double v26, v26, v28

    add-double v24, v24, v26

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x4030000000000000L    # 16.0

    div-double v22, v22, v24

    .line 1533
    const-wide v24, 0x4041800000000000L    # 35.0

    mul-double v24, v24, p5

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v26

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v28

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4026000000000000L    # 11.0

    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v30

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4030000000000000L    # 16.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4048000000000000L    # 48.0

    div-double v24, v24, v26

    .line 1534
    const-wide v26, 0x4073b00000000000L    # 315.0

    mul-double v26, v26, p5

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v28

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v30

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-double v12, v28, v12

    mul-double v12, v12, v26

    const-wide/high16 v26, 0x4080000000000000L    # 512.0

    div-double v12, v12, v26

    .line 1536
    sub-double v4, v8, v4

    .line 1539
    mul-double v8, v18, v10

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v10

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v20

    sub-double v8, v8, v26

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    mul-double v26, v26, v10

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v22

    add-double v8, v8, v26

    const-wide/high16 v26, 0x4018000000000000L    # 6.0

    mul-double v26, v26, v10

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v24

    sub-double v8, v8, v26

    const-wide/high16 v26, 0x4020000000000000L    # 8.0

    mul-double v10, v10, v26

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 1541
    mul-double v8, v8, p13

    .line 1544
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 1545
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    .line 1547
    div-double v28, v10, v26

    .line 1548
    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v26

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    mul-double v16, v16, v30

    .line 1551
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v14, v14, v32

    sub-double v14, v30, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    div-double v14, p5, v14

    .line 1554
    mul-double v18, v18, v6

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v6

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v20, v20, v30

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    mul-double v20, v20, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4018000000000000L    # 6.0

    mul-double v20, v20, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v24

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    mul-double v6, v6, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double v6, v6, v18

    .line 1556
    const/4 v12, 0x2

    new-array v12, v12, [D

    .line 1558
    mul-double v6, v6, p13

    .line 1559
    mul-double v18, v14, v10

    mul-double v18, v18, v26

    mul-double v18, v18, p13

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    .line 1560
    mul-double v20, v14, v10

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v26

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    mul-double v20, v20, p13

    const-wide/high16 v22, 0x4014000000000000L    # 5.0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    sub-double v22, v22, v24

    const-wide/high16 v24, 0x4022000000000000L    # 9.0

    mul-double v24, v24, v16

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    mul-double v24, v24, v30

    add-double v22, v22, v24

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4038000000000000L    # 24.0

    div-double v20, v20, v22

    .line 1562
    mul-double v22, v14, v10

    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v26

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v22, v22, v24

    mul-double v22, v22, p13

    const-wide v24, 0x404e800000000000L    # 61.0

    const-wide/high16 v30, 0x404d000000000000L    # 58.0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    sub-double v24, v24, v30

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    add-double v24, v24, v30

    const-wide v30, 0x4070e00000000000L    # 270.0

    mul-double v30, v30, v16

    add-double v24, v24, v30

    const-wide v30, 0x4074a00000000000L    # 330.0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    mul-double v30, v30, v16

    sub-double v24, v24, v30

    const-wide v30, 0x407bd00000000000L    # 445.0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v24, v24, v30

    const-wide v30, 0x4074400000000000L    # 324.0

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v24, v24, v30

    const-wide v30, 0x4085400000000000L    # 680.0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    sub-double v24, v24, v30

    const-wide/high16 v30, 0x4056000000000000L    # 88.0

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v24, v24, v30

    const-wide v30, 0x4082c00000000000L    # 600.0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    sub-double v24, v24, v30

    const-wide/high16 v30, 0x4068000000000000L    # 192.0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    sub-double v24, v24, v30

    mul-double v22, v22, v24

    const-wide v24, 0x4086800000000000L    # 720.0

    div-double v22, v22, v24

    .line 1569
    mul-double/2addr v10, v14

    const-wide/high16 v24, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v26

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v10, v10, v24

    mul-double v10, v10, p13

    const-wide v24, 0x4095a40000000000L    # 1385.0

    const-wide v30, 0x40a84e0000000000L    # 3111.0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    sub-double v24, v24, v30

    const-wide v30, 0x4080f80000000000L    # 543.0

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v24, v24, v30

    const-wide/high16 v30, 0x4018000000000000L    # 6.0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    sub-double v24, v24, v30

    mul-double v10, v10, v24

    const-wide v24, 0x40e3b00000000000L    # 40320.0

    div-double v10, v10, v24

    .line 1570
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v24

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v18, v18, v24

    add-double v6, v6, v18

    const-wide/high16 v18, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v20

    add-double v6, v6, v18

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v22

    add-double v6, v6, v18

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v10, v10, v18

    add-double/2addr v6, v10

    .line 1571
    const/4 v10, 0x0

    sub-double/2addr v6, v8

    add-double v6, v6, p9

    aput-wide v6, v12, v10

    .line 1573
    mul-double v6, v14, v26

    mul-double v6, v6, p13

    .line 1574
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v14

    mul-double v8, v8, p13

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    sub-double v10, v10, v18

    add-double v10, v10, v16

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    div-double/2addr v8, v10

    .line 1575
    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v14

    mul-double v10, v10, p13

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    const-wide/high16 v20, 0x4032000000000000L    # 18.0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    const-wide/high16 v20, 0x402c000000000000L    # 14.0

    mul-double v20, v20, v16

    add-double v18, v18, v20

    const-wide/high16 v20, 0x404d000000000000L    # 58.0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x402a000000000000L    # 13.0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4050000000000000L    # 64.0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x4039000000000000L    # 25.0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v20

    sub-double v16, v18, v16

    mul-double v10, v10, v16

    const-wide/high16 v16, 0x405e000000000000L    # 120.0

    div-double v10, v10, v16

    .line 1580
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v26

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v13, v14, v16

    mul-double v13, v13, p13

    const-wide v15, 0x404e800000000000L    # 61.0

    const-wide v17, 0x407df00000000000L    # 479.0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    const-wide v17, 0x4066600000000000L    # 179.0

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    mul-double v17, v17, v19

    add-double v15, v15, v17

    const-wide/high16 v17, 0x4018000000000000L    # 6.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    sub-double v15, v15, v17

    mul-double/2addr v13, v15

    const-wide v15, 0x40b3b00000000000L    # 5040.0

    div-double/2addr v13, v15

    .line 1581
    const/4 v15, 0x1

    mul-double/2addr v6, v4

    add-double v6, v6, p11

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v13

    add-double/2addr v4, v6

    aput-wide v4, v12, v15

    .line 1583
    return-object v12
.end method

.method private a(DDZ)[D
    .locals 12

    .prologue
    .line 1251
    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    .line 1252
    const/4 v0, 0x2

    new-array v5, v0, [D

    .line 1254
    if-eqz p5, :cond_2

    .line 1255
    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    array-length v6, v6

    if-ge v0, v6, :cond_4

    .line 1256
    iget-object v6, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    cmpl-double v6, p1, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-double v6, v6

    cmpg-double v6, p1, v6

    if-gez v6, :cond_1

    iget-object v6, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-double v6, v6

    cmpl-double v6, p3, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lnet/daum/adam/publisher/impl/d/c;->ab:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-double v6, v6

    cmpg-double v6, p3, v6

    if-gez v6, :cond_1

    .line 1257
    iget-object v6, p0, Lnet/daum/adam/publisher/impl/d/c;->u:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    add-double/2addr v3, v6

    .line 1258
    iget-object v6, p0, Lnet/daum/adam/publisher/impl/d/c;->u:[[I

    aget-object v0, v6, v0

    const/4 v6, 0x1

    aget v0, v0, v6

    int-to-double v6, v0

    add-double v0, v1, v6

    move-wide v2, v3

    .line 1262
    :goto_1
    const/4 v4, 0x0

    add-double/2addr v2, p1

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    int-to-double v2, v2

    aput-wide v2, v5, v4

    .line 1263
    const/4 v2, 0x1

    add-double/2addr v0, p3

    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    mul-double/2addr v0, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v3

    double-to-int v0, v0

    int-to-double v0, v0

    aput-wide v0, v5, v2

    .line 1276
    :cond_0
    :goto_2
    return-object v5

    .line 1255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1265
    :cond_2
    const/4 v0, 0x0

    const-wide/high16 v1, 0x4004000000000000L    # 2.5

    div-double v1, p1, v1

    aput-wide v1, v5, v0

    .line 1266
    const/4 v0, 0x1

    const-wide/high16 v1, 0x4004000000000000L    # 2.5

    div-double v1, p3, v1

    aput-wide v1, v5, v0

    .line 1267
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1268
    const/4 v1, 0x0

    aget-wide v1, v5, v1

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    const/4 v1, 0x0

    aget-wide v1, v5, v1

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    const/4 v1, 0x1

    aget-wide v1, v5, v1

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    const/4 v1, 0x1

    aget-wide v1, v5, v1

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/d/c;->ac:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    .line 1269
    const/4 v1, 0x0

    aget-wide v2, v5, v1

    iget-object v4, p0, Lnet/daum/adam/publisher/impl/d/c;->v:[[I

    aget-object v4, v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-double v6, v4

    add-double/2addr v2, v6

    aput-wide v2, v5, v1

    .line 1270
    const/4 v1, 0x1

    aget-wide v2, v5, v1

    iget-object v4, p0, Lnet/daum/adam/publisher/impl/d/c;->v:[[I

    aget-object v0, v4, v0

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-double v6, v0

    add-double/2addr v2, v6

    aput-wide v2, v5, v1

    goto :goto_2

    .line 1267
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move-wide v8, v1

    move-wide v0, v8

    move-wide v10, v3

    move-wide v2, v10

    goto/16 :goto_1
.end method

.method private a([D)[D
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1243
    aget-wide v0, p1, v4

    .line 1244
    aget-wide v2, p1, v5

    aput-wide v2, p1, v4

    .line 1245
    aput-wide v0, p1, v5

    .line 1246
    return-object p1
.end method

.method private b(DD)[D
    .locals 20

    .prologue
    .line 1102
    .line 1104
    const-wide v6, 0x415853ed49eb851fL    # 6377397.155

    const-wide v8, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    const-wide v10, 0x411e848000000000L    # 500000.0

    const-wide v12, 0x41086a0000000000L    # 200000.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide v18, 0x405fc02f5ab4220bL    # 127.00289027777778

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDDD)[D

    move-result-object v1

    .line 1105
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    .line 1107
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lnet/daum/adam/publisher/impl/d/c;->a(DDZ)[D

    move-result-object v1

    return-object v1
.end method

.method private b(DDD)[D
    .locals 14

    .prologue
    .line 1310
    .line 1311
    iget-wide v0, p0, Lnet/daum/adam/publisher/impl/d/c;->T:D

    sub-double v0, p1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 1312
    iget-wide v2, p0, Lnet/daum/adam/publisher/impl/d/c;->U:D

    sub-double v2, p3, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 1313
    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->V:D

    sub-double v4, p5, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v8, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    .line 1315
    const/4 v6, 0x3

    new-array v6, v6, [D

    .line 1316
    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-wide v12, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    iget-wide v10, p0, Lnet/daum/adam/publisher/impl/d/c;->Y:D

    mul-double/2addr v10, v2

    sub-double v10, v0, v10

    iget-wide v12, p0, Lnet/daum/adam/publisher/impl/d/c;->X:D

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 1317
    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-wide v12, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    iget-wide v10, p0, Lnet/daum/adam/publisher/impl/d/c;->Y:D

    mul-double/2addr v10, v0

    add-double/2addr v10, v2

    iget-wide v12, p0, Lnet/daum/adam/publisher/impl/d/c;->W:D

    mul-double/2addr v12, v4

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 1318
    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-wide v12, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    iget-wide v10, p0, Lnet/daum/adam/publisher/impl/d/c;->X:D

    neg-double v10, v10

    mul-double/2addr v0, v10

    iget-wide v10, p0, Lnet/daum/adam/publisher/impl/d/c;->W:D

    mul-double/2addr v2, v10

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    mul-double/2addr v0, v8

    aput-wide v0, v6, v7

    .line 1320
    return-object v6
.end method

.method private b(DDDD)[D
    .locals 20

    .prologue
    .line 1124
    const-wide v6, 0x415853ed49eb851fL    # 6377397.155

    const-wide v8, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    const-wide/16 v10, 0x0

    const-wide v12, 0x411e848000000000L    # 500000.0

    const-wide v14, 0x3feffcb923a29c78L    # 0.9996

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-wide/from16 v16, p7

    move-wide/from16 v18, p5

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private b(DDDDD)[D
    .locals 7

    .prologue
    .line 1389
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 1390
    invoke-direct/range {p0 .. p10}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDDD)[D

    move-result-object v0

    .line 1392
    iget-wide v1, p0, Lnet/daum/adam/publisher/impl/d/c;->aa:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 1393
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/daum/adam/publisher/impl/d/c;->b(DDD)[D

    move-result-object v0

    .line 1398
    :goto_0
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/daum/adam/publisher/impl/d/c;->f(DDD)[D

    move-result-object v0

    return-object v0

    .line 1395
    :cond_0
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/daum/adam/publisher/impl/d/c;->d(DDD)[D

    move-result-object v0

    goto :goto_0
.end method

.method private b(DDDDDDDDD)[D
    .locals 37

    .prologue
    .line 1589
    .line 1597
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p7, v4

    if-lez v4, :cond_0

    .line 1598
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double p7, v4, p7

    .line 1602
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x4046800000000000L    # 45.0

    div-double v7, v4, v6

    .line 1603
    mul-double v4, p15, v7

    .line 1604
    mul-double v9, p17, v7

    .line 1607
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v11, v11, p7

    .line 1608
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v13, v11, v13

    mul-double v13, v13, p5

    div-double v11, v13, v11

    .line 1611
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    move-wide v0, v15

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    sub-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p5

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    div-double/2addr v13, v15

    .line 1614
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p5

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    sub-double v15, v15, v17

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    div-double v15, v15, v17

    .line 1617
    sub-double v17, p5, v11

    add-double v11, v11, p5

    div-double v11, v17, v11

    .line 1618
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v17, v17, v11

    const-wide/high16 v19, 0x4014000000000000L    # 5.0

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v21

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v23

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    sub-double v21, v21, v23

    mul-double v19, v19, v21

    const-wide/high16 v21, 0x4010000000000000L    # 4.0

    div-double v19, v19, v21

    add-double v17, v17, v19

    const-wide v19, 0x4054400000000000L    # 81.0

    const-wide/high16 v21, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v21

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    const-wide/high16 v23, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v23

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    sub-double v21, v21, v23

    mul-double v19, v19, v21

    const-wide/high16 v21, 0x4050000000000000L    # 64.0

    div-double v19, v19, v21

    add-double v17, v17, v19

    mul-double v17, v17, p5

    .line 1619
    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    mul-double v19, v19, p5

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v21

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    sub-double v21, v11, v21

    const-wide/high16 v23, 0x401c000000000000L    # 7.0

    const-wide/high16 v25, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v25

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v27

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    sub-double v25, v25, v27

    mul-double v23, v23, v25

    const-wide/high16 v25, 0x4020000000000000L    # 8.0

    div-double v23, v23, v25

    add-double v21, v21, v23

    const-wide v23, 0x404b800000000000L    # 55.0

    const-wide/high16 v25, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v25

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    mul-double v23, v23, v25

    const-wide/high16 v25, 0x4050000000000000L    # 64.0

    div-double v23, v23, v25

    add-double v21, v21, v23

    mul-double v19, v19, v21

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v19, v19, v21

    .line 1620
    const-wide/high16 v21, 0x402e000000000000L    # 15.0

    mul-double v21, v21, p5

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v23

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    const-wide/high16 v25, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v25

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    sub-double v23, v23, v25

    const-wide/high16 v25, 0x4008000000000000L    # 3.0

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v27

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    const-wide/high16 v29, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v29

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    sub-double v27, v27, v29

    mul-double v25, v25, v27

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    div-double v25, v25, v27

    add-double v23, v23, v25

    mul-double v21, v21, v23

    const-wide/high16 v23, 0x4030000000000000L    # 16.0

    div-double v21, v21, v23

    .line 1621
    const-wide v23, 0x4041800000000000L    # 35.0

    mul-double v23, v23, p5

    const-wide/high16 v25, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v25

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v27

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x4026000000000000L    # 11.0

    const-wide/high16 v29, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v29

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    const-wide/high16 v29, 0x4030000000000000L    # 16.0

    div-double v27, v27, v29

    add-double v25, v25, v27

    mul-double v23, v23, v25

    const-wide/high16 v25, 0x4048000000000000L    # 48.0

    div-double v23, v23, v25

    .line 1622
    const-wide v25, 0x4073b00000000000L    # 315.0

    mul-double v25, v25, p5

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v27

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    const-wide/high16 v29, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v29

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    sub-double v11, v27, v11

    mul-double v11, v11, v25

    const-wide/high16 v25, 0x4080000000000000L    # 512.0

    div-double v11, v11, v25

    .line 1625
    mul-double v25, v17, v4

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v27, v27, v4

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v19

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    mul-double v27, v27, v4

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v21

    add-double v25, v25, v27

    const-wide/high16 v27, 0x4018000000000000L    # 6.0

    mul-double v27, v27, v4

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v23

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x4020000000000000L    # 8.0

    mul-double v4, v4, v27

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v11

    add-double v4, v4, v25

    .line 1627
    mul-double v4, v4, p13

    .line 1630
    add-double v4, v4, p1

    sub-double v4, v4, p9

    .line 1631
    div-double v25, v4, p13

    .line 1634
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v13

    mul-double v4, v4, p5

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    const-wide/16 v29, 0x0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    invoke-static/range {v29 .. v32}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v29, v29, v13

    sub-double v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v27

    const-wide/high16 v29, 0x4008000000000000L    # 3.0

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    div-double v4, v4, v27

    .line 1635
    div-double v5, v25, v4

    .line 1638
    const/4 v4, 0x1

    :goto_0
    const/16 v27, 0x5

    move/from16 v0, v27

    if-gt v4, v0, :cond_1

    .line 1640
    mul-double v27, v17, v5

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    mul-double v29, v29, v5

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v29, v29, v19

    sub-double v27, v27, v29

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    mul-double v29, v29, v5

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v29, v29, v21

    add-double v27, v27, v29

    const-wide/high16 v29, 0x4018000000000000L    # 6.0

    mul-double v29, v29, v5

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v29, v29, v23

    sub-double v27, v27, v29

    const-wide/high16 v29, 0x4020000000000000L    # 8.0

    mul-double v29, v29, v5

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v29, v29, v11

    add-double v27, v27, v29

    .line 1644
    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    sub-double v29, v29, v13

    mul-double v29, v29, p5

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    mul-double v33, v33, v13

    sub-double v31, v31, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v31

    const-wide/high16 v33, 0x4008000000000000L    # 3.0

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    div-double v29, v29, v31

    .line 1648
    sub-double v27, v25, v27

    div-double v27, v27, v29

    add-double v5, v5, v27

    .line 1638
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1652
    :cond_1
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v11, v13

    mul-double v11, v11, p5

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    mul-double v19, v19, v13

    sub-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    div-double v11, v11, v17

    .line 1655
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    mul-double v13, v13, v19

    sub-double v13, v17, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    div-double v13, p5, v13

    .line 1658
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    .line 1659
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    .line 1660
    div-double v17, v17, v19

    .line 1661
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    mul-double v15, v15, v21

    .line 1664
    sub-double v21, p3, p11

    .line 1667
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v23, v23, v11

    mul-double v23, v23, v13

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p13

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    mul-double v23, v23, v25

    div-double v23, v17, v23

    .line 1668
    const-wide/high16 v25, 0x4014000000000000L    # 5.0

    const-wide/high16 v27, 0x4008000000000000L    # 3.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    add-double v25, v25, v27

    add-double v25, v25, v15

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide v0, v15

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x4022000000000000L    # 9.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    mul-double v27, v27, v15

    sub-double v25, v25, v27

    mul-double v25, v25, v17

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    mul-double v27, v27, v11

    const-wide/high16 v29, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v29

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, p13

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    div-double v25, v25, v27

    .line 1670
    const-wide v27, 0x404e800000000000L    # 61.0

    const-wide v29, 0x4056800000000000L    # 90.0

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    add-double v27, v27, v29

    const-wide/high16 v29, 0x4047000000000000L    # 46.0

    mul-double v29, v29, v15

    add-double v27, v27, v29

    const-wide v29, 0x4046800000000000L    # 45.0

    const-wide/high16 v31, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    add-double v27, v27, v29

    const-wide v29, 0x406f800000000000L    # 252.0

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    mul-double v29, v29, v15

    sub-double v27, v27, v29

    const-wide/high16 v29, 0x4008000000000000L    # 3.0

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-wide v0, v15

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    const-wide/high16 v29, 0x4059000000000000L    # 100.0

    const-wide/high16 v31, 0x4008000000000000L    # 3.0

    move-wide v0, v15

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    add-double v27, v27, v29

    const-wide v29, 0x4050800000000000L    # 66.0

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-wide v0, v15

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    const-wide v29, 0x4056800000000000L    # 90.0

    const-wide/high16 v31, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    mul-double v29, v29, v15

    sub-double v27, v27, v29

    const-wide/high16 v29, 0x4056000000000000L    # 88.0

    const-wide/high16 v31, 0x4010000000000000L    # 4.0

    move-wide v0, v15

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    add-double v27, v27, v29

    const-wide v29, 0x406c200000000000L    # 225.0

    const-wide/high16 v31, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-wide v0, v15

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    add-double v27, v27, v29

    const-wide/high16 v29, 0x4055000000000000L    # 84.0

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    const-wide/high16 v31, 0x4008000000000000L    # 3.0

    move-wide v0, v15

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    add-double v27, v27, v29

    const-wide/high16 v29, 0x4068000000000000L    # 192.0

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    const-wide/high16 v31, 0x4010000000000000L    # 4.0

    move-wide v0, v15

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    mul-double v27, v27, v17

    const-wide v29, 0x4086800000000000L    # 720.0

    mul-double v29, v29, v11

    const-wide/high16 v31, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v31

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    const-wide/high16 v31, 0x4018000000000000L    # 6.0

    move-wide/from16 v0, p13

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v29, v29, v31

    div-double v27, v27, v29

    .line 1675
    const-wide v29, 0x4095a40000000000L    # 1385.0

    const-wide v31, 0x40ac620000000000L    # 3633.0

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v33

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    mul-double v31, v31, v33

    add-double v29, v29, v31

    const-wide v31, 0x40affe0000000000L    # 4095.0

    const-wide/high16 v33, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v33

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    mul-double v31, v31, v33

    add-double v29, v29, v31

    const-wide v31, 0x40989c0000000000L    # 1575.0

    const-wide/high16 v33, 0x4018000000000000L    # 6.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v33

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    mul-double v31, v31, v33

    add-double v29, v29, v31

    mul-double v29, v29, v17

    const-wide v31, 0x40e3b00000000000L    # 40320.0

    mul-double v11, v11, v31

    const-wide/high16 v31, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v31

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v11, v11, v31

    const-wide/high16 v31, 0x4020000000000000L    # 8.0

    move-wide/from16 v0, p13

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    mul-double v11, v11, v31

    div-double v11, v29, v11

    .line 1679
    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v21

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v23, v23, v29

    sub-double v4, v5, v23

    const-wide/high16 v23, 0x4010000000000000L    # 4.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    mul-double v23, v23, v25

    add-double v4, v4, v23

    const-wide/high16 v23, 0x4018000000000000L    # 6.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    mul-double v23, v23, v27

    sub-double v4, v4, v23

    const-wide/high16 v23, 0x4020000000000000L    # 8.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    mul-double v11, v11, v23

    add-double/2addr v4, v11

    .line 1682
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    mul-double v23, v13, v19

    mul-double v23, v23, p13

    div-double v11, v11, v23

    .line 1683
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v27

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    mul-double v25, v25, v27

    add-double v23, v23, v25

    add-double v23, v23, v15

    const-wide/high16 v25, 0x4018000000000000L    # 6.0

    const-wide/high16 v27, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v27

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    mul-double v25, v25, v27

    mul-double v25, v25, v19

    const-wide/high16 v27, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, p13

    move-wide/from16 v2, v27

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    mul-double v25, v25, v27

    div-double v23, v23, v25

    .line 1684
    const-wide/high16 v25, 0x4014000000000000L    # 5.0

    const-wide/high16 v27, 0x4018000000000000L    # 6.0

    mul-double v27, v27, v15

    add-double v25, v25, v27

    const-wide/high16 v27, 0x403c000000000000L    # 28.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    add-double v25, v25, v27

    const-wide/high16 v27, 0x4008000000000000L    # 3.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide v0, v15

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x4020000000000000L    # 8.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    mul-double v27, v27, v15

    add-double v25, v25, v27

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    add-double v25, v25, v27

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    const-wide/high16 v29, 0x4008000000000000L    # 3.0

    move-wide v0, v15

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide v0, v15

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    add-double v25, v25, v27

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    const-wide/high16 v29, 0x4008000000000000L    # 3.0

    move-wide v0, v15

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double v15, v15, v27

    add-double v15, v15, v25

    const-wide/high16 v25, 0x405e000000000000L    # 120.0

    const-wide/high16 v27, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v27

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    mul-double v25, v25, v27

    mul-double v25, v25, v19

    const-wide/high16 v27, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, p13

    move-wide/from16 v2, v27

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    mul-double v25, v25, v27

    div-double v15, v15, v25

    .line 1687
    const-wide v25, 0x404e800000000000L    # 61.0

    const-wide v27, 0x4084b00000000000L    # 662.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    add-double v25, v25, v27

    const-wide v27, 0x4094a00000000000L    # 1320.0

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    add-double v25, v25, v27

    const-wide v27, 0x4086800000000000L    # 720.0

    const-wide/high16 v29, 0x4018000000000000L    # 6.0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v17, v17, v27

    add-double v17, v17, v25

    const-wide v25, 0x40b3b00000000000L    # 5040.0

    const-wide/high16 v27, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v27

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double v13, v13, v25

    mul-double v13, v13, v19

    const-wide/high16 v19, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, p13

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    mul-double v13, v13, v19

    div-double v13, v17, v13

    .line 1691
    mul-double v11, v11, v21

    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v21

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v17, v17, v23

    sub-double v11, v11, v17

    const-wide/high16 v17, 0x4014000000000000L    # 5.0

    move-wide/from16 v0, v21

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double/2addr v11, v15

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v21

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    .line 1694
    add-double/2addr v9, v11

    .line 1696
    const/4 v6, 0x2

    new-array v6, v6, [D

    .line 1699
    const/4 v11, 0x0

    div-double/2addr v4, v7

    aput-wide v4, v6, v11

    .line 1700
    const/4 v4, 0x1

    div-double v7, v9, v7

    aput-wide v7, v6, v4

    .line 1702
    return-object v6
.end method

.method private c(DD)[D
    .locals 17

    .prologue
    .line 1112
    .line 1114
    const-wide v2, 0x405cf33333333333L    # 115.8

    const-wide v4, -0x3f825028f5c28f5cL    # -474.99

    const-wide v6, -0x3f7aef1eb851eb85L    # -674.11

    const-wide v8, 0x3ff28f5c28f5c28fL    # 1.16

    const-wide v10, -0x3ffd851eb851eb85L    # -2.31

    const-wide v12, -0x4005eb851eb851ecL    # -1.63

    const-wide v14, -0x3fe647ae147ae148L    # -6.43

    const/16 v16, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDI)V

    .line 1115
    const-wide/16 v6, 0x0

    const-wide v8, 0x415853ed49eb851fL    # 6377397.155

    const-wide v10, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v11}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDD)[D

    move-result-object v1

    .line 1117
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private c(DDD)[D
    .locals 8

    .prologue
    .line 1328
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 1330
    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Y:D

    mul-double/2addr v4, p3

    add-double/2addr v4, p1

    iget-wide v6, p0, Lnet/daum/adam/publisher/impl/d/c;->X:D

    mul-double/2addr v6, p5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->T:D

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 1331
    const/4 v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Y:D

    neg-double v4, v4

    mul-double/2addr v4, p1

    add-double/2addr v4, p3

    iget-wide v6, p0, Lnet/daum/adam/publisher/impl/d/c;->W:D

    mul-double/2addr v6, p5

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->U:D

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 1332
    const/4 v1, 0x2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->X:D

    mul-double/2addr v4, p1

    iget-wide v6, p0, Lnet/daum/adam/publisher/impl/d/c;->W:D

    mul-double/2addr v6, p3

    sub-double/2addr v4, v6

    add-double/2addr v4, p5

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->V:D

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 1334
    return-object v0
.end method

.method private c(DDDD)[D
    .locals 20

    .prologue
    .line 1135
    const-wide v2, 0x405cf33333333333L    # 115.8

    const-wide v4, -0x3f825028f5c28f5cL    # -474.99

    const-wide v6, -0x3f7aef1eb851eb85L    # -674.11

    const-wide v8, 0x3ff28f5c28f5c28fL    # 1.16

    const-wide v10, -0x3ffd851eb851eb85L    # -2.31

    const-wide v12, -0x4005eb851eb851ecL    # -1.63

    const-wide v14, -0x3fe647ae147ae148L    # -6.43

    const/16 v16, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDI)V

    .line 1140
    const-wide v6, 0x415854a640000000L    # 6378137.0

    const-wide v8, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    const-wide/16 v10, 0x0

    const-wide v12, 0x411e848000000000L    # 500000.0

    const-wide v14, 0x3feffcb923a29c78L    # 0.9996

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-wide/from16 v16, p7

    move-wide/from16 v18, p5

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private c(DDDDD)[D
    .locals 17

    .prologue
    .line 1405
    const/4 v2, 0x3

    new-array v2, v2, [D

    .line 1409
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p9, v3

    if-lez v3, :cond_0

    .line 1410
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double p9, v3, p9

    .line 1412
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    const-wide v5, 0x4046800000000000L    # 45.0

    div-double/2addr v3, v5

    .line 1413
    mul-double v5, p1, v3

    .line 1414
    mul-double v3, v3, p3

    .line 1418
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v7, v7, p9

    .line 1419
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v9, v7, v9

    mul-double v9, v9, p7

    div-double v7, v9, v7

    .line 1420
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    div-double/2addr v9, v11

    .line 1423
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v9, v13

    sub-double v9, v11, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double v9, p7, v9

    .line 1426
    const/4 v11, 0x0

    add-double v12, v9, p5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    aput-wide v12, v2, v11

    .line 1427
    const/4 v11, 0x1

    add-double v12, v9, p5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v12

    aput-wide v3, v2, v11

    .line 1428
    const/4 v3, 0x2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    div-double/2addr v7, v11

    mul-double/2addr v7, v9

    add-double v7, v7, p5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v7

    aput-wide v4, v2, v3

    .line 1430
    return-object v2
.end method

.method private d(DD)[D
    .locals 20

    .prologue
    .line 1129
    const-wide v6, 0x415853ed49eb851fL    # 6377397.155

    const-wide v8, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    const-wide v10, 0x413e848000000000L    # 2000000.0

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const-wide v14, 0x3feffcb923a29c78L    # 0.9996

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide v18, 0x405fe02f5ab4220bL    # 127.50289027777778

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private d(DDD)[D
    .locals 14

    .prologue
    .line 1340
    .line 1341
    iget-wide v0, p0, Lnet/daum/adam/publisher/impl/d/c;->T:D

    sub-double v0, p1, v0

    .line 1342
    iget-wide v2, p0, Lnet/daum/adam/publisher/impl/d/c;->U:D

    sub-double v2, p3, v2

    .line 1343
    iget-wide v4, p0, Lnet/daum/adam/publisher/impl/d/c;->V:D

    sub-double v4, p5, v4

    .line 1345
    const/4 v6, 0x3

    new-array v6, v6, [D

    .line 1346
    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-wide v12, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    iget-wide v10, p0, Lnet/daum/adam/publisher/impl/d/c;->Y:D

    mul-double/2addr v10, v2

    sub-double v10, v0, v10

    iget-wide v12, p0, Lnet/daum/adam/publisher/impl/d/c;->X:D

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 1347
    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-wide v12, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    iget-wide v10, p0, Lnet/daum/adam/publisher/impl/d/c;->Y:D

    mul-double/2addr v10, v0

    add-double/2addr v10, v2

    iget-wide v12, p0, Lnet/daum/adam/publisher/impl/d/c;->W:D

    mul-double/2addr v12, v4

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 1348
    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-wide v12, p0, Lnet/daum/adam/publisher/impl/d/c;->Z:D

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    iget-wide v10, p0, Lnet/daum/adam/publisher/impl/d/c;->X:D

    neg-double v10, v10

    mul-double/2addr v0, v10

    iget-wide v10, p0, Lnet/daum/adam/publisher/impl/d/c;->W:D

    mul-double/2addr v2, v10

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    mul-double/2addr v0, v8

    aput-wide v0, v6, v7

    .line 1350
    return-object v6
.end method

.method private d(DDDD)[D
    .locals 20

    .prologue
    .line 1161
    const-wide v6, 0x415854a640000000L    # 6378137.0

    const-wide v8, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    const-wide v10, 0x411e848000000000L    # 500000.0

    const-wide v12, 0x41086a0000000000L    # 200000.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-wide/from16 v16, p7

    move-wide/from16 v18, p5

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private d(DDDDD)[D
    .locals 25

    .prologue
    .line 1438
    const-wide/16 v7, 0x0

    .line 1439
    const-wide/16 v5, 0x0

    .line 1442
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p9, v9

    if-lez v4, :cond_0

    .line 1443
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double p9, v9, p9

    .line 1445
    :cond_0
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    const-wide v11, 0x4046800000000000L    # 45.0

    div-double v13, v9, v11

    .line 1449
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double v9, v9, p9

    .line 1450
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v11, v9, v11

    mul-double v11, v11, p7

    div-double v15, v11, v9

    .line 1451
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    move-wide v0, v15

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    div-double v17, v9, v11

    .line 1454
    div-double v9, p3, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v19

    .line 1457
    mul-double v9, p1, p1

    mul-double v11, p3, p3

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    .line 1461
    const/4 v4, 0x0

    move-wide v9, v7

    move-wide/from16 v7, p7

    .line 1463
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 1464
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    move-wide v0, v15

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p7

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    div-double v11, v11, v23

    mul-double/2addr v7, v11

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double/2addr v5, v7

    .line 1465
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double v5, p5, v5

    .line 1466
    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    .line 1468
    sub-double v5, v11, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3c32725dd1d243acL    # 1.0E-18

    cmpg-double v5, v5, v7

    if-gez v5, :cond_4

    .line 1480
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [D

    .line 1482
    const/4 v5, 0x0

    div-double v6, v11, v13

    aput-wide v6, v4, v5

    .line 1483
    const/4 v5, 0x1

    div-double v6, v19, v13

    aput-wide v6, v4, v5

    .line 1484
    const-wide/16 v5, 0x0

    cmpg-double v5, p1, v5

    if-gez v5, :cond_2

    .line 1485
    const/4 v5, 0x1

    const-wide v6, 0x4066800000000000L    # 180.0

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 1486
    :cond_2
    const/4 v5, 0x1

    aget-wide v5, v4, v5

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_3

    .line 1487
    const/4 v5, 0x1

    const-wide v6, 0x4076800000000000L    # 360.0

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 1489
    :cond_3
    return-object v4

    .line 1471
    :cond_4
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v17

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double v7, p7, v5

    .line 1473
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double v5, v21, v5

    sub-double/2addr v5, v7

    .line 1476
    const/16 v9, 0x1e

    if-gt v4, v9, :cond_1

    move-wide v9, v11

    goto/16 :goto_0
.end method

.method private e(DD)[D
    .locals 20

    .prologue
    .line 1145
    const-wide v2, 0x405cf33333333333L    # 115.8

    const-wide v4, -0x3f825028f5c28f5cL    # -474.99

    const-wide v6, -0x3f7aef1eb851eb85L    # -674.11

    const-wide v8, 0x3ff28f5c28f5c28fL    # 1.16

    const-wide v10, -0x3ffd851eb851eb85L    # -2.31

    const-wide v12, -0x4005eb851eb851ecL    # -1.63

    const-wide v14, -0x3fe647ae147ae148L    # -6.43

    const/16 v16, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDI)V

    .line 1147
    const-wide v6, 0x415854a640000000L    # 6378137.0

    const-wide v8, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    const-wide v10, 0x413e848000000000L    # 2000000.0

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const-wide v14, 0x3feffcb923a29c78L    # 0.9996

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide v18, 0x405fe00000000000L    # 127.5

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private e(DDD)[D
    .locals 11

    .prologue
    .line 1377
    const-wide v7, 0x415854a640000000L    # 6378137.0

    const-wide v9, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDDD)[D

    move-result-object v0

    return-object v0
.end method

.method private e(DDDD)[D
    .locals 20

    .prologue
    .line 1182
    const-wide v6, 0x415853ed49eb851fL    # 6377397.155

    const-wide v8, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    const-wide v10, 0x411e848000000000L    # 500000.0

    const-wide v12, 0x41086a0000000000L    # 200000.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v1, 0x3f67ad5a11056a73L    # 0.0028902777777777776

    add-double v18, p5, v1

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-wide/from16 v16, p7

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private f(DD)[D
    .locals 17

    .prologue
    .line 1152
    .line 1154
    const-wide v2, 0x405cf33333333333L    # 115.8

    const-wide v4, -0x3f825028f5c28f5cL    # -474.99

    const-wide v6, -0x3f7aef1eb851eb85L    # -674.11

    const-wide v8, 0x3ff28f5c28f5c28fL    # 1.16

    const-wide v10, -0x3ffd851eb851eb85L    # -2.31

    const-wide v12, -0x4005eb851eb851ecL    # -1.63

    const-wide v14, -0x3fe647ae147ae148L    # -6.43

    const/16 v16, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDI)V

    .line 1155
    const-wide/16 v6, 0x0

    const-wide v8, 0x415853ed49eb851fL    # 6377397.155

    const-wide v10, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v11}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDD)[D

    move-result-object v1

    .line 1157
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private f(DDD)[D
    .locals 11

    .prologue
    .line 1383
    const-wide v7, 0x415854a640000000L    # 6378137.0

    const-wide v9, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDDD)[D

    move-result-object v0

    return-object v0
.end method

.method private f(DDDD)[D
    .locals 20

    .prologue
    .line 1187
    const-wide v2, 0x405cf33333333333L    # 115.8

    const-wide v4, -0x3f825028f5c28f5cL    # -474.99

    const-wide v6, -0x3f7aef1eb851eb85L    # -674.11

    const-wide v8, 0x3ff28f5c28f5c28fL    # 1.16

    const-wide v10, -0x3ffd851eb851eb85L    # -2.31

    const-wide v12, -0x4005eb851eb851ecL    # -1.63

    const-wide v14, -0x3fe647ae147ae148L    # -6.43

    const/16 v16, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDI)V

    .line 1189
    const-wide v6, 0x415854a640000000L    # 6378137.0

    const-wide v8, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    const-wide/16 v10, 0x0

    const-wide v12, 0x411e848000000000L    # 500000.0

    const-wide v14, 0x3feffcb923a29c78L    # 0.9996

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-wide/from16 v16, p7

    move-wide/from16 v18, p5

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private g(DD)[D
    .locals 20

    .prologue
    .line 1165
    const-wide v6, 0x415854a640000000L    # 6378137.0

    const-wide v8, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    const-wide v10, 0x41224f8000000000L    # 600000.0

    const-wide v12, 0x41186a0000000000L    # 400000.0

    const-wide v14, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide/high16 v18, 0x4060000000000000L    # 128.0

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private g(DDDD)[D
    .locals 20

    .prologue
    .line 1194
    const-wide v6, 0x415853ed49eb851fL    # 6377397.155

    const-wide v8, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    const-wide/16 v10, 0x0

    const-wide v12, 0x411e848000000000L    # 500000.0

    const-wide v14, 0x3feffcb923a29c78L    # 0.9996

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-wide/from16 v16, p7

    move-wide/from16 v18, p5

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private h(DD)[D
    .locals 20

    .prologue
    .line 1169
    .line 1171
    const-wide v6, 0x415854a640000000L    # 6378137.0

    const-wide v8, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    const-wide v10, 0x411e848000000000L    # 500000.0

    const-wide v12, 0x41086a0000000000L    # 200000.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide v18, 0x405fc00000000000L    # 127.0

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDDD)[D

    move-result-object v1

    .line 1172
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    .line 1174
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    aput-wide v3, v1, v2

    .line 1175
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    aput-wide v3, v1, v2

    .line 1177
    return-object v1
.end method

.method private h(DDDD)[D
    .locals 20

    .prologue
    .line 1224
    const-wide v6, 0x415854a640000000L    # 6378137.0

    const-wide v8, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    const-wide v10, 0x411e848000000000L    # 500000.0

    const-wide v12, 0x41086a0000000000L    # 200000.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-wide/from16 v16, p7

    move-wide/from16 v18, p5

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private i(DD)[D
    .locals 20

    .prologue
    .line 1199
    const-wide v6, 0x415853ed49eb851fL    # 6377397.155

    const-wide v8, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    const-wide v10, 0x413e848000000000L    # 2000000.0

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const-wide v14, 0x3feffcb923a29c78L    # 0.9996

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide v18, 0x405fe02f5ab4220bL    # 127.50289027777778

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private j(DD)[D
    .locals 20

    .prologue
    .line 1204
    const-wide v2, 0x405cf33333333333L    # 115.8

    const-wide v4, -0x3f825028f5c28f5cL    # -474.99

    const-wide v6, -0x3f7aef1eb851eb85L    # -674.11

    const-wide v8, 0x3ff28f5c28f5c28fL    # 1.16

    const-wide v10, -0x3ffd851eb851eb85L    # -2.31

    const-wide v12, -0x4005eb851eb851ecL    # -1.63

    const-wide v14, -0x3fe647ae147ae148L    # -6.43

    const/16 v16, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDDDDDI)V

    .line 1206
    const-wide v6, 0x415854a640000000L    # 6378137.0

    const-wide v8, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    const-wide v10, 0x413e848000000000L    # 2000000.0

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const-wide v14, 0x3feffcb923a29c78L    # 0.9996

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide v18, 0x405fe00000000000L    # 127.5

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private k(DD)[D
    .locals 20

    .prologue
    .line 1211
    const-wide v6, 0x415853ed49eb851fL    # 6377397.155

    const-wide v8, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    const-wide v10, 0x41224f8000000000L    # 600000.0

    const-wide v12, 0x41186a0000000000L    # 400000.0

    const-wide v14, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide/high16 v18, 0x4060000000000000L    # 128.0

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private l(DD)[D
    .locals 20

    .prologue
    .line 1216
    .line 1218
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lnet/daum/adam/publisher/impl/d/c;->a(DDZ)[D

    move-result-object v1

    .line 1219
    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    const-wide v6, 0x415853ed49eb851fL    # 6377397.155

    const-wide v8, 0x3f6b624daf8b938fL    # 0.0033427731799399794

    const-wide v10, 0x411e848000000000L    # 500000.0

    const-wide v12, 0x41086a0000000000L    # 200000.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide v18, 0x405fc02f5ab4220bL    # 127.00289027777778

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private m(DD)[D
    .locals 20

    .prologue
    .line 1229
    const-wide v6, 0x415854a640000000L    # 6378137.0

    const-wide v8, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    const-wide v10, 0x41224f8000000000L    # 600000.0

    const-wide v12, 0x41186a0000000000L    # 400000.0

    const-wide v14, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide/high16 v18, 0x4060000000000000L    # 128.0

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method

.method private n(DD)[D
    .locals 20

    .prologue
    .line 1234
    const/4 v1, 0x2

    new-array v1, v1, [D

    .line 1236
    const/4 v2, 0x0

    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    div-double v3, p1, v3

    aput-wide v3, v1, v2

    .line 1237
    const/4 v2, 0x1

    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    div-double v3, p3, v3

    aput-wide v3, v1, v2

    .line 1239
    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    const-wide v6, 0x415854a640000000L    # 6378137.0

    const-wide v8, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    const-wide v10, 0x411e848000000000L    # 500000.0

    const-wide v12, 0x41086a0000000000L    # 200000.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    const-wide v18, 0x405fc00000000000L    # 127.0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v19}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDDDDDDD)[D

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/d/c;->a([D)[D

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public a(DDIDDDD)[D
    .locals 9

    .prologue
    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 198
    packed-switch p5, :pswitch_data_0

    .line 268
    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 201
    const-wide p10, 0x405fc00000000000L    # 127.0

    .line 202
    const-wide/high16 p12, 0x4043000000000000L    # 38.0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 204
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 205
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 208
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 209
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->a(DD)[D

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 213
    const-wide p10, 0x4060200000000000L    # 129.0

    .line 214
    const-wide/16 p12, 0x0

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 216
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 217
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 218
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 221
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 222
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 225
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 226
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 229
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 232
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 233
    const-wide p10, 0x405fc00000000000L    # 127.0

    .line 234
    const-wide/high16 p12, 0x4043000000000000L    # 38.0

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 236
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 237
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 238
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 241
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 242
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 243
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 246
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 247
    const-wide p10, 0x4060200000000000L    # 129.0

    .line 248
    const-wide/16 p12, 0x0

    :cond_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 250
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 251
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 254
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 255
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 256
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 259
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 260
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 261
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 264
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->e(DDDD)[D

    move-result-object v0

    .line 265
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public a(DDIIDDDD)[D
    .locals 14

    .prologue
    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 111
    packed-switch p5, :pswitch_data_0

    .line 190
    :goto_0
    return-object v0

    .line 113
    :pswitch_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_9

    .line 114
    const-wide v6, 0x405fc00000000000L    # 127.0

    .line 115
    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 117
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->a(DDIDDDD)[D

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_8

    .line 121
    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    .line 122
    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    :goto_2
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 124
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->b(DDIDDDD)[D

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_7

    .line 128
    const-wide v6, 0x4060200000000000L    # 129.0

    .line 129
    const-wide/16 v8, 0x0

    :goto_3
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 131
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->c(DDIDDDD)[D

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_3
    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_6

    .line 135
    const-wide v6, 0x405fc00000000000L    # 127.0

    .line 136
    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    :goto_4
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 138
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->d(DDIDDDD)[D

    move-result-object v0

    goto :goto_0

    :pswitch_4
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 141
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->e(DDIDDDD)[D

    move-result-object v0

    goto :goto_0

    :pswitch_5
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 144
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->f(DDIDDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 147
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_5

    .line 148
    const-wide v6, 0x405fc00000000000L    # 127.0

    .line 149
    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    :goto_5
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 151
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->g(DDIDDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 154
    :pswitch_7
    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_4

    .line 155
    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    .line 156
    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    :goto_6
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 158
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->h(DDIDDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 161
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_3

    .line 162
    const-wide v6, 0x4060200000000000L    # 129.0

    .line 163
    const-wide/16 v8, 0x0

    :goto_7
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 165
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->j(DDIDDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 168
    :pswitch_9
    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_2

    .line 169
    const-wide v6, 0x405fc00000000000L    # 127.0

    .line 170
    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    :goto_8
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 172
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->i(DDIDDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 175
    :pswitch_a
    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_1

    .line 176
    const-wide v6, 0x405fe00000000000L    # 127.5

    .line 177
    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    :goto_9
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 179
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->k(DDIDDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 182
    :pswitch_b
    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_0

    .line 183
    const-wide v6, 0x405fe00000000000L    # 127.5

    .line 184
    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    :goto_a
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 186
    invoke-virtual/range {v0 .. v13}, Lnet/daum/adam/publisher/impl/d/c;->l(DDIDDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v8, p9

    move-wide/from16 v6, p7

    goto :goto_a

    :cond_1
    move-wide/from16 v8, p9

    move-wide/from16 v6, p7

    goto :goto_9

    :cond_2
    move-wide/from16 v8, p9

    move-wide/from16 v6, p7

    goto :goto_8

    :cond_3
    move-wide/from16 v8, p9

    move-wide/from16 v6, p7

    goto :goto_7

    :cond_4
    move-wide/from16 v8, p9

    move-wide/from16 v6, p7

    goto/16 :goto_6

    :cond_5
    move-wide/from16 v8, p9

    move-wide/from16 v6, p7

    goto/16 :goto_5

    :cond_6
    move-wide/from16 v8, p9

    move-wide/from16 v6, p7

    goto/16 :goto_4

    :cond_7
    move-wide/from16 v8, p9

    move-wide/from16 v6, p7

    goto/16 :goto_3

    :cond_8
    move-wide/from16 v8, p9

    move-wide/from16 v6, p7

    goto/16 :goto_2

    :cond_9
    move-wide/from16 v8, p9

    move-wide/from16 v6, p7

    goto/16 :goto_1

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public b(DDIDDDD)[D
    .locals 9

    .prologue
    .line 273
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 276
    packed-switch p5, :pswitch_data_0

    .line 344
    :goto_0
    :pswitch_0
    return-object v0

    .line 278
    :pswitch_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 279
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 280
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 282
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    .line 283
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 288
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 289
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 290
    const-wide/16 v7, 0x0

    .line 292
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    .line 293
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 294
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 297
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    .line 298
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto :goto_0

    .line 301
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    .line 302
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    goto :goto_0

    .line 305
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 309
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 310
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 312
    :goto_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    .line 313
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 314
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 317
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    .line 318
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 319
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 322
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 323
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 324
    const-wide/16 v7, 0x0

    .line 326
    :goto_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    .line 327
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 330
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    .line 331
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 332
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 335
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    .line 336
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 337
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 340
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->k(DD)[D

    move-result-object v0

    .line 341
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_4

    :cond_1
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_3

    :cond_2
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public c(DDIDDDD)[D
    .locals 9

    .prologue
    .line 349
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 352
    packed-switch p5, :pswitch_data_0

    .line 422
    :goto_0
    return-object v0

    .line 354
    :pswitch_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 355
    const-wide p10, 0x405fc00000000000L    # 127.0

    .line 356
    const-wide/high16 p12, 0x4043000000000000L    # 38.0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 358
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 359
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 360
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 363
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 364
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 365
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->a(DD)[D

    move-result-object v0

    goto :goto_0

    .line 368
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 369
    const-wide p10, 0x4060200000000000L    # 129.0

    .line 370
    const-wide/16 p12, 0x0

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 372
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 373
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 376
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 377
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 378
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 381
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 384
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 385
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 388
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 389
    const-wide p10, 0x405fc00000000000L    # 127.0

    .line 390
    const-wide/high16 p12, 0x4043000000000000L    # 38.0

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 392
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 393
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 396
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 397
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 400
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 401
    const-wide p10, 0x4060200000000000L    # 129.0

    .line 402
    const-wide/16 p12, 0x0

    :cond_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 404
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 405
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 406
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 409
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 410
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 413
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 414
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 417
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 418
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 419
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public d(DDIDDDD)[D
    .locals 9

    .prologue
    .line 427
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 430
    packed-switch p5, :pswitch_data_0

    .line 498
    :goto_0
    :pswitch_0
    return-object v0

    .line 432
    :pswitch_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 433
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 434
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 436
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    .line 437
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 440
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    .line 441
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->a(DD)[D

    move-result-object v0

    goto :goto_0

    .line 444
    :pswitch_3
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 445
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 446
    const-wide/16 v7, 0x0

    .line 448
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    .line 449
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 450
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 455
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    .line 456
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    goto :goto_0

    .line 459
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    goto :goto_0

    .line 462
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 463
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 464
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 466
    :goto_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    .line 467
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 468
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 471
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    .line 472
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 473
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 476
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 477
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 478
    const-wide/16 v7, 0x0

    .line 480
    :goto_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    .line 481
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 484
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    .line 485
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 486
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 489
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    .line 490
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 491
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 494
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->l(DD)[D

    move-result-object v0

    .line 495
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_4

    :cond_1
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_3

    :cond_2
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_1

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public e(DDIDDDD)[D
    .locals 9

    .prologue
    .line 503
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 506
    packed-switch p5, :pswitch_data_0

    .line 564
    :goto_0
    :pswitch_0
    return-object v0

    .line 508
    :pswitch_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 509
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 510
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 512
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 513
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 516
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 517
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->a(DD)[D

    move-result-object v0

    goto :goto_0

    .line 520
    :pswitch_3
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 521
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 522
    const-wide/16 v7, 0x0

    :goto_2
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 524
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 527
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 528
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto :goto_0

    .line 533
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    goto :goto_0

    .line 536
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 537
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 538
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    :goto_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 540
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 543
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto :goto_0

    .line 546
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 547
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 548
    const-wide/16 v7, 0x0

    .line 550
    :goto_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 551
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 554
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 557
    :pswitch_a
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 560
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 561
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_4

    :cond_1
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_3

    :cond_2
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_1

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public f(DDIDDDD)[D
    .locals 9

    .prologue
    .line 569
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 572
    packed-switch p5, :pswitch_data_0

    .line 630
    :goto_0
    :pswitch_0
    return-object v0

    .line 574
    :pswitch_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 575
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 576
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 578
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 581
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->a(DD)[D

    move-result-object v0

    goto :goto_0

    .line 584
    :pswitch_3
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 585
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 586
    const-wide/16 v7, 0x0

    .line 588
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 589
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 592
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto :goto_0

    .line 595
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    goto :goto_0

    .line 600
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 601
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 602
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 604
    :goto_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 605
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 608
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 609
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto :goto_0

    .line 612
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 613
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 614
    const-wide/16 v7, 0x0

    :goto_4
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 616
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 619
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 620
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 623
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 624
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 627
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_4

    :cond_1
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_3

    :cond_2
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_1

    .line 572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public g(DDIDDDD)[D
    .locals 9

    .prologue
    .line 635
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 638
    packed-switch p5, :pswitch_data_0

    .line 708
    :goto_0
    return-object v0

    .line 640
    :pswitch_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 641
    const-wide p10, 0x405fc00000000000L    # 127.0

    .line 642
    const-wide/high16 p12, 0x4043000000000000L    # 38.0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 644
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 645
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 646
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 649
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 650
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 651
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->a(DD)[D

    move-result-object v0

    goto :goto_0

    .line 654
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 655
    const-wide p10, 0x4060200000000000L    # 129.0

    .line 656
    const-wide/16 p12, 0x0

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 658
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 659
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 662
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 663
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 664
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 667
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 670
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 671
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 674
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 675
    const-wide p10, 0x405fc00000000000L    # 127.0

    .line 676
    const-wide/high16 p12, 0x4043000000000000L    # 38.0

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 678
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 679
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 682
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 683
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 686
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 687
    const-wide p10, 0x4060200000000000L    # 129.0

    .line 688
    const-wide/16 p12, 0x0

    :cond_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 690
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 691
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 692
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 695
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 696
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 699
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 700
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 703
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->h(DDDD)[D

    move-result-object v0

    .line 704
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 705
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public h(DDIDDDD)[D
    .locals 9

    .prologue
    .line 713
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 716
    packed-switch p5, :pswitch_data_0

    .line 783
    :goto_0
    :pswitch_0
    return-object v0

    .line 718
    :pswitch_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 719
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 720
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 722
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    .line 723
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 724
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 729
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 730
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 731
    const-wide/16 v7, 0x0

    .line 733
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    .line 734
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 737
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    .line 738
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 739
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto :goto_0

    .line 742
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    goto :goto_0

    .line 745
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    .line 746
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    goto :goto_0

    .line 749
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 750
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 751
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 753
    :goto_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    .line 754
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 757
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    .line 758
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 761
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 762
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 763
    const-wide/16 v7, 0x0

    .line 765
    :goto_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    .line 766
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 767
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 770
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    .line 771
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 774
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    .line 775
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 778
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->m(DD)[D

    move-result-object v0

    .line 779
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 780
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_4

    :cond_1
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_3

    :cond_2
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_1

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public i(DDIDDDD)[D
    .locals 9

    .prologue
    .line 788
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 791
    packed-switch p5, :pswitch_data_0

    .line 859
    :goto_0
    :pswitch_0
    return-object v0

    .line 793
    :pswitch_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 794
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 795
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 797
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    .line 798
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 799
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 802
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    .line 803
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 804
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->a(DD)[D

    move-result-object v0

    goto :goto_0

    .line 807
    :pswitch_3
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 808
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 809
    const-wide/16 v7, 0x0

    .line 811
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    .line 812
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 815
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    .line 816
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 817
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto :goto_0

    .line 820
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    goto :goto_0

    .line 823
    :pswitch_6
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    .line 824
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 827
    :pswitch_7
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 828
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 829
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 831
    :goto_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    .line 832
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 835
    :pswitch_8
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    .line 836
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 839
    :pswitch_9
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 840
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 841
    const-wide/16 v7, 0x0

    .line 843
    :goto_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    .line 844
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 845
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 850
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    .line 851
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 854
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->n(DD)[D

    move-result-object v0

    .line 855
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 856
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_4

    :cond_1
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_3

    :cond_2
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_1

    .line 791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public j(DDIDDDD)[D
    .locals 9

    .prologue
    .line 864
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 867
    packed-switch p5, :pswitch_data_0

    .line 937
    :goto_0
    return-object v0

    .line 869
    :pswitch_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 870
    const-wide p10, 0x405fc00000000000L    # 127.0

    .line 871
    const-wide/high16 p12, 0x4043000000000000L    # 38.0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 873
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 874
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 877
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 878
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->a(DD)[D

    move-result-object v0

    goto :goto_0

    .line 881
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 882
    const-wide p10, 0x4060200000000000L    # 129.0

    .line 883
    const-wide/16 p12, 0x0

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 885
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 886
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 887
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 890
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 891
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 894
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 895
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 898
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 901
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 902
    const-wide p10, 0x405fc00000000000L    # 127.0

    .line 903
    const-wide/high16 p12, 0x4043000000000000L    # 38.0

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 905
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 906
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 907
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 910
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 911
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 912
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 915
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 916
    const-wide p10, 0x4060200000000000L    # 129.0

    .line 917
    const-wide/16 p12, 0x0

    :cond_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 919
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 920
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 923
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 924
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 925
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 928
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 929
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 930
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 933
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->g(DDDD)[D

    move-result-object v0

    .line 934
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 867
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public k(DDIDDDD)[D
    .locals 9

    .prologue
    .line 942
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 945
    packed-switch p5, :pswitch_data_0

    .line 1013
    :goto_0
    :pswitch_0
    return-object v0

    .line 947
    :pswitch_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 948
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 949
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 951
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->j(DD)[D

    move-result-object v0

    .line 952
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 953
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 956
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->j(DD)[D

    move-result-object v0

    .line 957
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 958
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->a(DD)[D

    move-result-object v0

    goto :goto_0

    .line 961
    :pswitch_3
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 965
    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->f(DDDD)[D

    move-result-object v0

    .line 966
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto :goto_0

    .line 969
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->j(DD)[D

    move-result-object v0

    .line 970
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 971
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto :goto_0

    .line 974
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->j(DD)[D

    move-result-object v0

    goto :goto_0

    .line 977
    :pswitch_6
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->j(DD)[D

    move-result-object v0

    .line 978
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 981
    :pswitch_7
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 982
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 983
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 985
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->j(DD)[D

    move-result-object v0

    .line 986
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 989
    :pswitch_8
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->j(DD)[D

    move-result-object v0

    .line 990
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 993
    :pswitch_9
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 994
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 995
    const-wide/16 v7, 0x0

    .line 997
    :goto_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->j(DD)[D

    move-result-object v0

    .line 998
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 999
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 1002
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->j(DD)[D

    move-result-object v0

    .line 1003
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 1008
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->j(DD)[D

    move-result-object v0

    .line 1009
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->f(DD)[D

    move-result-object v0

    .line 1010
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->d(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_3

    :cond_2
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_2

    :cond_3
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_1

    .line 945
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public l(DDIDDDD)[D
    .locals 9

    .prologue
    .line 1018
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 1021
    packed-switch p5, :pswitch_data_0

    .line 1089
    :goto_0
    return-object v0

    .line 1023
    :pswitch_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_3

    .line 1024
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 1025
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 1027
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    .line 1028
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->a(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 1031
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    .line 1032
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->a(DD)[D

    move-result-object v0

    goto :goto_0

    .line 1035
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_2

    .line 1036
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 1037
    const-wide/16 v7, 0x0

    .line 1039
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    .line 1040
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 1041
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->c(DDDD)[D

    move-result-object v0

    goto :goto_0

    .line 1044
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    .line 1045
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->b(DD)[D

    move-result-object v0

    goto :goto_0

    .line 1048
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    .line 1049
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    goto :goto_0

    .line 1052
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    goto :goto_0

    .line 1055
    :pswitch_6
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_1

    .line 1056
    const-wide v5, 0x405fc00000000000L    # 127.0

    .line 1057
    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    .line 1059
    :goto_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    .line 1060
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 1061
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->d(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 1064
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    .line 1065
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 1066
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->g(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 1069
    :pswitch_8
    const-wide/16 v0, 0x0

    cmpg-double v0, p10, v0

    if-gtz v0, :cond_0

    .line 1070
    const-wide v5, 0x4060200000000000L    # 129.0

    .line 1071
    const-wide/16 v7, 0x0

    .line 1073
    :goto_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    .line 1074
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/daum/adam/publisher/impl/d/c;->b(DDDD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 1077
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    .line 1078
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 1079
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->h(DD)[D

    move-result-object v0

    goto/16 :goto_0

    .line 1082
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/daum/adam/publisher/impl/d/c;->i(DD)[D

    move-result-object v0

    .line 1083
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->c(DD)[D

    move-result-object v0

    .line 1084
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/d/c;->e(DD)[D

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto :goto_4

    :cond_1
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_3

    :cond_2
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v7, p12

    move-wide/from16 v5, p10

    goto/16 :goto_1

    .line 1021
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
