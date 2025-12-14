.class public Lorg/chromium/base/memory/MemoryPressureMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTANCE:Lorg/chromium/base/memory/MemoryPressureMonitor;


# instance fields
.field private mCurrentPressureSupplierForTesting:Lorg/chromium/base/supplier/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInsideThrottlingInterval:Z

.field private mLastReportedPressure:I

.field private mPollingEnabled:Z

.field private mPostToBackgroundIsEnabled:Z

.field private mReportingCallbackForTesting:Lorg/chromium/base/memory/MemoryPressureCallback;

.field private mThrottledPressure:Ljava/lang/Integer;

.field private final mThrottlingIntervalMs:I

.field private final mThrottlingIntervalTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/base/memory/MemoryPressureMonitor;

    const v1, 0xea60

    invoke-direct {v0, v1}, Lorg/chromium/base/memory/MemoryPressureMonitor;-><init>(I)V

    sput-object v0, Lorg/chromium/base/memory/MemoryPressureMonitor;->INSTANCE:Lorg/chromium/base/memory/MemoryPressureMonitor;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mLastReportedPressure:I

    new-instance v0, Lorg/chromium/base/memory/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/chromium/base/memory/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mThrottlingIntervalTask:Ljava/lang/Runnable;

    iput p1, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mThrottlingIntervalMs:I

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/memory/MemoryPressureMonitor;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->lambda$queryCurrentPressure$1()V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/base/memory/MemoryPressureMonitor;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->onThrottlingIntervalFinished()V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/base/memory/MemoryPressureMonitor;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/memory/MemoryPressureMonitor;->lambda$queryCurrentPressure$0(Ljava/lang/Integer;)V

    return-void
.end method

.method private static getCurrentMemoryPressure()Ljava/lang/Integer;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-static {v0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->memoryPressureFromTrimLevel(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$queryCurrentPressure$0(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/base/memory/MemoryPressureMonitor;->notifyPressure(I)V

    return-void
.end method

.method private synthetic lambda$queryCurrentPressure$1()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/memory/MemoryPressureMonitor;->getCurrentMemoryPressure()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/chromium/base/memory/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lorg/chromium/base/memory/b;-><init>(Ljava/lang/Object;Ljava/lang/Integer;I)V

    const/4 p0, 0x7

    invoke-static {p0, v1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static memoryPressureFromTrimLevel(I)Ljava/lang/Integer;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/16 v0, 0x50

    const/4 v1, 0x2

    if-ge p0, v0, :cond_3

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x28

    if-lt p0, v0, :cond_2

    invoke-static {}, Lorg/chromium/base/MemoryPressureListener;->isTrimMemoryBackgroundCritical()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private onThrottlingIntervalFinished()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mIsInsideThrottlingInterval:Z

    iget-object v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mThrottledPressure:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mLastReportedPressure:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mThrottledPressure:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mThrottledPressure:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->reportPressure(I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mPollingEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mLastReportedPressure:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->queryCurrentPressure()V

    :cond_1
    return-void
.end method

.method private queryCurrentPressure()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mCurrentPressureSupplierForTesting:Lorg/chromium/base/supplier/Supplier;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->reportPressure(I)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mPostToBackgroundIsEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/chromium/base/memory/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/chromium/base/memory/a;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/chromium/base/memory/MemoryPressureMonitor;->getCurrentMemoryPressure()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->notifyPressure(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private reportPressure(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->startThrottlingInterval()V

    iput p1, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mLastReportedPressure:I

    iget-object p0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mReportingCallbackForTesting:Lorg/chromium/base/memory/MemoryPressureCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/base/memory/MemoryPressureCallback;->onPressure(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/chromium/base/MemoryPressureListener;->notifyMemoryPressure(I)V

    :goto_0
    return-void
.end method

.method private startThrottlingInterval()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mThrottlingIntervalTask:Ljava/lang/Runnable;

    iget v1, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mThrottlingIntervalMs:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mIsInsideThrottlingInterval:Z

    return-void
.end method


# virtual methods
.method public getLastReportedPressure()I
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget p0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mLastReportedPressure:I

    return p0
.end method

.method public notifyPressure(I)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mIsInsideThrottlingInterval:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->mThrottledPressure:Ljava/lang/Integer;

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/base/memory/MemoryPressureMonitor;->reportPressure(I)V

    return-void
.end method

.method public registerComponentCallbacks()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/chromium/base/memory/MemoryPressureMonitor$1;

    invoke-direct {v1, p0}, Lorg/chromium/base/memory/MemoryPressureMonitor$1;-><init>(Lorg/chromium/base/memory/MemoryPressureMonitor;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
