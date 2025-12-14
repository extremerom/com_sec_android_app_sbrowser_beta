.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackwardHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

.field private mBackwardSeekButton:Landroid/view/View;

.field private mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mForwardHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

.field private mForwardSeekButton:Landroid/view/View;

.field private final mHideAnimation:Landroid/view/animation/Animation;

.field private final mMediaControlsShowAnim:Landroid/view/animation/Animation;

.field private mPauseHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

.field private mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPlayHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

.field private mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;-><init>(Landroid/os/Handler;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    const p2, 0x7f01003b

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mMediaControlsShowAnim:Landroid/view/animation/Animation;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    const p2, 0x7f01003a

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mHideAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private registerHoverListeners(Landroid/view/View$OnHoverListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardSeekButton:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardSeekButton:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    :cond_3
    return-void
.end method

.method private stepSeek(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_0

    if-lez p1, :cond_0

    return-void

    :cond_0
    add-int/2addr v0, p1

    if-lez p1, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->seekTo(I)V

    return-void
.end method

.method private updatePlayPauseVisibility(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq p1, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    :goto_2
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->registerHoverListeners(Landroid/view/View$OnHoverListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public init(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getHoverListener()Landroid/view/View$OnHoverListener;

    move-result-object v0

    const v1, 0x7f0b074b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLiveStream()Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f140715

    goto :goto_0

    :cond_1
    const v3, 0x7f14071a

    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    :cond_2
    const v1, 0x7f0b074c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    const v3, 0x7f140716

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    :cond_3
    const v1, 0x7f0b074a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardSeekButton:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardSeekButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    const v4, 0x7f140712

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardSeekButton:Landroid/view/View;

    invoke-virtual {v1, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    :cond_4
    const v1, 0x7f0b074d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardSeekButton:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardSeekButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140719

    invoke-direct {p1, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardSeekButton:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->updatePlaybackState()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f140d05

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    const/16 p1, -0x2710

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->stepSeek(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->autoHide()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startRecognizeWithDelay()V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f140d11

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->togglePlaybackWithAnimation(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->autoHide()V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f140d10

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->togglePlaybackWithAnimation(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->autoHide()V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f140d0b

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    const/16 p1, 0x2710

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->stepSeek(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->autoHide()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startRecognizeWithDelay()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b074a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetLayoutParams()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->resetLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public show(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isGestureOnlyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->updatePlaybackState()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mMediaControlsShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getHoverListener()Landroid/view/View$OnHoverListener;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->registerHoverListeners(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->autoHide()V

    return-void
.end method

.method public togglePlaybackWithAnimation(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->updatePlayPauseVisibility(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startVideo()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->pauseVideo()V

    :goto_0
    return-void
.end method

.method public uninitialized()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->destroy(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->destroy(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardSeekButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->destroy(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardSeekButton:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardSeekButton:Landroid/view/View;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardSeekButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->destroy(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardSeekButton:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardSeekButton:Landroid/view/View;

    :cond_7
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public updatePlaybackState()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mControlsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isSurfaceChanging()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->updatePlayPauseVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLiveStream()Z

    move-result v0

    const v1, 0x7f140716

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f140715

    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4

    const v1, 0x7f14071a

    :cond_4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayToPauseButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setString(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPauseToPlayButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mPlayHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setString(Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardSeekButton:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->canSeekForward()Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mForwardSeekButton:Landroid/view/View;

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardSeekButton:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->canSeekBackward()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;->mBackwardSeekButton:Landroid/view/View;

    if-eqz v0, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_3
    return-void
.end method
