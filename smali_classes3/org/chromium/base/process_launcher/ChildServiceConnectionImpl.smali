.class Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/ChildServiceConnection;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mBindFlags:I

.field private final mBindIntent:Landroid/content/Intent;

.field private mBound:Z

.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstanceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Handler;Ljava/util/concurrent/Executor;Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBindIntent:Landroid/content/Intent;

    iput p3, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBindFlags:I

    iput-object p4, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

    iput-object p7, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mInstanceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bindServiceConnection()Z
    .locals 8

    const-string v0, "ChildServiceConnectionImpl.bindServiceConnection"

    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBindIntent:Landroid/content/Intent;

    iget v4, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBindFlags:I

    iget-object v5, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mInstanceName:Ljava/lang/String;

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Lorg/chromium/base/process_launcher/BindService;->doBindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    iget-boolean p0, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBound:Z

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p0
.end method

.method public isBound()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBound:Z

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onServiceConnected after timeout "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChildServiceConn"

    invoke-static {p1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p2}, Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;->onServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;->onServiceDisconnected()V

    :cond_0
    return-void
.end method

.method public retire()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->unbindServiceConnection()V

    return-void
.end method

.method public unbindServiceConnection()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBound:Z

    :cond_0
    return-void
.end method

.method public updateGroupImportance(II)V
    .locals 8

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/process_launcher/BindService;->supportVariableConnections()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Context;->updateServiceGroup(Landroid/content/ServiceConnection;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBindIntent:Landroid/content/Intent;

    iget v4, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mBindFlags:I

    iget-object v5, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;->mInstanceName:Ljava/lang/String;

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Lorg/chromium/base/process_launcher/BindService;->doBindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;)Z

    nop

    :catch_0
    :cond_1
    return-void
.end method
