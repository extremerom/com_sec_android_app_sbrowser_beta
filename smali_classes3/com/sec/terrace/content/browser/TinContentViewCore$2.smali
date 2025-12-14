.class Lcom/sec/terrace/content/browser/TinContentViewCore$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinContentViewCore;->initEventDelegate()V
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

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$2;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelMouseClickOnGoToTop(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$2;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->e(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$2;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->e(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->cancelGoToTopMouseClick(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public clearMotionEventOffset(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$2;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->i(Lcom/sec/terrace/content/browser/TinContentViewCore;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$2;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    move-result-object p0

    return-object p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$2;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$2;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public updateMotionEventOffset(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$2;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->l(Lcom/sec/terrace/content/browser/TinContentViewCore;Landroid/view/MotionEvent;)V

    return-void
.end method
