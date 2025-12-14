.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPFullscreenVideoView"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAudioOnlyView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;

.field private mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

.field private final mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;

.field private final mMediaInfoListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

.field private final mPlaybackRate:D

.field private final mVideoLayout:Landroid/widget/FrameLayout;

.field private final mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/j;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/j;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mMediaInfoListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->registerListeners()V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createAudioOnlyView(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mAudioOnlyView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->initVideoView()V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlaybackRate()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mPlaybackRate:D

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->lambda$registerListeners$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->lambda$setLayoutPaddingWithAnim$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->lambda$new$0(I)V

    return-void
.end method

.method private checkIfAudioOnlyContents(I)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isAudioOnly(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->showAudioOnlyView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;->updateViewIfAudioOnlyContent()V

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->TAG:Ljava/lang/String;

    const-string p1, "Stream is AudioOnly"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private hideAudioOnlyView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mAudioOnlyView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;->hide()V

    :cond_0
    return-void
.end method

.method private initVideoView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->hideVideo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getVideoHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->measureScaleFactor(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoRatioMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->changeVideoRatio(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onVideoViewInit()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x322

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2bd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2be

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->checkIfAudioOnlyContents(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onMediaBufferingEnd()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onMediaBufferingStart()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onMediaInfoMetadataUpdate()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$registerListeners$1()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getVideoHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->measureScaleFactor(II)V

    return-void
.end method

.method private synthetic lambda$setLayoutPaddingWithAnim$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private measureScaleFactor(II)V
    .locals 3

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 p2, p2, -0xa0

    int-to-double p1, p2

    const-wide v0, 0x409f400000000000L    # 2000.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    sub-double/2addr v0, p1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "measureScaleFactor = "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->updateScaleFactor(D)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerListeners()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/j;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/j;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setOnVideoSizeChangedListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/k;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/k;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setOnVideoPlaybackStateListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoPlaybackStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/k;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/k;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setOnMediaPlayerPlaybackListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerPlaybackListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mMediaInfoListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->registerMediaInfoUpdateListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;)V

    return-void
.end method

.method private showAudioOnlyView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mAudioOnlyView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;->show()V

    return-void
.end method

.method private unregisterListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mMediaInfoListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->unregisterMediaInfoUpdateListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setOnVideoSizeChangedListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setOnVideoPlaybackStateListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoPlaybackStateListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setOnMediaPlayerPlaybackListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerPlaybackListener;)V

    return-void
.end method


# virtual methods
.method public addVideoView()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;->add(Landroid/widget/FrameLayout;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public changeVideoRatio(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->changeVideoRatio(I)V

    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->unregisterListeners()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mPlaybackRate:D

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setPlaybackRate(D)V

    return-void
.end method

.method public isShown()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public postAnimationTask()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->showVideo()V

    :cond_0
    return-void
.end method

.method public prepareExiting()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->removeVideoView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->hideAudioOnlyView()V

    return-void
.end method

.method public removeFromContentView()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->unregisterListeners()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mAudioOnlyView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeVideoView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;->remove(Landroid/widget/FrameLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveVideo()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->TAG:Ljava/lang/String;

    const-string v1, "saveVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveVideo : videoUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-static {v1, v0, v2, p0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->startDownload(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/sec/terrace/Terrace;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFullscreenFlexMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setFullscreenFlexMode(ZZ)V

    return-void
.end method

.method public setLayoutPaddingWithAnim(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public shouldHideGradient()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public updateSubtitleView(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->updateSubtitleStatus(Z)V

    :cond_0
    return-void
.end method
