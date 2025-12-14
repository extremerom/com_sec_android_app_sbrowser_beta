.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainViewHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainViewHandler;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainViewHandler;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_7

    const/16 v0, 0x17

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x6f

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x70

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->swapToPopupPlayer()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateVolumeButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->showVolumeView()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateTimeline()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideLockView()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideGestureView()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideGestureView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateVolumeButton()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->toggleVolumeView()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideVolumeView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateVolumeButton()V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->show(Z)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hide(Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateSubtitleView(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateSubtitleView(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->saveVideo()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->showBufferingViewInstantly()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isPlaying()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->enableScreenWakeLock(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
