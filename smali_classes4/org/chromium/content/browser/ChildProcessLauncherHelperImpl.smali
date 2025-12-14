.class public final Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sAppStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

.field private static sApplicationInForegroundOnUiThread:Z

.field private static sBindingManager:Lorg/chromium/content/browser/BindingManager;

.field private static sCheckedServiceGroupImportance:Z

.field private static final sDelayedBackgroundTask:Ljava/lang/Runnable;

.field private static sIgnoreMainFrameVisibilityForImportance:Z

.field private static final sLauncherByPid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sPrivilegedChildConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

.field private static sSandboxedChildConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

.field private static sSandboxedChildConnectionRanking:Lorg/chromium/content/browser/ChildProcessRanking;

.field private static sSandboxedServiceFactoryForTesting:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;

.field private static sSandboxedServicesCountForTesting:I

.field private static sSandboxedServicesNameForTesting:Ljava/lang/String;

.field private static sSkipDelayForReducePriorityOnBackgroundForTesting:Z

.field private static sSpareSandboxedConnection:Lorg/chromium/content/browser/SpareChildConnection;

.field private static volatile sZygoteBundle:Landroid/os/Bundle;

.field private static sZygotePid:I


# instance fields
.field private final mBindingManager:Lorg/chromium/content/browser/BindingManager;

.field private final mCanUseWarmUpConnection:Z

.field private mDroppedStrongBingingDueToBackgrounding:Z

.field private mEffectiveImportance:I

.field private mIsSpareRenderer:Z

.field private final mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

.field private final mLauncherDelegate:Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

.field private mNativeChildProcessLauncherHelper:J

.field private final mProcessType:Ljava/lang/String;

.field private final mRanking:Lorg/chromium/content/browser/ChildProcessRanking;

.field private final mReducePriorityOnBackground:Z

.field private mReportedException:Z

.field private final mSandboxed:Z

.field private mStartTimeMs:J

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/e;-><init>(I)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sDelayedBackgroundTask:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sLauncherByPid:Ljava/util/Map;

    const/4 v0, -0x1

    sput v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedServicesCountForTesting:I

    return-void
.end method

