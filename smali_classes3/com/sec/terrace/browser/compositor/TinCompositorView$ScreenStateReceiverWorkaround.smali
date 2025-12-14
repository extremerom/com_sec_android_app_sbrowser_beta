.class Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/compositor/TinCompositorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenStateReceiverWorkaround"
.end annotation


# instance fields
.field private mNeedsReset:Z

.field final synthetic this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public clearNeedsReset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->mNeedsReset:Z

    return-void
.end method

.method public maybeResetCompositorSurfaceManager()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->mNeedsReset:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->mNeedsReset:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-static {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->a(Lcom/sec/terrace/browser/compositor/TinCompositorView;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-static {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->a(Lcom/sec/terrace/browser/compositor/TinCompositorView;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->shutDown()V

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-static {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->e(Lcom/sec/terrace/browser/compositor/TinCompositorView;)V

    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-static {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->a(Lcom/sec/terrace/browser/compositor/TinCompositorView;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-static {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->b(Lcom/sec/terrace/browser/compositor/TinCompositorView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-static {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->d(Lcom/sec/terrace/browser/compositor/TinCompositorView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-static {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->c(Lcom/sec/terrace/browser/compositor/TinCompositorView;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->mNeedsReset:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->mNeedsReset:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public shutDown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
