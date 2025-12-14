.class Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;
.super Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TerraceMediaEventListener"
.end annotation


# instance fields
.field final mVideoViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;->mVideoViewWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onExtSubtitleUpdated(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;->mVideoViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->f(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoPlaybackStateChanged(ZLcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;->mVideoViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->notifyVideoPlaybackStateChanged(Z)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;->mVideoViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->e(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;)V

    return-void
.end method
