.class public Lorg/chromium/content/browser/BrowserStartupControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/BrowserStartupController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/BrowserStartupControllerImpl$BrowserStartType;,
        Lorg/chromium/content/browser/BrowserStartupControllerImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final STARTUP_FAILURE:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final STARTUP_SUCCESS:I = -0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sInstance:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

.field private static sShouldStartGpuProcessOnBrowserStartup:Z


# instance fields
.field private final mAsyncStartupCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentMainCallbackForTests:Ljava/lang/Runnable;

.field private mCurrentBrowserStartType:I

.field private mFullBrowserStartupDone:Z

.field private mHasCalledContentStart:Z

.field private mHasStartedInitializingBrowserProcess:Z

.field private mLaunchFullBrowserAfterMinimalBrowserStart:Z

.field private mMinimalBrowserStarted:Z

.field private final mMinimalBrowserStartedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPrepareToStartCompleted:Z

.field private mStartupSuccess:Z

.field private mTracingController:Lorg/chromium/content/browser/TracingControllerAndroidImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mCurrentBrowserStartType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mAsyncStartupCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStartedCallbacks:Ljava/util/List;

    invoke-static {}, Lorg/chromium/base/BuildInfo;->isDebugAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->isSdkSandboxProcess()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl$1;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->lambda$enqueueCallbackExecutionOnStartupFailure$1()V

    return-void
.end method

