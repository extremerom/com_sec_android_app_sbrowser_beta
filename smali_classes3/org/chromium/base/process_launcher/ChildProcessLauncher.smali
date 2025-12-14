.class public Lorg/chromium/base/process_launcher/ChildProcessLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBinderBox:Landroid/os/IBinder;

.field private final mClientInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommandLine:[Ljava/lang/String;

.field private volatile mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

.field private final mConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

.field private final mDelegate:Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

.field private final mFilesToBeMapped:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

.field private final mLauncherHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;[Ljava/lang/String;[Lorg/chromium/base/process_launcher/FileDescriptorInfo;Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Ljava/util/List;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Lorg/chromium/base/process_launcher/FileDescriptorInfo;",
            "Lorg/chromium/base/process_launcher/ChildConnectionAllocator;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mLauncherHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->isRunningOnLauncherThread()Z

    iput-object p3, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mCommandLine:[Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

    iput-object p4, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mFilesToBeMapped:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    iput-object p6, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mClientInterfaces:Ljava/util/List;

    iput-object p7, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mBinderBox:Landroid/os/IBinder;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/process_launcher/ChildProcessLauncher;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->lambda$allocateAndSetupConnection$0(Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;ZZ)V

    return-void
.end method

.method private allocateAndSetupConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;ZZ)Z
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

    invoke-virtual {v1, v0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;->onBeforeConnectionAllocated(Landroid/os/Bundle;)V

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->allocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "ChildProcLauncher"

    const-string p2, "Failed to allocate a child connection (no queuing)."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    new-instance v8, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;

    const/4 v7, 0x2

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZZI)V

    invoke-virtual {v1, v8}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->queueAllocation(Ljava/lang/Runnable;)V

    return v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->setupConnection()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic b(Lorg/chromium/base/process_launcher/ChildProcessLauncher;)Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/base/process_launcher/ChildProcessLauncher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mLauncherHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private createConnectionBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "org.chromium.base.process_launcher.extra.command_line"

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mCommandLine:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "org.chromium.base.process_launcher.extra.extraFiles"

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mFilesToBeMapped:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lorg/chromium/base/process_launcher/ChildProcessLauncher;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-void
.end method

.method public static bridge synthetic e(Lorg/chromium/base/process_launcher/ChildProcessLauncher;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->onChildProcessDied()V

    return-void
.end method

.method public static bridge synthetic f(Lorg/chromium/base/process_launcher/ChildProcessLauncher;Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->onServiceConnected(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void
.end method

.method private isRunningOnLauncherThread()Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mLauncherHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$allocateAndSetupConnection$0(Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->allocateAndSetupConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;ZZ)Z

    return-void
.end method

.method private onChildProcessDied()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getPid()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v0, p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;->onConnectionLost(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_0
    return-void
.end method

.method private onServiceConnected(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 3

    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ChildProcLauncher"

    const-string v2, "on connect callback, pid=%d"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

    invoke-virtual {v0, p1}, Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;->onConnectionEstablished(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :try_start_0
    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mFilesToBeMapped:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v2, p0, v0

    iget-object v2, v2, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to close FD."

    invoke-static {v1, p1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private setupConnection()V
    .locals 6
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    new-instance v5, Lorg/chromium/base/process_launcher/ChildProcessLauncher$2;

    invoke-direct {v5, p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher$2;-><init>(Lorg/chromium/base/process_launcher/ChildProcessLauncher;)V

    new-instance v4, Lorg/chromium/base/process_launcher/ChildProcessLauncher$3;

    invoke-direct {v4, p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher$3;-><init>(Lorg/chromium/base/process_launcher/ChildProcessLauncher;)V

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->createConnectionBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

    invoke-virtual {v0, v1}, Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;->onBeforeConnectionSetup(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getClientInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getBinderBox()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->setupConnection(Landroid/os/Bundle;Ljava/util/List;Landroid/os/IBinder;Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;Lorg/chromium/base/process_launcher/ChildProcessConnection$ZygoteInfoCallback;)V

    return-void
.end method


# virtual methods
.method public getBinderBox()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mBinderBox:Landroid/os/IBinder;

    return-object p0
.end method

.method public getClientInterfaces()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mClientInterfaces:Ljava/util/List;

    return-object p0
.end method

.method public getConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result p0

    :goto_0
    return p0
.end method

.method public start(ZZ)Z
    .locals 4

    const-string v0, "ChildProcessLauncher.start"

    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    new-instance v1, Lorg/chromium/base/process_launcher/ChildProcessLauncher$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/base/process_launcher/ChildProcessLauncher$1;-><init>(Lorg/chromium/base/process_launcher/ChildProcessLauncher;ZZ)V

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    invoke-virtual {v2, v3, v1}, Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;->getBoundConnection(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->setupConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->allocateAndSetupConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;ZZ)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    if-nez p2, :cond_1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v3

    :goto_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .locals 3

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ChildProcLauncher"

    const-string v2, "stopping child connection: pid=%d"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->stop()V

    return-void
.end method
