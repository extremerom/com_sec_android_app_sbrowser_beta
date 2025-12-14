.class public Lorg/chromium/base/library_loader/LibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;,
        Lorg/chromium/base/library_loader/LibraryLoader$LoadState;,
        Lorg/chromium/base/library_loader/LibraryLoader$Natives;,
        Lorg/chromium/base/library_loader/LibraryLoader$CreatedIn;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DEBUG:Z = false

.field private static sEnableStateForTesting:Z

.field private static sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

.field public static sLoadFailedCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/UnsatisfiedLinkError;",
            ">;"
        }
    .end annotation
.end field

.field public static sOverrideNativeLibraryCannotBeLoadedForTesting:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mFallbackToSystemLinker:Z

.field private volatile mInitialized:Z

.field private mInitializedForTesting:Z

.field private mLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mLibraryPreloaderCalled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mLibraryProcessType:I

.field private mLinker:Lorg/chromium/base/library_loader/Linker;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private volatile mLoadState:I

.field private mLoadStateForTesting:I

.field private mLoadedByZygote:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMediator:Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

.field private mUseChromiumLinker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-direct {v0}, Lorg/chromium/base/library_loader/LibraryLoader;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mUseChromiumLinker:Z

    new-instance v0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    invoke-direct {v0, p0}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;-><init>(Lorg/chromium/base/library_loader/LibraryLoader;)V

    iput-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mMediator:Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/library_loader/LibraryLoader$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/library_loader/LibraryLoader$1;-><init>(Lorg/chromium/base/library_loader/LibraryLoader;)V

    sput-object v0, LG5/m;->a:Lorg/jni_zero/a;

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/base/library_loader/LibraryLoader;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/base/library_loader/LibraryLoader;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mFallbackToSystemLinker:Z

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/base/library_loader/LibraryLoader;)Lorg/chromium/base/library_loader/Linker;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->getLinker()Lorg/chromium/base/library_loader/Linker;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/chromium/base/library_loader/LibraryLoader;)Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->isMainDexLoaded()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lorg/chromium/base/library_loader/LibraryLoader;)Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->useChromiumLinker()Z

    move-result p0

    return p0
.end method

.method private ensureCommandLineSwitched()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/CommandLine;->switchToNativeImpl()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/base/library_loader/LibraryLoader;
    .locals 1

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    return-object v0
.end method

