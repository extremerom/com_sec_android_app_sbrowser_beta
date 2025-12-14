.class Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;

.field final synthetic val$event:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;Landroid/view/KeyEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->this$0:Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->this$0:Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;->access$000(Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->shiftPressed(ZJ)V

    :cond_0
    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3b

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->shiftPressed(ZJ)V

    :cond_1
    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {}, Lcom/sec/terrace/browser/TinClipboardUtils;->getClipBoardKeycode()I

    move-result v1

    if-ne p0, v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->showClipboard()V

    :cond_2
    return-void
.end method
