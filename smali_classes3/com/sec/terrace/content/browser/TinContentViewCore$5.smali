.class Lcom/sec/terrace/content/browser/TinContentViewCore$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinContentViewCore;->initializeActivityStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$5;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$5;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->e(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$5;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->e(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->resetDragGesture()V

    :cond_0
    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$5;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->j(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$5;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->e(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$5;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->e(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->getDragOn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$5;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->e(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setAlphaToGotoBitmap(Z)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$5;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->e(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->commitXPositionRatio()V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$5;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->e(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setDragOn(Z)V

    :cond_1
    return-void
.end method
