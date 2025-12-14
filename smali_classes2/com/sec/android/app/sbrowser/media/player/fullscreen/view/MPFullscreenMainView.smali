.class public Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPFullscreenMainView"


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mBottomSpace:I

.field private mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

.field private final mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

.field private mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

.field private mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

.field private mFlexModeFeatureViewPadding:I

.field private mFullscreenFlexModePadding:I

.field private mGestureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

.field private mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

.field private mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

.field private final mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

.field private mPrevScreenType:I

.field private mRotationManager:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;

.field private mShouldResetLayout:Z

.field private mViewListMap:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

.field private mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;)V
    .locals 3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mIsDestroyed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mShouldResetLayout:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFullscreenFlexModePadding:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFlexModeFeatureViewPadding:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-direct {v1, p2, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainViewHandler;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainViewHandler;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd

    const-wide/16 v1, 0x2710

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createMediaControlsView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createMediaProgressView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createGestureView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mGestureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createFeatureView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createVolumeView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createViewListMap(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mViewListMap:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createAnimationView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createBufferingView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createPlaybackRateView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->initialize()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->addToContentView()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07093f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBottomSpace:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getCurrentDisplayType(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPrevScreenType:I

    new-instance p2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mRotationManager:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->lambda$initializeChildViews$1(I)V

    return-void
.end method

.method private addLayoutChangeListener()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/f;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/f;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private addMainLayoutChildInternal()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->addVideoView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->bringToFrontMainLayout()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->notifyMainViewInitialized()V

    return-void
.end method

.method private addToContentView()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->updatePlaybackState()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isActivityHidden()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->postAnimationTask(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->addToContentView()V

    const v0, 0x8000

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->initializeSystemUI()V

    return-void
.end method

.method private alwaysShowControl()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isPlaybackRatePopupShowing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->lambda$showDoubleTapAnimation$4()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->lambda$postAnimationTask$3()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->lambda$prepareExiting$0()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->lambda$addLayoutChangeListener$5(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->lambda$enableFullscreenTouch$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->postAnimationTask(Z)V

    return-void
.end method

.method private initialize()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->initializeChildViews()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->resetMainLayoutParams()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->addLayoutChangeListener()V

    return-void
.end method

.method private initializeChildViews()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04c6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->TAG:Ljava/lang/String;

    const-string v0, "Can not find resource of main layout."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isGestureOnlyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->enableFullscreenTouch()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/e;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0b01e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->init(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0b0715

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->init(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0b0707

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->init(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0b0734

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->init(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mGestureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0b0725

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->init(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0b074f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->init(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0b0702

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->init(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0b0730

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->init(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private initializeSystemUI()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarTranslucent(Landroid/app/Activity;Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mShouldResetLayout:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->alwaysShowControl()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarTranslucent(Landroid/app/Activity;Z)V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mShouldResetLayout:Z

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->resetMainLayoutParams()V

    return-void
.end method

.method private synthetic lambda$addLayoutChangeListener$5(Landroid/view/View;IIIIIIII)V
    .locals 0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07093f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBottomSpace:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->initViewsOnChangedConfig()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateViewOnChangedConfig()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateBottomLayoutMargins(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->updateMargins(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$enableFullscreenTouch$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initializeChildViews$1(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->resetMainLayoutParams()V

    return-void
.end method

.method private synthetic lambda$postAnimationTask$3()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->postAnimationTask()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->postAnimationTask()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$prepareExiting$0()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isActivityHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->postAnimationTask(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showDoubleTapAnimation$4()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->hide(Z)V

    :cond_0
    return-void
.end method

.method private postAnimationTask(Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->TAG:Ljava/lang/String;

    const-string v1, "postAnimationTask = "

    invoke-static {v1, v0, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->addMainLayoutChildInternal()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/d;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;I)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->alwaysShowControl()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->removeFromContentView()V

    :cond_3
    :goto_0
    return-void
.end method

.method private prepareExiting()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideAll()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->prepareExiting()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isContentFlexMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarTranslucent(Landroid/app/Activity;Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/d;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;I)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeFromContentView()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->TAG:Ljava/lang/String;

    const-string v1, "MPFullscreenMainView is removed from contentView."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->removeFromContentView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->uninitializedChildViews()V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->clearNavBarTranslucent(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->notifyFinishedTransition()V

    :cond_2
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method private setFullscreenFlexModeUi()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getScreenHeight(Landroid/app/Activity;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFullscreenFlexModePadding:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070968

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFlexModeFeatureViewPadding:I

    return-void
.end method

.method private uninitializedChildViews()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->uninitialized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->uninitialized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->uninitialized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mGestureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->uninitialized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->uninitialized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mRotationManager:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->uninitialized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->uninitialized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mGestureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mViewListMap:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mRotationManager:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    return-void
.end method

.method private unsetFullscreenFlexModeUi()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFullscreenFlexModePadding:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFlexModeFeatureViewPadding:I

    return-void
.end method

.method private updateActivityOrientation(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->resetOrientation(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    iget p0, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->requestOrientation(Landroid/app/Activity;I)V

    return-void
.end method

.method private updateOnBottomNavBar(Landroid/app/Activity;I)I
    .locals 6

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getEdgePanelWidth(Landroid/app/Activity;I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getNavBarSize(Landroid/app/Activity;I)I

    move-result p2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getExtraPadding(Landroid/app/Activity;)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFullscreenFlexModePadding:I

    if-eqz v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    iget v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBottomSpace:I

    add-int/2addr v4, p2

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    const/4 v5, 0x0

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mGestureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    invoke-virtual {v2, v5, v5, v5, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->RIGHT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->TOP:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->BOTTOM:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {p1, v4, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFlexModeFeatureViewPadding:I

    invoke-virtual {p1, v5, v0, v1, v5}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->setPaddingRelative(IIII)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBottomSpace:I

    :goto_3
    add-int v5, p0, p2

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->TOP:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {p1, v5, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isNavigationBarHideEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    add-int/lit8 v5, v1, 0x2a

    goto :goto_4

    :cond_5
    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBottomSpace:I

    add-int/2addr p0, p2

    add-int v5, p0, v1

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->LEFT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->TOP:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->BOTTOM:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {p1, v4, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFlexModeFeatureViewPadding:I

    invoke-virtual {p1, v1, v0, v5, v5}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->setPaddingRelative(IIII)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBottomSpace:I

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->TOP:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->BOTTOM:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {p1, v4, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBottomSpace:I

    goto :goto_3

    :goto_4
    return v5
.end method

.method private updateOnEdgePanelVisibility(Landroid/app/Activity;I)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isTabletDevice(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getEdgePanelWidth(Landroid/app/Activity;I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getPinnedEdgePanelArea(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->RIGHT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->LEFT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    invoke-virtual {v0, p2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    return-void
.end method

.method private updateOnNoneNavBar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->TOP:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->resetPadding()V

    return-void
.end method

.method private updateOnsideNavBar(IILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->RIGHT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    if-ne p3, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    invoke-virtual {v1, v0, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    invoke-virtual {v1, v0, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mGestureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->setPadding(IIII)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {p3, p1, v0, p2, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->setPaddingRelative(IIII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public add(Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public adjustGestureValue(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;FZ)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->SEEK_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hide(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->setIsTracking(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mGestureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->adjustGestureValue(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;FZ)V

    :cond_1
    return-void
.end method

.method public bringToFrontMainLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->TAG:Ljava/lang/String;

    const-string v1, "Full screen video is destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setFullscreenVideoMode(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->destroy()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->enableScreenWakeLock(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->prepareExiting()V

    return-void
.end method

.method public dispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method public enableFullscreenTouch()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public enableScreenWakeLock(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->enableScreenWakeLock(Z)V

    return-void
.end method

.method public getAnimation(Z)Landroid/view/animation/Animation;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f010031

    goto :goto_0

    :cond_0
    const v1, 0x7f010032

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method public getToastView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->getToastView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public handleKey(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mViewListMap:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->handleEnterKey(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hide(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->alwaysShowControl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->isShowingPlayBackSpeed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->hide(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->hide(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->hide(Z)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mViewListMap:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->hide()V

    :cond_5
    return-void
.end method

.method public hideAll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hide(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideAllPopups()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->hideBufferingView()V

    return-void
.end method

.method public hideAllPopups()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideVolumeView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideGestureView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hidePlaybackRatePopupView()V

    return-void
.end method

.method public hideGestureView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mGestureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->hideAll()V

    :cond_0
    return-void
.end method

.method public hideLockView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->hide(Z)V

    :cond_0
    return-void
.end method

.method public hidePlaybackRatePopupView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mViewListMap:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->resetSpeedFocus()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->dismissPlaybackSpeedView()V

    :cond_1
    return-void
.end method

.method public hideVolumeView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->hide()V

    :cond_0
    return-void
.end method

.method public initViewsOnChangedConfig()V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateViews()V

    return-void
.end method

.method public isDestroyed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mIsDestroyed:Z

    return p0
.end method

.method public isPlaybackRatePopupShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->isShowingPlayBackSpeed()Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public isProgressBarAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->isProgressBarAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getCurrentDisplayType(Landroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPrevScreenType:I

    if-eq v3, v2, :cond_2

    const-string v3, "isChangedScreenType = true"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateActivityOrientation(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->resetCachedSettings()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startRecognizeWithDelay()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onConfigurationChanged()V

    iput v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPrevScreenType:I

    return-void
.end method

.method public onErrorPopupShown()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->onErrorPopupShown()V

    :cond_0
    return-void
.end method

.method public onEventFired(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->onEventFired(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMediaBufferingEnd()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->onMediaBufferingEnd()V

    return-void
.end method

.method public onMediaBufferingStart()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->onMediaBufferingStart()V

    return-void
.end method

.method public onMediaInfoMetadataUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->onMediaInfoMetadataUpdate()V

    return-void
.end method

.method public onNextFocus()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->show(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mViewListMap:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->onNextFocus()V

    :cond_0
    return-void
.end method

.method public onNextSpeedFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mViewListMap:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->onNextSpeedFocus()V

    :cond_0
    return-void
.end method

.method public onPreviousFocus()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->show(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mViewListMap:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->onPreviousFocus()V

    :cond_0
    return-void
.end method

.method public onPreviousSpeedFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mViewListMap:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->onPreviousSpeedFocus()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateFeatureButtons()V

    :cond_0
    return-void
.end method

.method public remove(Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeFeatureButtonListener()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->removeListener()V

    :cond_0
    return-void
.end method

.method public removeTimelineEvent()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public resetMainLayoutParams()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->resetLayoutParams()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->resetLayoutParams()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBottomSpace:I

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->getNavBarModeForActivity(Landroid/app/Activity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getNavBarSize(Landroid/app/Activity;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateOnNoneNavBar()V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFlexModeFeatureViewPadding:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFlexModeFeatureViewPadding:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateOnBottomNavBar(Landroid/app/Activity;I)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getExtraPadding(Landroid/app/Activity;)I

    move-result v4

    sget-object v5, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->LEFT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-direct {p0, v4, v3, v5}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateOnsideNavBar(IILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->getExtraPadding(Landroid/app/Activity;)I

    move-result v4

    sget-object v5, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->RIGHT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateOnsideNavBar(IILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateOnEdgePanelVisibility(Landroid/app/Activity;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->BOTTOM:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    iget v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBottomSpace:I

    sub-int v3, v0, v3

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    iget v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBottomSpace:I

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->setBottomLayoutPadding(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    iget v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFullscreenFlexModePadding:I

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->setLayoutPaddingWithAnim(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->TAG:Ljava/lang/String;

    const-string v0, "mMainLayout or getClient is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveVideo()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->TAG:Ljava/lang/String;

    const-string v1, "saveVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->saveVideo()V

    return-void
.end method

.method public setFullscreenFlexMode(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->setFullscreenFlexModeUi()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->unsetFullscreenFlexModeUi()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->resetMainLayoutParams()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->setFullscreenFlexMode(ZZ)V

    :cond_1
    return-void
.end method

.method public setVideoRatioConfiguration(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->changeVideoRatio(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->shouldHideGradient()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateFeatureTopViewBg(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateBottomFeatureButtons()V

    return-void
.end method

.method public show(Z)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isIsInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->hide()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isPlaybackRatePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hidePlaybackRatePopupView()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_b

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideAllPopups()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->show(Z)V

    :cond_4
    return-void

    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mShouldResetLayout:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarTranslucent(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->resetMainLayoutParams()V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mShouldResetLayout:Z

    :cond_6
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->show(Z)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->show(Z)V

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->show(Z)V

    :cond_b
    :goto_0
    return-void
.end method

.method public showBufferingViewInstantly()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->showBufferingViewInstantly()V

    return-void
.end method

.method public showDoubleTapAnimation(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->hide(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->hide(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->updateTimeline()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->show(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mDTapSeekAnimView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->showDoubleTapAnimation(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mAnimationHandler:Landroid/os/Handler;

    if-nez p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mAnimationHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/d;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->getTotalAnimationTime()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public showGestureView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideVolumeView()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hide(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mGestureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->show(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V

    return-void
.end method

.method public showLockView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->show(Z)V

    :cond_0
    return-void
.end method

.method public showPlaybackSpeedView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mPlaybackRateView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->showPlaybackSpeedView()V

    return-void
.end method

.method public showVolumeView()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideGestureView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->show()V

    :cond_0
    return-void
.end method

.method public swapToPopupPlayer()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hide(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->swapToPopupPlayer()V

    return-void
.end method

.method public toggleMoreMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->toggleMoreMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->isMoreMenuVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->show(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hide(Z)V

    :goto_0
    return-void
.end method

.method public togglePlaybackWithAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->togglePlaybackWithAnimation(Z)V

    :cond_0
    return-void
.end method

.method public toggleView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hide(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->show(Z)V

    :goto_0
    return-void
.end method

.method public toggleVolumeView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->toggleVolumeView()V

    :cond_0
    return-void
.end method

.method public updateBottomFeatureButtons()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateFeatureButtons()V

    :cond_1
    return-void
.end method

.method public updateFeatureTopViewBg(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateFeatureTopViewBg(Z)V

    :cond_0
    return-void
.end method

.method public updateFeatureUpperViews()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateFeatureUpperViews()V

    :cond_0
    return-void
.end method

.method public updateLiveTextButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateLiveTextButton()V

    :cond_0
    return-void
.end method

.method public updatePlaybackSpeedControl()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updatePlaybackSpeedControl()V

    return-void
.end method

.method public updatePlaybackState()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->updatePlaybackState()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isGestureSeeking()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isPlaybackRatePopupShowing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->show(Z)V

    :cond_3
    return-void
.end method

.method public updateRotationButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateRotationButton()V

    :cond_0
    return-void
.end method

.method public updateSubtitleView(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->updateSubtitleView(Z)V

    return-void
.end method

.method public updateTimeline()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->updateTimeline()V

    :cond_0
    return-void
.end method

.method public updateViewIfAudioOnlyContent()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mBufferingView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;->hideBufferingView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateFeatureButtons()V

    return-void
.end method

.method public updateViewOnChangedConfig()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->TAG:Ljava/lang/String;

    const-string v1, "updateViewOnChangedConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateFeatureButtons()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideAll()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->alwaysShowControl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->show(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->shouldHideGradient()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateFeatureTopViewBg(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->initializeSystemUI()V

    return-void
.end method

.method public updateViews()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->initializeChildViews()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaControlsView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->updatePlaybackState()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMediaProgressView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->updateTimeline()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->resetMainLayoutParams()V

    return-void
.end method

.method public updateVolumeButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->mFeatureView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->updateVolumeButton()V

    :cond_0
    return-void
.end method
