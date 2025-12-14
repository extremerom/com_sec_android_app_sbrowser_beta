.class public final LX4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lj2/b;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Ljava/util/concurrent/ThreadPoolExecutor;

.field public volatile g:Lk2/a;

.field public volatile h:Lk2/a;

.field public final i:Ljava/util/concurrent/Semaphore;

.field public final j:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;Ljava/util/Set;)V
    .locals 3

    sget-object v0, Lk2/a;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, LX4/c;->b:Z

    iput-boolean v1, p0, LX4/c;->c:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, LX4/c;->d:Z

    iput-boolean v1, p0, LX4/c;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iput-object v0, p0, LX4/c;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, LX4/c;->i:Ljava/util/concurrent/Semaphore;

    iput-object p2, p0, LX4/c;->j:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, LX4/c;->g:Lk2/a;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, LX4/c;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, LX4/c;->e:Z

    :cond_0
    iget-object v0, p0, LX4/c;->h:Lk2/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, LX4/c;->g:Lk2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, LX4/c;->g:Lk2/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LX4/c;->g:Lk2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LX4/c;->g:Lk2/a;

    iget-object v3, v0, Lk2/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lk2/a;->b:Lk2/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LX4/c;->g:Lk2/a;

    iput-object v0, p0, LX4/c;->h:Lk2/a;

    :cond_2
    iput-object v2, p0, LX4/c;->g:Lk2/a;

    :cond_3
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, LX4/c;->h:Lk2/a;

    if-nez v0, :cond_3

    iget-object v0, p0, LX4/c;->g:Lk2/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, LX4/c;->g:Lk2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LX4/c;->g:Lk2/a;

    iget-object p0, p0, LX4/c;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, v0, Lk2/a;->c:Lk2/e;

    sget-object v2, Lk2/e;->PENDING:Lk2/e;

    if-eq v1, v2, :cond_2

    sget-object p0, Lk2/c;->a:[I

    iget-object v0, v0, Lk2/a;->c:Lk2/e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We should never reach this state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute task: the task is already running."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v1, Lk2/e;->RUNNING:Lk2/e;

    iput-object v1, v0, Lk2/a;->c:Lk2/e;

    iget-object v1, v0, Lk2/a;->a:LE5/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lk2/a;->b:Lk2/b;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, LX4/c;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object p0, p0, LX4/c;->i:Ljava/util/concurrent/Semaphore;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "GACSignInLoader"

    const-string v1, "Unexpected InterruptedException"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb5/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, LG5/F2;->b(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p0, " id="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
