.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAlpha:F

.field private mStartDelay:I

.field public p:F

.field public final rect:Landroid/graphics/Rect;

.field public scale:F

.field public translationX:I

.field public translationY:I

.field public translationZ:F

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->scale:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->mAlpha:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method private hasAlphaChangedFrom(F)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->mAlpha:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasScaleChangedFrom(F)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->scale:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasTranslationXChangedFrom(F)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationX:I

    int-to-float p0, p0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasTranslationYChangedFrom(F)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationY:I

    int-to-float p0, p0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasTranslationZChangedFrom(F)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationZ:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLayersRequired(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->hasScaleChangedFrom(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->scale:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->scale:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->hasAlphaChangedFrom(F)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->mAlpha:F

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public static reset(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Lf1/O;->o(Landroid/view/View;F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setTabViewTransformAnimation(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZ)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p5

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->hasTranslationXChangedFrom(F)Z

    move-result p5

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationX:I

    int-to-float p5, p5

    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p5

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result p5

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationY:I

    int-to-float p5, p5

    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    sget-object p5, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/O;->g(Landroid/view/View;)F

    move-result p5

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-static {p1}, Lf1/W;->a(Landroid/view/View;)Lf1/Z;

    move-result-object p5

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationZ:F

    iget-object p5, p5, Lf1/Z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p5

    invoke-virtual {p5, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->isLayersRequired(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)Z

    move-result p5

    if-eqz p5, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_3
    new-instance p4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform$1;

    invoke-direct {p4, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;Landroid/view/View;)V

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->mStartDelay:I

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setTabViewTransformLayout(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->hasTranslationXChangedFrom(F)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationX:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationY:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_0
    sget-object p2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/O;->g(Landroid/view/View;)F

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationZ:F

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationZ:F

    :cond_2
    iget p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationZ:F

    invoke-static {p1, p2}, Lf1/O;->o(Landroid/view/View;F)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->hasScaleChangedFrom(F)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->scale:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->scale:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->hasAlphaChangedFrom(F)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->mAlpha:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public applyToTabView(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZZ)V
    .locals 0

    if-gtz p2, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->setTabViewTransformLayout(Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->setTabViewTransformAnimation(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZ)V

    :goto_1
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->mStartDelay:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationX:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationY:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationZ:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->scale:F

    iput v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->mAlpha:F

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->visible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->p:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TabViewTransform delay: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->mStartDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " p: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->p:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
