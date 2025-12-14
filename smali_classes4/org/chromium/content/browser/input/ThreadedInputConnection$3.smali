.class Lorg/chromium/content/browser/input/ThreadedInputConnection$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->requestTextInputStateUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->unblockOnUiThread()V

    :cond_0
    return-void
.end method
