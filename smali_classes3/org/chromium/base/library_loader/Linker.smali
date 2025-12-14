.class Lorg/chromium/base/library_loader/Linker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/library_loader/Linker$State;,
        Lorg/chromium/base/library_loader/Linker$LibInfo;,
        Lorg/chromium/base/library_loader/Linker$PreferAddress;,
        Lorg/chromium/base/library_loader/Linker$Natives;,
        Lorg/chromium/base/library_loader/Linker$RelroSharingMode;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final SHARED_RELROS:Ljava/lang/String; = "org.chromium.base.android.linker.shared_relros"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sLinkerForAssert:Lorg/chromium/base/library_loader/Linker;

.field private static sNativesInstance:Lorg/chromium/base/library_loader/Linker$Natives;


# instance fields
.field protected mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mRelroProducer:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mRemoteLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mState:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/Linker;->mRelroProducer:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/base/library_loader/Linker;->mState:I

    sput-object p0, Lorg/chromium/base/library_loader/Linker;->sLinkerForAssert:Lorg/chromium/base/library_loader/Linker;

    return-void
.end method

.method private atomicReplaceRelroLocked(Z)V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mRemoteLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/library_loader/Linker$LibInfo;

    iget v1, v0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getLinkerJni()Lorg/chromium/base/library_loader/Linker$Natives;

    move-result-object v1

    iget-object p0, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    iget-wide v2, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    invoke-interface {v1, v2, v3, v0}, Lorg/chromium/base/library_loader/Linker$Natives;->useRelros(JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    const-string p0, "ChromiumAndroidLinker.RelroAvailableImmediately"

    invoke-static {p0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getLinkerJni()Lorg/chromium/base/library_loader/Linker$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/base/library_loader/Linker$Natives;->getRelroSharingResult()I

    move-result p0

    const-string p1, "ChromiumAndroidLinker.RelroSharingStatus2"

    const/16 v0, 0x9

    invoke-static {p1, p0, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method private attemptLoadLibraryLocked(Ljava/lang/String;I)V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/chromium/base/library_loader/Linker;->loadLibraryImplLocked(Ljava/lang/String;I)V

    invoke-direct {p0}, Lorg/chromium/base/library_loader/Linker;->shouldAtomicallyReplaceRelroAfterLoad()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/Linker;->atomicReplaceRelroLocked(Z)V

    :cond_0
    return-void
.end method

.method private chooseAndReserveMemoryRange(ZIJ)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    new-instance v0, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-direct {v0}, Lorg/chromium/base/library_loader/Linker$LibInfo;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    iput-boolean p1, p0, Lorg/chromium/base/library_loader/Linker;->mRelroProducer:Z

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/Linker;->loadLinkerJniLibraryLocked()V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getLinkerJni()Lorg/chromium/base/library_loader/Linker$Natives;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-interface {p1, p2}, Lorg/chromium/base/library_loader/Linker$Natives;->findRegionReservedByWebViewZygote(Lorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    iget-wide p1, p1, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    cmp-long p1, p3, p1

    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    iput-wide p3, p1, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    cmp-long p1, p3, v0

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getLinkerJni()Lorg/chromium/base/library_loader/Linker$Natives;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-interface {p1, p2}, Lorg/chromium/base/library_loader/Linker$Natives;->reserveMemoryForLibrary(Lorg/chromium/base/library_loader/Linker$LibInfo;)V

    iget-object p1, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    iget-wide p1, p1, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getLinkerJni()Lorg/chromium/base/library_loader/Linker$Natives;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-interface {p1, p0}, Lorg/chromium/base/library_loader/Linker$Natives;->findMemoryRegionAtRandomAddress(Lorg/chromium/base/library_loader/Linker$LibInfo;)V

    :goto_0
    return-void
.end method

.method private ensureInitializedImplicitlyAsLastResort()V
    .locals 4

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    return-void
.end method

.method public static extractLoadAddressFromBundle(Landroid/os/Bundle;)J
    .locals 3

    const-string v0, "org.chromium.base.android.linker.base_load_address"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLinkerJni()Lorg/chromium/base/library_loader/Linker$Natives;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lorg/chromium/base/library_loader/Linker;->sNativesInstance:Lorg/chromium/base/library_loader/Linker$Natives;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/base/library_loader/LinkerJni;

    invoke-direct {v0}, Lorg/chromium/base/library_loader/LinkerJni;-><init>()V

    return-object v0
.end method

.method private loadAndProduceSharedRelro(Ljava/lang/String;)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/library_loader/Linker$LibInfo;

    iput-object p1, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLibFilePath:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getLinkerJni()Lorg/chromium/base/library_loader/Linker$Natives;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p0, v1}, Lorg/chromium/base/library_loader/Linker$Natives;->loadLibrary(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;Z)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Linker"

    const-string v2, "Unable to load with Linker, using the system linker instead"

    invoke-static {p1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    :goto_0
    iget p0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string p0, "ChromiumAndroidLinker.RelroProvidedSuccessfully"

    invoke-static {p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    return-void
.end method

.method private loadLibraryImplLocked(Ljava/lang/String;I)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    const-string v0, "monochrome"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Linker"

    const-string v2, "loadLibraryImplLocked: %s, relroMode=%d"

    invoke-static {v1, v2, p1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez p2, :cond_1

    iput v1, p0, Lorg/chromium/base/library_loader/Linker;->mState:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/Linker;->loadAndProduceSharedRelro(Ljava/lang/String;)V

    const/4 p2, 0x2

    iput p2, p0, Lorg/chromium/base/library_loader/Linker;->mState:I

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/Linker;->loadWithoutProducingRelro(Ljava/lang/String;)V

    iput v1, p0, Lorg/chromium/base/library_loader/Linker;->mState:I

    :goto_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Failed at System.loadLibrary()"

    invoke-direct {p0, p2, p1}, Lorg/chromium/base/library_loader/Linker;->resetAndThrow(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;)V

    :goto_2
    return-void
.end method

.method private loadWithoutProducingRelro(Ljava/lang/String;)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getLinkerJni()Lorg/chromium/base/library_loader/Linker$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lorg/chromium/base/library_loader/Linker$Natives;->loadLibrary(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to load library: "

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/base/library_loader/Linker;->resetAndThrow(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;)V

    :cond_0
    return-void
.end method

.method private resetAndThrow(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/base/library_loader/Linker;->mState:I

    const-string p0, "Linker"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {p0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    throw p0
.end method

.method private shouldAtomicallyReplaceRelroAfterLoad()Z
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mRemoteLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/base/library_loader/Linker;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/library_loader/Linker$LibInfo;

    iget-wide v2, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public final ensureInitialized(ZIJ)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/chromium/base/library_loader/Linker;->mState:I

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/base/library_loader/Linker;->chooseAndReserveMemoryRange(ZIJ)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/chromium/base/library_loader/Linker;->mState:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isNonZeroLoadAddress(Lorg/chromium/base/library_loader/Linker$LibInfo;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    iget-wide p0, p1, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadLibrary(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/Linker;->ensureInitializedImplicitlyAsLastResort()V

    iget-boolean v1, p0, Lorg/chromium/base/library_loader/Linker;->mRelroProducer:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/chromium/base/library_loader/Linker;->attemptLoadLibraryLocked(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v1, "Linker"

    const-string v2, "Failed to load native library with shared RELRO, retrying without"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/library_loader/Linker$LibInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/chromium/base/library_loader/Linker;->attemptLoadLibraryLocked(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :catch_1
    move-exception p0

    const-string p1, "Linker"

    const-string v1, "Failed to load native library without RELRO sharing"

    invoke-static {p1, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public loadLinkerJniLibraryLocked()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->setEnvForNative()V

    const-string p0, "chromium_android_linker"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public putLoadAddressToBundle(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    if-eqz p0, :cond_0

    iget-wide v1, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    const-string p0, "org.chromium.base.android.linker.base_load_address"

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putSharedRelrosToBundle(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/chromium/base/library_loader/Linker;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lorg/chromium/base/library_loader/Linker;->mLocalLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/Linker$LibInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public takeSharedRelrosFromBundle(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/chromium/base/library_loader/Linker$LibInfo;->fromBundle(Landroid/os/Bundle;)Lorg/chromium/base/library_loader/Linker$LibInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/library_loader/Linker;->mRemoteLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    if-eqz v1, :cond_2

    iget v1, v1, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lorg/chromium/base/library_loader/Linker;->mRemoteLibInfo:Lorg/chromium/base/library_loader/Linker$LibInfo;

    iget p1, p0, Lorg/chromium/base/library_loader/Linker;->mState:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/Linker;->atomicReplaceRelroLocked(Z)V

    :cond_3
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
