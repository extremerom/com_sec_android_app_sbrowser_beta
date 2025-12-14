.class public Lorg/chromium/content/browser/selection/MagnifierAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mAnimationCurrentX:F

.field private mAnimationCurrentY:F

.field private mAnimationStartX:F

.field private mAnimationStartY:F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mMagnifier:Lorg/chromium/content/browser/selection/MagnifierWrapper;

.field private mMagnifierIsShowing:Z

.field private mTargetX:F

.field private mTargetY:F


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/selection/MagnifierWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mMagnifier:Lorg/chromium/content/browser/selection/MagnifierWrapper;

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->createValueAnimator()V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mTargetX:F

    iput p1, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mTargetY:F

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/selection/MagnifierAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->lambda$createValueAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createValueAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, LK6/i;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, LK6/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private currentValue(FFLandroid/animation/ValueAnimator;)F
    .locals 0

    sub-float/2addr p2, p1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    mul-float/2addr p0, p2

    add-float/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$createValueAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationStartX:F

    iget v1, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mTargetX:F

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->currentValue(FFLandroid/animation/ValueAnimator;)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationCurrentX:F

    iget v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationStartY:F

    iget v1, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mTargetY:F

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->currentValue(FFLandroid/animation/ValueAnimator;)F

    move-result p1

    iput p1, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationCurrentY:F

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mMagnifier:Lorg/chromium/content/browser/selection/MagnifierWrapper;

    iget p0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationCurrentX:F

    invoke-interface {v0, p0, p1}, Lorg/chromium/content/browser/selection/MagnifierWrapper;->show(FF)V

    return-void
.end method


# virtual methods
.method public childLocalSurfaceIdChanged()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mMagnifier:Lorg/chromium/content/browser/selection/MagnifierWrapper;

    invoke-interface {p0}, Lorg/chromium/content/browser/selection/MagnifierWrapper;->childLocalSurfaceIdChanged()V

    return-void
.end method

.method public handleDragStartedOrMoved(FF)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mMagnifier:Lorg/chromium/content/browser/selection/MagnifierWrapper;

    invoke-interface {v0}, Lorg/chromium/content/browser/selection/MagnifierWrapper;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mMagnifierIsShowing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mTargetY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->createValueAnimator()V

    iget v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationCurrentX:F

    iput v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationStartX:F

    iget v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationCurrentY:F

    iput v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationStartY:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mTargetX:F

    iput v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationStartX:F

    iget v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mTargetY:F

    iput v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimationStartY:F

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mMagnifier:Lorg/chromium/content/browser/selection/MagnifierWrapper;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/selection/MagnifierWrapper;->show(FF)V

    :cond_3
    :goto_1
    iput p1, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mTargetX:F

    iput p2, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mTargetY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mMagnifierIsShowing:Z

    return-void
.end method

.method public handleDragStopped()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mMagnifier:Lorg/chromium/content/browser/selection/MagnifierWrapper;

    invoke-interface {v0}, Lorg/chromium/content/browser/selection/MagnifierWrapper;->dismiss()V

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/MagnifierAnimator;->mMagnifierIsShowing:Z

    return-void
.end method
