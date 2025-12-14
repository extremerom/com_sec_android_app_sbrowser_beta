.class public Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;,
        Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;,
        Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;
    }
.end annotation


# static fields
.field private static final sInstanceCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mAnimationLayout:Landroid/view/View;

.field private final mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;

.field private mListener:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

.field private final mParentView:Landroid/view/ViewGroup;

.field private mShouldFillAfter:Z

.field private final mTouchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->sInstanceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mShouldFillAfter:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TabAnimator is initialized delegate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mParentView:Landroid/view/ViewGroup;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;-><init>(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mTouchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->setListener(Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;)V

    const/16 p0, 0x3e8

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->setTimeout(I)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->lambda$startTabCreateAnimation$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;IILandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->lambda$startTabCreateAnimation$2(IILandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->lambda$removeAnimationLayout$0()V

    return-void
.end method

.method private cleanBitmap()V
    .locals 2

    const-string v0, "TabAnimator"

    const-string v1, "cleanBitmap() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContentBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private continueStartOpenInBackgroundAnimation(Landroid/view/animation/Interpolator;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v1, 0x7f010120

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v2, 0x7f010121

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private continueStartTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$2;->$SwitchMap$com$sec$android$app$sbrowser$common$main_view$TabAnimator$AnimationType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->startEmptyAnimation()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->startTabCreateAnimation()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->startOpenInBackgroundAnimation()V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->lambda$startTabAnimation$1(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mListener:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mShouldFillAfter:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mListener:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    return-void
.end method

.method private inflateAnimationLayout(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    const-string v2, "TabAnimator"

    if-nez v1, :cond_0

    const-string v1, "[inflateAnimationLayout] inflate mAnimationLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->setIsRunningAnimation()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    goto :goto_0

    :cond_0
    const-string p1, "[inflateAnimationLayout] mAnimationLayout exist"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTop(I)V

    if-eqz p2, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;->getTopMargin()I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;->getBottomMargin()I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[inflateAnimationLayout] ClassCastException: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mTouchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->start()V

    return-void
.end method

.method public static isAnimationRunning()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->sInstanceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDarkModeEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$removeAnimationLayout$0()V
    .locals 2

    const-string v0, "TabAnimator"

    const-string v1, "[removeAnimationLayout]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->cleanBitmap()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->unsetIsRunningAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mListener:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;->onAnimationViewRemoved()V

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mListener:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mTouchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->end()V

    return-void
.end method

.method private synthetic lambda$startTabAnimation$1(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/util/List;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContentBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContentBitmap:Landroid/graphics/Bitmap;

    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result p2

    const-string v0, "TabAnimator"

    if-eqz p2, :cond_2

    const-string p2, "startTabCreateAnimation(): mBitmap is set."

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->continueStartTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mListener:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;->onBitmapReady()V

    goto :goto_2

    :cond_2
    const-string p1, "startTabCreateAnimation(): mBitmap was null."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->startEmptyAnimation()V

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$startTabCreateAnimation$2(IILandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p4}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getTransformedColor(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-static {p2, p4}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getColorTransformFilter(IF)Landroid/graphics/ColorFilter;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private static synthetic lambda$startTabCreateAnimation$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private setIsRunningAnimation()V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[setIsRunningAnimation] count: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->sInstanceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TabAnimator"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method private startEmptyAnimation()V
    .locals 2

    const-string v0, "TabAnimator"

    const-string v1, "startEmptyAnimation() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mListener:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;->onBitmapReady()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mListener:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;->onAnimationEnd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mListener:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    return-void
.end method

.method private startOpenInBackgroundAnimation()V
    .locals 6

    const-string v0, "startOpenInBackgroundAnimation() is called."

    const-string v1, "TabAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;->isSummarizedViewShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0e0918

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->inflateAnimationLayout(IZ)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v1, 0x7f060d21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v2, 0x7f060d24

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v1, 0x7f060d20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v2, 0x7f060d23

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_0
    new-instance v2, Lh2/b;

    invoke-direct {v2}, Lh2/b;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    const v4, 0x7f0b0e47

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    const v5, 0x7f0b0e48

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->continueStartOpenInBackgroundAnimation(Landroid/view/animation/Interpolator;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void

    :cond_2
    :goto_1
    const-string v0, "startOpenInBackgroundAnimation is cancelled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->onAnimationEnd(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startTabCreateAnimation()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "TabAnimator"

    const-string v1, "startTabCreateAnimation() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0e0918

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->inflateAnimationLayout(IZ)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v1, 0x7f0607f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v2, 0x7f060d26

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v3, 0x7f060d1f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v1, 0x7f0607f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v2, 0x7f060d25

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v3, 0x7f060d1e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :goto_0
    new-instance v3, Lh2/b;

    invoke-direct {v3}, Lh2/b;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    const v5, 0x7f0b0e48

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    const v6, 0x7f0b0e47

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v6, 0x7f01011a

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    const v7, 0x7f01011b

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v9, Lcom/sec/android/app/sbrowser/common/main_view/a;

    invoke-direct {v9, p0, v2, v1, v4}, Lcom/sec/android/app/sbrowser/common/main_view/a;-><init>(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;IILandroid/widget/ImageView;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, v7

    invoke-virtual {v8, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/main_view/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/common/main_view/b;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f666666    # 0.9f
    .end array-data
.end method

.method private unsetIsRunningAnimation()V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[unsetIsRunningAnimation] count: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->sInstanceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TabAnimator"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method


# virtual methods
.method public cancelAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TabAnimator"

    const-string v1, "[cancelAnimation]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "TabAnimator"

    const-string v1, "[onAnimationEnd]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onTouchLockup()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTouchLockup sInstanceCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->sInstanceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mShouldFillAfter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mShouldFillAfter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->removeAnimationLayout()V

    return-void
.end method

.method public removeAnimationLayout()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/main_view/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/common/main_view/c;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mShouldFillAfter:Z

    return-void
.end method

.method public startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;)V

    return-void
.end method

.method public startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mListener:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->isAnimationRunning()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;->isMainViewShowing()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->BACKGROUND:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->CREATE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    if-ne p1, p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;->getCurrentTabBitmap(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->startEmptyAnimation()V

    return-void
.end method
