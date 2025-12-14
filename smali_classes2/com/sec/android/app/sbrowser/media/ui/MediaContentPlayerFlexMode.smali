.class public Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MediaContentPlayerFlexMode"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAnimationLayout:Landroid/widget/FrameLayout;

.field mAnimatorForAlphaImageAfter:Landroid/animation/ValueAnimator;

.field mAnimatorForScaleImageAfter:Landroid/animation/ValueAnimator;

.field private final mDecorView:Landroid/view/View;

.field private mFinishedCallback:Ljava/lang/Runnable;

.field private final mFlexModePaddingView:Landroid/view/View;

.field private mFullscreenNavBarVisible:Z

.field private final mImageViewAfter:Landroid/widget/ImageView;

.field private final mImageViewBefore:Landroid/widget/ImageView;

.field private mIsEntering:Z

.field private mIsFlexMode:Z

.field private mIsRunning:Z

.field private mIsWaitingResized:Z

.field private final mMainLayout:Landroid/view/ViewGroup;

.field mPendingOperations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mState:I

.field private mStateHandler:Landroid/os/Handler;

.field private final mTerrace:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/terrace/Terrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsRunning:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsWaitingResized:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsFlexMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFullscreenNavBarVisible:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mPendingOperations:Ljava/util/LinkedList;

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mState:I

    new-instance v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mStateHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mDecorView:Landroid/view/View;

    const v1, 0x7f0b06c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mMainLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0b052c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFlexModePaddingView:Landroid/view/View;

    const v0, 0x7f0e04b7

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimationLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0b052b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewBefore:Landroid/widget/ImageView;

    const v0, 0x7f0b052a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewAfter:Landroid/widget/ImageView;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mTerrace:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->lambda$updateImageViewAfter$1()V

    return-void
.end method

.method private addPendingOperation(ZLjava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mPendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    if-ne p1, v0, :cond_2

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mPendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mPendingOperations:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mPendingOperations:Ljava/util/LinkedList;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->lambda$startAnimationImageAfter$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->lambda$startAnimationImageAfter$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private capturePreResize()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v6, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$2;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/terrace/Terrace;->getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->lambda$startExiting$0()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewAfter:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewBefore:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsRunning:Z

    return p0
.end method

.method private getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mTerrace:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mState:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mStateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initializeLayout()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    const-string v1, "initializeLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewBefore:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewBefore:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewAfter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewAfter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimationLayout:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mStateHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private isFullscreenNavBarVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFullscreenNavBarVisible:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsWaitingResized:Z

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mState:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->capturePreResize()V

    return-void
.end method

.method private synthetic lambda$startAnimationImageAfter$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewAfter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewAfter:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$startAnimationImageAfter$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewAfter:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startExiting$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarTranslucent(Landroid/app/Activity;Z)V

    return-void
.end method

.method private synthetic lambda$updateImageViewAfter$1()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v6, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$3;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/terrace/Terrace;->getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->onAnimationFinished()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->resizeContentLayout()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->setImageViewBefore(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private onAnimationFinished()V
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    const-string v1, "onAnimationFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mStateHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mState:I

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    const/16 v4, 0x8

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFlexModePaddingView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsRunning:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimationLayout:Landroid/widget/FrameLayout;

    invoke-interface {v1, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFinishedCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFinishedCallback:Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsFlexMode:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FlexMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsFlexMode:Z

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->runPendingOperation()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->startAnimation()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->updateImageViewAfter()V

    return-void
.end method

.method public static bridge synthetic r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private resizeContentLayout()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    const-string v1, "resizeContentLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFlexModePaddingView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFlexModePaddingView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private runPendingOperation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mPendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mPendingOperations:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->startEntering(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->startExiting(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private setImageViewBefore(Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    const-string v1, "setImageViewBefore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewBefore:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewBefore:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimationLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->isFullscreenNavBarVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarTranslucent(Landroid/app/Activity;Z)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mStateHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private start(Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    if-eqz v1, :cond_0

    const-string v1, "entering"

    goto :goto_0

    :cond_0
    const-string v1, "exiting"

    :goto_0
    const-string v2, "start:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsRunning:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsRunning:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFinishedCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->initializeLayout()V

    return-void
.end method

.method private startAnimation()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->startAnimationImageBefore()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->startAnimationImageAfter()V

    return-void
.end method

.method private startAnimationImageAfter()V
    .locals 7

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewAfter:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewAfter:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForScaleImageAfter:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    if-nez v1, :cond_0

    new-array v1, v2, [I

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForScaleImageAfter:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/sec/android/app/sbrowser/media/ui/b;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/sbrowser/media/ui/b;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;I)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForScaleImageAfter:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForScaleImageAfter:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    if-eqz v2, :cond_1

    div-int/lit8 v2, v1, 0x2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->isFullscreenNavBarVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result v5

    sub-int/2addr v1, v5

    goto :goto_0

    :cond_1
    div-int/lit8 v2, v1, 0x2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->isFullscreenNavBarVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result v5

    sub-int/2addr v1, v5

    :cond_2
    move v6, v2

    move v2, v1

    move v1, v6

    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForScaleImageAfter:Landroid/animation/ValueAnimator;

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForScaleImageAfter:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForAlphaImageAfter:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForAlphaImageAfter:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/media/ui/b;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForAlphaImageAfter:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForAlphaImageAfter:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForAlphaImageAfter:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$4;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForAlphaImageAfter:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimationImageBefore()V
    .locals 4

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v2, v2, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2, v2, v2, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$5;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewBefore:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateImageViewAfter()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/media/ui/a;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public exit(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mPendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFinishedCallback:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->resizeContentLayout()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsWaitingResized:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mImageViewBefore:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForScaleImageAfter:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForScaleImageAfter:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForAlphaImageAfter:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mAnimatorForAlphaImageAfter:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->onAnimationFinished()V

    :goto_0
    return-void
.end method

.method public isFlexMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsFlexMode:Z

    return p0
.end method

.method public isSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mMainLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onResized()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    const-string v1, "onResized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsWaitingResized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mStateHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsWaitingResized:Z

    :cond_0
    return-void
.end method

.method public setFullscreenNavBarVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mFullscreenNavBarVisible:Z

    return-void
.end method

.method public startEntering(Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    const-string v1, "startEntering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsRunning:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->addPendingOperation(ZLjava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "startEntering is pending"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->runPendingOperation()V

    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->start(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startExiting(Ljava/lang/Runnable;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->TAG:Ljava/lang/String;

    const-string v1, "startExiting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsRunning:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mState:I

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->exit(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->addPendingOperation(ZLjava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "startExiting is pending"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->runPendingOperation()V

    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mIsEntering:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->isFullscreenNavBarVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/media/ui/a;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->start(Ljava/lang/Runnable;)V

    return-void
.end method
