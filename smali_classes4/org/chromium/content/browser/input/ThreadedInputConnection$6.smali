.class Lorg/chromium/content/browser/input/ThreadedInputConnection$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;->sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

.field final synthetic val$event:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
