.class public Lorg/chromium/base/process_launcher/ChildProcessService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/process_launcher/ChildProcessService$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sCreateCalled:Z

.field private static sZygotePid:I

.field private static sZygoteStartupTimeMillis:J


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mBindToCallerCheck:Z

.field private final mBinder:Lorg/chromium/base/process_launcher/IChildProcessService$Stub;

.field private final mBinderLock:Ljava/lang/Object;

.field private mBoundCallingClazz:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mBoundCallingPid:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mCommandLineParams:[Ljava/lang/String;

.field private final mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

.field private mFdInfos:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

.field private mLibraryInitialized:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mLibraryInitializedLock:Ljava/lang/Object;

.field private mMainThread:Ljava/lang/Thread;

.field private mParentProcess:Lorg/chromium/base/process_launcher/IParentProcess;

.field private final mService:Landroid/app/Service;

.field private mServiceBound:Z


# direct methods
.method public constructor <init>(Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;Landroid/app/Service;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBinderLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mLibraryInitializedLock:Ljava/lang/Object;

    new-instance v0, Lorg/chromium/base/process_launcher/ChildProcessService$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/process_launcher/ChildProcessService$1;-><init>(Lorg/chromium/base/process_launcher/ChildProcessService;)V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBinder:Lorg/chromium/base/process_launcher/IChildProcessService$Stub;

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mService:Landroid/app/Service;

    iput-object p3, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/process_launcher/ChildProcessService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessService;->lambda$onBind$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/base/process_launcher/ChildProcessService;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->mainThreadMain()V

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/base/process_launcher/ChildProcessService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/chromium/base/process_launcher/ChildProcessService;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBindToCallerCheck:Z

    return p0
.end method

.method public static bridge synthetic e(Lorg/chromium/base/process_launcher/ChildProcessService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBinderLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/base/process_launcher/ChildProcessService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBoundCallingClazz:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/chromium/base/process_launcher/ChildProcessService;)I
    .locals 0

    iget p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBoundCallingPid:I

    return p0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic h(Lorg/chromium/base/process_launcher/ChildProcessService;)Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    return-object p0
.end method

.method public static bridge synthetic i(Lorg/chromium/base/process_launcher/ChildProcessService;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mLibraryInitialized:Z

    return p0
.end method

.method public static bridge synthetic j(Lorg/chromium/base/process_launcher/ChildProcessService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mLibraryInitializedLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic k(Lorg/chromium/base/process_launcher/ChildProcessService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBoundCallingClazz:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic l(Lorg/chromium/base/process_launcher/ChildProcessService;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBoundCallingPid:I

    return-void
.end method

.method private synthetic lambda$onBind$0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    invoke-interface {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;->preloadNativeLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Lorg/chromium/base/process_launcher/ChildProcessService;Lorg/chromium/base/process_launcher/IParentProcess;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mParentProcess:Lorg/chromium/base/process_launcher/IParentProcess;

    return-void
.end method

.method private mainThreadMain()V
    .locals 11

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mParentProcess:Lorg/chromium/base/process_launcher/IParentProcess;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "android-skip-child-service-init-for-testing"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "renderer-wait-for-java-debugger"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->onCommandLineAvailableInChildProcess()V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;->loadNativeLibrary(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mLibraryInitializedLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mLibraryInitialized:Z

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mLibraryInitializedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_2
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mFdInfos:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_6

    :cond_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;->getFileDescriptorsIdsToKeys()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mFdInfos:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    array-length v2, v1

    new-array v5, v2, [I

    array-length v2, v1

    new-array v4, v2, [Ljava/lang/String;

    array-length v2, v1

    new-array v6, v2, [I

    array-length v2, v1

    new-array v7, v2, [J

    array-length v1, v1

    new-array v8, v1, [J

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mFdInfos:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    aget-object v2, v2, v1

    if-eqz v0, :cond_4

    iget v3, v2, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->id:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_5

    aput-object v3, v4, v1

    goto :goto_5

    :cond_5
    iget v3, v2, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->id:I

    aput v3, v5, v1

    :goto_5
    iget-object v3, v2, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    aput v3, v6, v1

    iget-wide v9, v2, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->offset:J

    aput-wide v9, v7, v1

    iget-wide v2, v2, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->size:J

    aput-wide v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessServiceJni;->get()Lorg/chromium/base/process_launcher/ChildProcessService$Natives;

    move-result-object v3

    invoke-interface/range {v3 .. v8}, Lorg/chromium/base/process_launcher/ChildProcessService$Natives;->registerFileDescriptors([Ljava/lang/String;[I[I[J[J)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;->onBeforeMain()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_a

    :goto_6
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_7
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_8
    :try_start_d
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mParentProcess:Lorg/chromium/base/process_launcher/IParentProcess;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/base/process_launcher/IParentProcess;->reportExceptionInInit(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_9

    :catch_0
    move-exception v1

    const-string v2, "ChildProcessService"

    const-string v3, "Failed to call reportExceptionInInit."

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    invoke-static {v0}, Lorg/chromium/base/JavaUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->isIsolatedProcess()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, ".Isolated"

    goto :goto_b

    :cond_7
    const-string v2, ".NotIsolated"

    :goto_b
    const-string v3, "Android.ChildProcessStartTimeV2.All"

    invoke-static {v3, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    const-string v3, "Android.ChildProcessStartTimeV2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;->runMain()V

    :try_start_e
    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mParentProcess:Lorg/chromium/base/process_launcher/IParentProcess;

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/IParentProcess;->reportCleanExit()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_c

    :catch_1
    move-exception p0

    const-string v0, "ChildProcessService"

    const-string v1, "Failed to call clean exit callback."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessServiceJni;->get()Lorg/chromium/base/process_launcher/ChildProcessService$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/ChildProcessService$Natives;->exitChildProcess()V

    return-void
.end method

.method public static bridge synthetic n(Lorg/chromium/base/process_launcher/ChildProcessService;Landroid/os/Bundle;Ljava/util/List;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/base/process_launcher/ChildProcessService;->processConnectionBundle(Landroid/os/Bundle;Ljava/util/List;Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic o()I
    .locals 1

    sget v0, Lorg/chromium/base/process_launcher/ChildProcessService;->sZygotePid:I

    return v0
.end method

.method public static bridge synthetic p()J
    .locals 2

    sget-wide v0, Lorg/chromium/base/process_launcher/ChildProcessService;->sZygoteStartupTimeMillis:J

    return-wide v0
.end method

.method private processConnectionBundle(Landroid/os/Bundle;Ljava/util/List;Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "org.chromium.base.process_launcher.extra.command_line"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "org.chromium.base.process_launcher.extra.extraFiles"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    new-array v2, v2, [Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    iput-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mFdInfos:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    invoke-interface {v1, p1, p2, p3}, Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;->onConnectionSetup(Landroid/os/Bundle;Ljava/util/List;Landroid/os/IBinder;)V

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setZygoteInfo(IJ)V
    .locals 0

    sput p0, Lorg/chromium/base/process_launcher/ChildProcessService;->sZygotePid:I

    sput-wide p1, Lorg/chromium/base/process_launcher/ChildProcessService;->sZygoteStartupTimeMillis:J

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mServiceBound:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBinder:Lorg/chromium/base/process_launcher/IChildProcessService$Stub;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    const-string v0, "org.chromium.base.process_launcher.extra.bind_to_caller"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBindToCallerCheck:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mServiceBound:Z

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;->onServiceBound(Landroid/content/Intent;)V

    const-string v0, "org.chromium.base.process_launcher.extra.browser_package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/chromium/base/process_launcher/e;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lorg/chromium/base/process_launcher/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mBinder:Lorg/chromium/base/process_launcher/IChildProcessService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 8
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ChildProcessService"

    const-string v2, "Creating new ChildProcessService pid=%d"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v0, Lorg/chromium/base/process_launcher/ChildProcessService;->sCreateCalled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/process_launcher/ChildProcessService;->sCreateCalled:Z

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mDelegate:Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;->onServiceCreated()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->isProcess64Bit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x800000

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_0
    const-wide/32 v0, 0x400000

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lorg/chromium/base/process_launcher/f;

    const/4 v1, 0x4

    invoke-direct {v4, v1, p0}, Lorg/chromium/base/process_launcher/f;-><init>(ILjava/lang/Object;)V

    const-string v5, "ChildProcessMain"

    const/4 v3, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Illegal child process reuse."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "ChildProcessService"

    const-string v1, "Destroying ChildProcessService pid=%d"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
