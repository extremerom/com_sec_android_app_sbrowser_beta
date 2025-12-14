.class Lorg/chromium/base/process_launcher/ChildProcessConnection$3;
.super Lorg/chromium/base/process_launcher/IParentProcess$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/process_launcher/ChildProcessConnection;->doConnectionSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;


# direct methods
.method public constructor <init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/IParentProcess$Stub;-><init>()V

    return-void
.end method

.method private createUnbindRunnable()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lorg/chromium/base/process_launcher/ChildProcessConnection$3$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$3$1;-><init>(Lorg/chromium/base/process_launcher/ChildProcessConnection$3;)V

    return-object v0
.end method

.method private synthetic lambda$finishSetupConnection$0(IIJLandroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->m(Lorg/chromium/base/process_launcher/ChildProcessConnection;IIJLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic v0(Lorg/chromium/base/process_launcher/ChildProcessConnection$3;IIJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->lambda$finishSetupConnection$0(IIJLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public finishSetupConnection(IIJLandroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->j(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lorg/chromium/base/process_launcher/g;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/chromium/base/process_launcher/g;-><init>(Lorg/chromium/base/process_launcher/ChildProcessConnection$3;IIJLandroid/os/Bundle;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportCleanExit()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->h(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->k(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->j(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->createUnbindRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public reportExceptionInInit(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->h(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v1, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->l(Lorg/chromium/base/process_launcher/ChildProcessConnection;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->j(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->createUnbindRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
