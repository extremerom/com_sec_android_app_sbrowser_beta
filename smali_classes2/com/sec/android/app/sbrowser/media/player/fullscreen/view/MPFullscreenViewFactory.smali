.class public Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createAnimationView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    return-object v0
.end method

.method public static createAudioOnlyView(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenAudioOnlyView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createBufferingView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBufferingView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createFeatureTopView(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createFeatureView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createGestureBrightnessView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createGestureSeekView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createGestureView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createGestureVolumeView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createMainView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;)V

    return-object v0
.end method

.method public static createMediaControlsView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaControlsView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createMediaProgressView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createPlaybackRateView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createViewListMap(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)V

    return-object v0
.end method

.method public static createVolumeView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object v0
.end method
