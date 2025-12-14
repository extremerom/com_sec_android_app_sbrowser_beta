.class public Lorg/chromium/base/library_loader/LibraryPrefetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/library_loader/LibraryPrefetcher$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static final sPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryPrefetcher;->sPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Z)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/library_loader/LibraryPrefetcher;->lambda$asyncPrefetchLibrariesToMemory$1(Z)V

    return-void
.end method

.method public static asyncPrefetchLibrariesToMemory()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/SysUtils;->logPageFaultCountToTracing()V

    sget-object v0, Lorg/chromium/base/library_loader/LibraryPrefetcher;->sPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "log-native-library-residency"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LN4/a;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LN4/a;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance v1, Lorg/chromium/base/library_loader/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/chromium/base/library_loader/a;-><init>(ZI)V

    const/4 v0, 0x4

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryPrefetcher;->lambda$asyncPrefetchLibrariesToMemory$0()V

    return-void
.end method

.method private static synthetic lambda$asyncPrefetchLibrariesToMemory$0()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryPrefetcherJni;->get()Lorg/chromium/base/library_loader/LibraryPrefetcher$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/base/library_loader/LibraryPrefetcher$Natives;->periodicallyCollectResidency()V

    return-void
.end method

.method private static synthetic lambda$asyncPrefetchLibrariesToMemory$1(Z)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryPrefetcherJni;->get()Lorg/chromium/base/library_loader/LibraryPrefetcher$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/base/library_loader/LibraryPrefetcher$Natives;->percentageOfResidentNativeLibraryCode()I

    move-result v0

    const-string v1, "LibraryPrefetcher.asyncPrefetchLibrariesToMemory"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    if-eqz p0, :cond_1

    const/16 p0, 0x5a

    if-ge v0, p0, :cond_1

    :try_start_0
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryPrefetcherJni;->get()Lorg/chromium/base/library_loader/LibraryPrefetcher$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/base/library_loader/LibraryPrefetcher$Natives;->forkAndPrefetchNativeLibrary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_2
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "dont_prefetch_libraries"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
