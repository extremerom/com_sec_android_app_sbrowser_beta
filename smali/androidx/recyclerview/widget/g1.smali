.class public final Landroidx/recyclerview/widget/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/widget/OverScroller;

.field public d:Landroid/view/animation/Interpolator;

.field public e:Z

.field public f:Z

.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/g1;->g:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/g1;->d:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/g1;->e:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/g1;->f:Z

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/g1;->c:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 13

    iget-object v0, p0, Landroidx/recyclerview/widget/g1;->g:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/g1;->b:I

    iput v1, p0, Landroidx/recyclerview/widget/g1;->a:I

    iget-object v1, p0, Landroidx/recyclerview/widget/g1;->d:Landroid/view/animation/Interpolator;

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v1, v2, :cond_0

    iput-object v2, p0, Landroidx/recyclerview/widget/g1;->d:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/g1;->c:Landroid/widget/OverScroller;

    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/g1;->c:Landroid/widget/OverScroller;

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->access$5900(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->access$6000(Landroidx/recyclerview/widget/RecyclerView;)F

    move-result v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2, v3, v5}, [Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/widget/OverScroller;

    const-string v5, "hidden_fling"

    invoke-static {v3, v5, v2}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, p2, v1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, v2, p1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    move v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g1;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/g1;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/g1;->f:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/g1;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final c(IILandroid/view/animation/Interpolator;I)V
    .locals 15

    move-object v0, p0

    move/from16 v7, p2

    const/high16 v1, -0x80000000

    const/4 v8, 0x0

    const/4 v2, 0x1

    iget-object v9, v0, Landroidx/recyclerview/widget/g1;->g:Landroidx/recyclerview/widget/RecyclerView;

    move/from16 v3, p4

    if-ne v3, v1, :cond_4

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    int-to-double v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int v6, p1, p1

    mul-int v10, v7, v7

    add-int/2addr v10, v6

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v6, v10

    if-eqz v4, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v10

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v10

    :goto_1
    div-int/lit8 v11, v10, 0x2

    int-to-float v6, v6

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v6, v12

    int-to-float v10, v10

    div-float/2addr v6, v10

    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v11, v11

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v6, v13

    const v13, 0x3ef1463b

    mul-float/2addr v6, v13

    float-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v6, v13

    mul-float/2addr v6, v11

    add-float/2addr v6, v11

    if-lez v5, :cond_2

    int-to-float v1, v5

    div-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    int-to-float v1, v1

    div-float/2addr v1, v10

    add-float/2addr v1, v12

    const/high16 v3, 0x43960000    # 300.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    :goto_3
    const/16 v3, 0x7d0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    goto :goto_4

    :cond_4
    move v10, v3

    :goto_4
    if-nez p3, :cond_5

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    move-object v11, v1

    goto :goto_5

    :cond_5
    move-object/from16 v11, p3

    :goto_5
    const/4 v12, 0x2

    if-eqz p1, :cond_6

    move v1, v12

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    invoke-virtual {v9, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    iget-object v1, v0, Landroidx/recyclerview/widget/g1;->g:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Landroidx/recyclerview/widget/g1;->d:Landroid/view/animation/Interpolator;

    if-eq v1, v11, :cond_7

    iput-object v11, v0, Landroidx/recyclerview/widget/g1;->d:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Landroidx/recyclerview/widget/g1;->c:Landroid/widget/OverScroller;

    :cond_7
    iput v8, v0, Landroidx/recyclerview/widget/g1;->b:I

    iput v8, v0, Landroidx/recyclerview/widget/g1;->a:I

    invoke-virtual {v9, v12}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v1, v0, Landroidx/recyclerview/widget/g1;->c:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/g1;->b()V

    :cond_8
    invoke-static {v9, v7}, Landroidx/recyclerview/widget/RecyclerView;->access$3800(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/recyclerview/widget/g1;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/J0;

    if-nez v1, :cond_0

    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroidx/recyclerview/widget/g1;->c:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-static {v9, v0}, LG5/e3;->h(Landroid/view/View;F)V

    return-void

    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroidx/recyclerview/widget/g1;->f:Z

    const/4 v11, 0x1

    iput-boolean v11, v0, Landroidx/recyclerview/widget/g1;->e:Z

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v12, v0, Landroidx/recyclerview/widget/g1;->c:Landroid/widget/OverScroller;

    invoke-virtual {v12}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    iget v3, v0, Landroidx/recyclerview/widget/g1;->a:I

    sub-int v3, v1, v3

    iget v4, v0, Landroidx/recyclerview/widget/g1;->b:I

    sub-int v4, v2, v4

    iput v1, v0, Landroidx/recyclerview/widget/g1;->a:I

    iput v2, v0, Landroidx/recyclerview/widget/g1;->b:I

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInHorizontalStretch(I)I

    move-result v7

    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInVerticalStretch(I)I

    move-result v8

    iget-object v4, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v10, v4, v10

    aput v10, v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v9

    move v2, v7

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v2, v1, v10

    sub-int/2addr v7, v2

    aget v1, v1, v11

    sub-int/2addr v8, v1

    invoke-static {v9, v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3800(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_0

    :cond_1
    invoke-static {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->access$3800(Landroidx/recyclerview/widget/RecyclerView;I)V

    :goto_0
    invoke-virtual {v9}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    const/4 v13, 0x2

    if-eq v1, v13, :cond_2

    invoke-virtual {v9, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_2
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    if-eqz v1, :cond_6

    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v10, v1, v10

    aput v10, v1, v11

    invoke-virtual {v9, v7, v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v2, v1, v10

    aget v1, v1, v11

    sub-int/2addr v7, v2

    sub-int/2addr v8, v1

    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/J0;

    iget-object v3, v3, Landroidx/recyclerview/widget/J0;->mSmoothScroller:Landroidx/recyclerview/widget/c1;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c1;->isPendingInitialRun()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c1;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c1;->stop()V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/c1;->getTargetPosition()I

    move-result v5

    if-lt v5, v4, :cond_4

    sub-int/2addr v4, v11

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/c1;->setTargetPosition(I)V

    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/c1;->onAnimation(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/c1;->onAnimation(II)V

    :cond_5
    :goto_1
    move v14, v1

    move v15, v2

    move/from16 v16, v7

    move/from16 v17, v8

    goto :goto_2

    :cond_6
    move/from16 v16, v7

    move/from16 v17, v8

    move v14, v10

    move v15, v14

    :goto_2
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_7
    iget-object v8, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v10, v8, v10

    aput v10, v8, v11

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v9

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-static/range {v1 .. v8}, Landroidx/recyclerview/widget/RecyclerView;->access$5500(Landroidx/recyclerview/widget/RecyclerView;IIII[II[I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$5600(Landroidx/recyclerview/widget/RecyclerView;)[I

    move-result-object v1

    aput v10, v1, v10

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$5600(Landroidx/recyclerview/widget/RecyclerView;)[I

    move-result-object v1

    aput v10, v1, v11

    :cond_8
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$5600(Landroidx/recyclerview/widget/RecyclerView;)[I

    move-result-object v1

    aget v1, v1, v10

    if-ltz v1, :cond_9

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$5600(Landroidx/recyclerview/widget/RecyclerView;)[I

    move-result-object v1

    aget v1, v1, v11

    if-gez v1, :cond_a

    :cond_9
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$5600(Landroidx/recyclerview/widget/RecyclerView;)[I

    move-result-object v1

    aput v10, v1, v10

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$5600(Landroidx/recyclerview/widget/RecyclerView;)[I

    move-result-object v1

    aput v10, v1, v11

    :cond_a
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v2, v1, v10

    sub-int v16, v16, v2

    aget v1, v1, v11

    sub-int v17, v17, v1

    if-nez v15, :cond_b

    if-eqz v14, :cond_c

    :cond_b
    invoke-virtual {v9, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_c
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$5700(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_d
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    if-ne v1, v2, :cond_e

    move v1, v11

    goto :goto_3

    :cond_e
    move v1, v10

    :goto_3
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v2, v3, :cond_f

    move v2, v11

    goto :goto_4

    :cond_f
    move v2, v10

    :goto_4
    invoke-virtual {v12}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    if-nez v1, :cond_10

    if-eqz v16, :cond_11

    :cond_10
    if-nez v2, :cond_12

    if-eqz v17, :cond_11

    goto :goto_5

    :cond_11
    move v1, v10

    goto :goto_6

    :cond_12
    :goto_5
    move v1, v11

    :goto_6
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/J0;

    iget-object v2, v2, Landroidx/recyclerview/widget/J0;->mSmoothScroller:Landroidx/recyclerview/widget/c1;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroidx/recyclerview/widget/c1;->isPendingInitialRun()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_9

    :cond_13
    if-eqz v1, :cond_1a

    invoke-virtual {v9}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    if-eq v1, v13, :cond_18

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$5800(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-gez v16, :cond_14

    neg-int v2, v1

    goto :goto_7

    :cond_14
    if-lez v16, :cond_15

    move v2, v1

    goto :goto_7

    :cond_15
    move v2, v10

    :goto_7
    if-gez v17, :cond_16

    neg-int v1, v1

    goto :goto_8

    :cond_16
    if-lez v17, :cond_17

    goto :goto_8

    :cond_17
    move v1, v10

    :goto_8
    invoke-virtual {v9, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    :cond_18
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_1b

    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/J;

    iget-object v2, v1, Landroidx/recyclerview/widget/J;->c:[I

    if-eqz v2, :cond_19

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    :cond_19
    iput v10, v1, Landroidx/recyclerview/widget/J;->d:I

    goto :goto_a

    :cond_1a
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/g1;->b()V

    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/L;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v9, v15, v14}, Landroidx/recyclerview/widget/L;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_1b
    :goto_a
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v9, v1}, LG5/e3;->h(Landroid/view/View;F)V

    :cond_1c
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/J0;

    iget-object v1, v1, Landroidx/recyclerview/widget/J0;->mSmoothScroller:Landroidx/recyclerview/widget/c1;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c1;->isPendingInitialRun()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1, v10, v10}, Landroidx/recyclerview/widget/c1;->onAnimation(II)V

    :cond_1d
    iput-boolean v10, v0, Landroidx/recyclerview/widget/g1;->e:Z

    iget-boolean v1, v0, Landroidx/recyclerview/widget/g1;->f:Z

    if-eqz v1, :cond_1e

    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v9, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_1e
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :goto_b
    return-void
.end method
