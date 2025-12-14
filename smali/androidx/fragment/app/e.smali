.class public final Landroidx/fragment/app/e;
.super Landroidx/fragment/app/h;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public c:Z

.field public d:Lcom/samsung/android/scloud/lib/setting/e;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/F0;Z)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/F0;)V

    iput-boolean p2, p0, Landroidx/fragment/app/e;->b:Z

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/samsung/android/scloud/lib/setting/e;
    .locals 9

    iget-boolean v0, p0, Landroidx/fragment/app/e;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/e;->d:Lcom/samsung/android/scloud/lib/setting/e;

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    iget-object v1, v0, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/F0;->a:Landroidx/fragment/app/J0;

    sget-object v2, Landroidx/fragment/app/J0;->VISIBLE:Landroidx/fragment/app/J0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v2

    iget-boolean v5, p0, Landroidx/fragment/app/e;->b:Z

    if-eqz v5, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v5

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v5

    :goto_1
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    const v8, 0x7f0b0e2c

    invoke-virtual {v6, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v6

    if-eqz v6, :cond_7

    :cond_6
    move-object p1, v7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v1, v2, v0, v5}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance p1, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-direct {p1, v6}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v1, v2, v0, v5}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v6

    if-eqz v6, :cond_9

    new-instance p1, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-direct {p1, v6}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(Landroid/animation/Animator;)V

    goto/16 :goto_6

    :cond_9
    if-nez v5, :cond_14

    if-eqz v2, :cond_14

    const/16 v5, 0x1001

    if-eq v2, v5, :cond_12

    const/16 v5, 0x2002

    if-eq v2, v5, :cond_10

    const/16 v5, 0x2005

    if-eq v2, v5, :cond_e

    const/16 v5, 0x1003

    if-eq v2, v5, :cond_c

    const/16 v5, 0x1004

    if-eq v2, v5, :cond_a

    const/4 v0, -0x1

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_a
    if-eqz v0, :cond_b

    const v0, 0x10100b8

    invoke-static {v0, p1}, Ln5/e;->c(ILandroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_b
    const v0, 0x10100b9

    invoke-static {v0, p1}, Ln5/e;->c(ILandroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_c
    if-eqz v0, :cond_d

    const v0, 0x7f020020

    goto :goto_2

    :cond_d
    const v0, 0x7f020021

    goto :goto_2

    :cond_e
    if-eqz v0, :cond_f

    const v0, 0x10100ba

    invoke-static {v0, p1}, Ln5/e;->c(ILandroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_f
    const v0, 0x10100bb

    invoke-static {v0, p1}, Ln5/e;->c(ILandroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_10
    if-eqz v0, :cond_11

    const v0, 0x7f02001e

    goto :goto_2

    :cond_11
    const v0, 0x7f02001f

    goto :goto_2

    :cond_12
    if-eqz v0, :cond_13

    const v0, 0x7f020022

    goto :goto_2

    :cond_13
    const v0, 0x7f020023

    goto :goto_2

    :cond_14
    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "anim"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_0
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v6, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-direct {v6, v2}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object p1, v6

    goto :goto_6

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_15
    :try_start_1
    sget-object v2, Landroidx/fragment/app/B0;->Companion:Landroidx/fragment/app/A0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/fragment/app/A0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, v5, v3, v3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZZ)Landroid/animation/Animator;

    move-result-object v2

    const v6, 0x7f020040

    if-eq v5, v6, :cond_17

    const v6, 0x7f020041

    if-ne v5, v6, :cond_16

    goto :goto_4

    :cond_16
    new-instance v1, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(Landroid/animation/Animator;I)V

    move-object p1, v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :cond_17
    :goto_4
    invoke-virtual {v1, v5, v4, v3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZZ)Landroid/animation/Animator;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(Landroid/animation/Animator;Landroid/animation/Animator;)V

    move-object p1, v3

    goto :goto_6

    :cond_18
    invoke-static {p1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-direct {v2, v1}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object p1, v2

    goto :goto_6

    :goto_5
    if-nez v0, :cond_19

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-direct {v0, p1}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(Landroid/view/animation/Animation;)V

    move-object p1, v0

    goto :goto_6

    :cond_19
    throw v1

    :goto_6
    iput-object p1, p0, Landroidx/fragment/app/e;->d:Lcom/samsung/android/scloud/lib/setting/e;

    iput-boolean v4, p0, Landroidx/fragment/app/e;->c:Z

    move-object p0, p1

    :goto_7
    return-object p0
.end method
