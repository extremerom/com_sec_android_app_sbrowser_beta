.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;
.source "SourceFile"


# instance fields
.field private mFrom:I

.field private mTo:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic isAnimating()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onPreAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;->onPreAnimation()V

    return-void
.end method

.method public prepare(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->mFrom:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->mTo:I

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;->prepareAnimation(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public bridge synthetic prepareAnimators()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;->prepareAnimators()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public preparePrevPositions()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;->getTargetViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->mFrom:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->mTo:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-le v2, v3, :cond_4

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v4, v2, :cond_9

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->mTo:I

    if-ne v4, v2, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;

    invoke-direct {v2, v5, v5}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    if-lt v4, v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->mFrom:I

    if-le v4, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v3, v6, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v4, v2, :cond_9

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->mTo:I

    if-ne v4, v2, :cond_5

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;

    invoke-direct {v2, v5, v5}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->mFrom:I

    if-lt v4, v3, :cond_7

    if-le v4, v2, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_6

    :cond_7
    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_6
    if-nez v2, :cond_8

    goto :goto_7

    :cond_8
    new-instance v3, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v3, v6, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    return-object v0
.end method