.method private assertProcessTypeSupported(I)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->assertCompatibleProcessType(I)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->lambda$overrideInstanceForTest$0(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V

    return-void
.end method

.method public static browserStartupComplete(I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sInstance:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->executeEnqueuedCallbacks(I)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mHasCalledContentStart:Z

    return p0
.end method

.method public static bridge synthetic d(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mStartupSuccess:Z

    return p0
.end method

.method public static bridge synthetic e(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)Lorg/chromium/content/browser/TracingControllerAndroidImpl;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mTracingController:Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    return-object p0
.end method

.method private enqueueCallbackExecutionOnStartupFailure()V
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/b;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;I)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method private executeEnqueuedCallbacks(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mFullBrowserStartupDone:Z

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mStartupSuccess:Z

    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;

    iget-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mStartupSuccess:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;->onSuccess()V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;->onFailure()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->executeMinimalBrowserStartupCallbacks(I)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->recordStartupUma()V

    return-void
.end method

.method private executeMinimalBrowserStartupCallbacks(I)V
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mStartupSuccess:Z

    iget-object p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStartedCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;

    iget-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mStartupSuccess:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;->onSuccess()V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;->onFailure()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStartedCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static bridge synthetic f(Lorg/chromium/content/browser/BrowserStartupControllerImpl;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mCurrentBrowserStartType:I

    return-void
.end method

.method public static bridge synthetic g(Lorg/chromium/content/browser/BrowserStartupControllerImpl;Lorg/chromium/content/browser/TracingControllerAndroidImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mTracingController:Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    return-void
.end method

.method public static getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sInstance:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    invoke-direct {v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sInstance:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sInstance:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    return-object v0
.end method

.method public static bridge synthetic h(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->enqueueCallbackExecutionOnStartupFailure()V

    return-void
.end method

.method private synthetic lambda$enqueueCallbackExecutionOnStartupFailure$1()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->executeEnqueuedCallbacks(I)V

    return-void
.end method

.method private static synthetic lambda$overrideInstanceForTest$0(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V
    .locals 0

    sput-object p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sInstance:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    return-void
.end method

.method private minimalBrowserStarted()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStarted:Z

    iget-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mLaunchFullBrowserAfterMinimalBrowserStart:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mCurrentBrowserStartType:I

    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->contentStart()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->enqueueCallbackExecutionOnStartupFailure()V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mCurrentBrowserStartType:I

    if-ne v1, v0, :cond_2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->executeMinimalBrowserStartupCallbacks(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->recordStartupUma()V

    return-void
.end method

.method public static minimalBrowserStartupComplete()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sInstance:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->minimalBrowserStarted()V

    :cond_0
    return-void
.end method

.method public static overrideInstanceForTest(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sInstance:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    sput-object p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sInstance:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    new-instance p0, Lorg/chromium/content/browser/b;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/b;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;I)V

    invoke-static {p0}, Lorg/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postStartupCompleted(Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl$3;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl$3;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static shouldStartGpuProcessOnBrowserStartup()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sShouldStartGpuProcessOnBrowserStartup:Z

    return v0
.end method


# virtual methods
.method public addStartupCompletedObserver(Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mFullBrowserStartupDone:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->postStartupCompleted(Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public contentMainStart(Z)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lorg/chromium/content/app/ContentMain;->start(Z)I

    move-result p0

    return p0
.end method

.method public contentStart()I
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mContentMainCallbackForTests:Ljava/lang/Runnable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mCurrentBrowserStartType:I

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->contentMainStart(Z)I

    move-result v3

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mLaunchFullBrowserAfterMinimalBrowserStart:Z

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mLaunchFullBrowserAfterMinimalBrowserStart:Z

    :goto_1
    iput-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mHasCalledContentStart:Z

    return v2
.end method

.method public flushStartupTasks()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "flushStartupTasks"

    invoke-static {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lorg/chromium/content/browser/BrowserStartupControllerImplJni;->get()Lorg/chromium/content/browser/BrowserStartupControllerImpl$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl$Natives;->flushStartupTasks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public isFullBrowserStarted()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mFullBrowserStartupDone:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mStartupSuccess:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNativeStarted()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mFullBrowserStartupDone:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mStartupSuccess:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunningInMinimalBrowserMode()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mFullBrowserStartupDone:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mStartupSuccess:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public prepareToStartBrowserProcess(ZLjava/lang/Runnable;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mPrepareToStartCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BrowserStartup"

    const-string v2, "Initializing chromium process, singleProcess=%b"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mPrepareToStartCompleted:Z

    const-string p0, "prepareToStartBrowserProcess"

    invoke-static {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object p0

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/DeviceUtilsImpl;->updateDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V

    invoke-static {}, Lorg/chromium/content/browser/BrowserStartupControllerImplJni;->get()Lorg/chromium/content/browser/BrowserStartupControllerImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl$Natives;->setCommandLineFlags(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_1
    if-eqz p2, :cond_2

    const/16 p0, 0x8

    invoke-static {p0, p2}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p0, :cond_3

    :try_start_4
    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
.end method

.method public recordStartupUma()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/ServicificationStartupUma;->getInstance()Lorg/chromium/content/browser/ServicificationStartupUma;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ServicificationStartupUma;->commit()V

    return-void
.end method

.method public startBrowserProcessesAsync(IZZLorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->assertProcessTypeSupported(I)V

    invoke-static {}, Lorg/chromium/content/browser/ServicificationStartupUma;->getInstance()Lorg/chromium/content/browser/ServicificationStartupUma;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mFullBrowserStartupDone:Z

    iget-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStarted:Z

    invoke-static {v0, v1, p3}, Lorg/chromium/content/browser/ServicificationStartupUma;->getStartupMode(ZZZ)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/ServicificationStartupUma;->record(I)V

    iget-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mFullBrowserStartupDone:Z

    if-nez p1, :cond_5

    if-eqz p3, :cond_0

    iget-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStarted:Z

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStartedCallbacks:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mLaunchFullBrowserAfterMinimalBrowserStart:Z

    iget p4, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mCurrentBrowserStartType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    if-nez p3, :cond_2

    move p4, v1

    goto :goto_1

    :cond_2
    move p4, v0

    :goto_1
    or-int/2addr p1, p4

    iput-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mLaunchFullBrowserAfterMinimalBrowserStart:Z

    iget-boolean p4, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mHasStartedInitializingBrowserProcess:Z

    if-nez p4, :cond_3

    iput-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mHasStartedInitializingBrowserProcess:Z

    sget-boolean p1, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sShouldStartGpuProcessOnBrowserStartup:Z

    or-int/2addr p1, p2

    sput-boolean p1, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sShouldStartGpuProcessOnBrowserStartup:Z

    new-instance p1, Lorg/chromium/content/browser/BrowserStartupControllerImpl$2;

    invoke-direct {p1, p0, p3}, Lorg/chromium/content/browser/BrowserStartupControllerImpl$2;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;Z)V

    invoke-virtual {p0, v0, p1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->prepareToStartBrowserProcess(ZLjava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iget-boolean p2, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStarted:Z

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iput v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mCurrentBrowserStartType:I

    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->contentStart()I

    move-result p1

    if-lez p1, :cond_4

    invoke-direct {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->enqueueCallbackExecutionOnStartupFailure()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    invoke-direct {p0, p4}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->postStartupCompleted(Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V

    return-void
.end method

.method public startBrowserProcessesSync(IZZ)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->assertProcessTypeSupported(I)V

    sget-boolean p1, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sShouldStartGpuProcessOnBrowserStartup:Z

    or-int/2addr p1, p3

    sput-boolean p1, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->sShouldStartGpuProcessOnBrowserStartup:Z

    invoke-static {}, Lorg/chromium/content/browser/ServicificationStartupUma;->getInstance()Lorg/chromium/content/browser/ServicificationStartupUma;

    move-result-object p1

    iget-boolean p3, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mFullBrowserStartupDone:Z

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mMinimalBrowserStarted:Z

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lorg/chromium/content/browser/ServicificationStartupUma;->getStartupMode(ZZZ)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/chromium/content/browser/ServicificationStartupUma;->record(I)V

    iget-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mFullBrowserStartupDone:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->prepareToStartBrowserProcess(ZLjava/lang/Runnable;)V

    iget-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mHasCalledContentStart:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mCurrentBrowserStartType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    iput v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mCurrentBrowserStartType:I

    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->contentStart()I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->enqueueCallbackExecutionOnStartupFailure()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->flushStartupTasks()V

    :cond_2
    :goto_0
    iget-boolean p0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->mStartupSuccess:Z

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw p0
.end method
