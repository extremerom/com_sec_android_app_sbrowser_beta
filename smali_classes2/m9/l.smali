.class public final Lm9/l;
.super Li9/a;
.source "SourceFile"


# instance fields
.field public e:Landroid/util/Size;


# direct methods
.method public static final h(Lm9/i;Lm9/q;ILm9/l;Z)Ljava/util/ArrayList;
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move/from16 v1, p2

    iget-object v7, v6, Lm9/i;->e:Lm9/h;

    if-eqz v7, :cond_6

    iget-object v0, v5, Lm9/q;->o:[F

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v2, 0x3

    aget v3, v0, v3

    aget v4, v0, v2

    add-int/lit8 v8, v2, 0x1

    aget v8, v0, v8

    add-int/lit8 v2, v2, 0x2

    aget v0, v0, v2

    invoke-static {v3, v4, v8, v0}, Landroid/graphics/Color;->argb(FFFF)I

    new-instance v8, Landroid/graphics/PointF;

    iget-object v0, v5, Lm9/q;->p:[F

    mul-int/lit8 v2, v1, 0x2

    aget v3, v0, v2

    const/4 v9, 0x1

    add-int/2addr v2, v9

    aget v0, v0, v2

    invoke-direct {v8, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, v5, Lm9/q;->q:[F

    aget v10, v0, v1

    if-eqz p4, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lm9/k;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v5}, Lm9/k;-><init>(IILm9/q;)V

    move-object v12, v0

    :goto_0
    new-instance v13, Lm9/k;

    const/4 v0, 0x1

    invoke-direct {v13, v1, v0, v5}, Lm9/k;-><init>(IILm9/q;)V

    new-instance v14, Lm9/k;

    const/4 v0, 0x2

    invoke-direct {v14, v1, v0, v5}, Lm9/k;-><init>(IILm9/q;)V

    new-instance v15, La0/D;

    const/4 v2, 0x1

    move-object v0, v15

    move/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, La0/D;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v6, Lm9/i;->c:Landroid/graphics/PointF;

    const-string v1, "initialPosition"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v1, LB0/a;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, v13}, LB0/a;-><init>(ILjava/lang/Object;)V

    const-string v2, "position"

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LB0/a;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, v14}, LB0/a;-><init>(ILjava/lang/Object;)V

    const-string v2, "scale"

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "color"

    if-eqz v12, :cond_1

    new-instance v1, Lm9/g;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v12}, Lm9/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v4, v7, Lm9/h;->c:Ljava/lang/Float;

    if-eqz v4, :cond_2

    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v14, v0, Landroid/graphics/PointF;->x:F

    sget-object v16, Lxb/d;->a:Lxb/c;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v16, Lxb/d;->b:Lxb/a;

    invoke-virtual/range {v16 .. v16}, Lxb/a;->d()Ljava/util/Random;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Random;->nextFloat()F

    move-result v16

    sub-float v16, v16, v3

    mul-float v16, v16, v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v17

    mul-float v17, v17, v16

    add-float v14, v17, v14

    const-string v11, "x"

    invoke-static {v7, v11, v12, v14}, Lm9/h;->a(Lm9/h;Ljava/lang/String;FF)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-eqz v4, :cond_3

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sget-object v12, Lxb/d;->a:Lxb/c;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lxb/d;->b:Lxb/a;

    invoke-virtual {v12}, Lxb/a;->d()Ljava/util/Random;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Random;->nextFloat()F

    move-result v12

    sub-float/2addr v12, v3

    mul-float/2addr v12, v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v12

    add-float/2addr v4, v0

    const-string v0, "y"

    invoke-static {v7, v0, v8, v4}, Lm9/h;->a(Lm9/h;Ljava/lang/String;FF)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v4, v7, Lm9/h;->d:Ljava/lang/Float;

    if-eqz v4, :cond_4

    sget-object v8, Lxb/d;->a:Lxb/c;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lxb/d;->b:Lxb/a;

    invoke-virtual {v8}, Lxb/a;->d()Ljava/util/Random;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    sub-float/2addr v8, v3

    mul-float/2addr v8, v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v8

    iget v3, v6, Lm9/i;->d:F

    add-float/2addr v1, v3

    invoke-static {v7, v2, v10, v1}, Lm9/h;->a(Lm9/h;Ljava/lang/String;FF)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    filled-new-array {v11, v0, v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v8

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, v7, Lm9/h;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v0, v7, Lm9/h;->a:J

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const v0, 0x3b9aca00

    int-to-float v0, v0

    iget v1, v7, Lm9/h;->f:F

    div-float/2addr v0, v1

    float-to-int v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    int-to-long v9, v3

    sub-long/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Long;

    move-result-object v2

    new-instance v9, Lm9/e;

    move-object v0, v9

    move-object v1, v7

    move-object v4, v5

    move-object v10, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lm9/e;-><init>(Lm9/h;[Ljava/lang/Long;ILjava/util/HashMap;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lm9/f;

    invoke-direct {v0, v15}, Lm9/f;-><init>(La0/D;)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v7, Lm9/h;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v1, v6, Lm9/i;->b:I

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v21

    new-instance v0, Lh9/a;

    new-instance v1, LPc/f;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v10}, LPc/f;-><init>(ILjava/lang/Object;)V

    const/16 v24, -0x1

    const/16 v25, 0x0

    iget-wide v2, v7, Lm9/h;->a:J

    iget-object v4, v7, Lm9/h;->b:Landroid/view/animation/Interpolator;

    const/16 v23, 0x2

    const/16 v27, 0x82

    move-object/from16 v17, v0

    move-wide/from16 v18, v2

    move-object/from16 v22, v4

    move-object/from16 v26, v1

    invoke-direct/range {v17 .. v27}, Lh9/a;-><init>(JLjava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;IILandroid/animation/Animator$AnimatorListener;Lsb/o;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh9/a;->a(Li9/a;)Landroid/animation/ValueAnimator;

    move-result-object v11

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    move-object v11, v1

    :goto_4
    filled-new-array {v8}, [Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v11, :cond_7

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    :goto_5
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lbc/d;)Ldb/j;
    .locals 7

    check-cast p2, Lm9/j;

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lm9/q;

    invoke-direct {p1}, Lj9/h;-><init>()V

    invoke-static {}, Lj9/b;->q()Landroid/graphics/RuntimeShader;

    move-result-object v0

    iput-object v0, p1, Lm9/q;->l:Landroid/graphics/RuntimeShader;

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p1, Lm9/q;->n:[F

    new-array v1, v0, [F

    iput-object v1, p1, Lm9/q;->o:[F

    new-array v1, v0, [F

    iput-object v1, p1, Lm9/q;->p:[F

    new-array v1, v0, [F

    iput-object v1, p1, Lm9/q;->q:[F

    iget v1, p2, Lm9/j;->e:I

    iput v1, p1, Lm9/q;->r:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lj9/h;->c:Z

    iget-object v1, p2, Lm9/j;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    new-instance v2, Lk9/s;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v1, v3}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v1, p2, Lm9/j;->d:Landroid/util/Size;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    new-instance v3, Lj9/e;

    invoke-direct {v3, p1, v2, v1}, Lj9/e;-><init>(Lj9/h;II)V

    invoke-virtual {p1, v3}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_1
    new-instance v1, Lm9/n;

    iget v2, p2, Lm9/j;->b:I

    invoke-direct {v1, v2, p1}, Lm9/n;-><init>(ILm9/q;)V

    invoke-virtual {p1, v1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget-object p2, p2, Lm9/j;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p1, Lm9/q;->m:I

    if-eq v2, v1, :cond_2

    iput v1, p1, Lm9/q;->m:I

    new-instance v2, Lm9/n;

    invoke-direct {v2, p1, v1}, Lm9/n;-><init>(Lm9/q;I)V

    invoke-virtual {p1, v2}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_3

    check-cast v3, Lm9/i;

    iget-boolean v4, v3, Lm9/i;->a:Z

    new-instance v6, Lm9/o;

    invoke-direct {v6, p1, v2, v4}, Lm9/o;-><init>(Lm9/q;IZ)V

    invoke-virtual {p1, v6}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance v4, Lj9/e;

    iget v6, v3, Lm9/i;->b:I

    invoke-direct {v4, v6, v2, p1}, Lj9/e;-><init>(IILm9/q;)V

    invoke-virtual {p1, v4}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance v4, Lm9/m;

    iget v6, v3, Lm9/i;->d:F

    invoke-direct {v4, p1, v2, v6}, Lm9/m;-><init>(Lm9/q;IF)V

    invoke-virtual {p1, v4}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget-object v3, v3, Lm9/i;->c:Landroid/graphics/PointF;

    const-string v4, "position"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lm9/p;

    invoke-direct {v4, p1, v2, v3}, Lm9/p;-><init>(Lm9/q;ILandroid/graphics/PointF;)V

    invoke-virtual {p1, v4}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    move v2, v5

    goto :goto_0

    :cond_3
    invoke-static {}, Lfb/o;->l()V

    throw v4

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v2, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_5

    check-cast v3, Lm9/i;

    invoke-static {v3, p1, v2, p0, v0}, Lm9/l;->h(Lm9/i;Lm9/q;ILm9/l;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v2, v5

    goto :goto_1

    :cond_5
    invoke-static {}, Lfb/o;->l()V

    throw v4

    :cond_6
    new-instance p0, Ldb/j;

    invoke-direct {p0, p1, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
