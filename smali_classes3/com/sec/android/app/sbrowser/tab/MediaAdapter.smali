.class public interface abstract Lcom/sec/android/app/sbrowser/tab/MediaAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/MediaAdapter$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->EMPTY:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

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

    return-void
.end method

.method public getCurrentMediaPosition()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleOnBackPressInVideoFullscreen()V
    .locals 0

    return-void
.end method

.method public hideVideoAssistant()V
    .locals 0

    return-void
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDeviceStateChanged()V
    .locals 0

    return-void
.end method

.method public onLoadFinished(JLjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onScrollEnded(II)V
    .locals 0

    return-void
.end method

.method public onStartFinding()V
    .locals 0

    return-void
.end method

.method public onStopFinding()V
    .locals 0

    return-void
.end method

.method public onTabClosed()V
    .locals 0

    return-void
.end method

.method public onTabHidden()V
    .locals 0

    return-void
.end method

.method public onTabShown()V
    .locals 0

    return-void
.end method

.method public onToggleFullscreenModeForTab(ZZ)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onUpdateFavicon(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onVideoAssistantEnabledChanged()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public removeCallbackForPlaybackStateChange()V
    .locals 0

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    return-void
.end method

.method public setVideoAssistantActivated(Z)V
    .locals 0

    return-void
.end method

.method public setupMediaSessionObserver()V
    .locals 0

    return-void
.end method

.method public stopMediaSession()V
    .locals 0

    return-void
.end method
