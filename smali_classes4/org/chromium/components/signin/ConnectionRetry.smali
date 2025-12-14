.class public Lorg/chromium/components/signin/ConnectionRetry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/ConnectionRetry$AuthTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAuthTask:Lorg/chromium/components/signin/ConnectionRetry$AuthTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/components/signin/ConnectionRetry$AuthTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Lorg/chromium/components/signin/ConnectionRetry$AuthTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/signin/ConnectionRetry$AuthTask<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/signin/ConnectionRetry;->mAuthTask:Lorg/chromium/components/signin/ConnectionRetry$AuthTask;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/chromium/components/signin/ConnectionRetry;->mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/chromium/components/signin/ConnectionRetry;->mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/signin/ConnectionRetry;)Lorg/chromium/components/signin/ConnectionRetry$AuthTask;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/ConnectionRetry;->mAuthTask:Lorg/chromium/components/signin/ConnectionRetry$AuthTask;

    return-object p0
.end method

.method private attempt()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/components/signin/ConnectionRetry;->mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lorg/chromium/components/signin/ConnectionRetry$1;

    invoke-direct {v0, p0}, Lorg/chromium/components/signin/ConnectionRetry$1;-><init>(Lorg/chromium/components/signin/ConnectionRetry;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/components/signin/ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/ConnectionRetry;->mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/signin/ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/ConnectionRetry;->mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static runAuthTask(Lorg/chromium/components/signin/ConnectionRetry$AuthTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/components/signin/ConnectionRetry$AuthTask<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/components/signin/ConnectionRetry;

    invoke-direct {v0, p0}, Lorg/chromium/components/signin/ConnectionRetry;-><init>(Lorg/chromium/components/signin/ConnectionRetry$AuthTask;)V

    invoke-direct {v0}, Lorg/chromium/components/signin/ConnectionRetry;->attempt()V

    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(I)V
    .locals 0

    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    invoke-direct {p0}, Lorg/chromium/components/signin/ConnectionRetry;->attempt()V

    :cond_0
    return-void
.end method
