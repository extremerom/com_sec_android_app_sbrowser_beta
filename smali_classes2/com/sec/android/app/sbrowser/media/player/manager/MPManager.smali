.class public Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/common/IMPManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

.field private mErrorHandler:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

.field private mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

.field private final mMessageHandler:Landroid/os/Handler;

.field private final mParentActivityId:Ljava/lang/String;

.field private mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerMessageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerMessageHandler;-><init>(Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMessageHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mParentActivityId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    new-instance p2, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-direct {p2, p1, p3, p4}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;-><init>(Landroid/app/Activity;Ljava/lang/ref/WeakReference;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mErrorHandler:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    return-void
.end method

.method private exitOtherPopupVideo()V
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->TAG:Ljava/lang/String;

    const-string v0, "exitOtherPopupVideo "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->exitPopup()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showParent(Landroid/app/Activity;)V
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;

    const/4 p0, -0x1

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;->showParent(I)V

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->TAG:Ljava/lang/String;

    const-string p1, "showParent"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public createStandaloneViewAndEnterPip()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->TAG:Ljava/lang/String;

    const-string v1, "createStandaloneViewAndEnterPip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;-><init>(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setCurrentPosition(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setIsPlaying(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setClient(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setActivity(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setParentActivityId(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setIsStandAlone(Z)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->build()Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerFactory;->createMPManager(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->enterPopupVideo()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->startVideo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "Video info is null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public destroyFullscreen()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;->exitFullscreen()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->exitFullscreen()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitFullscreenVideo()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMessageHandler:Landroid/os/Handler;

    const/16 v0, 0x1d

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public enterContentsFlexMode()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->TAG:Ljava/lang/String;

    const-string v1, "enterContentsFlexMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->enterFullscreenVideo()V

    return-void
.end method

.method public enterFullscreenVideo()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->TAG:Ljava/lang/String;

    const-string v1, "[MediaPlayer] enter Fullscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitOtherPopupVideo()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-nez v1, :cond_0

    const-string p0, "No video view client."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->prepareSurfaceChange()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMessageHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;Lcom/sec/android/app/sbrowser/media/common/IMPManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen()V

    return-void
.end method

.method public enterPip()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->isStandaloneVideoView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->enterPictureInPicture(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->createStandaloneViewAndEnterPip()V

    :goto_0
    return-void
.end method

.method public enterPopupVideo()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->TAG:Ljava/lang/String;

    const-string v1, "[MediaPlayer] enter PopupVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitOtherPopupVideo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mErrorHandler:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->unregisterErrorListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->prepareSurfaceChange()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->launchMPVideoActivity(Z)V

    return-void
.end method

.method public exitContentsFlexMode()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->TAG:Ljava/lang/String;

    const-string v1, "exitContentsFlexMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitFullscreenVideo()V

    return-void
.end method

.method public exitFullscreenByUser()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->exitFullscreenByUser(Z)V

    :cond_0
    return-void
.end method

.method public exitFullscreenVideo()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->TAG:Ljava/lang/String;

    const-string v1, "[MediaPlayer] exit Fullscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mErrorHandler:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->dismissErrorPopup()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mErrorHandler:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->unregisterErrorListener()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mErrorHandler:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    :cond_2
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getCurrentPos()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result p0

    int-to-long v0, p0

    :cond_1
    return-wide v0
.end method

.method public getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    return-object p0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mParentActivityId:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->getParentActivityById(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method

.method public handleOnBackPressInVideoFullscreen()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->showLockView()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->exitFullscreenByUser(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isActivityHidden()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContentFlexMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;->isContentFlexMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGestureOnlyEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;->isGestureOnlyEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStandaloneVideoView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    instance-of p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    return p0
.end method

.method public launchMPVideoActivity(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "manager_videoinfo"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "should_open_pip"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SBrowserMainActivityContextId"

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mParentActivityId:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->isPlaying()Z

    move-result p0

    const-string p1, "manager_was_playing"

    invoke-virtual {v2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0, p0}, Landroid/app/Activity;->overridePendingTransition(II)V

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->TAG:Ljava/lang/String;

    const-string p1, "launchMPVideoActivity"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->TAG:Ljava/lang/String;

    const-string v1, "loadUrl."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->loadUrl(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public moveTaskToTopIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isParentActivityBackground(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->showParent(Landroid/app/Activity;)V

    return-void
.end method

.method public notifyFinishedTransition()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/ui/util/a;->d(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDeviceStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->onDeviceStateChanged()V

    :cond_0
    return-void
.end method

.method public onErrorPopupShown()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->onErrorPopupShown()V

    :cond_0
    return-void
.end method

.method public onEventFired(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->onEventFired(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitFullscreenVideo()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->onMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->onPictureInPictureModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onSecretModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitFullscreenVideo()V

    return-void
.end method

.method public onTouchEventForOnlyGesture(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->onTouchEventForOnlyGesture(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pauseVideo()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    :cond_1
    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    if-eqz p0, :cond_0

    long-to-int p1, p1

    invoke-interface {p0, p1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setFullscreenVideoMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;->setFullscreenVideoMode(Z)V

    :cond_0
    return-void
.end method

.method public setVideoView(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    return-void
.end method

.method public shutdown()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;->shutdown()V

    :cond_0
    return-void
.end method

.method public startVideo()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    :cond_1
    return-void
.end method

.method public updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->mMPFullscreenMainController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->onUpdateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    :cond_1
    return-void
.end method
