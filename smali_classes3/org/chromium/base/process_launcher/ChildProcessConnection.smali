.class public Lorg/chromium/base/process_launcher/ChildProcessConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;,
        Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;,
        Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;,
        Lorg/chromium/base/process_launcher/ChildProcessConnection$ZygoteInfoCallback;,
        Lorg/chromium/base/process_launcher/ChildProcessConnection$ChildProcessMismatchException;,
        Lorg/chromium/base/process_launcher/ChildProcessConnection$EventsEnum;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SUPPORT_NOT_PERCEPTIBLE_BINDING:Z

.field private static sAlwaysFallback:Z

.field private static sLastRecordedZygotePid:I

.field private static sUseBackgroundNotPerceptibleBinding:Ljava/lang/Boolean;


# instance fields
.field private final mBindAsExternalService:Z

.field private final mBindToCaller:Z

.field private mBindingState:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mBindingStateCurrentOrWhenDied:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mBindingStateLock:Ljava/lang/Object;

.field private mCleanExit:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mConnectionCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;

.field private final mConnectionDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

.field private final mConnectionFactory:Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;

.field private mConnectionParams:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;

.field private mDidOnServiceConnected:Z

.field private mExceptionInServiceDuringInit:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mFallbackServiceName:Landroid/content/ComponentName;

.field private mGroup:I

.field private mImportanceInGroup:I

.field private final mIndependentFallback:Z

.field private final mInstanceName:Ljava/lang/String;

.field private final mIsSandboxedForHistograms:Z

.field private mKilledByUs:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mLauncherExecutor:Ljava/util/concurrent/Executor;

.field private final mLauncherHandler:Landroid/os/Handler;

.field private mMemoryPressureCallback:Lorg/chromium/base/memory/MemoryPressureCallback;

.field private mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

.field private mNotPerceptibleBindingCount:I

.field private mPid:I

.field private mSelfFreezeCallback:Lorg/chromium/base/memory/SelfFreezeCallback;

.field private mService:Lorg/chromium/base/process_launcher/IChildProcessService;

.field private final mServiceBundle:Landroid/os/Bundle;

.field private mServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

.field private mServiceConnectComplete:Z

.field private mServiceDisconnected:Z

.field private mServiceName:Landroid/content/ComponentName;

.field private mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

.field private mStrongBindingCount:I

.field private mUnbound:Z

.field private mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

.field private mVisibleBindingCount:I

.field private mWaivedBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

.field private mZygoteInfoCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ZygoteInfoCallback;

