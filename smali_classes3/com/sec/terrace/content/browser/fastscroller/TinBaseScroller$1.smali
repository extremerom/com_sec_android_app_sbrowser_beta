.class Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown message type : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TinBaseScroller"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonImmediately()V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->stopVSync()V

    :goto_0
    return-void
.end method
