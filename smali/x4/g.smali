.class public final Lx4/g;
.super Lx4/h;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/graphics/Paint;

.field public c:Lq4/l;

.field public d:Ljava/util/ArrayList;

.field public e:Landroid/graphics/Paint$FontMetrics;

.field public f:Landroid/graphics/Path;


# virtual methods
.method public final a(Lr4/d;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lx4/g;->c:Lq4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lx4/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lr4/d;->c()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_4

    invoke-virtual {v1, v5}, Lr4/d;->b(I)Lv4/c;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lr4/b;

    iget-object v9, v8, Lr4/b;->a:Ljava/util/ArrayList;

    move-object v10, v6

    check-cast v10, Lr4/b;

    iget-object v10, v10, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    instance-of v11, v6, Lv4/a;

    if-eqz v11, :cond_1

    move-object v11, v6

    check-cast v11, Lv4/a;

    move-object v12, v11

    check-cast v12, Lr4/b;

    iget v13, v12, Lr4/b;->u:I

    if-le v13, v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    iget v8, v12, Lr4/b;->u:I

    if-ge v7, v8, :cond_0

    new-instance v8, Lq4/m;

    iget-object v10, v12, Lr4/b;->z:[Ljava/lang/String;

    array-length v13, v10

    rem-int v13, v7, v13

    aget-object v14, v10, v13

    move-object v10, v6

    check-cast v10, Lr4/b;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v15, v10, Lr4/b;->g:Lq4/g;

    iget v13, v10, Lr4/b;->h:F

    iget v10, v10, Lr4/b;->i:F

    move/from16 v16, v13

    move-object v13, v8

    move/from16 v17, v10

    invoke-direct/range {v13 .. v18}, Lq4/m;-><init>(Ljava/lang/String;Lq4/g;FFI)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    check-cast v11, Lr4/b;

    iget-object v7, v11, Lr4/b;->c:Ljava/lang/String;

    if-eqz v7, :cond_3

    new-instance v7, Lq4/m;

    check-cast v6, Lr4/b;

    sget-object v10, Lq4/g;->NONE:Lq4/g;

    iget-object v9, v6, Lr4/b;->c:Ljava/lang/String;

    const/high16 v11, 0x7fc00000    # Float.NaN

    const/high16 v12, 0x7fc00000    # Float.NaN

    const v13, 0x112233

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lq4/m;-><init>(Ljava/lang/String;Lq4/g;FFI)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_3

    if-ge v6, v10, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v7

    if-ge v6, v11, :cond_2

    add-int/lit8 v11, v10, -0x1

    if-ge v6, v11, :cond_2

    const/4 v11, 0x0

    :goto_3
    move-object v13, v11

    goto :goto_4

    :cond_2
    invoke-virtual {v1, v5}, Lr4/d;->b(I)Lv4/c;

    move-result-object v11

    check-cast v11, Lr4/b;

    iget-object v11, v11, Lr4/b;->c:Ljava/lang/String;

    goto :goto_3

    :goto_4
    new-instance v11, Lq4/m;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v14, v8, Lr4/b;->g:Lq4/g;

    iget v15, v8, Lr4/b;->h:F

    iget v12, v8, Lr4/b;->i:F

    move/from16 v16, v12

    move-object v12, v11

    invoke-direct/range {v12 .. v17}, Lq4/m;-><init>(Ljava/lang/String;Lq4/g;FFI)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lq4/m;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lq4/m;

    iput-object v1, v2, Lq4/l;->f:[Lq4/m;

    iget-object v1, v0, Lx4/g;->a:Landroid/graphics/Paint;

    iget v3, v2, Lq4/b;->d:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v3, v2, Lq4/b;->e:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget v3, v2, Lq4/l;->l:F

    invoke-static {v3}, Ly4/g;->c(F)F

    move-result v5

    iget v6, v2, Lq4/l;->p:F

    invoke-static {v6}, Ly4/g;->c(F)F

    move-result v6

    iget v8, v2, Lq4/l;->o:F

    invoke-static {v8}, Ly4/g;->c(F)F

    move-result v9

    iget v10, v2, Lq4/l;->n:F

    invoke-static {v10}, Ly4/g;->c(F)F

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11}, Ly4/g;->c(F)F

    move-result v12

    iget-object v13, v2, Lq4/l;->f:[Lq4/m;

    array-length v14, v13

    invoke-static {v8}, Ly4/g;->c(F)F

    iget-object v8, v2, Lq4/l;->f:[Lq4/m;

    array-length v15, v8

    move/from16 v17, v11

    move/from16 v18, v17

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v15, :cond_9

    aget-object v11, v8, v4

    iget v7, v11, Lq4/m;->c:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_7

    :cond_5
    iget v7, v11, Lq4/m;->c:F

    :goto_7
    invoke-static {v7}, Ly4/g;->c(F)F

    move-result v7

    cmpl-float v19, v7, v18

    if-lez v19, :cond_6

    move/from16 v18, v7

    :cond_6
    iget-object v7, v11, Lq4/m;->a:Ljava/lang/String;

    if-nez v7, :cond_7

    goto :goto_8

    :cond_7
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    cmpl-float v11, v7, v17

    if-lez v11, :cond_8

    move/from16 v17, v7

    :cond_8
    :goto_8
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    goto :goto_6

    :cond_9
    iget-object v3, v2, Lq4/l;->f:[Lq4/m;

    array-length v4, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v4, :cond_c

    aget-object v11, v3, v8

    iget-object v11, v11, Lq4/m;->a:Ljava/lang/String;

    if-nez v11, :cond_a

    goto :goto_a

    :cond_a
    invoke-static {v11, v1}, Ly4/g;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v15, v11, v7

    if-lez v15, :cond_b

    move v7, v11

    :cond_b
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_c
    sget-object v3, Lq4/e;->b:[I

    iget-object v4, v2, Lq4/l;->i:Lq4/i;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    const/4 v4, 0x2

    if-eq v3, v4, :cond_d

    goto/16 :goto_1d

    :cond_d
    sget-object v3, Ly4/g;->e:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v7

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v7, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v7, v8

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v7, v3

    add-float/2addr v7, v12

    iget-object v0, v0, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    iget-object v0, v2, Lq4/l;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v2, Lq4/l;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v8, v2, Lq4/l;->v:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    move/from16 p1, v5

    const/4 v5, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v15, v14, :cond_1a

    aget-object v11, v13, v15

    move/from16 v19, v10

    iget-object v10, v11, Lq4/m;->b:Lq4/g;

    move-object/from16 v21, v13

    sget-object v13, Lq4/g;->NONE:Lq4/g;

    if-eq v10, v13, :cond_e

    const/4 v10, 0x1

    goto :goto_c

    :cond_e
    const/4 v10, 0x0

    :goto_c
    iget v13, v11, Lq4/m;->c:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v22

    if-eqz v22, :cond_f

    move/from16 v13, p1

    :goto_d
    move/from16 v22, v7

    goto :goto_e

    :cond_f
    invoke-static {v13}, Ly4/g;->c(F)F

    move-result v13

    goto :goto_d

    :goto_e
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, -0x1

    if-ne v5, v7, :cond_10

    const/4 v7, 0x0

    goto :goto_f

    :cond_10
    add-float v7, v12, v6

    :goto_f
    iget-object v11, v11, Lq4/m;->a:Ljava/lang/String;

    if-eqz v11, :cond_12

    invoke-static {v11, v1}, Ly4/g;->b(Ljava/lang/String;Landroid/graphics/Paint;)Ly4/a;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_11

    add-float v10, v9, v13

    goto :goto_10

    :cond_11
    const/4 v10, 0x0

    :goto_10
    add-float/2addr v7, v10

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly4/a;

    iget v10, v10, Ly4/a;->b:F

    add-float/2addr v7, v10

    move-object/from16 v23, v0

    move v12, v7

    const/4 v0, -0x1

    goto :goto_12

    :cond_12
    sget-object v12, Ly4/a;->d:Ly4/e;

    invoke-virtual {v12}, Ly4/e;->b()Ly4/d;

    move-result-object v12

    check-cast v12, Ly4/a;

    move-object/from16 v23, v0

    const/4 v0, 0x0

    iput v0, v12, Ly4/a;->b:F

    iput v0, v12, Ly4/a;->c:F

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_13

    goto :goto_11

    :cond_13
    const/4 v13, 0x0

    :goto_11
    add-float/2addr v7, v13

    const/4 v0, -0x1

    move v12, v7

    if-ne v5, v0, :cond_14

    move v5, v15

    :cond_14
    :goto_12
    if-nez v11, :cond_15

    add-int/lit8 v7, v14, -0x1

    if-ne v15, v7, :cond_16

    :cond_15
    const/4 v7, 0x0

    goto :goto_13

    :cond_16
    const/4 v7, 0x0

    goto :goto_16

    :goto_13
    cmpl-float v10, v17, v7

    if-nez v10, :cond_17

    move v10, v7

    goto :goto_14

    :cond_17
    move/from16 v10, v19

    :goto_14
    add-float/2addr v10, v12

    add-float v10, v10, v17

    add-int/lit8 v13, v14, -0x1

    if-ne v15, v13, :cond_18

    sget-object v13, Ly4/a;->d:Ly4/e;

    invoke-virtual {v13}, Ly4/e;->b()Ly4/d;

    move-result-object v13

    check-cast v13, Ly4/a;

    iput v10, v13, Ly4/a;->b:F

    iput v4, v13, Ly4/a;->c:F

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v13, v20

    invoke-static {v13, v10}, Ljava/lang/Math;->max(FF)F

    move-result v20

    :goto_15
    move/from16 v17, v10

    goto :goto_16

    :cond_18
    move/from16 v13, v20

    goto :goto_15

    :goto_16
    if-eqz v11, :cond_19

    move v5, v0

    :cond_19
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v19

    move-object/from16 v13, v21

    move/from16 v7, v22

    move-object/from16 v0, v23

    goto/16 :goto_b

    :cond_1a
    move/from16 v22, v7

    move/from16 v13, v20

    iput v13, v2, Lq4/l;->r:F

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v4, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_17

    :cond_1b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_17
    int-to-float v0, v0

    mul-float v7, v22, v0

    add-float/2addr v7, v4

    iput v7, v2, Lq4/l;->s:F

    goto/16 :goto_1d

    :cond_1c
    move v3, v4

    move/from16 p1, v5

    move-object/from16 v21, v13

    const/4 v7, 0x0

    sget-object v0, Ly4/g;->e:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v0

    move v0, v7

    move v5, v0

    move v8, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_18
    if-ge v10, v14, :cond_27

    aget-object v13, v21, v10

    iget-object v15, v13, Lq4/m;->b:Lq4/g;

    sget-object v3, Lq4/g;->NONE:Lq4/g;

    if-eq v15, v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_19

    :cond_1d
    const/4 v3, 0x0

    :goto_19
    iget v15, v13, Lq4/m;->c:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-eqz v17, :cond_1e

    move/from16 v15, p1

    goto :goto_1a

    :cond_1e
    invoke-static {v15}, Ly4/g;->c(F)F

    move-result v15

    :goto_1a
    if-nez v11, :cond_1f

    move v8, v7

    :cond_1f
    if-eqz v3, :cond_21

    if-eqz v11, :cond_20

    add-float/2addr v8, v6

    :cond_20
    add-float/2addr v8, v15

    :cond_21
    iget-object v13, v13, Lq4/m;->a:Ljava/lang/String;

    if-eqz v13, :cond_25

    if-eqz v3, :cond_22

    if-nez v11, :cond_22

    add-float v3, v8, v9

    move/from16 v24, v3

    move v3, v0

    move/from16 v0, v24

    goto :goto_1b

    :cond_22
    if-eqz v11, :cond_23

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v3, v4, v12

    add-float/2addr v5, v3

    move v3, v0

    move v0, v7

    const/4 v11, 0x0

    goto :goto_1b

    :cond_23
    move v3, v0

    move v0, v8

    :goto_1b
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    add-float/2addr v0, v8

    add-int/lit8 v8, v14, -0x1

    if-ge v10, v8, :cond_24

    add-float v8, v4, v12

    add-float/2addr v8, v5

    move v5, v8

    :cond_24
    move v8, v0

    move v0, v3

    goto :goto_1c

    :cond_25
    add-float/2addr v8, v15

    add-int/lit8 v3, v14, -0x1

    if-ge v10, v3, :cond_26

    add-float/2addr v8, v6

    :cond_26
    const/4 v11, 0x1

    :goto_1c
    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    goto :goto_18

    :cond_27
    iput v0, v2, Lq4/l;->r:F

    iput v5, v2, Lq4/l;->s:F

    :goto_1d
    iget v0, v2, Lq4/l;->s:F

    iget v1, v2, Lq4/b;->c:F

    add-float/2addr v0, v1

    iput v0, v2, Lq4/l;->s:F

    iget v0, v2, Lq4/l;->r:F

    iget v1, v2, Lq4/b;->b:F

    add-float/2addr v0, v1

    iput v0, v2, Lq4/l;->r:F

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;FFLq4/m;Lq4/l;)V
    .locals 9

    iget v0, p4, Lq4/m;->e:I

    const v1, 0x112234

    if-eq v0, v1, :cond_7

    const v1, 0x112233

    if-eq v0, v1, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    sget-object v1, Lq4/g;->DEFAULT:Lq4/g;

    iget-object v2, p4, Lq4/m;->b:Lq4/g;

    if-ne v2, v1, :cond_1

    iget-object v2, p5, Lq4/l;->k:Lq4/g;

    :cond_1
    iget-object v8, p0, Lx4/g;->b:Landroid/graphics/Paint;

    iget v1, p4, Lq4/m;->e:I

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p4, Lq4/m;->c:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p5, Lq4/l;->l:F

    :cond_2
    invoke-static {v1}, Ly4/g;->c(F)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sget-object v4, Lx4/f;->d:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/4 v4, 0x4

    if-eq v2, v4, :cond_6

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget p4, p4, Lq4/m;->d:F

    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    iget p4, p5, Lq4/l;->m:F

    :cond_4
    invoke-static {p4}, Ly4/g;->c(F)F

    move-result p4

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v8, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p4, 0x0

    invoke-virtual {v8, p4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p0, p0, Lx4/g;->f:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr p2, v1

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1, p0, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_5
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float v5, p3, v3

    add-float v6, p2, v1

    add-float v7, p3, v3

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_6
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr p2, v3

    invoke-virtual {p1, p2, p3, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 34

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lx4/g;->c:Lq4/l;

    iget-boolean v1, v0, Lq4/b;->a:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v9, v6, Lx4/g;->a:Landroid/graphics/Paint;

    iget v1, v0, Lq4/b;->d:F

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v1, v0, Lq4/b;->e:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v6, Lx4/g;->e:Landroid/graphics/Paint$FontMetrics;

    sget-object v2, Ly4/g;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v10, v2, v3

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v2, v1

    const/4 v11, 0x0

    invoke-static {v11}, Ly4/g;->c(F)F

    move-result v1

    add-float v12, v1, v2

    const-string v1, "ABC"

    invoke-static {v1, v9}, Ly4/g;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v1, v13

    sub-float v14, v10, v1

    iget-object v15, v0, Lq4/l;->f:[Lq4/m;

    iget v1, v0, Lq4/l;->o:F

    invoke-static {v1}, Ly4/g;->c(F)F

    move-result v5

    iget v1, v0, Lq4/l;->n:F

    invoke-static {v1}, Ly4/g;->c(F)F

    move-result v4

    iget-object v1, v0, Lq4/l;->i:Lq4/i;

    iget-object v3, v0, Lq4/l;->g:Lq4/h;

    iget-object v2, v0, Lq4/l;->h:Lq4/k;

    iget-object v11, v0, Lq4/l;->j:Lq4/f;

    iget v13, v0, Lq4/l;->l:F

    invoke-static {v13}, Ly4/g;->c(F)F

    move-result v13

    iget v8, v0, Lq4/l;->p:F

    invoke-static {v8}, Ly4/g;->c(F)F

    move-result v8

    move/from16 v18, v4

    iget v4, v0, Lq4/b;->c:F

    move/from16 v19, v5

    iget v5, v0, Lq4/b;->b:F

    sget-object v20, Lx4/f;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    move/from16 v22, v13

    aget v13, v20, v21

    move/from16 v20, v8

    const/4 v8, 0x2

    move/from16 v23, v12

    const/4 v12, 0x1

    if-eq v13, v12, :cond_8

    if-eq v13, v8, :cond_6

    const/4 v12, 0x3

    if-eq v13, v12, :cond_1

    move-object/from16 v27, v9

    move/from16 v28, v10

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_1
    sget-object v12, Lq4/i;->VERTICAL:Lq4/i;

    if-ne v1, v12, :cond_2

    iget-object v13, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget v13, v13, Ly4/h;->c:F

    const/high16 v17, 0x40000000    # 2.0f

    div-float v13, v13, v17

    goto :goto_0

    :cond_2
    const/high16 v17, 0x40000000    # 2.0f

    iget-object v13, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v13, v13, Ly4/h;->b:Landroid/graphics/RectF;

    iget v8, v13, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v13, v13, v17

    add-float/2addr v13, v8

    :goto_0
    sget-object v8, Lq4/f;->LEFT_TO_RIGHT:Lq4/f;

    if-ne v11, v8, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    neg-float v7, v5

    :goto_1
    add-float/2addr v13, v7

    if-ne v1, v12, :cond_5

    float-to-double v12, v13

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    if-ne v11, v8, :cond_4

    iget v7, v0, Lq4/l;->r:F

    neg-float v7, v7

    float-to-double v7, v7

    div-double v7, v7, v25

    move-object/from16 v27, v9

    move/from16 v28, v10

    float-to-double v9, v5

    add-double/2addr v7, v9

    goto :goto_2

    :cond_4
    move-object/from16 v27, v9

    move/from16 v28, v10

    iget v7, v0, Lq4/l;->r:F

    float-to-double v7, v7

    div-double v7, v7, v25

    float-to-double v9, v5

    sub-double/2addr v7, v9

    :goto_2
    add-double/2addr v12, v7

    double-to-float v13, v12

    goto :goto_6

    :cond_5
    move-object/from16 v27, v9

    move/from16 v28, v10

    goto :goto_6

    :cond_6
    move-object/from16 v27, v9

    move/from16 v28, v10

    sget-object v7, Lq4/i;->VERTICAL:Lq4/i;

    if-ne v1, v7, :cond_7

    iget-object v7, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget v7, v7, Ly4/h;->c:F

    :goto_3
    sub-float/2addr v7, v5

    move v13, v7

    goto :goto_4

    :cond_7
    iget-object v7, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v7, v7, Ly4/h;->b:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :goto_4
    sget-object v5, Lq4/f;->LEFT_TO_RIGHT:Lq4/f;

    if-ne v11, v5, :cond_b

    iget v5, v0, Lq4/l;->r:F

    sub-float/2addr v13, v5

    goto :goto_6

    :cond_8
    move-object/from16 v27, v9

    move/from16 v28, v10

    sget-object v7, Lq4/i;->VERTICAL:Lq4/i;

    if-ne v1, v7, :cond_9

    goto :goto_5

    :cond_9
    iget-object v7, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v7, v7, Ly4/h;->b:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    :goto_5
    sget-object v7, Lq4/f;->RIGHT_TO_LEFT:Lq4/f;

    if-ne v11, v7, :cond_a

    iget v7, v0, Lq4/l;->r:F

    add-float v13, v5, v7

    goto :goto_6

    :cond_a
    move v13, v5

    :cond_b
    :goto_6
    sget-object v5, Lx4/f;->c:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1d

    const/4 v7, 0x2

    if-eq v1, v7, :cond_c

    goto/16 :goto_26

    :cond_c
    sget-object v1, Lx4/f;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v5, :cond_10

    if-eq v1, v7, :cond_e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    const/4 v1, 0x0

    goto :goto_9

    :cond_d
    iget-object v1, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget v1, v1, Ly4/h;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Lq4/l;->s:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v0, v0, Lq4/b;->c:F

    add-float/2addr v1, v0

    goto :goto_9

    :cond_e
    sget-object v1, Lq4/h;->CENTER:Lq4/h;

    if-ne v3, v1, :cond_f

    iget-object v1, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget v1, v1, Ly4/h;->d:F

    goto :goto_7

    :cond_f
    iget-object v1, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v1, v1, Ly4/h;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    :goto_7
    iget v0, v0, Lq4/l;->s:F

    add-float/2addr v0, v4

    sub-float/2addr v1, v0

    goto :goto_9

    :cond_10
    sget-object v0, Lq4/h;->CENTER:Lq4/h;

    if-ne v3, v0, :cond_11

    const/4 v0, 0x0

    goto :goto_8

    :cond_11
    iget-object v0, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v0, v0, Ly4/h;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    :goto_8
    add-float v1, v0, v4

    :goto_9
    move v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_a
    array-length v0, v15

    if-ge v9, v0, :cond_31

    aget-object v5, v15, v9

    iget-object v0, v5, Lq4/m;->b:Lq4/g;

    sget-object v1, Lq4/g;->NONE:Lq4/g;

    if-eq v0, v1, :cond_12

    const/16 v17, 0x1

    goto :goto_b

    :cond_12
    const/16 v17, 0x0

    :goto_b
    iget v0, v5, Lq4/m;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_13

    move/from16 v18, v22

    goto :goto_c

    :cond_13
    invoke-static {v0}, Ly4/g;->c(F)F

    move-result v0

    move/from16 v18, v0

    :goto_c
    if-eqz v17, :cond_15

    sget-object v4, Lq4/f;->LEFT_TO_RIGHT:Lq4/f;

    if-ne v11, v4, :cond_14

    add-float v0, v13, v10

    :goto_d
    move/from16 v21, v0

    goto :goto_e

    :cond_14
    sub-float v0, v18, v10

    sub-float v0, v13, v0

    goto :goto_d

    :goto_e
    add-float v3, v7, v14

    iget-object v2, v6, Lx4/g;->c:Lq4/l;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v24, v2

    move/from16 v2, v21

    move-object v12, v4

    move-object v4, v5

    move/from16 v26, v14

    move/from16 v14, v19

    move/from16 v19, v13

    move-object v13, v5

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Lx4/g;->b(Landroid/graphics/Canvas;FFLq4/m;Lq4/l;)V

    if-ne v11, v12, :cond_16

    add-float v21, v21, v18

    goto :goto_f

    :cond_15
    move/from16 v26, v14

    move/from16 v14, v19

    move/from16 v19, v13

    move-object v13, v5

    move/from16 v21, v19

    :cond_16
    :goto_f
    iget-object v0, v13, Lq4/m;->a:Ljava/lang/String;

    if-eqz v0, :cond_1c

    if-eqz v17, :cond_18

    if-nez v8, :cond_18

    sget-object v1, Lq4/f;->LEFT_TO_RIGHT:Lq4/f;

    if-ne v11, v1, :cond_17

    move v5, v14

    goto :goto_10

    :cond_17
    neg-float v5, v14

    :goto_10
    add-float v21, v21, v5

    goto :goto_11

    :cond_18
    if-eqz v8, :cond_19

    move/from16 v21, v19

    :cond_19
    :goto_11
    sget-object v1, Lq4/f;->RIGHT_TO_LEFT:Lq4/f;

    if-ne v11, v1, :cond_1a

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v21, v21, v2

    :goto_12
    move/from16 v2, v21

    goto :goto_13

    :cond_1a
    move-object/from16 v1, v27

    goto :goto_12

    :goto_13
    if-nez v8, :cond_1b

    add-float v10, v7, v28

    iget-object v3, v6, Lx4/g;->a:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v0, v2, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_14

    :cond_1b
    move-object/from16 v12, p1

    add-float v10, v28, v23

    add-float/2addr v7, v10

    add-float v10, v7, v28

    iget-object v3, v6, Lx4/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v2, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_14
    add-float v10, v28, v23

    add-float/2addr v10, v7

    move v7, v10

    const/4 v0, 0x1

    const/4 v10, 0x0

    goto :goto_15

    :cond_1c
    move-object/from16 v12, p1

    move-object/from16 v1, v27

    add-float v18, v18, v20

    add-float v18, v18, v10

    move/from16 v10, v18

    const/4 v0, 0x1

    const/4 v8, 0x1

    :goto_15
    add-int/2addr v9, v0

    move-object/from16 v27, v1

    move/from16 v13, v19

    move/from16 v19, v14

    move/from16 v14, v26

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v12, p1

    move/from16 v26, v14

    move/from16 v14, v19

    move/from16 v19, v13

    iget-object v7, v0, Lq4/l;->v:Ljava/util/ArrayList;

    iget-object v8, v0, Lq4/l;->t:Ljava/util/ArrayList;

    iget-object v9, v0, Lq4/l;->u:Ljava/util/ArrayList;

    sget-object v1, Lx4/f;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1e

    const/4 v0, 0x0

    goto :goto_16

    :cond_1e
    iget-object v1, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget v1, v1, Ly4/h;->d:F

    iget v0, v0, Lq4/l;->s:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    add-float v0, v1, v4

    goto :goto_16

    :cond_1f
    iget-object v1, v6, Lx4/h;->mViewPortHandler:Ly4/h;

    iget v1, v1, Ly4/h;->d:F

    sub-float/2addr v1, v4

    iget v0, v0, Lq4/l;->s:F

    sub-float v0, v1, v0

    goto :goto_16

    :cond_20
    move v0, v4

    :goto_16
    array-length v10, v15

    move/from16 v1, v19

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_17
    if-ge v13, v10, :cond_31

    aget-object v4, v15, v13

    iget-object v5, v4, Lq4/m;->b:Lq4/g;

    move/from16 v16, v1

    sget-object v1, Lq4/g;->NONE:Lq4/g;

    if-eq v5, v1, :cond_21

    const/16 v21, 0x1

    goto :goto_18

    :cond_21
    const/16 v21, 0x0

    :goto_18
    iget v1, v4, Lq4/m;->c:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_22

    move/from16 v24, v22

    goto :goto_19

    :cond_22
    invoke-static {v1}, Ly4/g;->c(F)F

    move-result v1

    move/from16 v24, v1

    :goto_19
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_23

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    add-float v1, v28, v23

    add-float/2addr v1, v0

    move/from16 v16, v1

    move/from16 v1, v19

    goto :goto_1a

    :cond_23
    move/from16 v1, v16

    move/from16 v16, v0

    :goto_1a
    cmpl-float v0, v1, v19

    if-nez v0, :cond_25

    sget-object v0, Lq4/h;->CENTER:Lq4/h;

    if-ne v3, v0, :cond_25

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_25

    sget-object v0, Lq4/f;->RIGHT_TO_LEFT:Lq4/f;

    if-ne v11, v0, :cond_24

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/a;

    iget v0, v0, Ly4/a;->b:F

    :goto_1b
    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_1c

    :cond_24
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/a;

    iget v0, v0, Ly4/a;->b:F

    neg-float v0, v0

    goto :goto_1b

    :goto_1c
    div-float v0, v0, v17

    add-float/2addr v1, v0

    const/4 v0, 0x1

    add-int/2addr v2, v0

    :goto_1d
    move/from16 v27, v2

    goto :goto_1e

    :cond_25
    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_1d

    :goto_1e
    iget-object v5, v4, Lq4/m;->a:Ljava/lang/String;

    if-nez v5, :cond_26

    const/16 v29, 0x1

    goto :goto_1f

    :cond_26
    const/16 v29, 0x0

    :goto_1f
    if-eqz v21, :cond_29

    sget-object v0, Lq4/f;->RIGHT_TO_LEFT:Lq4/f;

    if-ne v11, v0, :cond_27

    sub-float v1, v1, v24

    :cond_27
    move/from16 v30, v1

    add-float v31, v16, v26

    iget-object v2, v6, Lx4/g;->c:Lq4/l;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v32, v2

    move/from16 v2, v30

    move-object/from16 v33, v3

    move/from16 v3, v31

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v9

    move-object v9, v5

    move-object/from16 v5, v32

    invoke-virtual/range {v0 .. v5}, Lx4/g;->b(Landroid/graphics/Canvas;FFLq4/m;Lq4/l;)V

    sget-object v0, Lq4/f;->LEFT_TO_RIGHT:Lq4/f;

    if-ne v11, v0, :cond_28

    add-float v1, v30, v24

    goto :goto_20

    :cond_28
    move/from16 v1, v30

    goto :goto_20

    :cond_29
    move-object/from16 v33, v3

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v9

    move-object v9, v5

    :goto_20
    if-nez v29, :cond_2f

    if-eqz v21, :cond_2b

    sget-object v0, Lq4/f;->RIGHT_TO_LEFT:Lq4/f;

    if-ne v11, v0, :cond_2a

    neg-float v5, v14

    goto :goto_21

    :cond_2a
    move v5, v14

    :goto_21
    add-float/2addr v1, v5

    :cond_2b
    sget-object v0, Lq4/f;->RIGHT_TO_LEFT:Lq4/f;

    if-ne v11, v0, :cond_2c

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly4/a;

    iget v2, v2, Ly4/a;->b:F

    sub-float/2addr v1, v2

    :cond_2c
    add-float v2, v16, v28

    iget-object v3, v6, Lx4/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v12, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Lq4/f;->LEFT_TO_RIGHT:Lq4/f;

    if-ne v11, v2, :cond_2d

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly4/a;

    iget v2, v2, Ly4/a;->b:F

    add-float/2addr v1, v2

    :cond_2d
    if-ne v11, v0, :cond_2e

    neg-float v4, v7

    goto :goto_22

    :cond_2e
    move v4, v7

    :goto_22
    add-float/2addr v1, v4

    move/from16 v0, v20

    :goto_23
    const/4 v2, 0x1

    goto :goto_25

    :cond_2f
    sget-object v0, Lq4/f;->RIGHT_TO_LEFT:Lq4/f;

    if-ne v11, v0, :cond_30

    move/from16 v0, v20

    neg-float v2, v0

    goto :goto_24

    :cond_30
    move/from16 v0, v20

    move v2, v0

    :goto_24
    add-float/2addr v1, v2

    goto :goto_23

    :goto_25
    add-int/2addr v13, v2

    move/from16 v20, v0

    move/from16 v0, v16

    move-object/from16 v9, v18

    move/from16 v2, v27

    move-object/from16 v3, v33

    move/from16 v18, v7

    move-object/from16 v7, v31

    goto/16 :goto_17

    :cond_31
    :goto_26
    return-void
.end method
