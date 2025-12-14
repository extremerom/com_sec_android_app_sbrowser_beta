.class Lcom/sec/android/app/sbrowser/media/MediaHandler$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/MediaHandler;->createMPManager(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitFullscreen()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->p(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->exitFullscreen()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->y()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MPMangerClient\'s exitFullscreen"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->p(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method

.method public isContentFlexMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->l(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->isFlexMode()Z

    move-result p0

    return p0
.end method

.method public isGestureOnlyEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->m(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getAssistantManager()Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->isGestureOnlyEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setFullscreenVideoMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->s(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->m(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;->this$0:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitFullscreenVideo()V

    :cond_0
    return-void
.end method