.field private mZygotePid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->SUPPORT_NOT_PERCEPTIBLE_BINDING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZLandroid/os/Bundle;Ljava/lang/String;ZZ)V
    .locals 11

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/chromium/base/process_launcher/ChildProcessConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZLandroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZLandroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mLauncherHandler:Landroid/os/Handler;

    new-instance v0, Lorg/chromium/base/process_launcher/c;

    invoke-direct {v0, p0}, Lorg/chromium/base/process_launcher/c;-><init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mLauncherExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceName:Landroid/content/ComponentName;

    iput-object p3, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mFallbackServiceName:Landroid/content/ComponentName;

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p6, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceBundle:Landroid/os/Bundle;

    const-string p2, "org.chromium.base.process_launcher.extra.bind_to_caller"

    invoke-virtual {p6, p2, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lorg/chromium/base/BuildInfo;->getInstance()Lorg/chromium/base/BuildInfo;

    move-result-object p2

    iget-object p2, p2, Lorg/chromium/base/BuildInfo;->packageName:Ljava/lang/String;

    const-string v0, "org.chromium.base.process_launcher.extra.browser_package_name"

    invoke-virtual {p6, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p4, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindToCaller:Z

    iput-object p8, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mInstanceName:Ljava/lang/String;

    iput-boolean p9, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mIndependentFallback:Z

    iput-boolean p10, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mIsSandboxedForHistograms:Z

    if-eqz p5, :cond_1

    sget-boolean p2, Lorg/chromium/build/BuildConfig;->IS_INCREMENTAL_INSTALL:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindAsExternalService:Z

    if-nez p7, :cond_2

    new-instance p2, Lorg/chromium/base/process_launcher/ChildProcessConnection$1;

    invoke-direct {p2, p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection$1;-><init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;

    goto :goto_2

    :cond_2
    iput-object p7, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;

    :goto_2
    new-instance p1, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;

    invoke-direct {p1, p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;-><init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getAlwaysFallback()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceName:Landroid/content/ComponentName;

    :goto_3
    invoke-direct {p0, p3}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->createBindings(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic a(ILorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-direct {p1, p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->lambda$onMemoryPressure$3(I)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->onSelfFreeze()V

    return-void
.end method

.method private bind(Z)Z
    .locals 6

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->bindUsingExistingBindings(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getAlwaysFallback()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mFallbackServiceName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getAlwaysFallback()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mFallbackServiceName:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->retireAndCreateFallbackBindings()V

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->bindUsingExistingBindings(Z)Z

    move-result v0

    move v4, v2

    move v1, v3

    :cond_2
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    if-eqz v4, :cond_4

    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mLauncherHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/base/process_launcher/f;

    const/4 v4, 0x3

    invoke-direct {v1, v4, p0}, Lorg/chromium/base/process_launcher/f;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mIsSandboxedForHistograms:Z

    const/4 p1, 0x4

    const-string v1, "Android.ChildProcessConectionEventCounts"

    if-eqz p0, :cond_3

    invoke-static {v1, v2, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_2

    :cond_3
    invoke-static {v1, v3, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    :cond_4
    :goto_2
    return v0
.end method

.method private bindUsingExistingBindings(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {p1}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    move-result p1

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBindingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBindingCount:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {p1}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    move-result p1

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBindingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBindingCount:I

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mWaivedBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateBindingState()V

    :cond_2
    return p1
.end method

.method private buildDebugStateString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindings:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mWaivedBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v1}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    const-string v1, "W"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v1}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "V"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "N"

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string v2, "S"

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(ILorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-direct {p1, p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->onMemoryPressure(I)V

    return-void
.end method

.method private checkBindTimeOut()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mDidOnServiceConnected:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceDisconnected:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mUnbound:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mIndependentFallback:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->sAlwaysFallback:Z

    :cond_2
    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->retireBindingsAndBindFallback()Z

    iget-boolean p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mIsSandboxedForHistograms:Z

    const/4 v0, 0x4

    const-string v1, "Android.ChildProcessConectionEventCounts"

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    invoke-static {v1, p0, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    invoke-static {v1, p0, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    :cond_4
    :goto_0
    return-void
.end method

.method private createBindings(Landroid/content/ComponentName;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-boolean p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindAsExternalService:Z

    if-eqz p1, :cond_1

    const/high16 p1, -0x80000000

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    or-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;

    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

    iget-object v4, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mInstanceName:Ljava/lang/String;

    invoke-interface {v2, v0, v1, v3, v4}, Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;->createConnection(Landroid/content/Intent;ILorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;Ljava/lang/String;)Lorg/chromium/base/process_launcher/ChildServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->supportNotPerceptibleBinding()Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit16 v1, p1, 0x101

    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->useBackgroundNotPerceptibleBinding()Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit16 v1, p1, 0x105

    :cond_2
    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;

    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

    iget-object v4, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mInstanceName:Ljava/lang/String;

    invoke-interface {v2, v0, v1, v3, v4}, Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;->createConnection(Landroid/content/Intent;ILorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;Ljava/lang/String;)Lorg/chromium/base/process_launcher/ChildServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    :cond_3
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;

    or-int/lit8 v2, p1, 0x41

    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

    iget-object v4, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mInstanceName:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3, v4}, Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;->createConnection(Landroid/content/Intent;ILorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;Ljava/lang/String;)Lorg/chromium/base/process_launcher/ChildServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;

    or-int/lit8 p1, p1, 0x21

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionDelegate:Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;

    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mInstanceName:Ljava/lang/String;

    invoke-interface {v1, v0, p1, v2, v3}, Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;->createConnection(Landroid/content/Intent;ILorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;Ljava/lang/String;)Lorg/chromium/base/process_launcher/ChildServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mWaivedBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    return-void
.end method

.method public static synthetic d(Lorg/chromium/base/process_launcher/ChildProcessConnection;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doConnectionSetup()V
    .locals 6

    const-string v0, "ChildProcessConnection.doConnectionSetup"

    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    new-instance v1, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;

    invoke-direct {v1, p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;-><init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mService:Lorg/chromium/base/process_launcher/IChildProcessService;

    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionParams:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;

    iget-object v4, v3, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;->mConnectionBundle:Landroid/os/Bundle;

    iget-object v5, v3, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;->mClientInterfaces:Ljava/util/List;

    iget-object v3, v3, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;->mBinderBox:Landroid/os/IBinder;

    invoke-interface {v2, v4, v1, v5, v3}, Lorg/chromium/base/process_launcher/IChildProcessService;->setupConnection(Landroid/os/Bundle;Lorg/chromium/base/process_launcher/IParentProcess;Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "ChildProcessConn"

    const-string v3, "Failed to setup connection."

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionParams:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Lorg/chromium/base/memory/MemoryPressureCallback;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->lambda$unbind$2(Lorg/chromium/base/memory/MemoryPressureCallback;)V

    return-void
.end method

.method public static synthetic f(Lorg/chromium/base/process_launcher/a;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->lambda$onServiceConnectedOnLauncherThread$1(Lorg/chromium/base/memory/MemoryPressureCallback;)V

    return-void
.end method

.method public static synthetic g(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->checkBindTimeOut()V

    return-void
.end method

.method private getAlwaysFallback()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->sAlwaysFallback:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mIndependentFallback:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getBindToCallerClazz()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic h(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic i(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mLauncherExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic j(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mLauncherHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic k(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mCleanExit:Z

    return-void
.end method

.method public static bridge synthetic l(Lorg/chromium/base/process_launcher/ChildProcessConnection;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mExceptionInServiceDuringInit:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mLauncherHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onMemoryPressure$3(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->onMemoryPressureOnLauncherThread(I)V

    return-void
.end method

.method private static synthetic lambda$onServiceConnectedOnLauncherThread$1(Lorg/chromium/base/memory/MemoryPressureCallback;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/MemoryPressureListener;->addCallback(Lorg/chromium/base/memory/MemoryPressureCallback;)V

    return-void
.end method

.method private static synthetic lambda$unbind$2(Lorg/chromium/base/memory/MemoryPressureCallback;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/MemoryPressureListener;->removeCallback(Lorg/chromium/base/memory/MemoryPressureCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Lorg/chromium/base/process_launcher/ChildProcessConnection;IIJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->onSetupConnectionResultOnLauncherThread(IIJLandroid/os/Bundle;)V

    return-void
.end method

.method private notifyChildProcessDied()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    invoke-interface {v0, p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;->onChildProcessDied(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_0
    return-void
.end method

.method private onMemoryPressure(I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mLauncherHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/base/process_launcher/d;

    invoke-direct {v1, p0, p1}, Lorg/chromium/base/process_launcher/d;-><init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onMemoryPressureOnLauncherThread(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mService:Lorg/chromium/base/process_launcher/IChildProcessService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lorg/chromium/base/process_launcher/IChildProcessService;->onMemoryPressure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private onSelfFreeze()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mService:Lorg/chromium/base/process_launcher/IChildProcessService;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p0}, Lorg/chromium/base/process_launcher/IChildProcessService;->onSelfFreeze()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private onSetupConnectionResultOnLauncherThread(IIJLandroid/os/Bundle;)V
    .locals 1

    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mPid:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "ChildProcessConn"

    const-string p2, "Pid was sent more than once: pid=%d"

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iput p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mPid:I

    iput p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mZygotePid:I

    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mZygoteInfoCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ZygoteInfoCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, p5}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ZygoteInfoCallback;->onReceivedZygoteInfo(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/os/Bundle;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mZygoteInfoCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ZygoteInfoCallback;

    sget p2, Lorg/chromium/base/process_launcher/ChildProcessConnection;->sLastRecordedZygotePid:I

    iget p5, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mZygotePid:I

    if-eq p2, p5, :cond_2

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->hasUsableZygoteInfo()Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mZygotePid:I

    sput p2, Lorg/chromium/base/process_launcher/ChildProcessConnection;->sLastRecordedZygotePid:I

    const-string p2, "Android.ChildProcessStartTimeV2.Zygote"

    invoke-static {p2, p3, p4}, Lorg/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    :cond_2
    iget-object p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;

    if-eqz p2, :cond_3

    invoke-interface {p2, p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;->onConnected(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_3
    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;

    return-void
.end method

.method private retireAndCreateFallbackBindings()V
    .locals 3

    const-string v0, "Fallback to %s"

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mFallbackServiceName:Landroid/content/ComponentName;

    const-string v2, "ChildProcessConn"

    invoke-static {v2, v0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->retire()V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->retire()V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->retire()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mWaivedBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->retire()V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mFallbackServiceName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->createBindings(Landroid/content/ComponentName;)V

    return-void
.end method

.method private retireBindingsAndBindFallback()Z
    .locals 6

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result v0

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v1}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result v1

    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v5, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mWaivedBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v5}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result v5

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->retireAndCreateFallbackBindings()V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    move-result v0

    if-nez v0, :cond_2

    return v4

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    :cond_3
    if-eqz v5, :cond_4

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mWaivedBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    move-result p0

    if-nez p0, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method public static supportNotPerceptibleBinding()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->SUPPORT_NOT_PERCEPTIBLE_BINDING:Z

    return v0
.end method

.method public static supportVariableConnections()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/process_launcher/BindService;->supportVariableConnections()Z

    move-result v0

    return v0
.end method

.method private updateBindingState()V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mUnbound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingState:I

    iget-boolean v2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mUnbound:Z

    if-nez v2, :cond_4

    iput v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateCurrentOrWhenDied:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static useBackgroundNotPerceptibleBinding()Z
    .locals 2

    sget-object v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->sUseBackgroundNotPerceptibleBinding:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/chromium/base/FeatureList;->isNativeInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->supportNotPerceptibleBinding()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BackgroundNotPerceptibleBinding"

    invoke-static {v0}, Lorg/chromium/base/BaseFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->sUseBackgroundNotPerceptibleBinding:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->sUseBackgroundNotPerceptibleBinding:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addNotPerceptibleBinding()V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "ChildProcessConn"

    const-string v1, "The connection is not bound for %d"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBindingCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateBindingState()V

    :cond_1
    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBindingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBindingCount:I

    return-void
.end method

.method public addStrongBinding()V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "ChildProcessConn"

    const-string v1, "The connection is not bound for %d"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBindingCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateBindingState()V

    :cond_1
    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBindingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBindingCount:I

    return-void
.end method

.method public addVisibleBinding()V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "ChildProcessConn"

    const-string v1, "The connection is not bound for %d"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBindingCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateBindingState()V

    :cond_1
    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBindingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBindingCount:I

    return-void
.end method

.method public bindingStateCurrent()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bindingStateCurrentOrWhenDied()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateCurrentOrWhenDied:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public consumeZygoteBundle(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mService:Lorg/chromium/base/process_launcher/IChildProcessService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lorg/chromium/base/process_launcher/IChildProcessService;->consumeRelroBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dumpProcessStack()V
    .locals 2

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mService:Lorg/chromium/base/process_launcher/IChildProcessService;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lorg/chromium/base/process_launcher/IChildProcessService;->dumpProcessStack()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ChildProcessConn"

    const-string v1, "Failed to dump process stack."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getExceptionDuringInit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mExceptionInServiceDuringInit:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getGroup()I
    .locals 0

    iget p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mGroup:I

    return p0
.end method

.method public getImportanceInGroup()I
    .locals 0

    iget p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mImportanceInGroup:I

    return p0
.end method

.method public getLauncherHandler()Landroid/os/Handler;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mLauncherHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getNotPerceptibleBindingCount()I
    .locals 0

    iget p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBindingCount:I

    return p0
.end method

.method public getPid()I
    .locals 0

    iget p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mPid:I

    return p0
.end method

.method public getVisibleBindingCount()I
    .locals 0

    iget p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBindingCount:I

    return p0
.end method

.method public getZygotePid()I
    .locals 0

    iget p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mZygotePid:I

    return p0
.end method

.method public hasCleanExit()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mCleanExit:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasUsableZygoteInfo()Z
    .locals 0

    iget p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mZygotePid:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mService:Lorg/chromium/base/process_launcher/IChildProcessService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKilledByUs()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mKilledByUs:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isNotPerceptibleBindingBound()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStrongBindingBound()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result p0

    return p0
.end method

.method public isVisibleBindingBound()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->isBound()Z

    move-result p0

    return p0
.end method

.method public kill()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mService:Lorg/chromium/base/process_launcher/IChildProcessService;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->unbind()V

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/chromium/base/process_launcher/IChildProcessService;->forceKill()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindingStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mKilledByUs:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->notifyChildProcessDied()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceConnectedOnLauncherThread(Landroid/os/IBinder;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "ChildProcessConnection.ChildServiceConnection.onServiceConnected"

    iget-boolean v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mDidOnServiceConnected:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mDidOnServiceConnected:Z

    invoke-static {p1}, Lorg/chromium/base/process_launcher/IChildProcessService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/base/process_launcher/IChildProcessService;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mService:Lorg/chromium/base/process_launcher/IChildProcessService;

    iget-boolean v2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mBindToCaller:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "ChildProcessConn"

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getBindToCallerClazz()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/chromium/base/process_launcher/IChildProcessService;->bindToCaller(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;->onChildStartFailed(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->unbind()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_2
    const-string p1, "Failed to bind service to connection."

    invoke-static {v3, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    :try_start_3
    iget-object v2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mService:Lorg/chromium/base/process_launcher/IChildProcessService;

    invoke-interface {v2}, Lorg/chromium/base/process_launcher/IChildProcessService;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {}, Lorg/chromium/base/BuildInfo;->getInstance()Lorg/chromium/base/BuildInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/base/BuildInfo;->getBrowserApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_2

    :catch_1
    :cond_3
    move v2, p1

    :goto_2
    :try_start_4
    sget-boolean v4, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_ANDROID_FEATURES:Z

    if-eqz v4, :cond_4

    move v2, v1

    :cond_4
    if-nez v2, :cond_6

    invoke-static {p1}, Lorg/chromium/base/PackageUtils;->getApplicationPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/base/BuildInfo;->packageVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    sget-wide v6, Lorg/chromium/build/BuildConfig;->VERSION_CODE:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_5

    const-string p1, "Child process\'s classpath doesn\'t match, but main process\'s package hasn\'t changed; the child is likely to be broken!"

    invoke-static {v3, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$ChildProcessMismatchException;

    const-string p1, "Child process\'s classpath doesn\'t match, and main process\'s package has been updated since process launch; process needs restarting!"

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ChildProcessMismatchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;->onChildStarted()V

    :cond_7
    iput-boolean v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceConnectComplete:Z

    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mMemoryPressureCallback:Lorg/chromium/base/memory/MemoryPressureCallback;

    if-nez p1, :cond_8

    new-instance p1, Lorg/chromium/base/process_launcher/a;

    invoke-direct {p1, p0}, Lorg/chromium/base/process_launcher/a;-><init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    new-instance v1, Lorg/chromium/base/process_launcher/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lorg/chromium/base/process_launcher/f;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mMemoryPressureCallback:Lorg/chromium/base/memory/MemoryPressureCallback;

    :cond_8
    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mSelfFreezeCallback:Lorg/chromium/base/memory/SelfFreezeCallback;

    if-nez p1, :cond_9

    new-instance p1, Lorg/chromium/base/process_launcher/b;

    invoke-direct {p1, p0}, Lorg/chromium/base/process_launcher/b;-><init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    invoke-static {p1}, Lorg/chromium/base/MemoryPressureListener;->addSelfFreezeCallback(Lorg/chromium/base/memory/SelfFreezeCallback;)V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mSelfFreezeCallback:Lorg/chromium/base/memory/SelfFreezeCallback;

    :cond_9
    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionParams:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->doConnectionSetup()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void

    :goto_4
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p0
.end method

.method public onServiceDisconnectedOnLauncherThread()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceDisconnected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceDisconnected:Z

    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->buildDebugStateString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChildProcessConn"

    const-string v3, "onServiceDisconnected (crash or killed by oom): pid=%d %s"

    invoke-static {v2, v3, v0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->stop()V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;->onConnected(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    iput-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;

    :cond_1
    return-void
.end method

.method public rebind()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mWaivedBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {p0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->bindServiceConnection()Z

    return-void
.end method

.method public removeNotPerceptibleBinding()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBindingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBindingCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->unbindServiceConnection()V

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateBindingState()V

    :cond_1
    return-void
.end method

.method public removeStrongBinding()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBindingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBindingCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->unbindServiceConnection()V

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateBindingState()V

    :cond_1
    return-void
.end method

.method public removeVisibleBinding()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBindingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBindingCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v0}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->unbindServiceConnection()V

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateBindingState()V

    :cond_1
    return-void
.end method

.method public setupConnection(Landroid/os/Bundle;Ljava/util/List;Landroid/os/IBinder;Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;Lorg/chromium/base/process_launcher/ChildProcessConnection$ZygoteInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/IBinder;",
            "Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;",
            "Lorg/chromium/base/process_launcher/ChildProcessConnection$ZygoteInfoCallback;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceDisconnected:Z

    if-eqz v0, :cond_0

    const-string p0, "ChildProcessConn"

    const-string p1, "Tried to setup a connection that already disconnected."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p4, p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;->onConnected(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void

    :cond_0
    const-string v0, "ChildProcessConnection.setupConnection"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    iput-object p4, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;

    iput-object p5, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mZygoteInfoCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ZygoteInfoCallback;

    new-instance p4, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;

    invoke-direct {p4, p1, p2, p3}, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;-><init>(Landroid/os/Bundle;Ljava/util/List;Landroid/os/IBinder;)V

    iput-object p4, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionParams:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;

    iget-boolean p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceConnectComplete:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->doConnectionSetup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_2
    return-void

    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
.end method

.method public start(ZLorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)V
    .locals 1

    const-string v0, "ChildProcessConnection.start"

    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->bind(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ChildProcessConn"

    const-string p2, "Failed to establish the service connection."

    invoke-static {p1, p2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->notifyChildProcessDied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->unbind()V

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->notifyChildProcessDied()V

    return-void
.end method

.method public tryStart(ZLorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Z
    .locals 1

    const-string v0, "ChildProcessConnection.tryStart"

    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->bind(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p0
.end method

.method public unbind()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mService:Lorg/chromium/base/process_launcher/IChildProcessService;

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mConnectionParams:Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mUnbound:Z

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mStrongBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v1}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->unbindServiceConnection()V

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mWaivedBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v1}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->unbindServiceConnection()V

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mNotPerceptibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->unbindServiceConnection()V

    :cond_0
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mVisibleBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {v1}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->unbindServiceConnection()V

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateBindingState()V

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mMemoryPressureCallback:Lorg/chromium/base/memory/MemoryPressureCallback;

    if-eqz v1, :cond_1

    new-instance v2, Lorg/chromium/base/process_launcher/f;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Lorg/chromium/base/process_launcher/f;-><init>(ILjava/lang/Object;)V

    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mMemoryPressureCallback:Lorg/chromium/base/memory/MemoryPressureCallback;

    :cond_1
    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mSelfFreezeCallback:Lorg/chromium/base/memory/SelfFreezeCallback;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lorg/chromium/base/MemoryPressureListener;->removeSelfFreezeCallback(Lorg/chromium/base/memory/SelfFreezeCallback;)V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mSelfFreezeCallback:Lorg/chromium/base/memory/SelfFreezeCallback;

    :cond_2
    return-void
.end method

.method public updateGroupImportance(II)V
    .locals 1

    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mGroup:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mImportanceInGroup:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mGroup:I

    iput p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mImportanceInGroup:I

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;->mWaivedBinding:Lorg/chromium/base/process_launcher/ChildServiceConnection;

    invoke-interface {p0, p1, p2}, Lorg/chromium/base/process_launcher/ChildServiceConnection;->updateGroupImportance(II)V

    :cond_1
    return-void
.end method
