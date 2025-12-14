.class public Lcom/sec/terrace/TerraceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceHelper$IFullscreenController;,
        Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;,
        Lcom/sec/terrace/TerraceHelper$TinFileProviderHelper;,
        Lcom/sec/terrace/TerraceHelper$Natives;,
        Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;,
        Lcom/sec/terrace/TerraceHelper$TerraceDexMode;
    }
.end annotation


# static fields
.field private static sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

.field private static final sTerraceHelper:Lcom/sec/terrace/TerraceHelper;


# instance fields
.field private mArActivity:Landroid/app/Activity;

.field private mCurrentTerraceActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/terrace/TerraceActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mDexMode:I
    .annotation build Lcom/sec/terrace/TerraceHelper$TerraceDexMode;
    .end annotation
.end field

.field private mIsInitialized:Z

.field private mMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

.field private mNativeTerraceHelper:J

.field private mVisionTextSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/TerraceHelper;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceHelper;-><init>()V

    sput-object v0, Lcom/sec/terrace/TerraceHelper;->sTerraceHelper:Lcom/sec/terrace/TerraceHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/TerraceHelper$TinFileProviderHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/TerraceHelper$TinFileProviderHelper;-><init>(I)V

    invoke-static {v0}, Lorg/chromium/base/FileProviderUtils;->setFileProviderUtil(Lorg/chromium/base/FileProviderUtils$FileProviderUtil;)V

    invoke-direct {p0}, Lcom/sec/terrace/TerraceHelper;->setClipboardListener()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/TerraceHelper;->lambda$getTaskPerThreadExecutor$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/TerraceHelper;Lorg/chromium/base/library_loader/ProcessInitException;Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceHelper;->lambda$ensureBrowserProcessLibraryLoadedAsync$0(Lorg/chromium/base/library_loader/ProcessInitException;Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/terrace/TerraceHelper;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/terrace/TerraceHelper;->lambda$ensureBrowserProcessLibraryLoadedAsync$1(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    return-void
.end method

.method private createAndInitializeTerrace(JLorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/Terrace;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/terrace/Terrace;-><init>(JLorg/chromium/content_public/browser/WebContents;)V

    invoke-virtual {p0, v0}, Lcom/sec/terrace/TerraceHelper;->initWebContentsHelpers(Lcom/sec/terrace/Terrace;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/TerraceHelper;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceHelper;->mIsInitialized:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/TerraceHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/TerraceHelper;->initializeAfterBrowserStartupCompleted(Landroid/content/Context;)V

    return-void
.end method

.method private ensureBrowserProcessLibraryLoadedAsync(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/terrace/TerraceHelper;->getTaskPerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, LJ8/d;

    const/16 v2, 0x1a

    invoke-direct {v1, p0, v2, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private ensureBrowserProcessLibraryLoadedSync(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/TerraceHelper;->loadNativeLibrary()Lorg/chromium/base/library_loader/ProcessInitException;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "TerraceHelper"

    const-string v0, "ContentView sync initialization failed."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/TerraceHelper;
    .locals 1

    sget-object v0, Lcom/sec/terrace/TerraceHelper;->sTerraceHelper:Lcom/sec/terrace/TerraceHelper;

    return-object v0
.end method

.method private getTaskPerThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance p0, LA2/f;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, LA2/f;-><init>(I)V

    return-object p0
.end method

.method private initializeAfterBrowserStartupCompleted(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lorg/chromium/content_public/browser/SpeechRecognition;->initialize()Z

    return-void
.end method

.method private initializeAsyncInternal(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/TerraceHelper;->initializePreNativeStartup(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/TerraceHelper;->ensureBrowserProcessLibraryLoadedAsync(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    return-void
.end method

.method private initializeAsyncResumed(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/TerraceHelper;->initializePostNativeStartup()V

    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/TerraceHelper$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/terrace/TerraceHelper$2;-><init>(Lcom/sec/terrace/TerraceHelper;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;Landroid/content/Context;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-interface {v0, p0, p0, p1, v1}, Lorg/chromium/content_public/browser/BrowserStartupController;->startBrowserProcessesAsync(IZZLorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V

    return-void
.end method

.method private initializeMobileUAStringCommandLine()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "use-mobile-user-agent"

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v1}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/sec/terrace/TerraceCommandLine;->removeSwitch(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_2
    return-void

    :goto_1
    if-eqz p0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method

.method private initializePostNativeStartup()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceHelperJni;->get()Lcom/sec/terrace/TerraceHelper$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/TerraceHelper$Natives;->init(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    invoke-static {}, Lcom/sec/terrace/TerraceHelperJni;->get()Lcom/sec/terrace/TerraceHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/TerraceHelper$Natives;->setGmsCoreLocationProvider(JLcom/sec/terrace/TerraceHelper;)V

    return-void
.end method

.method private initializePreNativeStartup(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isStorageFull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/flags/TinCachedFlags;->getInstance()Lcom/sec/terrace/browser/flags/TinCachedFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/flags/TinCachedFlags;->setFullListOfFlags()V

    invoke-static {p1}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->initializeCommandLineFlag(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/terrace/TerraceHelper;->initializeMobileUAStringCommandLine()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "NotEnoughStorage"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initializeSyncInternal(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/TerraceHelper;->initializePreNativeStartup(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/terrace/TerraceHelper;->ensureBrowserProcessLibraryLoadedSync(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/terrace/TerraceHelper;->initializePostNativeStartup()V

    return-void
.end method

.method private isKnoxPolicySupportedForActiveTerrace()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper;->mCurrentTerraceActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper;->mCurrentTerraceActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isKnoxPolicySupported()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$ensureBrowserProcessLibraryLoadedAsync$0(Lorg/chromium/base/library_loader/ProcessInitException;Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceHelper;->tasksPossiblyComplete(Ljava/lang/Exception;Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    return-void
.end method

.method private synthetic lambda$ensureBrowserProcessLibraryLoadedAsync$1(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    .locals 7

    invoke-direct {p0}, Lcom/sec/terrace/TerraceHelper;->loadNativeLibrary()Lorg/chromium/base/library_loader/ProcessInitException;

    move-result-object v2

    new-instance v6, LH6/a;

    const/16 v5, 0x8

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LH6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v6}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$getTaskPerThreadExecutor$2(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadNativeLibrary()Lorg/chromium/base/library_loader/ProcessInitException;
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureInitialized()V

    invoke-direct {p0}, Lcom/sec/terrace/TerraceHelper;->prefetchLibrary()V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    return-object p0
.end method

.method private postStartupCompleted(Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/terrace/TerraceHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/TerraceHelper$4;-><init>(Lcom/sec/terrace/TerraceHelper;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private prefetchLibrary()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryPrefetcher;->asyncPrefetchLibrariesToMemory()V

    return-void
.end method

.method private setClipboardListener()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/TerraceHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/TerraceHelper$1;-><init>(Lcom/sec/terrace/TerraceHelper;)V

    invoke-static {v0}, Lorg/chromium/ui/base/ClipboardImpl;->setClipboardListener(Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;)V

    return-void
.end method

.method private setGmsCoreLocationProvider()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/device/geolocation/LocationProviderFactory;->useGmsCoreLocationProvider()V

    return-void
.end method

.method public static setTerraceHelperDelegate(Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->doesSupportSpen()Z

    move-result p0

    invoke-static {p0}, Lorg/chromium/ui/base/SPenSupport;->setIsSPenSupported(Z)V

    return-void
.end method

.method private tasksPossiblyComplete(Ljava/lang/Exception;Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/sec/terrace/TerraceHelper;->initializeAsyncResumed(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "TerraceHelper"

    const-string p2, "ContentView async initialization failed."

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public calculateKeyboardHeight()I
    .locals 1

    sget-object v0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->calculateKeyboardHeight(Lcom/sec/terrace/TerraceActivity;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized createExtensionTerraceWithWebContents(ZLorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/Terrace;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-wide v0, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelperJni;->get()Lcom/sec/terrace/TerraceHelper$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    const/4 v8, 0x1

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v8}, Lcom/sec/terrace/TerraceHelper$Natives;->createFrozenTerrace(JLcom/sec/terrace/TerraceHelper;ZLorg/chromium/content_public/browser/WebContents;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/Terrace;

    invoke-virtual {p1, v1}, Lcom/sec/terrace/Terrace;->setIsExtensionTerrace(Z)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createFrozenTerrace(ZLcom/sec/terrace/TerraceState;Z)Lcom/sec/terrace/Terrace;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object p2, p2, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "TerraceHelper"

    const-string p2, "TerraceState.contentsState is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p2, p3}, Lcom/sec/terrace/TerraceState$WebContentsState;->getWebContents(Z)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v5

    if-nez v5, :cond_1

    const-string p1, "TerraceHelper"

    const-string p2, "It is failed to restore web contents from terrace state"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/sec/terrace/TerraceHelperJni;->get()Lcom/sec/terrace/TerraceHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    const/4 v6, 0x0

    move-object v3, p0

    move v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/TerraceHelper$Natives;->createFrozenTerrace(JLcom/sec/terrace/TerraceHelper;ZLorg/chromium/content_public/browser/WebContents;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/Terrace;

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized createTerrace(Z)Lcom/sec/terrace/Terrace;
    .locals 3

    monitor-enter p0

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/terrace/TerraceHelper;->createTerrace(ZJZ)Lcom/sec/terrace/Terrace;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createTerrace(ZJ)Lcom/sec/terrace/Terrace;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/terrace/TerraceHelper;->createTerrace(ZJZ)Lcom/sec/terrace/Terrace;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createTerrace(ZJZ)Lcom/sec/terrace/Terrace;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-wide v0, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelperJni;->get()Lcom/sec/terrace/TerraceHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/TerraceHelper$Natives;->createTerrace(JLcom/sec/terrace/TerraceHelper;ZJZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/Terrace;

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getAXWhiteListNames(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->getAXWhiteListNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper;->mCurrentTerraceActivity:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/TerraceActivity;

    :goto_0
    return-object p0
.end method

.method public getPlatformOneUIVersion()I
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->getPlatformOneUIVersion()I

    move-result p0

    return p0
.end method

.method public getRefreshIconTopOffset(Z)I
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->getRefreshIconTopOffset(Z)I

    move-result p0

    return p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelperJni;->get()Lcom/sec/terrace/TerraceHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/TerraceHelper$Natives;->getUserAgent(JLcom/sec/terrace/TerraceHelper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleDebugIntent(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/chromium/base/MemoryPressureListener;->handleDebugIntent(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public initWebContentsHelpers(Lcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->from(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    return-void
.end method

.method public initializeAsync(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/TerraceHelper;->initializeMobileUAStringCommandLine()V

    invoke-direct {p0, p2}, Lcom/sec/terrace/TerraceHelper;->postStartupCompleted(Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    const-string p0, "TerraceHelper"

    const-string p1, "initializeAsync: already initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/TerraceHelper;->initializeAsyncInternal(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    return-void
.end method

.method public initializeSync(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    const-string v1, "TerraceHelper"

    if-eqz v0, :cond_0

    const-string p0, "initializeSync: already initialized"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/TerraceHelper;->initializeSyncInternal(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2, v2}, Lorg/chromium/content_public/browser/BrowserStartupController;->startBrowserProcessesSync(IZZ)V

    iput-boolean v3, p0, Lcom/sec/terrace/TerraceHelper;->mIsInitialized:Z

    const-string v0, "initializeSync: initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/terrace/TerraceHelper;->initializeAfterBrowserStartupCompleted(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "initializeSync: failed"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method public isActiveTerraceAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper;->mCurrentTerraceActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper;->mCurrentTerraceActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->isActiveTerraceAvailable()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAiFeatureEnabledInKnoxEDM()Z
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->isAiFeatureEnabledInKnoxEDM()Z

    move-result p0

    return p0
.end method

.method public isArBrowser()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper;->mArActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBetaApk()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->isBetaApk()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChinaApk()Z
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->isChinaApk()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDexDualMode()Z
    .locals 1

    iget p0, p0, Lcom/sec/terrace/TerraceHelper;->mDexMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDexEnabled()Z
    .locals 0

    iget p0, p0, Lcom/sec/terrace/TerraceHelper;->mDexMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHideStatusBarEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper;->mCurrentTerraceActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper;->mCurrentTerraceActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/TerraceActivity;

    invoke-interface {v0, p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->isHideStatusBarEnabled(Lcom/sec/terrace/TerraceActivity;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/TerraceHelper;->mIsInitialized:Z

    return p0
.end method

.method public isKeyboardTurnedOn()Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->isKeyboardTurnedOn(Lcom/sec/terrace/TerraceActivity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isParentalControlEnabled()Z
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->isParentalControlEnabled()Z

    move-result p0

    return p0
.end method

.method public isPlatformAiFeaturesEnabled()Z
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->isPlatformAiFeaturesEnabled()Z

    move-result p0

    return p0
.end method

.method public isRizeApk()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->isRizeApk()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSARTEnabled()Z
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->isSARTEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStorageFull()Z
    .locals 4

    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    mul-long/2addr v2, v0

    const-wide/32 v0, 0x1400000

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWearOs()Z
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->isWearOs()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized onAppEnterBackground()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelperJni;->get()Lcom/sec/terrace/TerraceHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/TerraceHelper$Natives;->onAppEnterBackground(JLcom/sec/terrace/TerraceHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public performHapticFeedbackForDragStart(Landroid/view/View;)V
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->performHapticFeedbackForDragStart(Landroid/view/View;)V

    return-void
.end method

.method public readFileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->readFileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCurrentTerraceActivity(Lcom/sec/terrace/TerraceActivity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/terrace/TerraceHelper;->mCurrentTerraceActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setDexMode(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/sec/terrace/TerraceHelper$TerraceDexMode;
        .end annotation
    .end param

    iget v0, p0, Lcom/sec/terrace/TerraceHelper;->mDexMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/terrace/TerraceHelper;->mDexMode:I

    invoke-static {}, Lcom/sec/terrace/TerraceHelperJni;->get()Lcom/sec/terrace/TerraceHelper$Natives;

    move-result-object p1

    iget p0, p0, Lcom/sec/terrace/TerraceHelper;->mDexMode:I

    invoke-interface {p1, p0}, Lcom/sec/terrace/TerraceHelper$Natives;->setDexMode(I)V

    return-void
.end method

.method public setMediaPlayerManagerClient(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/TerraceHelper;->mMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    return-void
.end method

.method public setVisionTextSupport(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/terrace/TerraceHelper;->mVisionTextSupport:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/sec/terrace/TerraceHelper;->mVisionTextSupport:Z

    invoke-static {}, Lcom/sec/terrace/TerraceHelperJni;->get()Lcom/sec/terrace/TerraceHelper$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/TerraceHelper;->mNativeTerraceHelper:J

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v3

    iget-boolean p0, p0, Lcom/sec/terrace/TerraceHelper;->mVisionTextSupport:Z

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/sec/terrace/TerraceHelper$Natives;->setVisionTextSupport(JLcom/sec/terrace/TerraceHelper;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Updated Vision text support status as "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " to native"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TerraceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public showSelectionNotAllowedMessage(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->showSelectionNotAllowedMessage(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public showShareDialog(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    sget-object p0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->showShareDialog(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)Z
    .locals 8

    sget-object v0, Lcom/sec/terrace/TerraceHelper;->sDelegate:Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method
