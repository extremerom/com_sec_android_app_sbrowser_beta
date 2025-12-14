.class Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSessionAction(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->k(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->k(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->getMediaSession()Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->didReceiveAction(I)V

    :cond_0
    return-void
.end method

.method public onMediaSessionSeekTo(J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->k(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->j(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->k(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->getMediaSession()Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public onPause(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->G(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    return-void
.end method

.method public onPlay(I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->E(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->k(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->getMediaSession()Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->resume()V

    return-void
.end method

.method public onStop(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->stopMediaSession()V

    return-void
.end method
