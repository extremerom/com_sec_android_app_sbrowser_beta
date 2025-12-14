.class public final LX5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/android/gms/internal/vision/zzah;

.field public b:[Landroid/graphics/Point;

.field public c:Landroid/graphics/Rect;


# virtual methods
.method public final a()[Landroid/graphics/Point;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, LX5/a;->b:[Landroid/graphics/Point;

    if-nez v1, :cond_4

    iget-object v1, v0, LX5/a;->a:[Lcom/google/android/gms/internal/vision/zzah;

    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-array v1, v3, [Landroid/graphics/Point;

    iput-object v1, v0, LX5/a;->b:[Landroid/graphics/Point;

    goto/16 :goto_3

    :cond_0
    const/high16 v2, -0x80000000

    const v4, 0x7fffffff

    move v7, v3

    move v5, v4

    move v6, v5

    move v4, v2

    :goto_0
    array-length v8, v1

    const/4 v9, 0x4

    if-ge v7, v8, :cond_2

    aget-object v8, v1, v7

    iget-object v8, v8, Lcom/google/android/gms/internal/vision/zzah;->b:Lcom/google/android/gms/internal/vision/zzab;

    aget-object v10, v1, v3

    iget-object v10, v10, Lcom/google/android/gms/internal/vision/zzah;->b:Lcom/google/android/gms/internal/vision/zzab;

    iget v11, v10, Lcom/google/android/gms/internal/vision/zzab;->a:I

    neg-int v11, v11

    iget v12, v10, Lcom/google/android/gms/internal/vision/zzab;->b:I

    neg-int v12, v12

    iget v10, v10, Lcom/google/android/gms/internal/vision/zzab;->e:F

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    move/from16 v16, v4

    float-to-double v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    new-array v10, v9, [Landroid/graphics/Point;

    new-instance v15, Landroid/graphics/Point;

    iget v9, v8, Lcom/google/android/gms/internal/vision/zzab;->a:I

    iget v0, v8, Lcom/google/android/gms/internal/vision/zzab;->b:I

    invoke-direct {v15, v9, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x0

    aput-object v15, v10, v0

    invoke-virtual {v15, v11, v12}, Landroid/graphics/Point;->offset(II)V

    aget-object v9, v10, v0

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-double v11, v0

    mul-double/2addr v11, v3

    iget v15, v9, Landroid/graphics/Point;->y:I

    move/from16 v17, v5

    move/from16 v18, v6

    int-to-double v5, v15

    mul-double/2addr v5, v13

    add-double/2addr v5, v11

    double-to-int v5, v5

    neg-int v0, v0

    int-to-double v11, v0

    mul-double/2addr v11, v13

    int-to-double v13, v15

    mul-double/2addr v13, v3

    add-double/2addr v13, v11

    double-to-int v0, v13

    iput v5, v9, Landroid/graphics/Point;->x:I

    iput v0, v9, Landroid/graphics/Point;->y:I

    new-instance v3, Landroid/graphics/Point;

    iget v4, v8, Lcom/google/android/gms/internal/vision/zzab;->c:I

    add-int v6, v5, v4

    invoke-direct {v3, v6, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v6, 0x1

    aput-object v3, v10, v6

    new-instance v3, Landroid/graphics/Point;

    add-int/2addr v4, v5

    iget v6, v8, Lcom/google/android/gms/internal/vision/zzab;->d:I

    add-int v8, v0, v6

    invoke-direct {v3, v4, v8}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x2

    aput-object v3, v10, v4

    new-instance v3, Landroid/graphics/Point;

    add-int/2addr v0, v6

    invoke-direct {v3, v5, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x3

    aput-object v3, v10, v0

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    aget-object v3, v10, v0

    iget v8, v3, Landroid/graphics/Point;->x:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v8, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_2
    move v0, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzah;->b:Lcom/google/android/gms/internal/vision/zzab;

    iget v3, v1, Lcom/google/android/gms/internal/vision/zzab;->a:I

    iget v4, v1, Lcom/google/android/gms/internal/vision/zzab;->e:F

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    new-instance v4, Landroid/graphics/Point;

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-direct {v4, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v2, v10}, Landroid/graphics/Point;-><init>(II)V

    new-instance v10, Landroid/graphics/Point;

    move/from16 v12, v16

    invoke-direct {v10, v2, v12}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v9, v12}, Landroid/graphics/Point;-><init>(II)V

    filled-new-array {v4, v11, v10, v2}, [Landroid/graphics/Point;

    move-result-object v2

    const/4 v4, 0x4

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v9, v2, v0

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-double v11, v10

    mul-double/2addr v11, v7

    iget v13, v9, Landroid/graphics/Point;->y:I

    int-to-double v14, v13

    mul-double/2addr v14, v5

    sub-double/2addr v11, v14

    double-to-int v11, v11

    int-to-double v14, v10

    mul-double/2addr v14, v5

    int-to-double v12, v13

    mul-double/2addr v12, v7

    add-double/2addr v12, v14

    double-to-int v10, v12

    iput v11, v9, Landroid/graphics/Point;->x:I

    iput v10, v9, Landroid/graphics/Point;->y:I

    iget v10, v1, Lcom/google/android/gms/internal/vision/zzab;->b:I

    invoke-virtual {v9, v3, v10}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iput-object v2, v0, LX5/a;->b:[Landroid/graphics/Point;

    :cond_4
    :goto_3
    iget-object v0, v0, LX5/a;->b:[Landroid/graphics/Point;

    return-object v0
.end method
