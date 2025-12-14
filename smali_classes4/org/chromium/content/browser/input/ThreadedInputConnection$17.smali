.class Lorg/chromium/content/browser/input/ThreadedInputConnection$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$17;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$17;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$17;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$17;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$17;->val$action:Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$17;->val$data:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
