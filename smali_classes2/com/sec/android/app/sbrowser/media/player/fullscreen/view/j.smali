.class public final synthetic Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;
.implements Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/j;->a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaInfoUpdated(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/j;->a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;I)V

    return-void
.end method

.method public onVideoSizeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/j;->a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVideoView;)V

    return-void
.end method
