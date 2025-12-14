.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;
.source "SourceFile"


# instance fields
.field mInsertPosition:I


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

.method public prepare(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;->mInsertPosition:I

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;->prepareAnimation(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public bridge synthetic prepareAnimators()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;->prepareAnimators()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public preparePrevPositions()Ljava/util/List;
    .locals 6
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

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v4, v5, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;->mInsertPosition:I

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method
