.class Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->canPause(J)Z

    move-result p0

    return p0
.end method

.method public canSeekBackward()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->canSeekBackward(J)Z

    move-result p0

    return p0
.end method

.method public canSeekForward()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->canSeekForward(J)Z

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

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->b(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getCurrentPosition()I

    move-result p0

    return p0
.end method

.method public getDuration()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getDuration()I

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->isPlaying(J)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 4

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->pause(J)V

    return-void
.end method

.method public seekTo(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    int-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->seekTo(D)V

    return-void
.end method

.method public start()V
    .locals 4

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;->this$0:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->play(J)V

    return-void
.end method
