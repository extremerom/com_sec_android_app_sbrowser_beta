.class Lorg/chromium/base/process_launcher/ChildProcessService$1;
.super Lorg/chromium/base/process_launcher/IChildProcessService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/process_launcher/ChildProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/base/process_launcher/ChildProcessService;


# direct methods
.method public constructor <init>(Lorg/chromium/base/process_launcher/ChildProcessService;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/IChildProcessService$Stub;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onMemoryPressure$0(I)V
    .locals 2

    sget-object v0, Lorg/chromium/base/memory/MemoryPressureMonitor;->INSTANCE:Lorg/chromium/base/memory/MemoryPressureMonitor;

    invoke-virtual {v0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->getLastReportedPressure()I

    move-result v1

    if-lt p0, v1, :cond_0

    invoke-virtual {v0, p0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->notifyPressure(I)V

    :cond_0
    return-void
.end method

.method public static synthetic v0(I)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessService$1;->lambda$onMemoryPressure$0(I)V

    return-void
.end method


# virtual methods
.method public bindToCaller(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessService;->e(Lorg/chromium/base/process_launcher/ChildProcessService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/base/process_launcher/ChildProcessService;->g(Lorg/chromium/base/process_launcher/ChildProcessService;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/base/process_launcher/ChildProcessService;->f(Lorg/chromium/base/process_launcher/ChildProcessService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v2, v1}, Lorg/chromium/base/process_launcher/ChildProcessService;->l(Lorg/chromium/base/process_launcher/ChildProcessService;I)V

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessService;->k(Lorg/chromium/base/process_launcher/ChildProcessService;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/base/process_launcher/ChildProcessService;->g(Lorg/chromium/base/process_launcher/ChildProcessService;)I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    const-string p1, "ChildProcessService"

    const-string v2, "Service is already bound by pid %d, cannot bind for pid %d"

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->g(Lorg/chromium/base/process_launcher/ChildProcessService;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v2, p0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return v3

    :cond_1
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v1}, Lorg/chromium/base/process_launcher/ChildProcessService;->f(Lorg/chromium/base/process_launcher/ChildProcessService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ChildProcessService"

    const-string v2, "Service is already bound by %s, cannot bind for %s"

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->f(Lorg/chromium/base/process_launcher/ChildProcessService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return v3

    :cond_2
    :goto_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public consumeRelroBundle(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->h(Lorg/chromium/base/process_launcher/ChildProcessService;)Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;->consumeRelroBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public dumpProcessStack()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessService;->j(Lorg/chromium/base/process_launcher/ChildProcessService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->i(Lorg/chromium/base/process_launcher/ChildProcessService;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ChildProcessService"

    const-string v1, "Cannot dump process stack before native is loaded"

    invoke-static {p0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessServiceJni;->get()Lorg/chromium/base/process_launcher/ChildProcessService$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/ChildProcessService$Natives;->dumpProcessStack()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public forceKill()V
    .locals 0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->c(Lorg/chromium/base/process_launcher/ChildProcessService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public onMemoryPressure(I)V
    .locals 0

    new-instance p0, Lorg/chromium/base/process_launcher/h;

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/h;-><init>(I)V

    invoke-static {p0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSelfFreeze()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessServiceJni;->get()Lorg/chromium/base/process_launcher/ChildProcessService$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/ChildProcessService$Natives;->onSelfFreeze()V

    return-void
.end method

.method public setupConnection(Landroid/os/Bundle;Lorg/chromium/base/process_launcher/IParentProcess;Ljava/util/List;Landroid/os/IBinder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lorg/chromium/base/process_launcher/IParentProcess;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessService;->e(Lorg/chromium/base/process_launcher/ChildProcessService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v1}, Lorg/chromium/base/process_launcher/ChildProcessService;->d(Lorg/chromium/base/process_launcher/ChildProcessService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v1}, Lorg/chromium/base/process_launcher/ChildProcessService;->g(Lorg/chromium/base/process_launcher/ChildProcessService;)I

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "ChildProcessService"

    const-string p1, "Service has not been bound with bindToCaller()"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lorg/chromium/base/process_launcher/IParentProcess;->finishSetupConnection(IIJLandroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->isLoadedByZygote()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessService;->o()I

    move-result v0

    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessService;->p()J

    move-result-wide v3

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->initInChildProcess()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v5}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->putSharedRelrosToBundle(Landroid/os/Bundle;)V

    move-object v6, v5

    :goto_0
    move-wide v4, v3

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const-wide/16 v3, -0x1

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :goto_1
    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lorg/chromium/base/process_launcher/IParentProcess;->finishSetupConnection(IIJLandroid/os/Bundle;)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v0, p2}, Lorg/chromium/base/process_launcher/ChildProcessService;->m(Lorg/chromium/base/process_launcher/ChildProcessService;Lorg/chromium/base/process_launcher/IParentProcess;)V

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {p0, p1, p3, p4}, Lorg/chromium/base/process_launcher/ChildProcessService;->n(Lorg/chromium/base/process_launcher/ChildProcessService;Landroid/os/Bundle;Ljava/util/List;Landroid/os/IBinder;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
