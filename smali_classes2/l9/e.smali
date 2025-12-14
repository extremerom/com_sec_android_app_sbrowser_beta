.class public final Ll9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll9/d;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ll9/b;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "userConfig"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz v2, :cond_14

    if-eqz v1, :cond_13

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x23

    if-lt v4, v5, :cond_0

    invoke-static/range {p2 .. p2}, LA2/e;->x(Landroid/view/View;)V

    :cond_0
    iget-boolean v4, v3, Ll9/b;->p:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_1
    move v6, v5

    goto/16 :goto_6

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v8, "createBitmap(...)"

    invoke-static {v4, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget-object v8, Lq9/a;->Palette512:Lq9/a;

    const-string v9, "palette"

    invoke-static {v8, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    :goto_0
    mul-int v11, v9, v10

    const v12, 0x9c40

    if-gt v11, v12, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-ne v9, v11, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v4, v9, v10, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v9, "createScaledBitmap(...)"

    invoke-static {v4, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_a

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_9

    invoke-virtual {v4, v11, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    invoke-static {v14}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v14

    invoke-virtual {v8}, Lq9/a;->a()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Color;->alpha()F

    move-result v16

    const/high16 v17, 0x437f0000    # 255.0f

    mul-float v16, v16, v17

    int-to-float v7, v15

    div-float v16, v16, v7

    invoke-static/range {v16 .. v16}, LG5/p2;->e(F)I

    move-result v16

    mul-int v6, v16, v15

    const/16 v5, 0xff

    if-le v6, v5, :cond_4

    move v6, v5

    :cond_4
    invoke-virtual {v14}, Landroid/graphics/Color;->red()F

    move-result v18

    mul-float v18, v18, v17

    div-float v18, v18, v7

    invoke-static/range {v18 .. v18}, LG5/p2;->e(F)I

    move-result v18

    move-object/from16 v19, v4

    mul-int v4, v18, v15

    if-le v4, v5, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {v14}, Landroid/graphics/Color;->green()F

    move-result v18

    mul-float v18, v18, v17

    div-float v18, v18, v7

    invoke-static/range {v18 .. v18}, LG5/p2;->e(F)I

    move-result v18

    move-object/from16 v20, v8

    mul-int v8, v18, v15

    if-le v8, v5, :cond_6

    move v8, v5

    :cond_6
    invoke-virtual {v14}, Landroid/graphics/Color;->blue()F

    move-result v14

    mul-float v14, v14, v17

    div-float/2addr v14, v7

    invoke-static {v14}, LG5/p2;->e(F)I

    move-result v7

    mul-int/2addr v7, v15

    if-le v7, v5, :cond_7

    goto :goto_4

    :cond_7
    move v5, v7

    :goto_4
    invoke-static {v6, v4, v8, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    const/16 v5, 0x8

    const/16 v6, 0x46

    invoke-static {v4, v5, v6}, LKc/k;->B(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toUpperCase(...)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "#"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_5

    :cond_8
    const/4 v6, 0x1

    move v5, v6

    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move v5, v6

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    goto/16 :goto_3

    :cond_9
    move-object/from16 v19, v4

    move v6, v5

    move-object/from16 v20, v8

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_a
    move v6, v5

    invoke-static {v9}, Lfb/B;->n(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, LM0/e;

    const/16 v7, 0xc

    invoke-direct {v5, v7}, LM0/e;-><init>(I)V

    invoke-static {v4, v5}, Lfb/n;->a0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lfb/B;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ee66666    # 0.45f

    const v8, 0x3f4ccccd    # 0.8f

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v4}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Color;->alpha()F

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Color;->red()F

    move-result v8

    mul-float/2addr v8, v7

    invoke-virtual {v4}, Landroid/graphics/Color;->green()F

    move-result v9

    mul-float/2addr v9, v7

    invoke-virtual {v4}, Landroid/graphics/Color;->blue()F

    move-result v10

    mul-float/2addr v10, v7

    mul-float/2addr v8, v8

    mul-float/2addr v9, v9

    add-float/2addr v9, v8

    mul-float/2addr v10, v10

    add-float/2addr v10, v9

    float-to-double v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v5, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    div-float/2addr v5, v8

    invoke-virtual {v4}, Landroid/graphics/Color;->red()F

    move-result v8

    mul-float/2addr v8, v5

    invoke-virtual {v4}, Landroid/graphics/Color;->green()F

    move-result v9

    mul-float/2addr v9, v5

    invoke-virtual {v4}, Landroid/graphics/Color;->blue()F

    move-result v4

    mul-float/2addr v4, v5

    invoke-static {v8, v9, v4, v7}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v4

    goto :goto_7

    :cond_b
    move v6, v5

    move-object/from16 v20, v8

    div-int/lit8 v9, v9, 0x2

    div-int/lit8 v10, v10, 0x2

    goto/16 :goto_0

    :goto_6
    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Ll9/b;->j:Ljava/lang/Integer;

    goto :goto_8

    :cond_c
    move v6, v5

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    const-string v7, "initialize version: 2.0.36 view size:"

    const-string v8, "x"

    const-string v9, " config:"

    invoke-static {v4, v5, v7, v8, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProcessingLightEffect"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v3, Ll9/b;->b:Z

    move/from16 v19, v4

    iget-object v4, v3, Ll9/b;->c:Ll9/a;

    move-object/from16 v20, v4

    iget v4, v3, Ll9/b;->i:F

    move/from16 v25, v4

    iget-object v4, v3, Ll9/b;->j:Ljava/lang/Integer;

    move-object/from16 v26, v4

    iget v4, v3, Ll9/b;->l:F

    move/from16 v28, v4

    iget v4, v3, Ll9/b;->n:F

    move/from16 v30, v4

    iget v4, v3, Ll9/b;->q:F

    move/from16 v33, v4

    new-instance v4, Ll9/b;

    move-object/from16 v18, v4

    iget-wide v7, v3, Ll9/b;->r:J

    move-wide/from16 v34, v7

    iget v5, v3, Ll9/b;->e:F

    move/from16 v21, v5

    iget v5, v3, Ll9/b;->f:F

    move/from16 v22, v5

    iget v5, v3, Ll9/b;->g:F

    move/from16 v23, v5

    iget v5, v3, Ll9/b;->h:I

    move/from16 v24, v5

    iget v5, v3, Ll9/b;->k:F

    move/from16 v27, v5

    iget v5, v3, Ll9/b;->m:F

    move/from16 v29, v5

    iget-wide v7, v3, Ll9/b;->o:J

    move-wide/from16 v31, v7

    const v36, 0x8104

    invoke-direct/range {v18 .. v36}, Ll9/b;-><init>(ZLl9/a;FFFIFLjava/lang/Integer;FFFFJFJI)V

    iget-object v3, v4, Lbc/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-wide v8, v4, Ll9/b;->o:J

    new-instance v15, Lc6/q;

    const/4 v3, 0x2

    invoke-direct {v15, v3, v4}, Lc6/q;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lh9/a;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    new-instance v5, LPc/f;

    const/4 v7, 0x2

    invoke-direct {v5, v7, v4}, LPc/f;-><init>(ILjava/lang/Object;)V

    const/4 v12, 0x0

    const/16 v17, 0x52

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v7, v3

    move-object/from16 v16, v5

    invoke-direct/range {v7 .. v17}, Lh9/a;-><init>(JLjava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;IILandroid/animation/Animator$AnimatorListener;Lsb/o;I)V

    iget-object v5, v4, Lbc/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ll9/d;

    invoke-direct {v3, v1, v4}, Li9/a;-><init>(Landroid/content/Context;Lbc/d;)V

    const v1, 0x40033333    # 2.05f

    iput v1, v3, Ll9/d;->e:F

    sget-object v1, Ll9/i;->c:Landroid/graphics/PointF;

    iput-object v1, v3, Ll9/d;->f:Landroid/graphics/PointF;

    iput-object v3, v0, Ll9/e;->a:Ll9/d;

    invoke-virtual {v3, v2}, Li9/a;->a(Landroid/view/View;)V

    iget-object v1, v3, Li9/a;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    const/4 v5, 0x0

    goto :goto_9

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_a

    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v2, LH9/d;

    const/16 v6, 0x16

    invoke-direct {v2, v6, v3}, LH9/d;-><init>(ILjava/lang/Object;)V

    iget-object v6, v3, Li9/a;->a:LQd/m;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lq9/e;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8}, Lq9/e;-><init>(Ljava/util/function/Consumer;I)V

    new-instance v2, LH9/d;

    const/16 v8, 0x18

    invoke-direct {v2, v8, v7}, LH9/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Ll9/c;

    invoke-direct {v2, v3, v5}, Ll9/c;-><init>(Ll9/d;Z)V

    new-instance v5, Lq9/e;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7}, Lq9/e;-><init>(Ljava/util/function/Consumer;I)V

    new-instance v2, LH9/d;

    const/16 v7, 0x18

    invoke-direct {v2, v7, v5}, LH9/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v2, v4, Lbc/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh9/a;

    invoke-virtual {v4, v3}, Lh9/a;->a(Li9/a;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_11
    iget-object v0, v0, Ll9/e;->a:Ll9/d;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Li9/a;->g()V

    :cond_12
    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Ll9/e;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start Processing Effect isRunning:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " stopAnimation:null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessingLightEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ll9/e;->a:Ll9/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li9/a;->g()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll9/e;->b:Z

    iget-object p0, p0, Ll9/e;->a:Ll9/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Li9/a;->f()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "ProcessingLightEffect"

    const-string v1, "Stop Processing Effect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ll9/e;->a:Ll9/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li9/a;->g()V

    :cond_0
    return-void
.end method
