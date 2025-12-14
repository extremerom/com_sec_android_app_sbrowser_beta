.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/AnimationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u0011\u001a\u00020\u0010*\u00020\r2\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u00020\n*\u00020\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u000e*\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001b\u0010\u0019\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0011\u0010\u001b\u001a\u00020\u0004*\u00020\u0013\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u00020\u0004*\u00020\u0013\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u0011\u0010\u001e\u001a\u00020\u0004*\u00020\u000e\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/AnimationUtils;",
        "",
        "<init>",
        "()V",
        "",
        "size",
        "x",
        "y",
        "Landroid/graphics/Path;",
        "path",
        "Ldb/r;",
        "getRoundedPolygonPath",
        "(FFFLandroid/graphics/Path;)V",
        "Landroid/content/Context;",
        "",
        "id",
        "",
        "readRawString",
        "(Landroid/content/Context;I)Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        "checkAndRecycle",
        "(Landroid/graphics/Bitmap;)V",
        "convertPaintAlpha",
        "(F)I",
        "alpha",
        "applyAlpha",
        "(II)I",
        "halfWidth",
        "(Landroid/graphics/Bitmap;)F",
        "halfHeight",
        "half",
        "(I)F",
        "deepsky-sdk-objectcapture-8.5.4_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/AnimationUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/AnimationUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/AnimationUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/AnimationUtils;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/AnimationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getRoundedPolygonPath(FFFLandroid/graphics/Path;)V
    .locals 39
    .param p3    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v7, p3

    const/16 v0, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v1, "path"

    invoke-static {v7, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LP/d;

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, LP/d;-><init>(FF)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget v4, Lg2/f;->b:F

    const/16 v4, 0x10

    new-array v5, v4, [F

    const/4 v6, 0x0

    move v10, v6

    move v11, v10

    :goto_0
    if-ge v10, v0, :cond_0

    sget v12, Lg2/f;->b:F

    int-to-float v13, v0

    div-float/2addr v12, v13

    int-to-float v13, v8

    mul-float/2addr v12, v13

    int-to-float v13, v10

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v14, v12}, LN/i;->a(FF)J

    move-result-wide v12

    move/from16 v14, p0

    invoke-static {v12, v13, v14}, LG5/s3;->l(JF)J

    move-result-wide v12

    sget-wide v3, Lg2/f;->a:J

    invoke-static {v12, v13, v3, v4}, LG5/s3;->k(JJ)J

    move-result-wide v3

    invoke-static/range {p1 .. p2}, LN/i;->a(FF)J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, LG5/s3;->k(JJ)J

    move-result-wide v3

    add-int/lit8 v12, v11, 0x1

    invoke-static {v3, v4}, LG5/s3;->h(J)F

    move-result v13

    aput v13, v5, v11

    add-int/2addr v11, v8

    invoke-static {v3, v4}, LG5/s3;->i(J)F

    move-result v3

    aput v3, v5, v12

    add-int/2addr v10, v9

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x10

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v10, v6

    :goto_1
    if-ge v10, v0, :cond_1

    add-int/lit8 v11, v10, 0x7

    rem-int/2addr v11, v0

    mul-int/2addr v11, v8

    add-int/lit8 v18, v10, 0x1

    rem-int/lit8 v12, v18, 0x8

    mul-int/2addr v12, v8

    new-instance v15, Lg2/e;

    aget v13, v5, v11

    add-int/2addr v11, v9

    aget v11, v5, v11

    invoke-static {v13, v11}, LN/i;->a(FF)J

    move-result-wide v13

    mul-int/2addr v10, v8

    aget v11, v5, v10

    add-int/2addr v10, v9

    aget v10, v5, v10

    invoke-static {v11, v10}, LN/i;->a(FF)J

    move-result-wide v16

    aget v10, v5, v12

    add-int/2addr v12, v9

    aget v11, v5, v12

    invoke-static {v10, v11}, LN/i;->a(FF)J

    move-result-wide v19

    move-object v10, v15

    move-wide v11, v13

    move-wide/from16 v13, v16

    move-object v8, v15

    move-wide/from16 v15, v19

    move-object/from16 v17, v1

    invoke-direct/range {v10 .. v17}, Lg2/e;-><init>(JJJLP/d;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v18

    const/4 v8, 0x2

    goto :goto_1

    :cond_1
    invoke-static {v6, v0}, LG5/d3;->l(II)Lzb/d;

    move-result-object v1

    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v1, v10}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    move-object v10, v1

    check-cast v10, Lzb/c;

    iget-boolean v10, v10, Lzb/c;->c:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    move-object v10, v1

    check-cast v10, Lzb/c;

    invoke-virtual {v10}, Lzb/c;->b()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg2/e;

    iget v12, v12, Lg2/e;->h:F

    add-int/lit8 v13, v10, 0x1

    rem-int/2addr v13, v0

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg2/e;

    iget v14, v14, Lg2/e;->h:F

    add-float/2addr v12, v14

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg2/e;

    invoke-virtual {v14}, Lg2/e;->c()F

    move-result v14

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg2/e;

    invoke-virtual {v15}, Lg2/e;->c()F

    move-result v15

    add-float/2addr v15, v14

    const/4 v14, 0x2

    mul-int/2addr v10, v14

    aget v16, v5, v10

    add-int/2addr v10, v9

    aget v10, v5, v10

    mul-int/2addr v13, v14

    aget v14, v5, v13

    add-int/2addr v13, v9

    aget v13, v5, v13

    sub-float v16, v16, v14

    sub-float/2addr v10, v13

    mul-float v16, v16, v16

    mul-float/2addr v10, v10

    add-float v10, v10, v16

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v10, v13

    cmpl-float v13, v12, v10

    if-lez v13, :cond_2

    div-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    new-instance v12, Ldb/j;

    invoke-direct {v12, v10, v11}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    cmpl-float v11, v15, v10

    if-lez v11, :cond_3

    sub-float/2addr v10, v12

    sub-float/2addr v15, v12

    div-float/2addr v10, v15

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    new-instance v12, Ldb/j;

    invoke-direct {v12, v2, v10}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    new-instance v12, Ldb/j;

    invoke-direct {v12, v2, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v1, v6

    :goto_4
    const v2, 0x38d1b717    # 1.0E-4f

    const/4 v13, 0x3

    if-ge v1, v0, :cond_c

    new-instance v15, LN/n;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    const/4 v14, 0x2

    new-array v11, v14, [F

    iput-object v11, v15, LN/n;->a:[F

    move v11, v6

    :goto_5
    if-ge v11, v14, :cond_6

    add-int/lit8 v14, v1, 0x7

    add-int/2addr v14, v11

    rem-int/2addr v14, v0

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ldb/j;

    iget-object v0, v14, Ldb/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v14, v14, Ldb/j;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    check-cast v10, Lg2/e;

    iget v10, v10, Lg2/e;->h:F

    mul-float/2addr v10, v0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2/e;

    invoke-virtual {v0}, Lg2/e;->c()F

    move-result v0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    check-cast v12, Lg2/e;

    iget v12, v12, Lg2/e;->h:F

    invoke-static {v0, v12, v14, v10}, LB/e;->a(FFFF)F

    move-result v0

    iget v10, v15, LN/n;->b:I

    add-int/2addr v10, v9

    iget-object v12, v15, LN/n;->a:[F

    array-length v14, v12

    if-ge v14, v10, :cond_5

    array-length v14, v12

    mul-int/2addr v14, v13

    const/16 v19, 0x2

    div-int/lit8 v14, v14, 0x2

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v12, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v10

    const-string v12, "copyOf(this, newSize)"

    invoke-static {v10, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v15, LN/n;->a:[F

    :cond_5
    iget-object v10, v15, LN/n;->a:[F

    iget v12, v15, LN/n;->b:I

    aput v0, v10, v12

    add-int/2addr v12, v9

    iput v12, v15, LN/n;->b:I

    add-int/2addr v11, v9

    const/16 v0, 0x8

    const/4 v14, 0x2

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2/e;

    invoke-virtual {v15, v6}, LN/n;->a(I)F

    move-result v10

    invoke-virtual {v15, v9}, LN/n;->a(I)F

    move-result v11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget v14, v0, Lg2/e;->h:F

    cmpg-float v15, v14, v2

    iget-wide v6, v0, Lg2/e;->b:J

    if-ltz v15, :cond_7

    cmpg-float v15, v12, v2

    if-ltz v15, :cond_7

    iget v15, v0, Lg2/e;->f:F

    cmpg-float v2, v15, v2

    if-gez v2, :cond_8

    :cond_7
    move/from16 v20, v1

    move-object/from16 v37, v4

    move-object/from16 v36, v5

    move-object/from16 v29, v8

    goto/16 :goto_a

    :cond_8
    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v10}, Lg2/e;->a(F)F

    move-result v23

    invoke-virtual {v0, v11}, Lg2/e;->a(F)F

    move-result v10

    mul-float/2addr v15, v2

    div-float v11, v15, v14

    sget v12, Lg2/f;->b:F

    mul-float v12, v11, v11

    mul-float v14, v2, v2

    add-float/2addr v14, v12

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v12, v14

    iget-wide v14, v0, Lg2/e;->d:J

    move/from16 v35, v10

    iget-wide v9, v0, Lg2/e;->e:J

    move-object/from16 v37, v4

    move-object/from16 v36, v5

    invoke-static {v14, v15, v9, v10}, LG5/s3;->k(JJ)J

    move-result-wide v4

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v5, v13}, LG5/s3;->b(JF)J

    move-result-wide v4

    invoke-static {v4, v5}, LG5/s3;->e(J)J

    move-result-wide v4

    invoke-static {v4, v5, v12}, LG5/s3;->l(JF)J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, LG5/s3;->k(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lg2/e;->i:J

    invoke-static {v14, v15, v2}, LG5/s3;->l(JF)J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, LG5/s3;->k(JJ)J

    move-result-wide v4

    invoke-static {v9, v10, v2}, LG5/s3;->l(JF)J

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, LG5/s3;->k(JJ)J

    move-result-wide v6

    iget-wide v9, v0, Lg2/e;->i:J

    iget-wide v12, v0, Lg2/e;->b:J

    iget-wide v14, v0, Lg2/e;->a:J

    move/from16 v22, v2

    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    move-wide/from16 v32, v9

    move/from16 v34, v11

    invoke-static/range {v22 .. v34}, Lg2/e;->b(FFJJJJJF)Lg2/a;

    move-result-object v9

    iget-wide v12, v0, Lg2/e;->i:J

    iget-wide v14, v0, Lg2/e;->b:J

    move-object v10, v8

    move-object/from16 v38, v9

    iget-wide v8, v0, Lg2/e;->c:J

    move/from16 v23, v35

    move-wide/from16 v24, v14

    move-wide/from16 v26, v8

    move-wide/from16 v28, v6

    move-wide/from16 v30, v4

    move-wide/from16 v32, v12

    invoke-static/range {v22 .. v34}, Lg2/e;->b(FFJJJJJF)Lg2/a;

    move-result-object v2

    invoke-virtual {v2}, Lg2/a;->a()F

    move-result v22

    invoke-virtual {v2}, Lg2/a;->b()F

    move-result v23

    iget-object v2, v2, Lg2/a;->a:[F

    const/4 v4, 0x4

    aget v24, v2, v4

    const/4 v4, 0x5

    aget v25, v2, v4

    const/4 v4, 0x2

    aget v26, v2, v4

    const/4 v4, 0x3

    aget v27, v2, v4

    const/4 v4, 0x0

    aget v28, v2, v4

    const/4 v4, 0x1

    aget v29, v2, v4

    invoke-static/range {v22 .. v29}, LG5/r3;->b(FFFFFFFF)Lg2/a;

    move-result-object v2

    iget-wide v4, v0, Lg2/e;->i:J

    invoke-static {v4, v5}, LG5/s3;->h(J)F

    move-result v4

    iget-wide v5, v0, Lg2/e;->i:J

    invoke-static {v5, v6}, LG5/s3;->i(J)F

    move-result v0

    invoke-virtual/range {v38 .. v38}, Lg2/a;->a()F

    move-result v5

    invoke-virtual/range {v38 .. v38}, Lg2/a;->b()F

    move-result v6

    iget-object v7, v2, Lg2/a;->a:[F

    const/4 v8, 0x0

    aget v9, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-float v8, v5, v4

    sub-float v11, v6, v0

    invoke-static {v8, v11}, Lg2/f;->a(FF)J

    move-result-wide v12

    sub-float v4, v9, v4

    sub-float v0, v7, v0

    invoke-static {v4, v0}, Lg2/f;->a(FF)J

    move-result-wide v14

    move-object/from16 v29, v10

    invoke-static {v12, v13}, LG5/s3;->i(J)F

    move-result v10

    neg-float v10, v10

    move/from16 v20, v1

    invoke-static {v12, v13}, LG5/s3;->h(J)F

    move-result v1

    invoke-static {v10, v1}, LN/i;->a(FF)J

    move-result-wide v21

    invoke-static {v14, v15}, LG5/s3;->i(J)F

    move-result v1

    neg-float v1, v1

    invoke-static {v14, v15}, LG5/s3;->h(J)F

    move-result v10

    invoke-static {v1, v10}, LN/i;->a(FF)J

    move-result-wide v23

    invoke-static/range {v21 .. v22}, LG5/s3;->h(J)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-static/range {v21 .. v22}, LG5/s3;->i(J)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    const/4 v0, 0x0

    cmpl-float v1, v4, v0

    if-ltz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    invoke-static {v12, v13, v14, v15}, LG5/s3;->c(JJ)F

    move-result v1

    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_a

    const v4, 0x3eaaaaab

    invoke-static {v5, v9, v4}, Lg2/f;->b(FFF)F

    move-result v23

    invoke-static {v6, v7, v4}, Lg2/f;->b(FFF)F

    move-result v24

    const v0, 0x3f2aaaab

    invoke-static {v5, v9, v0}, Lg2/f;->b(FFF)F

    move-result v25

    invoke-static {v6, v7, v0}, Lg2/f;->b(FFF)F

    move-result v26

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v27, v9

    move/from16 v28, v7

    invoke-static/range {v21 .. v28}, LG5/r3;->b(FFFFFFFF)Lg2/a;

    move-result-object v0

    :goto_7
    move-object/from16 v1, v38

    goto :goto_9

    :cond_a
    mul-float/2addr v8, v8

    mul-float/2addr v11, v11

    add-float/2addr v11, v8

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v4, v10

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v4, v8

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v4, v8

    const/4 v8, 0x2

    int-to-float v10, v8

    const/4 v8, 0x1

    int-to-float v11, v8

    sub-float v8, v11, v1

    mul-float/2addr v10, v8

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v10, v12

    mul-float/2addr v1, v1

    sub-float/2addr v11, v1

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v1, v11

    sub-float/2addr v10, v1

    mul-float/2addr v10, v4

    div-float/2addr v10, v8

    if-eqz v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_b
    const/high16 v0, -0x40800000    # -1.0f

    :goto_8
    mul-float/2addr v10, v0

    invoke-static/range {v21 .. v22}, LG5/s3;->h(J)F

    move-result v0

    mul-float/2addr v0, v10

    add-float/2addr v0, v5

    invoke-static/range {v21 .. v22}, LG5/s3;->i(J)F

    move-result v1

    mul-float/2addr v1, v10

    add-float/2addr v1, v6

    invoke-static/range {v23 .. v24}, LG5/s3;->h(J)F

    move-result v4

    mul-float/2addr v4, v10

    sub-float v25, v9, v4

    invoke-static/range {v23 .. v24}, LG5/s3;->i(J)F

    move-result v4

    mul-float/2addr v4, v10

    sub-float v26, v7, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v0

    move/from16 v24, v1

    move/from16 v27, v9

    move/from16 v28, v7

    invoke-static/range {v21 .. v28}, LG5/r3;->b(FFFFFFFF)Lg2/a;

    move-result-object v0

    goto :goto_7

    :goto_9
    filled-new-array {v1, v0, v2}, [Lg2/a;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :goto_a
    iput-wide v6, v0, Lg2/e;->i:J

    invoke-static {v6, v7}, LG5/s3;->h(J)F

    move-result v4

    invoke-static {v6, v7}, LG5/s3;->i(J)F

    move-result v5

    invoke-static {v6, v7}, LG5/s3;->h(J)F

    move-result v10

    invoke-static {v6, v7}, LG5/s3;->i(J)F

    move-result v11

    const v0, 0x3eaaaaab

    invoke-static {v4, v10, v0}, Lg2/f;->b(FFF)F

    move-result v6

    invoke-static {v5, v11, v0}, Lg2/f;->b(FFF)F

    move-result v7

    const v0, 0x3f2aaaab

    invoke-static {v4, v10, v0}, Lg2/f;->b(FFF)F

    move-result v8

    invoke-static {v5, v11, v0}, Lg2/f;->b(FFF)F

    move-result v9

    invoke-static/range {v4 .. v11}, LG5/r3;->b(FFFFFFFF)Lg2/a;

    move-result-object v0

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    add-int/lit8 v1, v20, 0x1

    move-object/from16 v7, p3

    move v9, v0

    move-object/from16 v8, v29

    move-object/from16 v5, v36

    move-object/from16 v4, v37

    const/16 v0, 0x8

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v37, v4

    move-object/from16 v36, v5

    move v0, v9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x8

    :goto_c
    if-ge v4, v5, :cond_e

    add-int/lit8 v6, v4, 0x7

    rem-int/2addr v6, v5

    add-int/lit8 v9, v4, 0x1

    rem-int/lit8 v7, v9, 0x8

    const/4 v8, 0x2

    mul-int/lit8 v10, v4, 0x2

    aget v11, v36, v10

    add-int/2addr v10, v0

    aget v10, v36, v10

    invoke-static {v11, v10}, LN/i;->a(FF)J

    move-result-wide v10

    mul-int/2addr v6, v8

    aget v12, v36, v6

    add-int/2addr v6, v0

    aget v6, v36, v6

    invoke-static {v12, v6}, LN/i;->a(FF)J

    move-result-wide v12

    mul-int/lit8 v6, v7, 0x2

    aget v8, v36, v6

    add-int/2addr v6, v0

    aget v0, v36, v6

    invoke-static {v8, v0}, LN/i;->a(FF)J

    move-result-wide v14

    invoke-static {v10, v11, v12, v13}, LG5/s3;->j(JJ)J

    move-result-wide v12

    invoke-static {v14, v15, v10, v11}, LG5/s3;->j(JJ)J

    move-result-wide v14

    invoke-static {v12, v13}, LG5/s3;->h(J)F

    move-result v0

    invoke-static {v14, v15}, LG5/s3;->i(J)F

    move-result v6

    mul-float/2addr v6, v0

    invoke-static {v12, v13}, LG5/s3;->i(J)F

    move-result v0

    invoke-static {v14, v15}, LG5/s3;->h(J)F

    move-result v8

    mul-float/2addr v8, v0

    sub-float/2addr v6, v8

    const/4 v0, 0x0

    cmpl-float v6, v6, v0

    if-lez v6, :cond_d

    const/16 v28, 0x1

    goto :goto_d

    :cond_d
    const/16 v28, 0x0

    :goto_d
    new-instance v6, Lg2/b;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v23, v8

    check-cast v23, Ljava/util/List;

    move-object/from16 v8, v37

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg2/e;

    iget-wide v12, v12, Lg2/e;->i:J

    move-object/from16 v22, v6

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    invoke-direct/range {v22 .. v28}, Lg2/b;-><init>(Ljava/util/List;JJZ)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg2/c;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg2/a;

    invoke-virtual {v10}, Lg2/a;->a()F

    move-result v10

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg2/a;

    invoke-virtual {v4}, Lg2/a;->b()F

    move-result v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg2/a;

    iget-object v11, v11, Lg2/a;->a:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg2/a;

    iget-object v7, v7, Lg2/a;->a:[F

    const/4 v12, 0x1

    aget v7, v7, v12

    const v12, 0x3eaaaaab

    invoke-static {v10, v11, v12}, Lg2/f;->b(FFF)F

    move-result v24

    invoke-static {v4, v7, v12}, Lg2/f;->b(FFF)F

    move-result v25

    const v13, 0x3f2aaaab

    invoke-static {v10, v11, v13}, Lg2/f;->b(FFF)F

    move-result v26

    invoke-static {v4, v7, v13}, Lg2/f;->b(FFF)F

    move-result v27

    move/from16 v22, v10

    move/from16 v23, v4

    move/from16 v28, v11

    move/from16 v29, v7

    invoke-static/range {v22 .. v29}, LG5/r3;->b(FFFFFFFF)Lg2/a;

    move-result-object v4

    invoke-static {v4}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v4}, Lg2/d;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v37, v8

    move v4, v9

    const/4 v0, 0x1

    goto/16 :goto_c

    :cond_e
    const/4 v0, 0x0

    const/4 v3, 0x1

    cmpg-float v4, p1, v3

    if-nez v4, :cond_f

    goto :goto_e

    :cond_f
    cmpg-float v3, p2, v3

    if-nez v3, :cond_11

    :goto_e
    move v11, v0

    const/4 v3, 0x0

    const/16 v4, 0x10

    :goto_f
    if-ge v3, v4, :cond_10

    const/4 v5, 0x1

    add-int/lit8 v9, v3, 0x1

    aget v5, v36, v3

    add-float/2addr v11, v5

    const/4 v5, 0x2

    add-int/2addr v3, v5

    aget v6, v36, v9

    add-float/2addr v0, v6

    goto :goto_f

    :cond_10
    const/4 v5, 0x2

    int-to-float v3, v4

    div-float/2addr v11, v3

    int-to-float v4, v5

    div-float/2addr v11, v4

    div-float/2addr v0, v3

    div-float/2addr v0, v4

    invoke-static {v11, v0}, LN/i;->a(FF)J

    move-result-wide v3

    goto :goto_10

    :cond_11
    invoke-static/range {p1 .. p2}, LN/i;->a(FF)J

    move-result-wide v3

    :goto_10
    const/16 v0, 0x20

    shr-long v5, v3, v0

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    invoke-static {}, LG5/o3;->b()Lgb/c;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_12

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg2/d;

    iget-object v5, v5, Lg2/d;->a:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v0, v5}, Lgb/c;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_11

    :cond_12
    const/4 v5, 0x1

    invoke-static {v0}, LG5/o3;->a(Lgb/c;)Lgb/c;

    move-result-object v7

    invoke-virtual {v7}, Lgb/c;->g()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v7, v0}, Lgb/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7}, Lgb/c;->g()I

    move-result v1

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v1, :cond_14

    invoke-virtual {v7, v4}, Lgb/c;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg2/a;

    iget-object v5, v3, Lg2/a;->a:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    check-cast v0, Lg2/a;

    invoke-virtual {v0}, Lg2/a;->a()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v2

    if-gtz v5, :cond_13

    iget-object v5, v3, Lg2/a;->a:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v0}, Lg2/a;->b()F

    move-result v0

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_13

    add-int/2addr v4, v6

    move-object v0, v3

    goto :goto_12

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RoundedPolygon must be contiguous, with the anchor points of all curves matching the anchor points of the preceding and succeeding cubics"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v7}, Lfb/g;->g()I

    move-result v8

    const/4 v4, 0x1

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v8, :cond_16

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2/a;

    if-eqz v4, :cond_15

    iget-object v1, v0, Lg2/a;->a:[F

    const/4 v6, 0x0

    aget v2, v1, v6

    const/4 v3, 0x1

    aget v1, v1, v3

    move-object/from16 v10, p3

    invoke-virtual {v10, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v11, v6

    goto :goto_14

    :cond_15
    move-object/from16 v10, p3

    const/4 v6, 0x0

    move v11, v4

    :goto_14
    iget-object v1, v0, Lg2/a;->a:[F

    const/4 v12, 0x2

    aget v2, v1, v12

    const/4 v13, 0x3

    aget v3, v1, v13

    const/4 v14, 0x4

    aget v4, v1, v14

    const/4 v15, 0x5

    aget v5, v1, v15

    invoke-virtual {v0}, Lg2/a;->a()F

    move-result v16

    invoke-virtual {v0}, Lg2/a;->b()F

    move-result v17

    move-object/from16 v0, p3

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/4 v0, 0x1

    add-int/2addr v9, v0

    move v4, v11

    goto :goto_13

    :cond_16
    move-object/from16 v10, p3

    const/4 v0, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v10, v2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v10, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public final applyAlpha(II)I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, p0, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final checkAndRecycle(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public final convertPaintAlpha(F)I
    .locals 0
    .annotation build Landroidx/annotation/IntRange;
    .end annotation

    const/16 p0, 0xff

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final half(I)F
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public final halfHeight(Landroid/graphics/Bitmap;)F
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public final halfWidth(Landroid/graphics/Bitmap;)F
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public final readRawString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const-string p1, "openRawResource(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LKc/a;->a:Ljava/nio/charset/Charset;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/BufferedReader;

    const/16 p1, 0x2000

    invoke-direct {p0, p2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    invoke-static {p0}, LG5/r;->b(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-static {p0, p2}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