.method private constructor <init>(J[Ljava/lang/String;[Lorg/chromium/base/process_launcher/FileDescriptorInfo;ZZZLandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;

    invoke-direct {v4, p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;-><init>(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V

    iput-object v4, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncherDelegate:Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

    const/4 v10, 0x1

    iput v10, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mEffectiveImportance:I

    move-wide v2, p1

    iput-wide v2, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mNativeChildProcessLauncherHelper:J

    iput-boolean v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mSandboxed:Z

    move/from16 v2, p6

    iput-boolean v2, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mReducePriorityOnBackground:Z

    move/from16 v2, p7

    iput-boolean v2, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mCanUseWarmUpConnection:Z

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->getConnectionAllocator(Landroid/content/Context;Z)Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    move-result-object v7

    new-instance v11, Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-static {}, Lorg/chromium/content/browser/LauncherThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v12, 0x0

    if-nez p8, :cond_0

    move-object v8, v12

    goto :goto_0

    :cond_0
    new-array v2, v10, [Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object p8, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    :goto_0
    move-object v2, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;-><init>(Landroid/os/Handler;Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;[Ljava/lang/String;[Lorg/chromium/base/process_launcher/FileDescriptorInfo;Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Ljava/util/List;Landroid/os/IBinder;)V

    iput-object v11, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    const-string v2, "type"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lorg/chromium/content/common/ContentSwitchUtils;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mProcessType:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    iput-object v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    iput-object v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mBindingManager:Lorg/chromium/content/browser/BindingManager;

    goto :goto_1

    :cond_1
    iput-object v12, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    iput-object v12, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mBindingManager:Lorg/chromium/content/browser/BindingManager;

    :goto_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sAppStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lorg/chromium/content/browser/e;

    invoke-direct {v0, v10}, Lorg/chromium/content/browser/e;-><init>(I)V

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic A(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->warmUpOnLauncherThread(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->lambda$getConnectionAllocator$2()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->onSentToBackgroundOnLauncherThreadAfterDelay()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->lambda$onBroughtToForeground$1()V

    return-void
.end method

.method private static createAndStart(J[Ljava/lang/String;[Lorg/chromium/base/process_launcher/FileDescriptorInfo;ZLandroid/os/IBinder;)Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;
    .locals 15
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "type"

    invoke-static {v0, v1}, Lorg/chromium/content/common/ContentSwitchUtils;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/chromium/base/TraceEvent;->enabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    array-length v2, v0

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    sub-int/2addr v2, v3

    const-string v4, "--trace-early-java-in-child"

    aput-object v4, v0, v2

    :cond_0
    move-object v8, v0

    const-string v0, "renderer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "gpu-process"

    const/4 v4, 0x0

    if-nez v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ReduceGpuPriorityOnBackground"

    invoke-static {v0}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_1
    const-string v0, "service-sandbox-type"

    invoke-static {v8, v0}, Lorg/chromium/content/common/ContentSwitchUtils;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "none"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v11, v4

    goto :goto_0

    :cond_2
    move v11, v4

    move v4, v3

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/chromium/content/browser/GpuProcessCallback;

    invoke-direct {v0}, Lorg/chromium/content/browser/GpuProcessCallback;-><init>()V

    :goto_1
    move-object v13, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    move-object v5, v0

    move-wide v6, p0

    move-object/from16 v9, p3

    move v10, v4

    move/from16 v12, p4

    move-object/from16 v14, p5

    invoke-direct/range {v5 .. v14}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;-><init>(J[Ljava/lang/String;[Lorg/chromium/base/process_launcher/FileDescriptorInfo;ZZZLandroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-direct {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->start()V

    if-eqz v4, :cond_4

    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sCheckedServiceGroupImportance:Z

    if-nez v1, :cond_4

    sput-boolean v3, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sCheckedServiceGroupImportance:Z

    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImplJni;->get()Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;->serviceGroupImportanceEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ChildProcessRanking;->enableServiceGroupImportance()V

    :cond_4
    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->lambda$getTerminationInfoAndStop$5(Ljava/lang/String;)V

    return-void
.end method

.method private static distributeZygoteInfo(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->mainProcessIntendsToProvideRelroFd()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->hasUsableZygoteInfo()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ChildProcLH"

    if-nez v0, :cond_1

    const-string p1, "Connection likely not created from app zygote"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sendPreviouslySeenZygoteBundle(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    sget v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sZygotePid:I

    if-eqz v0, :cond_3

    const-string p1, "Zygote was seen before with a usable RELRO bundle."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->onObtainedUsableZygoteBundle(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void

    :cond_3
    const-string v0, "Encountered the first usable RELRO bundle."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getZygotePid()I

    move-result v0

    sput v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sZygotePid:I

    sput-object p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sZygoteBundle:Landroid/os/Bundle;

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->takeSharedRelrosFromBundle(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result p0

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sendPreviouslySeenZygoteBundleToExistingConnections(I)V

    return-void
.end method

.method private dumpProcessStack(I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->getByPid(I)Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->dumpProcessStack()V

    :cond_0
    return-void
.end method

.method public static synthetic e(ILorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->lambda$setPriority$7(ILorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->lambda$onSentToBackground$0()V

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->lambda$new$4()V

    return-void
.end method

.method private static getByPid(I)Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sLauncherByPid:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    return-object p0
.end method

.method public static getConnectionAllocator(Landroid/content/Context;Z)Lorg/chromium/base/process_launcher/ChildConnectionAllocator;
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->getBindToCallerCheck()Z

    move-result v6

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->getIsSandboxedServiceExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-nez p1, :cond_2

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sPrivilegedChildConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    if-nez v0, :cond_1

    const-string v0, "AndroidFallbackToNextSlot"

    invoke-static {v0}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v9

    invoke-static {}, Lorg/chromium/content/browser/LauncherThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->getPackageNameForPrivilegedService()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->getPrivilegedServicesName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "org.chromium.content.browser.NUM_PRIVILEGED_SERVICES"

    const/4 v8, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v10, p1

    invoke-static/range {v0 .. v10}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    move-result-object p0

    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sPrivilegedChildConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    :cond_1
    sget-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sPrivilegedChildConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    return-object p0

    :cond_2
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    if-nez v0, :cond_8

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->getPackageNameForSandboxedService()Ljava/lang/String;

    move-result-object v3

    const-string v0, "Create a new ChildConnectionAllocator with package name = %s, sandboxed = true"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ChildProcLH"

    invoke-static {v2, v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/chromium/content/browser/e;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Lorg/chromium/content/browser/e;-><init>(I)V

    sget v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedServicesCountForTesting:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    sget-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedServicesNameForTesting:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedServicesNameForTesting:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-class p0, Lorg/chromium/content/app/SandboxedProcessService;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_2
    sget v4, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedServicesCountForTesting:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v2

    move-object v1, v3

    move-object v2, p0

    move v3, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, p1

    invoke-static/range {v0 .. v8}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->createFixedForTesting(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;IZZZZZ)Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->supportVariableConnections()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/chromium/content/browser/LauncherThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->getSandboxedServicesName()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object v0, p0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, p1

    invoke-static/range {v0 .. v8}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->createVariableSize(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZZ)Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    move-result-object p0

    goto :goto_3

    :cond_5
    invoke-static {}, Lorg/chromium/content/browser/LauncherThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->getSandboxedServicesName()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "org.chromium.content.browser.NUM_SANDBOXED_SERVICES"

    move-object v0, p0

    move v10, p1

    invoke-static/range {v0 .. v10}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    move-result-object p0

    :goto_3
    sget-object p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedServiceFactoryForTesting:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->setConnectionFactoryForTesting(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;)V

    :cond_6
    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->supportVariableConnections()Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lorg/chromium/content/browser/ChildProcessRanking;

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking;-><init>()V

    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    goto :goto_4

    :cond_7
    new-instance p0, Lorg/chromium/content/browser/ChildProcessRanking;

    sget-object p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->getMaxNumberOfAllocations()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ChildProcessRanking;-><init>(I)V

    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    :cond_8
    :goto_4
    sget-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    return-object p0
.end method

.method private getEffectiveChildBindingState()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->bindingStateCurrent()I

    move-result p0

    return p0
.end method

.method private getTerminationInfoAndStop(J)V
    .locals 12
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getExceptionDuringInit()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mReportedException:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mReportedException:Z

    new-instance v3, Lorg/chromium/content/browser/l;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lorg/chromium/content/browser/l;-><init>(ILjava/lang/Object;)V

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    :cond_1
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImplJni;->get()Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;

    move-result-object v5

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->bindingStateCurrentOrWhenDied()I

    move-result v8

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isKilledByUs()Z

    move-result v9

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->hasCleanExit()Z

    move-result v10

    if-eqz v1, :cond_2

    :goto_0
    move v11, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    move-wide v6, p1

    invoke-interface/range {v5 .. v11}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;->setTerminationInfo(JIZZZ)V

    new-instance p1, Lorg/chromium/content/browser/l;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Lorg/chromium/content/browser/l;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lorg/chromium/content/browser/LauncherThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic h(I)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->lambda$new$3(I)V

    return-void
.end method

.method public static synthetic i(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->lambda$getTerminationInfoAndStop$6()V

    return-void
.end method

.method public static bridge synthetic j(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/BindingManager;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mBindingManager:Lorg/chromium/content/browser/BindingManager;

    return-object p0
.end method

.method public static bridge synthetic k(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mCanUseWarmUpConnection:Z

    return p0
.end method

.method public static bridge synthetic l(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mNativeChildProcessLauncherHelper:J

    return-wide v0
.end method

.method private static synthetic lambda$getConnectionAllocator$2()V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessRanking;->getLowestRankedConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->kill()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getTerminationInfoAndStop$5(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/JavaExceptionReporter;->reportStackTrace(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getTerminationInfoAndStop$6()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->stop()V

    return-void
.end method

.method private static synthetic lambda$new$3(I)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-boolean p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sApplicationInForegroundOnUiThread:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->onSentToBackground()V

    goto :goto_0

    :cond_0
    sget-boolean p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sApplicationInForegroundOnUiThread:Z

    if-nez p0, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->onBroughtToForeground()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$new$4()V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sAppStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sApplicationInForegroundOnUiThread:Z

    new-instance v0, Lorg/chromium/content/browser/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sAppStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    return-void
.end method

.method private static synthetic lambda$onBroughtToForeground$1()V
    .locals 3

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sLauncherByPid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    iget-boolean v2, v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mReducePriorityOnBackground:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->raisePriorityOnForegroundOnLauncherThread()V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManager;->onBroughtToForeground()V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$onSentToBackground$0()V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManager;->onSentToBackground()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setPriority$7(ILorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->removeStrongBinding()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->removeVisibleBinding()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic m(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/ChildProcessRanking;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    return-object p0
.end method

.method private static makeFdInfo(IIZJJ)Lorg/chromium/base/process_launcher/FileDescriptorInfo;
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance p1, Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    move-object v0, p1

    move v1, p0

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/base/process_launcher/FileDescriptorInfo;-><init>(ILandroid/os/ParcelFileDescriptor;JJ)V

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "ChildProcLH"

    const-string p2, "Invalid FD provided for process connection, aborting connection."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic n(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mReducePriorityOnBackground:Z

    return p0
.end method

.method private static notifyChildProcessStop(I)V
    .locals 1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImplJni;->get()Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;->onChildProcessDied(I)V

    return-void
.end method

.method public static bridge synthetic o(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mSandboxed:Z

    return p0
.end method

.method private static onBroughtToForeground()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sApplicationInForegroundOnUiThread:Z

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sDelayedBackgroundTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/content/browser/LauncherThread;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lorg/chromium/content/browser/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/e;-><init>(I)V

    invoke-static {v0}, Lorg/chromium/content/browser/LauncherThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static onObtainedUsableZygoteBundle(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 2

    sget v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sZygotePid:I

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getZygotePid()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "ChildProcLH"

    const-string v1, "Zygote restarted."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static onSentToBackground()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sApplicationInForegroundOnUiThread:Z

    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSkipDelayForReducePriorityOnBackgroundForTesting:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2328

    :goto_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sDelayedBackgroundTask:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lorg/chromium/content/browser/LauncherThread;->postDelayed(Ljava/lang/Runnable;J)V

    new-instance v0, Lorg/chromium/content/browser/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/e;-><init>(I)V

    invoke-static {v0}, Lorg/chromium/content/browser/LauncherThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static onSentToBackgroundOnLauncherThreadAfterDelay()V
    .locals 3

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sLauncherByPid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    iget-boolean v2, v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mReducePriorityOnBackground:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->reducePriorityOnBackgroundOnLauncherThread()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static bridge synthetic p(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mNativeChildProcessLauncherHelper:J

    return-void
.end method

.method private static populateServiceBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->addIntentExtras(Landroid/os/Bundle;)V

    const-string v0, "org.chromium.base.process_launcher.extra.bind_to_caller"

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->getBindToCallerCheck()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->ensureInitializedInMainProcess()V

    invoke-virtual {v0, p0}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->putLoadAddressToBundle(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static bridge synthetic q(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->reducePriorityOnBackgroundOnLauncherThread()V

    return-void
.end method

.method public static bridge synthetic r()Lorg/chromium/content/browser/BindingManager;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    return-object v0
.end method

.method private raisePriorityOnForegroundOnLauncherThread()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mDroppedStrongBingingDueToBackgrounding:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->addStrongBinding()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mDroppedStrongBingingDueToBackgrounding:Z

    return-void
.end method

.method private reducePriorityOnBackgroundOnLauncherThread()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mDroppedStrongBingingDueToBackgrounding:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isStrongBindingBound()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->removeStrongBinding()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mDroppedStrongBingingDueToBackgrounding:Z

    :cond_2
    return-void
.end method

.method public static bridge synthetic s()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sLauncherByPid:Ljava/util/Map;

    return-object v0
.end method

.method private static sendPreviouslySeenZygoteBundle(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 1

    sget v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sZygotePid:I

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sZygoteBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sZygoteBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->consumeZygoteBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private static sendPreviouslySeenZygoteBundleToExistingConnections(I)V
    .locals 3

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sZygoteBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sLauncherByPid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    iget-object v1, v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-virtual {v1}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getZygotePid()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sZygoteBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->consumeZygoteBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private start()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->start(ZZ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mStartTimeMs:J

    return-void
.end method

.method public static stop(I)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ChildProcLH"

    const-string v2, "stopping child connection: pid=%d"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->getByPid(I)Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->stop()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic t()Lorg/chromium/content/browser/ChildProcessRanking;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSandboxedChildConnectionRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    return-object v0
.end method

.method public static bridge synthetic u()Lorg/chromium/content/browser/SpareChildConnection;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSpareSandboxedConnection:Lorg/chromium/content/browser/SpareChildConnection;

    return-object v0
.end method

.method public static bridge synthetic v()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sZygoteBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static bridge synthetic w(Lorg/chromium/content/browser/BindingManager;)V
    .locals 0

    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    return-void
.end method

.method public static warmUpOnAnyThread(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/chromium/content/browser/LauncherThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static warmUpOnLauncherThread(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSpareSandboxedConnection:Lorg/chromium/content/browser/SpareChildConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/SpareChildConnection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->populateServiceBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->getConnectionAllocator(Landroid/content/Context;Z)Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    move-result-object v1

    new-instance v2, Lorg/chromium/content/browser/SpareChildConnection;

    invoke-direct {v2, p0, v1, v0}, Lorg/chromium/content/browser/SpareChildConnection;-><init>(Landroid/content/Context;Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Landroid/os/Bundle;)V

    sput-object v2, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sSpareSandboxedConnection:Lorg/chromium/content/browser/SpareChildConnection;

    return-void
.end method

.method public static bridge synthetic x(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->distributeZygoteInfo(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic y(I)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->notifyChildProcessStop(I)V

    return-void
.end method

.method public static bridge synthetic z(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->populateServiceBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getChildProcessConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p0

    return-object p0
.end method

.method public setPriority(IZZZZJZZZZI)V
    .locals 13
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    move/from16 v1, p11

    move/from16 v7, p12

    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->getByPid(I)Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mLauncher:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-virtual {v2}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->getConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->getIgnoreVisibilityForImportance()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, p2

    move/from16 v2, p9

    :goto_0
    sget-boolean v5, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->sIgnoreMainFrameVisibilityForImportance:Z

    const-wide/16 v9, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    cmp-long v11, p6, v9

    if-nez v11, :cond_2

    move v11, v6

    goto :goto_1

    :cond_2
    move v11, v3

    :goto_1
    const/4 v12, 0x2

    if-nez v5, :cond_3

    if-nez v11, :cond_8

    :cond_3
    if-eq v7, v12, :cond_8

    if-nez p3, :cond_8

    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    cmp-long v5, p6, v9

    if-lez v5, :cond_5

    if-nez p8, :cond_7

    :cond_5
    if-nez v2, :cond_7

    if-eq v7, v6, :cond_7

    if-nez p5, :cond_7

    if-eqz p10, :cond_6

    goto :goto_2

    :cond_6
    move v9, v3

    goto :goto_4

    :cond_7
    :goto_2
    move v9, v6

    goto :goto_4

    :cond_8
    :goto_3
    move v9, v12

    :goto_4
    if-eqz v4, :cond_9

    iget-boolean v2, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mVisible:Z

    if-nez v2, :cond_9

    iget-object v2, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mBindingManager:Lorg/chromium/content/browser/BindingManager;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v8}, Lorg/chromium/content/browser/BindingManager;->addConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_9
    iput-boolean v4, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mVisible:Z

    iget v2, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mEffectiveImportance:I

    if-eq v2, v9, :cond_c

    if-eqz v9, :cond_c

    if-eq v9, v6, :cond_b

    if-eq v9, v12, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v8}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->addStrongBinding()V

    goto :goto_5

    :cond_b
    invoke-virtual {v8}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->addVisibleBinding()V

    :cond_c
    :goto_5
    iget-boolean v2, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mIsSpareRenderer:Z

    if-eq v2, v1, :cond_e

    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->supportNotPerceptibleBinding()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v1, :cond_d

    invoke-virtual {v8}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->addNotPerceptibleBinding()V

    goto :goto_6

    :cond_d
    invoke-virtual {v8}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->removeNotPerceptibleBinding()V

    :goto_6
    iput-boolean v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mIsSpareRenderer:Z

    :cond_e
    iget-object v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mRanking:Lorg/chromium/content/browser/ChildProcessRanking;

    if-eqz v1, :cond_f

    move-object v2, v8

    move v3, v4

    move-wide/from16 v4, p6

    move/from16 v6, p8

    move/from16 v7, p12

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/ChildProcessRanking;->updateConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;ZJZI)V

    iget-object v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mBindingManager:Lorg/chromium/content/browser/BindingManager;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/chromium/content/browser/BindingManager;->rankingChanged()V

    :cond_f
    iget v1, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mEffectiveImportance:I

    if-eq v1, v9, :cond_11

    if-eqz v1, :cond_11

    new-instance v2, Lorg/chromium/base/process_launcher/d;

    invoke-direct {v2, v1, v8}, Lorg/chromium/base/process_launcher/d;-><init>(ILorg/chromium/base/process_launcher/ChildProcessConnection;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mStartTimeMs:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-gez v1, :cond_10

    const-wide/16 v3, 0x1f4

    invoke-static {v2, v3, v4}, Lorg/chromium/content/browser/LauncherThread;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_7

    :cond_10
    invoke-virtual {v2}, Lorg/chromium/base/process_launcher/d;->run()V

    :cond_11
    :goto_7
    iput v9, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->mEffectiveImportance:I

    return-void
.end method
