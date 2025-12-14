.class Lcom/sec/android/app/sbrowser/media/MediaHandler$2;
.super Lcom/sec/terrace/content/browser/media/TerraceMediaClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/MediaHandler;-><init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$2;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventFired(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$2;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onEventFired(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;)V

    return-void
.end method

.method public onFullscreenVideoEntered(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$2;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->enterFullscreenVideo(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    return-void
.end method

.method public onFullscreenVideoExited()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$2;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitFullscreenVideo()V

    return-void
.end method

.method public onVideoStart(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$2;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->onVideoStart(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    return-void
.end method
