.class Lorg/chromium/content/browser/SpareChildConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/SpareChildConnection;-><init>(Landroid/content/Context;Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/SpareChildConnection;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/SpareChildConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildProcessDied(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/SpareChildConnection;->b(Lorg/chromium/content/browser/SpareChildConnection;)Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/SpareChildConnection;->b(Lorg/chromium/content/browser/SpareChildConnection;)Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;->onChildProcessDied(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {p1}, Lorg/chromium/content/browser/SpareChildConnection;->a(Lorg/chromium/content/browser/SpareChildConnection;)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {p0}, Lorg/chromium/content/browser/SpareChildConnection;->d(Lorg/chromium/content/browser/SpareChildConnection;)V

    :cond_1
    return-void
.end method

.method public onChildStartFailed(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 2

    const-string v0, "SpareChildConn"

    const-string v1, "Failed to warm up the spare sandbox service"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/SpareChildConnection;->b(Lorg/chromium/content/browser/SpareChildConnection;)Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/SpareChildConnection;->b(Lorg/chromium/content/browser/SpareChildConnection;)Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;->onChildStartFailed(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {p0}, Lorg/chromium/content/browser/SpareChildConnection;->d(Lorg/chromium/content/browser/SpareChildConnection;)V

    return-void
.end method

.method public onChildStarted()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/SpareChildConnection;->c(Lorg/chromium/content/browser/SpareChildConnection;)V

    iget-object v0, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/SpareChildConnection;->b(Lorg/chromium/content/browser/SpareChildConnection;)Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/SpareChildConnection;->b(Lorg/chromium/content/browser/SpareChildConnection;)Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;->onChildStarted()V

    iget-object p0, p0, Lorg/chromium/content/browser/SpareChildConnection$1;->this$0:Lorg/chromium/content/browser/SpareChildConnection;

    invoke-static {p0}, Lorg/chromium/content/browser/SpareChildConnection;->d(Lorg/chromium/content/browser/SpareChildConnection;)V

    :cond_0
    return-void
.end method
