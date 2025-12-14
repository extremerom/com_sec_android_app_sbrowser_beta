.class public final Lc6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc6/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6/h;->b:Ljava/lang/Object;

    sget p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k0:I

    invoke-virtual {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc6/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v0, Lc6/h;->b:Ljava/lang/Object;

    const/4 v6, 0x1

    iget v0, v0, Lc6/h;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v7, "SeslImmersiveScrollBehavior"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->isDetachedState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "AppBarLayout was DetachedState. Skip onOffsetChanged"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_1
    :goto_0
    iget-boolean v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->R:Z

    if-nez v0, :cond_5

    iget-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->J:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    iget-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    iget-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_26

    invoke-virtual {v0, v4}, Lcom/google/android/material/appbar/AppBarLayout;->onImmOffsetChanged(I)V

    goto/16 :goto_10

    :cond_5
    iget-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_6
    move v0, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v8

    iget v9, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    add-int/2addr v9, v0

    int-to-float v9, v9

    cmpl-float v10, v8, v3

    if-nez v10, :cond_7

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    move v11, v8

    :goto_2
    div-float/2addr v9, v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetAdditionalScrollRange()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/2addr v11, v1

    int-to-float v11, v11

    sub-float/2addr v11, v8

    iget v12, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N:I

    int-to-float v12, v12

    add-float v13, v11, v12

    mul-float/2addr v9, v11

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v9, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget v14, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    int-to-float v14, v14

    add-float v15, v9, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v15

    int-to-float v15, v15

    cmpg-float v15, v15, v8

    if-gtz v15, :cond_20

    invoke-virtual {v5}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M()Z

    move-result v15

    if-eqz v15, :cond_15

    iget-object v2, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v8, 0x8

    if-eq v2, v8, :cond_9

    if-eqz v0, :cond_9

    int-to-float v2, v0

    add-float/2addr v2, v9

    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v8, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v8, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    move v0, v4

    :goto_3
    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    :goto_4
    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_5

    :cond_9
    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    goto :goto_4

    :goto_5
    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X:Landroid/view/WindowInsets;

    invoke-static {v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T(Landroid/view/WindowInsets;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    :cond_a
    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    :cond_b
    iget v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    if-eqz v1, :cond_c

    invoke-virtual {v5}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->P()V

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    :goto_6
    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->J:Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-static {v3, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    iget v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_25

    iput v13, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q:F

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsAnimationController;

    if-eqz v1, :cond_25

    invoke-static {v1}, LT6/a;->x(Landroid/view/WindowInsetsAnimationController;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "AnimationController is already finished by App side"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_e
    float-to-int v1, v14

    iget-object v2, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsAnimationController;

    if-eqz v2, :cond_11

    iget-object v7, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    if-nez v7, :cond_f

    goto :goto_8

    :cond_f
    invoke-static {v2}, LT6/a;->D(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    if-eq v1, v2, :cond_10

    move v1, v6

    goto :goto_7

    :cond_10
    move v1, v4

    :goto_7
    iget-boolean v2, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->f0:Z

    if-eq v1, v2, :cond_11

    iput-boolean v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->f0:Z

    iget-object v2, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v7, v8, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    const-string v10, "hidden_semSetForceHideRoundedCorner"

    invoke-static {v7, v10, v8}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v7, v1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_8
    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    invoke-static {v1}, Ls6/l;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X:Landroid/view/WindowInsets;

    invoke-static {}, Lf1/E;->x()I

    move-result v2

    invoke-static {v1, v2}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    invoke-static {v2}, Ls6/l;->f(Landroid/content/Context;)I

    move-result v2

    iget-object v7, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "active_edge_area"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iget v8, v1, Landroid/graphics/Insets;->left:I

    if-ne v2, v8, :cond_12

    if-nez v7, :cond_12

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto :goto_9

    :cond_12
    iget v1, v1, Landroid/graphics/Insets;->right:I

    if-ne v2, v1, :cond_13

    if-ne v7, v6, :cond_13

    goto :goto_9

    :cond_13
    move v2, v4

    :goto_9
    iget v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->P:I

    int-to-float v1, v1

    add-float/2addr v9, v1

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->P:I

    int-to-float v7, v3

    sub-float/2addr v7, v14

    if-eqz v3, :cond_14

    move v6, v3

    :cond_14
    int-to-float v3, v6

    div-float/2addr v7, v3

    iget-object v3, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsAnimationController;

    float-to-int v6, v12

    float-to-int v1, v1

    invoke-static {v4, v6, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v3, v1, v7}, LT6/a;->s(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;F)V

    goto/16 :goto_f

    :cond_15
    iget-object v4, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->J:Landroid/view/View;

    if-eqz v4, :cond_16

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_16
    iget-object v4, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v4, :cond_17

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_17
    iget-object v4, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v1, v4

    iget-object v4, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v4, :cond_19

    int-to-float v0, v0

    if-eqz v10, :cond_18

    move v2, v8

    goto :goto_a

    :cond_18
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_a
    div-float v2, v0, v2

    iget-object v4, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v0, v4

    iget-object v2, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v3, v0

    goto :goto_b

    :cond_19
    move v3, v1

    :cond_1a
    :goto_b
    iget-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_1b

    goto :goto_c

    :cond_1b
    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsAnimationController;

    iget-object v2, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->I:Landroid/view/View;

    if-nez v2, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->I:Landroid/view/View;

    :cond_1c
    if-nez v1, :cond_1d

    iget-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    goto :goto_c

    :cond_1d
    invoke-static {v1}, LT6/a;->y(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1}, LT6/a;->D(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1}, LT6/a;->g(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    if-ne v0, v2, :cond_1e

    invoke-static {v1}, LT6/a;->q(Landroid/view/WindowInsetsAnimationController;)V

    goto :goto_c

    :cond_1e
    if-ne v0, v4, :cond_1f

    invoke-static {v1}, LT6/a;->B(Landroid/view/WindowInsetsAnimationController;)V

    :cond_1f
    :goto_c
    move v0, v3

    goto :goto_f

    :cond_20
    iget-object v0, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_d

    :cond_21
    move v0, v3

    :goto_d
    iget-boolean v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Z:Z

    if-eqz v1, :cond_22

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v1, :cond_22

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_22
    iget-boolean v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Z:Z

    if-nez v1, :cond_25

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v1, :cond_25

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X:Landroid/view/WindowInsets;

    if-eqz v1, :cond_25

    invoke-virtual {v5}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    iget v2, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_24

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_e

    :cond_23
    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_24

    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_24
    :goto_e
    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_25
    :goto_f
    iget-object v1, v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_26

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->onImmOffsetChanged(I)V

    :cond_26
    :goto_10
    return-void

    :pswitch_0
    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput v1, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:I

    iget-object v0, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->F:LA7/c;

    iget-object v0, v0, LA7/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    neg-int v7, v1

    int-to-float v8, v7

    const/high16 v9, 0x40400000    # 3.0f

    div-float v9, v8, v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    iget-object v9, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->A:Lf1/w0;

    if-eqz v9, :cond_27

    invoke-virtual {v9}, Lf1/w0;->d()I

    move-result v9

    goto :goto_11

    :cond_27
    move v9, v4

    :goto_11
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    move v11, v4

    :goto_12
    if-ge v11, v10, :cond_2c

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lc6/g;

    invoke-static {v12}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b(Landroid/view/View;)Lc6/s;

    move-result-object v14

    iget-object v15, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/view/ViewGroup;

    if-eqz v15, :cond_29

    instance-of v15, v12, Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v15, :cond_29

    move-object v15, v12

    check-cast v15, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v15}, Landroidx/appcompat/widget/ActionBarContextView;->getIsActionModeAccessibilityOn()Z

    move-result v15

    if-eqz v15, :cond_28

    iget-object v15, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v15, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_13

    :cond_28
    iget-object v2, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_29
    :goto_13
    iget v2, v13, Lc6/g;->a:I

    if-eq v2, v6, :cond_2b

    const/4 v12, 0x2

    if-eq v2, v12, :cond_2a

    goto :goto_14

    :cond_2a
    iget v2, v13, Lc6/g;->b:F

    mul-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v14, v2}, Lc6/s;->b(I)Z

    goto :goto_14

    :cond_2b
    invoke-static {v12}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b(Landroid/view/View;)Lc6/s;

    move-result-object v2

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lc6/g;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    iget v2, v2, Lc6/s;->b:I

    sub-int/2addr v15, v2

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v15, v2

    iget v2, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v15, v2

    invoke-static {v7, v4, v15}, LG5/L3;->e(III)I

    move-result v2

    invoke-virtual {v14, v2}, Lc6/s;->b(I)Z

    :goto_14
    add-int/2addr v11, v6

    goto :goto_12

    :cond_2c
    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f()V

    iget-object v2, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2d

    if-lez v9, :cond_2d

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2d
    iget-boolean v2, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e0:Z

    if-eqz v2, :cond_3a

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v7, p1

    invoke-virtual {v7, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3e126e98    # 0.143f

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v9, v8

    int-to-float v2, v2

    sub-float v10, v2, v3

    mul-float/2addr v10, v9

    const/high16 v9, 0x437f0000    # 255.0f

    sub-float v10, v9, v10

    cmpg-float v11, v10, v3

    if-gez v11, :cond_2e

    move v10, v3

    goto :goto_15

    :cond_2e
    cmpl-float v11, v10, v9

    if-gtz v11, :cond_2f

    if-nez v1, :cond_30

    cmpg-float v1, v10, v9

    if-gez v1, :cond_30

    :cond_2f
    move v10, v9

    :cond_30
    :goto_15
    div-float/2addr v10, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v11, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h0:F

    float-to-int v11, v11

    if-le v1, v11, :cond_32

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslIsCollapsed()Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_16

    :cond_31
    move v1, v4

    goto :goto_17

    :cond_32
    :goto_16
    move v1, v6

    :goto_17
    if-eqz v1, :cond_33

    move v7, v3

    goto :goto_18

    :cond_33
    move v7, v10

    :goto_18
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/view/ViewGroup;

    instance-of v7, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v7, :cond_3b

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v10, v7

    if-nez v7, :cond_34

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    goto :goto_19

    :cond_34
    cmpl-float v4, v10, v3

    if-nez v4, :cond_35

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    :cond_35
    :goto_19
    if-eqz v1, :cond_36

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    :goto_1a
    move v3, v9

    goto :goto_1b

    :cond_36
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v4

    const/high16 v4, 0x43160000    # 150.0f

    div-float/2addr v4, v8

    sub-float/2addr v2, v1

    mul-float/2addr v2, v4

    cmpg-float v1, v2, v3

    if-gez v1, :cond_37

    goto :goto_1b

    :cond_37
    cmpl-float v1, v2, v9

    if-lez v1, :cond_38

    goto :goto_1a

    :cond_38
    move v3, v2

    :goto_1b
    float-to-int v1, v3

    div-float/2addr v3, v9

    iget-boolean v2, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j0:Z

    if-eqz v2, :cond_39

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->seslSetTitleAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_39
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->seslSetSubtitleAlpha(F)V

    goto :goto_1c

    :cond_3a
    iget-boolean v0, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Z

    if-eqz v0, :cond_3b

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object v0, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:Ls6/a;

    invoke-virtual {v0, v1}, Ls6/a;->p(F)V

    :cond_3b
    :goto_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
