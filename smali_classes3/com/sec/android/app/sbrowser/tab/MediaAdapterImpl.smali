.class public Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab/MediaAdapter;


# instance fields
.field private mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

.field private mMediaSessionHelper:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

.field private final mTerrace:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;-><init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->create(Landroid/app/Activity;Lcom/sec/terrace/Terrace;I)Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaSessionHelper:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    return-void
.end method


# virtual methods
.method public addCallbackForPlaybackStateChange(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->addCallbackForPlaybackStateChange(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getCurrentMediaPosition()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleOnBackPressInVideoFullscreen()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->handleOnBackPressInVideoFullscreen()V

    return-void
.end method

.method public hideVideoAssistant()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->hideVideoAssistant()V

    return-void
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->isFullscreenVideoMode()Z

    move-result p0

    return p0
.end method

.method public onDeviceStateChanged()V
    .locals 2

    const-string v0, "MediaAdapterImpl"

    const-string v1, "onDeviceStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onDeviceStateChanged()V

    return-void
.end method

.method public onLoadFinished(JLjava/lang/String;Z)V
    .locals 0

    const-string p1, "onLoadFinished isMainFrame:"

    const-string p2, "MediaAdapterImpl"

    invoke-static {p1, p2, p4}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaSessionHelper:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->onLoadFinished(Ljava/lang/String;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    const-string v0, "onMultiWindowModeChanged isInMultiWindowMode:"

    const-string v1, "MediaAdapterImpl"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 2

    const-string v0, "onPictureInPictureModeChanged isInPipMode:"

    const-string v1, "MediaAdapterImpl"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onScrollEnded(II)V
    .locals 2

    const-string v0, "MediaAdapterImpl"

    const-string v1, "onScrollEnded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onScrollEnded(II)V

    return-void
.end method

.method public onStartFinding()V
    .locals 2

    const-string v0, "MediaAdapterImpl"

    const-string v1, "onStartFinding"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->setVideoAssistantActivated(Z)V

    return-void
.end method

.method public onStopFinding()V
    .locals 2

    const-string v0, "MediaAdapterImpl"

    const-string v1, "onStopFinding"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->setVideoAssistantActivated(Z)V

    return-void
.end method

.method public onTabClosed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onTabClosed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaSessionHelper:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->onCloseTab()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaSessionHelper:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    return-void
.end method

.method public onTabHidden()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onTabHidden()V

    return-void
.end method

.method public onTabShown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onTabShown()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaSessionHelper:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->onShow()V

    return-void
.end method

.method public onToggleFullscreenModeForTab(ZZ)V
    .locals 2

    const-string v0, "onToggleFullscreenModeForTab enterFullscreen:"

    const-string v1, "MediaAdapterImpl"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onToggleFullscreenModeForTab(ZZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onUpdateFavicon(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "MediaAdapterImpl"

    const-string v1, "onUpdateFavicon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaSessionHelper:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->onUpdatedFavicon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onVideoAssistantEnabledChanged()V
    .locals 2

    const-string v0, "MediaAdapterImpl"

    const-string v1, "onVideoAssistantEnabledChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onVideoAssistantEnabledChanged()V

    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->play()V

    return-void
.end method

.method public removeCallbackForPlaybackStateChange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->removeCallbackForPlaybackStateChange()V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->seekTo(J)V

    return-void
.end method

.method public setVideoAssistantActivated(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaHandler:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->setVideoAssistantActivated(Z)V

    return-void
.end method

.method public setupMediaSessionObserver()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaSessionHelper:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->setupMediaSessionObserver()V

    return-void
.end method

.method public stopMediaSession()V
    .locals 2

    const-string v0, "MediaAdapterImpl"

    const-string v1, "stopMediaSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;->mMediaSessionHelper:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->stopMediaSession()V

    return-void
.end method
