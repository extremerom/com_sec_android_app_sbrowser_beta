.class Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->i(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Z

    move-result p0

    return p0
.end method

.method public canSeekBackward()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->j(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Z

    move-result p0

    return p0
.end method

.method public canSeekForward()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->k(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Z

    move-result p0

    return p0
.end method

.method public getAudioSessionId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBufferPercentage()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->h(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->l(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->getDuration()I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->q(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->onPlaybackStateChange(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->p(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->notifyVideoPlaybackStateChanged(Z)V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->isRTSP()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->p(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->isRTSP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->l(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RTSP scheme, need to stop and prepare again."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->s(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->r(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->resetErrorStatus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->o(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->o(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->setSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->p(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->onPlaybackStateChange(Z)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->notifyVideoPlaybackStateChanged(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0, v3}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->q(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->n(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->getParentActivityById(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_5

    return-void

    :cond_5
    const v0, 0x1020002

    const v1, 0x7f140711

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    return-void
.end method
