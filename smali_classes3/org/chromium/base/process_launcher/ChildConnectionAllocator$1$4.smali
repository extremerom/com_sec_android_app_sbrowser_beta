.class Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->freeConnectionWithDelay(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;

.field final synthetic val$connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;


# direct methods
.method public constructor <init>(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$4;->this$1:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$4;->val$connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$4;->this$1:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;

    iget-object v0, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;->this$0:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1$4;->val$connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0, p0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->c(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void
.end method
