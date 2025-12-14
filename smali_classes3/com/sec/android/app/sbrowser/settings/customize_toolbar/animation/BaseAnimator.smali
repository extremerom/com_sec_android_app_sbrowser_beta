.class abstract Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;
    }
.end annotation


# instance fields
.field mPrevPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public getTranslationAnimator(Landroid/view/View;II)Landroid/animation/ObjectAnimator;
    .locals 5

    int-to-float p0, p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 p0, 0x1

    aput v0, v2, p0

    const-string v4, "translationX"

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    int-to-float v4, p3

    new-array v1, v1, [F

    aput v4, v1, v3

    aput v0, v1, p0

    const-string p0, "translationY"

    invoke-static {p0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    filled-new-array {v2, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    filled-new-array {v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    filled-new-array {p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onPreAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;->preparePrevPositions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;->mPrevPositions:Ljava/util/List;

    return-void
.end method

.method public prepareAnimators()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;->getTargetViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;->mPrevPositions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "BaseAnimator"

    const-string v0, "child is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;->mPrevPositions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;

    iget v5, v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;->x:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;->x:I

    :cond_1
    iget v5, v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;->y:I

    if-ne v5, v6, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;->y:I

    :cond_2
    iget v5, v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;->x:I

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v4, v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;->y:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {p0, v3, v5, v4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator;->getTranslationAnimator(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public abstract preparePrevPositions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseAnimator$Position;",
            ">;"
        }
    .end annotation
.end method
