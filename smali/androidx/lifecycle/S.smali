.class public abstract Landroidx/lifecycle/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final NOT_SET:Ljava/lang/Object;


# instance fields
.field mActiveCount:I

.field private mChangingActiveState:Z

.field private volatile mData:Ljava/lang/Object;

.field final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:LG/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LG/f;"
        }
    .end annotation
.end field

.field volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/S;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/S;->mDataLock:Ljava/lang/Object;

    new-instance v0, LG/f;

    invoke-direct {v0}, LG/f;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/S;->mObservers:LG/f;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/S;->mActiveCount:I

    sget-object v0, Landroidx/lifecycle/S;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/S;->mPendingData:Ljava/lang/Object;

    new-instance v1, Landroidx/lifecycle/O;

    invoke-direct {v1, p0}, Landroidx/lifecycle/O;-><init>(Landroidx/lifecycle/S;)V

    iput-object v1, p0, Landroidx/lifecycle/S;->mPostValueRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/lifecycle/S;->mData:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/S;->mVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/S;->mDataLock:Ljava/lang/Object;

    new-instance v0, LG/f;

    invoke-direct {v0}, LG/f;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/S;->mObservers:LG/f;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/S;->mActiveCount:I

    sget-object v1, Landroidx/lifecycle/S;->NOT_SET:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/S;->mPendingData:Ljava/lang/Object;

    new-instance v1, Landroidx/lifecycle/O;

    invoke-direct {v1, p0}, Landroidx/lifecycle/O;-><init>(Landroidx/lifecycle/S;)V

    iput-object v1, p0, Landroidx/lifecycle/S;->mPostValueRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/lifecycle/S;->mData:Ljava/lang/Object;

    iput v0, p0, Landroidx/lifecycle/S;->mVersion:I

    return-void
.end method

.method public static assertMainThread(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, LF/a;->m()LF/a;

    move-result-object v0

    iget-object v0, v0, LF/a;->a:LF/c;

    invoke-virtual {v0}, LF/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke "

    const-string v2, " on a background thread"

    invoke-static {v1, p0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/Q;)V
    .locals 2

    iget-boolean v0, p1, Landroidx/lifecycle/Q;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/Q;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Q;->a(Z)V

    return-void

    :cond_1
    iget v0, p1, Landroidx/lifecycle/Q;->c:I

    iget v1, p0, Landroidx/lifecycle/S;->mVersion:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iput v1, p1, Landroidx/lifecycle/Q;->c:I

    iget-object p1, p1, Landroidx/lifecycle/Q;->a:Landroidx/lifecycle/Y;

    iget-object p0, p0, Landroidx/lifecycle/S;->mData:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroidx/lifecycle/Y;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public changeActiveCounter(I)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget v0, p0, Landroidx/lifecycle/S;->mActiveCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/S;->mActiveCount:I

    iget-boolean p1, p0, Landroidx/lifecycle/S;->mChangingActiveState:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/S;->mChangingActiveState:Z

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Landroidx/lifecycle/S;->mActiveCount:I

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_1

    if-lez v2, :cond_1

    move v3, p1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-lez v0, :cond_2

    if-nez v2, :cond_2

    move v0, p1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/lifecycle/S;->onActive()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/lifecycle/S;->onInactive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    move v0, v2

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Landroidx/lifecycle/S;->mChangingActiveState:Z

    return-void

    :goto_4
    iput-boolean v1, p0, Landroidx/lifecycle/S;->mChangingActiveState:Z

    throw p1
.end method

.method public dispatchingValue(Landroidx/lifecycle/Q;)V
    .locals 4
    .param p1    # Landroidx/lifecycle/Q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Q;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/lifecycle/S;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/S;->mDispatchInvalidated:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/S;->mDispatchingValue:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/S;->mDispatchInvalidated:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/S;->a(Landroidx/lifecycle/Q;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/S;->mObservers:LG/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LG/d;

    invoke-direct {v2, v1}, LG/d;-><init>(LG/f;)V

    iget-object v1, v1, LG/f;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, LG/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, LG/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Q;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/S;->a(Landroidx/lifecycle/Q;)V

    iget-boolean v1, p0, Landroidx/lifecycle/S;->mDispatchInvalidated:Z

    if-eqz v1, :cond_3

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/S;->mDispatchInvalidated:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroidx/lifecycle/S;->mDispatchingValue:Z

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/lifecycle/S;->mData:Ljava/lang/Object;

    sget-object v0, Landroidx/lifecycle/S;->NOT_SET:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Landroidx/lifecycle/S;->mVersion:I

    return p0
.end method

.method public hasActiveObservers()Z
    .locals 0

    iget p0, p0, Landroidx/lifecycle/S;->mActiveCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/S;->mData:Ljava/lang/Object;

    sget-object v0, Landroidx/lifecycle/S;->NOT_SET:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/J;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/J;",
            "Landroidx/lifecycle/Y;",
            ")V"
        }
    .end annotation

    const-string v0, "observe"

    invoke-static {v0}, Landroidx/lifecycle/S;->assertMainThread(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/L;

    iget-object v0, v0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v1, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/S;Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object p0, p0, Landroidx/lifecycle/S;->mObservers:LG/f;

    invoke-virtual {p0, p2, v0}, LG/f;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/Q;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Q;->e(Landroidx/lifecycle/J;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/D;->a(Landroidx/lifecycle/I;)V

    return-void
.end method

.method public observeForever(Landroidx/lifecycle/Y;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Y;",
            ")V"
        }
    .end annotation

    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/S;->assertMainThread(Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/P;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/Q;-><init>(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    iget-object p0, p0, Landroidx/lifecycle/S;->mObservers:LG/f;

    invoke-virtual {p0, p1, v0}, LG/f;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/Q;

    instance-of p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Q;->a(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onActive()V
    .locals 0

    return-void
.end method

.method public onInactive()V
    .locals 0

    return-void
.end method

.method public postValue(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/S;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/S;->mPendingData:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/S;->NOT_SET:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/S;->mPendingData:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, LF/a;->m()LF/a;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/S;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, LF/a;->n(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeObserver(Landroidx/lifecycle/Y;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Y;",
            ")V"
        }
    .end annotation

    const-string v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/S;->assertMainThread(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/S;->mObservers:LG/f;

    invoke-virtual {p0, p1}, LG/f;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/Q;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/Q;->d()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Q;->a(Z)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/S;->assertMainThread(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/S;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/S;->mVersion:I

    iput-object p1, p0, Landroidx/lifecycle/S;->mData:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/S;->dispatchingValue(Landroidx/lifecycle/Q;)V

    return-void
.end method
