.class Lorg/chromium/base/process_launcher/ChildProcessConnection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/process_launcher/ChildProcessConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZLandroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;Ljava/lang/String;ZZ)V
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

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/process_launcher/ChildProcessConnection$2;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->lambda$onServiceConnected$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/base/process_launcher/ChildProcessConnection$2;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->lambda$onServiceDisconnected$1()V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->onServiceConnectedOnLauncherThread(Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$1()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->onServiceDisconnectedOnLauncherThread()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->j(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->onServiceConnectedOnLauncherThread(Landroid/os/IBinder;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->j(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/base/process_launcher/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lorg/chromium/base/process_launcher/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->j(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->onServiceDisconnectedOnLauncherThread()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->j(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/base/process_launcher/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lorg/chromium/base/process_launcher/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
