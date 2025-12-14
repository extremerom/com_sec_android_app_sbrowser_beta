.class Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->t()Lorg/chromium/content/browser/ChildProcessRanking;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->getConnectionAllocator(Landroid/content/Context;Z)Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->supportVariableConnections()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/chromium/content/browser/BindingManager;

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$3;->val$context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->t()Lorg/chromium/content/browser/ChildProcessRanking;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/content/browser/BindingManager;-><init>(Landroid/content/Context;ILjava/lang/Iterable;)V

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->w(Lorg/chromium/content/browser/BindingManager;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/chromium/content/browser/BindingManager;

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->getMaxNumberOfAllocations()I

    move-result v0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->t()Lorg/chromium/content/browser/ChildProcessRanking;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lorg/chromium/content/browser/BindingManager;-><init>(Landroid/content/Context;ILjava/lang/Iterable;)V

    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->w(Lorg/chromium/content/browser/BindingManager;)V

    :goto_0
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessConnectionMetrics;->getInstance()Lorg/chromium/content/browser/ChildProcessConnectionMetrics;

    move-result-object p0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->r()Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ChildProcessConnectionMetrics;->setBindingManager(Lorg/chromium/content/browser/BindingManager;)V

    return-void
.end method
