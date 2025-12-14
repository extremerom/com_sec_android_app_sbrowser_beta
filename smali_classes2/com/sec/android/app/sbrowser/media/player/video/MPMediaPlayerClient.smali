.class public Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/MediaController$MediaPlayerControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->mPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private player()Landroid/widget/MediaController$MediaPlayerControl;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->mPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/MediaController$MediaPlayerControl;

    return-object p0
.end method


# virtual methods
.method public canSeekBackward()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public canSeekForward()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getBufferPercentage()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLiveStream()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->canSeekBackward()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->mPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public start()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->player()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    :cond_0
    return-void
.end method
