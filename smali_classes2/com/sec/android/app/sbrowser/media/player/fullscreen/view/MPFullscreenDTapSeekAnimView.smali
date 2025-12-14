.class public Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPFullscreenDTapSeekAnimView"

.field private static sNeedToDestroyRunningRipple:Z

.field private static sRippleRunning:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnimationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mArrowAnimationRunning:Z

.field private mBwdLeftArrow:Landroid/view/View;

.field private mBwdMidArrow:Landroid/view/View;

.field private mBwdRightArrow:Landroid/view/View;

.field private mBwdText:Landroid/widget/TextView;

.field private mCanvasHandler:Landroid/os/Handler;

.field private mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

.field private mFwdLeftArrow:Landroid/view/View;

.field private mFwdMidArrow:Landroid/view/View;

.field private mFwdRightArrow:Landroid/view/View;

.field private mFwdText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mLeftLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

.field private mMultiplier:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadiusMax:F

.field private mRightLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

.field private mRippleToColor:I

.field private mRippleXPos:F

.field private mRippleYPos:F

.field private mRipplefromColor:I

.field private mTimer:I

.field private mViewToFade:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mTimer:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRadiusMax:F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleXPos:F

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleYPos:F

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mTimer:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRadiusMax:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleXPos:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleYPos:F

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->lambda$hideAnimation$4(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->lambda$showRippleEffect$2(F)V

    return-void
.end method

.method private cancelArrowRunningAnimation(I)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f010033

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v4, 0xc8

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/16 v8, 0xc8

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdLeftArrow:Landroid/view/View;

    invoke-direct {p0, p1, v7, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdMidArrow:Landroid/view/View;

    invoke-direct {p0, p1, v6, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdRightArrow:Landroid/view/View;

    invoke-direct {p0, p1, v8, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v8, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/b;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;I)V

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdRightArrow:Landroid/view/View;

    invoke-direct {p0, p1, v7, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdMidArrow:Landroid/view/View;

    invoke-direct {p0, p1, v6, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdLeftArrow:Landroid/view/View;

    invoke-direct {p0, p1, v8, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v8, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/b;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;I)V

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private createRippleEffect(Landroid/view/View;FFI)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mLayoutHeight:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mLayoutWidth:I

    int-to-float p2, p2

    :goto_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRadiusMax:F

    if-lez p4, :cond_2

    iget p4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mLayoutWidth:I

    int-to-float p4, p4

    const v0, 0x3ea8f5c3    # 0.33f

    mul-float/2addr p4, v0

    add-float/2addr p4, p2

    iput p4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleXPos:F

    goto :goto_1

    :cond_2
    iget p4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mLayoutWidth:I

    int-to-float p4, p4

    const v0, 0x3f2b851f    # 0.67f

    mul-float/2addr p4, v0

    sub-float/2addr p2, p4

    neg-float p2, p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleXPos:F

    :goto_1
    iput p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleYPos:F

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->reInitialization(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->lambda$getRippleColorAnim$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->lambda$draw$0()V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->lambda$showAnimation$3(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->lambda$cancelArrowRunningAnimation$5()V

    return-void
.end method

.method private getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    return-object p0
.end method

.method private getParams()LP0/h;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mAnimationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, LP0/h;

    return-object p0
.end method

.method private getRippleColorAnim(II)Landroid/animation/ValueAnimator;
    .locals 2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/i;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public static getTotalAnimationTime()I
    .locals 1

    const/16 v0, 0x320

    return v0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->lambda$cancelArrowRunningAnimation$6()V

    return-void
.end method

.method private hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V
    .locals 2

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;-><init>(Landroid/view/View;ILandroid/view/animation/Animation;)V

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060756

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRipplefromColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060757

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleToColor:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mCanvasHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private isRippleTimerStarted()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mTimer:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$cancelArrowRunningAnimation$5()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdRightArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdMidArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$cancelArrowRunningAnimation$6()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdLeftArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdMidArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdRightArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$draw$0()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mTimer:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$getRippleColorAnim$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private static synthetic lambda$hideAnimation$4(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static synthetic lambda$showAnimation$3(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private synthetic lambda$showRippleEffect$2(F)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mMultiplier:I

    if-lez v0, :cond_2

    div-int/2addr v1, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mMultiplier:I

    div-int/2addr v0, v3

    if-lez v2, :cond_4

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_4
    div-int/2addr v1, v3

    sub-int/2addr v0, v1

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mMultiplier:I

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRightLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    int-to-float v1, v1

    div-float/2addr p1, v2

    invoke-direct {p0, p0, v1, p1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->createRippleEffect(Landroid/view/View;FFI)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mLeftLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr p1, v2

    invoke-direct {p0, p0, v1, p1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->createRippleEffect(Landroid/view/View;FFI)V

    :goto_2
    return-void
.end method

.method private reInitialization(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mTimer:I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setRippleRunning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mViewToFade:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mViewToFade:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mCanvasHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static setDestroyRunningRipple(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->sNeedToDestroyRunningRipple:Z

    return-void
.end method

.method private static setRippleRunning(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->sRippleRunning:Z

    return-void
.end method

.method private showAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V
    .locals 2

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;-><init>(Landroid/view/View;ILandroid/view/animation/Animation;)V

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showRippleEffect(I)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getStatusBarHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->sRippleRunning:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setDestroyRunningRipple(Z)V

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lk9/l;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v1, v3}, Lk9/l;-><init>(Ljava/lang/Object;FI)V

    int-to-long p0, p1

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->sRippleRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->sNeedToDestroyRunningRipple:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mTimer:I

    mul-int/lit8 v0, v0, 0x14

    const/16 v2, 0x1c2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mViewToFade:Landroid/view/View;

    if-nez v0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->TAG:Ljava/lang/String;

    const-string p1, "animation view is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setRippleRunning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mViewToFade:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/b;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;I)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mTimer:I

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_3
    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRadiusMax:F

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mTimer:I

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43e10000    # 450.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleXPos:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleYPos:F

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mTimer:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mTimer:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->isRippleTimerStarted()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRipplefromColor:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRippleToColor:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->getRippleColorAnim(II)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void

    :cond_6
    :goto_2
    sget-boolean p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->sNeedToDestroyRunningRipple:Z

    if-eqz p0, :cond_7

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setDestroyRunningRipple(Z)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setRippleRunning(Z)V

    :cond_7
    return-void
.end method

.method public hide()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mAnimationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public init(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mAnimationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b072e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mLeftLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    const v0, 0x7f0b0736

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mRightLayout:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    const p1, 0x7f0b071f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdLeftArrow:Landroid/view/View;

    const p1, 0x7f0b0720

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdMidArrow:Landroid/view/View;

    const p1, 0x7f0b0721

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdRightArrow:Landroid/view/View;

    const p1, 0x7f0b0704

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdLeftArrow:Landroid/view/View;

    const p1, 0x7f0b0705

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdMidArrow:Landroid/view/View;

    const p1, 0x7f0b0706

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdRightArrow:Landroid/view/View;

    const p1, 0x7f0b0703

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdText:Landroid/widget/TextView;

    const p1, 0x7f0b071e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120033

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    const v0, 0x7f010033

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mMultiplier:I

    const/16 v4, 0xc8

    const/16 v5, 0x64

    const/4 v6, 0x0

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdLeftArrow:Landroid/view/View;

    invoke-direct {p0, v3, v6, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdMidArrow:Landroid/view/View;

    invoke-direct {p0, p1, v5, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdRightArrow:Landroid/view/View;

    invoke-direct {p0, p1, v4, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdRightArrow:Landroid/view/View;

    invoke-direct {p0, v3, v6, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdMidArrow:Landroid/view/View;

    invoke-direct {p0, v2, v5, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdLeftArrow:Landroid/view/View;

    invoke-direct {p0, v1, v4, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hideAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    :goto_0
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mArrowAnimationRunning:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mLayoutWidth:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mLayoutHeight:I

    return-void
.end method

.method public resetLayoutParams()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->getParams()LP0/h;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mAnimationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->getParams()LP0/h;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView$1;->$SwitchMap$com$sec$android$app$sbrowser$media$player$common$MPConstants$Margins:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_3
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mAnimationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isGestureOnlyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mAnimationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public showDoubleTapAnimation(I)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isGestureOnlyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->sRippleRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->showRippleEffect(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mArrowAnimationRunning:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mMultiplier:I

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->cancelArrowRunningAnimation(I)V

    :cond_3
    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mMultiplier:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    const v0, 0x7f010034

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mMultiplier:I

    if-lez v4, :cond_4

    invoke-virtual {v3, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mArrowAnimationRunning:Z

    iget v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mMultiplier:I

    const/16 v5, 0xc8

    const/16 v6, 0x64

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdLeftArrow:Landroid/view/View;

    invoke-direct {p0, v4, v1, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->showAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdMidArrow:Landroid/view/View;

    invoke-direct {p0, p1, v6, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->showAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdRightArrow:Landroid/view/View;

    invoke-direct {p0, p1, v5, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->showAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mFwdText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->showAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdRightArrow:Landroid/view/View;

    invoke-direct {p0, v4, v1, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->showAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdMidArrow:Landroid/view/View;

    invoke-direct {p0, v3, v6, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->showAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdLeftArrow:Landroid/view/View;

    invoke-direct {p0, v2, v5, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->showAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->mBwdText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->showAnimation(Landroid/view/View;ILandroid/view/animation/Animation;)V

    :goto_2
    return-void
.end method
