.class Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;
.super Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/MediaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TerraceMediaEventListener"
.end annotation


# instance fields
.field final mMediaHandlerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/media/MediaHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;->mMediaHandlerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/android/app/sbrowser/media/MediaHandler;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    return-void
.end method


# virtual methods
.method public onDestroyPlayer(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroyPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;->onDestroyPlayer(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->q(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->unregisterListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->k(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->k(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->r(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getAssistantManager()Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClient()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object v1

    if-ne p1, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->v(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    :cond_2
    return-void
.end method

.method public onVideoPlaybackStateChanged(ZLcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;->onVideoPlaybackStateChanged(ZLcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->o(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Ljava/util/function/Consumer;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->o(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
