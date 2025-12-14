.class public final synthetic Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoPlaybackStateListener;
.implements Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerPlaybackListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/k;->a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaPlayerPlaybackCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/k;->a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->notifyVideoPlaybackCompleted()V

    return-void
.end method

.method public onVideoPlaybackStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/k;->a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->notifyVideoPlaybackStateChanged(Z)V

    return-void
.end method
