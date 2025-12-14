.class Lcom/sec/android/app/sbrowser/media/MediaHandler$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/MediaHandler;->getAssistantManager()Lcom/sec/android/app/sbrowser/media/assistant/MAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->k(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->k(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public startGesture()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->k(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->w(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->n(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->k(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->p(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/Terrace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->p(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/Terrace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->u(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->t(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->n(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->enterFullscreenVideo()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->n(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->k(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->p(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/Terrace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->p(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
