.class public final Ln9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln9/c;

.field public final c:Ln9/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ln9/b;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "userConfig"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ln9/d;->a:Landroid/content/Context;

    iput-object v3, v0, Ln9/d;->c:Ln9/b;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    const-string v6, "initialize version: 2.0.36 view size:"

    const-string v7, "x"

    const-string v8, " config:"

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TransitionLightEffect"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ln9/c;

    invoke-direct {v4, v1, v3}, Li9/a;-><init>(Landroid/content/Context;Lbc/d;)V

    sget-object v1, Ln9/h;->a:Ln9/a;

    iput-object v1, v4, Ln9/c;->f:Ln9/a;

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v1, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v4, Ln9/c;->g:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v4, Ln9/c;->h:F

    iput v1, v4, Ln9/c;->i:F

    iput-object v4, v0, Ln9/d;->b:Ln9/c;

    new-instance v7, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v8, 0xc

    invoke-direct {v7, v8, v0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    iput-object v7, v3, Ln9/b;->n:Lcom/sec/android/app/sbrowser/tab_sync/o;

    new-instance v7, Landroid/graphics/PointF;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget v1, v3, Ln9/b;->k:F

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v1, v9

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v1, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    new-instance v10, Landroid/graphics/PointF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    mul-float v12, v11, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float v13, v7, v9

    sub-float/2addr v12, v13

    mul-float/2addr v11, v9

    mul-float/2addr v7, v1

    add-float/2addr v7, v11

    invoke-direct {v10, v12, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v9, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v9

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v9, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v9

    invoke-direct {v6, v7, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, v3, Lbc/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v6, v3, Ln9/b;->d:Landroid/graphics/PointF;

    new-instance v1, Lc6/q;

    const/4 v7, 0x3

    invoke-direct {v1, v7, v3}, Lc6/q;-><init>(ILjava/lang/Object;)V

    new-instance v7, Lh9/a;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v8, 0x41047ae1    # 8.28f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    new-instance v8, LY1/h;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v6, v3}, LY1/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-wide v10, v3, Ln9/b;->j:J

    const/4 v14, 0x0

    const/16 v19, 0x32

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v7

    move-object/from16 v17, v1

    move-object/from16 v18, v8

    invoke-direct/range {v9 .. v19}, Lh9/a;-><init>(JLjava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;IILandroid/animation/Animator$AnimatorListener;Lsb/o;I)V

    iget-object v1, v3, Lbc/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Li9/a;->a(Landroid/view/View;)V

    iget-object v1, v4, Li9/a;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v2, v0, Ln9/d;->c:Ln9/b;

    iget-object v3, v2, Lbc/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v6, "buildAnimatorByState attr size: "

    invoke-static {v3, v6, v5}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lbc/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh9/a;

    invoke-virtual {v3, v4}, Lh9/a;->a(Li9/a;)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, v0, Ln9/d;->b:Ln9/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Li9/a;->g()V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Ln9/d;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, LG5/w;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, LG5/w;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget-object v0, p0, Ln9/d;->c:Ln9/b;

    iget-object v2, v0, Ln9/b;->i:Ln9/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start Transition Effect animation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " revealMode: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransitionLightEffect"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ln9/d;->a:Landroid/content/Context;

    if-eqz v1, :cond_3

    invoke-static {v1}, LG5/w;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, LG5/w;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v0, Ln9/b;->i:Ln9/a;

    sget-object v2, Ln9/a;->VIEW:Ln9/a;

    if-ne v1, v2, :cond_3

    iget-object p0, v0, Ln9/b;->n:Lcom/sec/android/app/sbrowser/tab_sync/o;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;->run()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Ln9/d;->b:Ln9/c;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Li9/a;->g()V

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Li9/a;->f()V

    :cond_5
    :goto_0
    return-void
.end method
