.class public Lorg/chromium/content/app/ContentChildProcessServiceDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/ChildProcessServiceDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/app/ContentChildProcessServiceDelegate$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBinderBox:Landroid/os/IBinder;

.field private mCpuCount:I

.field private mCpuFeatures:J

.field private mFdsIdsToKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGpuCallback:Lorg/chromium/content/common/IGpuProcessCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/content/app/KillChildUncaughtExceptionHandler;->maybeInstallHandler()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->lambda$onBeforeMain$0()V

    return-void
.end method

.method private forwardInputTransferToken(ILandroid/window/InputTransferToken;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mGpuCallback:Lorg/chromium/content/common/IGpuProcessCallback;

    const-string v0, "ContentCPSDelegate"

    if-nez p0, :cond_0

    const-string p0, "No callback interface has been provided."

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/chromium/content/common/InputTransferTokenWrapper;

    invoke-direct {v1, p2}, Lorg/chromium/content/common/InputTransferTokenWrapper;-><init>(Landroid/window/InputTransferToken;)V

    invoke-interface {p0, p1, v1}, Lorg/chromium/content/common/IGpuProcessCallback;->forwardInputTransferToken(ILorg/chromium/content/common/InputTransferTokenWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Unable to call forwardInputTransferToken: %s"

    invoke-static {v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private forwardSurfaceForSurfaceRequest(Lorg/chromium/base/UnguessableToken;Landroid/view/Surface;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mGpuCallback:Lorg/chromium/content/common/IGpuProcessCallback;

    const-string v0, "ContentCPSDelegate"

    if-nez p0, :cond_0

    const-string p0, "No callback interface has been provided."

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/chromium/content/common/IGpuProcessCallback;->forwardSurfaceForSurfaceRequest(Lorg/chromium/base/UnguessableToken;Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "Unable to call forwardSurfaceForSurfaceRequest: %s"

    invoke-static {v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    return-void

    :goto_0
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    throw p0
.end method

.method private getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mGpuCallback:Lorg/chromium/content/common/IGpuProcessCallback;

    const/4 v0, 0x0

    const-string v1, "ContentCPSDelegate"

    if-nez p0, :cond_0

    const-string p0, "No callback interface has been provided."

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lorg/chromium/content/common/IGpuProcessCallback;->getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Unable to call getViewSurface: %s"

    invoke-static {v1, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private initializeLibrary()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->initialize()V

    invoke-static {}, Lorg/chromium/content/app/ContentChildProcessServiceDelegateJni;->get()Lorg/chromium/content/app/ContentChildProcessServiceDelegate$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/content/app/ContentChildProcessServiceDelegate$Natives;->retrieveFileDescriptorsIdsToKeys(Lorg/chromium/content/app/ContentChildProcessServiceDelegate;)V

    return-void
.end method

.method private static synthetic lambda$onBeforeMain$0()V
    .locals 1

    invoke-static {}, Lorg/chromium/content/app/ContentChildProcessServiceDelegateJni;->get()Lorg/chromium/content/app/ContentChildProcessServiceDelegate$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content/app/ContentChildProcessServiceDelegate$Natives;->initMemoryPressureListener()V

    invoke-static {}, Lorg/chromium/base/memory/MemoryPressureUma;->initializeForChildService()V

    return-void
.end method

.method private setFileDescriptorsIdsToKeys([I[Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mFdsIdsToKeys:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mFdsIdsToKeys:Landroid/util/SparseArray;

    aget v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public consumeRelroBundle(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->takeSharedRelrosFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public getFileDescriptorsIdsToKeys()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mFdsIdsToKeys:Landroid/util/SparseArray;

    return-object p0
.end method

.method public loadNativeLibrary(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->isLoadedByZygote()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->initializeLibrary()V

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->initInChildProcess()V

    invoke-virtual {v0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNowOverrideApplicationContext(Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->initializeLibrary()V

    return-void
.end method

.method public onBeforeMain()V
    .locals 4

    invoke-static {}, Lorg/chromium/content/app/ContentChildProcessServiceDelegateJni;->get()Lorg/chromium/content/app/ContentChildProcessServiceDelegate$Natives;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mCpuCount:I

    iget-wide v2, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mCpuFeatures:J

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/chromium/content/app/ContentChildProcessServiceDelegate$Natives;->initChildProcess(Lorg/chromium/content/app/ContentChildProcessServiceDelegate;IJ)V

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, LN4/a;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LN4/a;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConnectionSetup(Landroid/os/Bundle;Ljava/util/List;Landroid/os/IBinder;)V
    .locals 0
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

    iput-object p3, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mBinderBox:Landroid/os/IBinder;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    invoke-static {p2}, Lorg/chromium/content/common/IGpuProcessCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/content/common/IGpuProcessCallback;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mGpuCallback:Lorg/chromium/content/common/IGpuProcessCallback;

    const-string p2, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mCpuCount:I

    const-string p2, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mCpuFeatures:J

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->takeSharedRelrosFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public onServiceBound(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->takeLoadAddressFromBundle(Landroid/os/Bundle;)V

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p1

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->getLibraryProcessType(Landroid/os/Bundle;)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/chromium/base/library_loader/LibraryLoader;->setLibraryProcessType(I)V

    return-void
.end method

.method public onServiceCreated()V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p0}, Lorg/chromium/content_public/common/ContentProcessInfo;->setInChildProcess(Z)V

    return-void
.end method

.method public preloadNativeLibrary(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->preloadNowOverridePackageName(Ljava/lang/String;)V

    return-void
.end method

.method public runMain()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->mBinderBox:Landroid/os/IBinder;

    invoke-static {p0}, Lorg/chromium/content/app/ContentMain;->setBindersFromParent(Landroid/os/IBinder;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lorg/chromium/content/app/ContentMain;->start(Z)I

    return-void
.end method
