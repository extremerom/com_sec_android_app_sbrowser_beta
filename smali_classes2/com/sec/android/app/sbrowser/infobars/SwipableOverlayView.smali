.class public abstract Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwipableOverlayView"


# instance fields
.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field protected mContext:Landroid/content/Context;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mParentHeight:I

.field private mTotalHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->createLayoutChangeListener()Landroid/view/View$OnLayoutChangeListener;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->createAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mTotalHeight:I

    return p0
.end method

.method private createAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView$2;-><init>(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)V

    return-object v0
.end method

.method private createLayoutChangeListener()Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)V

    return-object v0
.end method

.method private createVerticalSnapAnimation()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mTotalHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v0, v2

    float-to-long v2, v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->createVerticalSnapAnimation()V

    return-void
.end method


# virtual methods
.method public addToParentView(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->createLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public createLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v1, 0x51

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const v3, 0x1020002

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1

    return v1

    :cond_1
    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v3, p0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    move-object v2, p0

    :cond_2
    if-eqz v2, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->TAG:Ljava/lang/String;

    const-string v3, "gatherTransparentRegion : Infobar region updated"

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {v2, p0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x0

    aget v5, p0, v3

    aget v6, p0, v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v7, v3, v4

    aget p0, p0, v0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int v8, v0, p0

    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_3
    return v1
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mParentHeight:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mParentHeight:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mTotalHeight:I

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method public removeFromParentView()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p0, 0x1

    return p0
.end method
