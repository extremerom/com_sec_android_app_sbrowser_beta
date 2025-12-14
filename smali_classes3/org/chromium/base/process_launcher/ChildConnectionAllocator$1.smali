.class Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->allocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

.field final synthetic val$serviceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;


# direct methods
.method public constructor <init>(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->this$0:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->val$serviceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private freeConnectionWithDelay(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->this$0:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->b(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$4;

    invoke-direct {v1, p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$4;-><init>(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    const-wide/16 p0, 0x1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onChildProcessDied(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->val$serviceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->this$0:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->b(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$3;

    invoke-direct {v1, p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$3;-><init>(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->freeConnectionWithDelay(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void
.end method

.method public onChildStartFailed(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->val$serviceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->this$0:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->b(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$2;

    invoke-direct {v1, p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$2;-><init>(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->freeConnectionWithDelay(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void
.end method

.method public onChildStarted()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->val$serviceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->this$0:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->b(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$1;

    invoke-direct {v1, p0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$1;-><init>(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