.method private getLinker()Lorg/chromium/base/library_loader/Linker;
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLinker:Lorg/chromium/base/library_loader/Linker;

    if-nez v1, :cond_0

    new-instance v1, Lorg/chromium/base/library_loader/Linker;

    invoke-direct {v1}, Lorg/chromium/base/library_loader/Linker;-><init>()V

    iput-object v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLinker:Lorg/chromium/base/library_loader/Linker;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLinker:Lorg/chromium/base/library_loader/Linker;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initializeAlreadyLocked()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitializedForTesting:Z

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isBackgroundThreadPoolEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v2, "enable-background-thread-pool"

    invoke-virtual {v0, v2}, Lorg/chromium/base/CommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureCommandLineSwitched()V

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoaderJni;->get()Lorg/chromium/base/library_loader/LibraryLoader$Natives;

    move-result-object v0

    iget v2, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    invoke-interface {v0, v2}, Lorg/chromium/base/library_loader/LibraryLoader$Natives;->libraryLoaded(I)Z

    move-result v0

    const-string v2, "LibraryLoader"

    if-eqz v0, :cond_4

    const-string v0, "Successfully loaded native library"

    invoke-static {v2, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/metrics/UmaRecorderHolder;->onLibraryLoaded()V

    invoke-static {}, Lorg/chromium/base/TraceEvent;->onNativeTracingReady()V

    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitializedForTesting:Z

    :cond_3
    return-void

    :cond_4
    const-string p0, "error calling LibraryLoaderJni.get().libraryLoaded"

    invoke-static {v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/chromium/base/library_loader/ProcessInitException;

    invoke-direct {p0, v1}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw p0
.end method

.method public static isBackgroundThreadPoolEnabled()Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "background_thread_pool_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private isMainDexLoaded()Z
    .locals 2

    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private loadWithChromiumLinker(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->getLinker()Lorg/chromium/base/library_loader/Linker;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v0, "LibraryLoader"

    const-string v1, "Loading %s from within %s"

    invoke-static {v0, v1, p2, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/chromium/base/library_loader/Linker;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private loadWithSystemLinkerAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->setEnvForNative()V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/chromium/base/library_loader/LibraryLoader;->preloadAlreadyLocked(Ljava/lang/String;Z)V

    sget-object p0, Lorg/chromium/build/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p0, p2

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static mainProcessIntendsToProvideRelroFd()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private preloadAlreadyLocked(Ljava/lang/String;Z)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    const-string p2, "LibraryLoader.preloadAlreadyLocked"

    invoke-static {p2}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderCalled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/base/library_loader/NativeLibraryPreloader;->loadLibrary(Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0
.end method

.method public static setEnvForNative()V
    .locals 3

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->IS_UBSAN:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "UBSAN_OPTIONS"

    const-string v1, "print_stacktrace=1 stack_trace_format=\'#%n pc %o %m\' handle_segv=0 handle_sigbus=0 handle_sigfpe=0"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LibraryLoader"

    const-string v2, "failed to set UBSAN_OPTIONS"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private useChromiumLinker()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mUseChromiumLinker:Z

    return p0
.end method


# virtual methods
.method public assertCompatibleProcessType(I)V
    .locals 0

    return-void
.end method

.method public ensureInitialized()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureMainDexInitialized()V

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNonMainDex()V

    return-void
.end method

.method public ensureMainDexInitialized()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->loadMainDexAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mMediator:Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    return-object p0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isInitialized()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitializedForTesting:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoaded()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoadedByZygote()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadedByZygote:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadMainDexAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    sget-boolean p1, Lorg/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    if-nez p1, :cond_0

    iput v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    :cond_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "LibraryLoader.loadMainDexAlreadyLocked"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lorg/chromium/base/TimeUtils$UptimeMillisTimer;

    invoke-direct {v2}, Lorg/chromium/base/TimeUtils$UptimeMillisTimer;-><init>()V

    new-instance v3, Lorg/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;

    invoke-direct {v3}, Lorg/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;-><init>()V

    sget-boolean v4, Lorg/chromium/base/library_loader/LibraryLoader;->sOverrideNativeLibraryCannotBeLoadedForTesting:Z

    if-nez v4, :cond_4

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->useChromiumLinker()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mFallbackToSystemLinker:Z

    if-nez v4, :cond_2

    sget-object p2, Lorg/chromium/build/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object p2, p2, v4

    invoke-direct {p0, p1, p2}, Lorg/chromium/base/library_loader/LibraryLoader;->loadWithChromiumLinker(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/chromium/base/library_loader/LibraryLoader;->loadWithSystemLinkerAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V

    :goto_0
    invoke-virtual {v2}, Lorg/chromium/base/TimeUtils$UptimeMillisTimer;->getElapsedMillis()J

    move-result-wide p1

    iput v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    sget-boolean v2, Lorg/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v2, :cond_3

    iput v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->a(Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;J)V

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object p0

    invoke-virtual {v3}, Lorg/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;->getElapsedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->recordLoadThreadTimeHistogram(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {p0}, Ljava/lang/UnsatisfiedLinkError;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p0
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    sget-object p1, Lorg/chromium/base/library_loader/LibraryLoader;->sLoadFailedCallback:Lorg/chromium/base/Callback;

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    new-instance p1, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public loadNonMainDex()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    sget-boolean v1, Lorg/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v1, :cond_0

    iput v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    :cond_0
    return-void
.end method

.method public loadNowInZygote(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadMainDexAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNonMainDex()V

    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadedByZygote:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadNowOverrideApplicationContext(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempt to load again from alternate context."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadMainDexAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNonMainDex()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public preloadNowOverridePackageName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->useChromiumLinker()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->preloadAlreadyLocked(Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLibraryProcessType(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    iput p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Trying to change the LibraryProcessType from %d to %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLinkerImplementation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mUseChromiumLinker:Z

    return-void
.end method
