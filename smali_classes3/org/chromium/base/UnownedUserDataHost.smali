.class public final Lorg/chromium/base/UnownedUserDataHost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mDestroyChecker:Lorg/chromium/base/lifetime/DestroyChecker;

.field private mHandler:Landroid/os/Handler;

.field private final mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

.field private mUnownedUserDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/chromium/base/UnownedUserDataKey<",
            "*>;",
            "Ljava/lang/ref/WeakReference<",
            "+",
            "Lorg/chromium/base/UnownedUserData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/UnownedUserDataHost;->retrieveNonNullLooperOrThrow()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lorg/chromium/base/UnownedUserDataHost;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    new-instance v0, Lorg/chromium/base/lifetime/DestroyChecker;

    invoke-direct {v0}, Lorg/chromium/base/lifetime/DestroyChecker;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mDestroyChecker:Lorg/chromium/base/lifetime/DestroyChecker;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/chromium/base/UnownedUserDataHost;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/UnownedUserDataHost;Lorg/chromium/base/UnownedUserData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/UnownedUserDataHost;->lambda$remove$0(Lorg/chromium/base/UnownedUserData;)V

    return-void
.end method

.method private checkState()V
    .locals 1
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNull;
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mDestroyChecker:Lorg/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {v0}, Lorg/chromium/base/lifetime/DestroyChecker;->checkNotDestroyed()V

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/base/UnownedUserDataHost;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$remove$0(Lorg/chromium/base/UnownedUserData;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/chromium/base/UnownedUserData;->onDetachedFromHost(Lorg/chromium/base/UnownedUserDataHost;)V

    return-void
.end method

.method private static retrieveNonNullLooperOrThrow()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    invoke-virtual {p0}, Lorg/chromium/base/UnownedUserDataHost;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/UnownedUserDataKey;

    invoke-virtual {v1, p0}, Lorg/chromium/base/UnownedUserDataKey;->detachFromHost(Lorg/chromium/base/UnownedUserDataHost;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lorg/chromium/base/UnownedUserDataHost;->mDestroyChecker:Lorg/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {p0}, Lorg/chromium/base/lifetime/DestroyChecker;->destroy()V

    return-void
.end method

.method public get(Lorg/chromium/base/UnownedUserDataKey;)Lorg/chromium/base/UnownedUserData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UnownedUserData;",
            ">(",
            "Lorg/chromium/base/UnownedUserDataKey<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/base/UnownedUserDataHost;->checkState()V

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/UnownedUserData;

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Lorg/chromium/base/UnownedUserDataKey;->detachFromHost(Lorg/chromium/base/UnownedUserDataHost;)V

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lorg/chromium/base/UnownedUserDataKey;->getValueClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/UnownedUserData;

    return-object p0
.end method

.method public getMapSize()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/base/UnownedUserDataHost;->checkState()V

    iget-object p0, p0, Lorg/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public isDestroyed()Z
    .locals 1
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNullIf;
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mDestroyChecker:Lorg/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {v0}, Lorg/chromium/base/lifetime/DestroyChecker;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/base/UnownedUserDataHost;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public remove(Lorg/chromium/base/UnownedUserDataKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UnownedUserData;",
            ">(",
            "Lorg/chromium/base/UnownedUserDataKey<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/base/UnownedUserDataHost;->checkState()V

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/UnownedUserData;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/chromium/base/UnownedUserData;->informOnDetachmentFromHost()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public set(Lorg/chromium/base/UnownedUserDataKey;Lorg/chromium/base/UnownedUserData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UnownedUserData;",
            ">(",
            "Lorg/chromium/base/UnownedUserDataKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/base/UnownedUserDataHost;->checkState()V

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/base/UnownedUserDataHost;->get(Lorg/chromium/base/UnownedUserDataKey;)Lorg/chromium/base/UnownedUserData;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/chromium/base/UnownedUserDataKey;->detachFromHost(Lorg/chromium/base/UnownedUserDataHost;)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
