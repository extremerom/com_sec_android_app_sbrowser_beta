.class public final LY2/Q;
.super LY2/B0;
.source "SourceFile"


# instance fields
.field public b:I


# virtual methods
.method public final a(Landroid/view/ViewGroup;LY2/f0;LY2/q0;LY2/q0;)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual/range {p2 .. p2}, LY2/f0;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz p4, :cond_4

    const/16 v6, 0x8

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, v1, LY2/q0;->a:Ljava/util/HashMap;

    const-string v8, "android:visibilityPropagation:visibility"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_0
    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v1, p4

    move v6, v5

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, -0x1

    :goto_2
    const/4 v7, 0x0

    invoke-static {v1, v7}, LY2/B0;->b(LY2/q0;I)I

    move-result v8

    invoke-static {v1, v5}, LY2/B0;->b(LY2/q0;I)I

    move-result v1

    const/4 v9, 0x2

    new-array v10, v9, [I

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v12, v10, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    add-int/2addr v13, v12

    aget v10, v10, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v12, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v14, v12

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    goto :goto_3

    :cond_5
    add-int v4, v13, v10

    div-int/2addr v4, v9

    add-int v15, v12, v14

    div-int/lit8 v9, v15, 0x2

    move/from16 v16, v9

    move v9, v4

    move/from16 v4, v16

    :goto_3
    iget v15, v0, LY2/Q;->b:I

    const v7, 0x800005

    const/4 v3, 0x3

    const v2, 0x800003

    if-ne v15, v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    if-ne v15, v5, :cond_7

    :cond_6
    const/4 v15, 0x5

    goto :goto_5

    :cond_7
    :goto_4
    move v15, v3

    goto :goto_5

    :cond_8
    if-ne v15, v7, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    if-ne v15, v5, :cond_6

    goto :goto_4

    :cond_9
    :goto_5
    if-eq v15, v3, :cond_d

    const/4 v5, 0x5

    if-eq v15, v5, :cond_c

    const/16 v4, 0x30

    if-eq v15, v4, :cond_b

    const/16 v4, 0x50

    if-eq v15, v4, :cond_a

    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    sub-int/2addr v1, v12

    sub-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_6

    :cond_b
    sub-int/2addr v14, v1

    sub-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v14

    goto :goto_6

    :cond_c
    sub-int/2addr v8, v13

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v8

    goto :goto_6

    :cond_d
    sub-int/2addr v10, v8

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v10

    :goto_6
    int-to-float v1, v1

    iget v0, v0, LY2/Q;->b:I

    if-eq v0, v3, :cond_e

    const/4 v3, 0x5

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    if-eq v0, v7, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_7

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_7
    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual/range {p2 .. p2}, LY2/f0;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_f

    const-wide/16 v2, 0x12c

    :cond_f
    int-to-long v4, v6

    mul-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
