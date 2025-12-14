.class Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


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

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->b(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)Landroid/view/Choreographer;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isScrollToTopOrBottom()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->e(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->c(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->d(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;J)V

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->c(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->c(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1c2

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isScrollToTopOrBottom()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "scroll item time is over, but vsync is still working. startTime = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-static {p2}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->c(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " currTime = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mPrevScrollOffsetY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-virtual {p2}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getPrevScrollOffsetY()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TinBaseScroller"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->stopGoToButton()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->b(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)Landroid/view/Choreographer;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_4
    :goto_0
    return-void
.end method
