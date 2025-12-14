.class public abstract LG5/G;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(LR5/h;)Ljava/lang/Object;
    .locals 4

    const-string v0, "Must not be called on the main application thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LR5/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LG5/G;->h(LR5/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LP7/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LP7/c;-><init>(I)V

    sget-object v1, LR5/j;->b:LR5/n;

    invoke-virtual {p0, v1, v0}, LR5/h;->f(Ljava/util/concurrent/Executor;LR5/e;)LR5/p;

    invoke-virtual {p0, v1, v0}, LR5/h;->d(Ljava/util/concurrent/Executor;LR5/d;)LR5/p;

    move-object v2, p0

    check-cast v2, LR5/p;

    new-instance v3, LR5/l;

    invoke-direct {v3, v1, v0}, LR5/l;-><init>(LR5/n;LR5/b;)V

    iget-object v1, v2, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {v2}, LR5/p;->t()V

    iget-object v0, v0, LP7/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-static {p0}, LG5/G;->h(LR5/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(LR5/p;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3

    const-string v0, "Must not be called on the main application thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LR5/p;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LG5/G;->h(LR5/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LP7/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LP7/c;-><init>(I)V

    sget-object v1, LR5/j;->b:LR5/n;

    invoke-virtual {p0, v1, v0}, LR5/p;->f(Ljava/util/concurrent/Executor;LR5/e;)LR5/p;

    invoke-virtual {p0, v1, v0}, LR5/p;->d(Ljava/util/concurrent/Executor;LR5/d;)LR5/p;

    new-instance v2, LR5/l;

    invoke-direct {v2, v1, v0}, LR5/l;-><init>(LR5/n;LR5/b;)V

    iget-object v1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    iget-object v0, v0, LP7/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, LG5/G;->h(LR5/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)LR5/p;
    .locals 3

    const-string v0, "Executor must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LR5/p;

    invoke-direct {v0}, LR5/p;-><init>()V

    new-instance v1, Lcom/google/common/util/concurrent/v;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v0, p1}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static e(ILjava/lang/String;)V
    .locals 2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be negative but was: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f(Ljava/lang/Object;)LR5/p;
    .locals 1

    new-instance v0, LR5/p;

    invoke-direct {v0}, LR5/p;-><init>()V

    invoke-virtual {v0, p0}, LR5/p;->p(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic g(Lrc/q;Lrc/f;I)Ljava/util/Collection;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lrc/f;->m:Lrc/f;

    :cond_0
    sget-object p2, Lrc/o;->a:Lrc/m;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lrc/l;->b:Lrc/l;

    invoke-interface {p0, p1, p2}, Lrc/q;->a(Lrc/f;Lsb/k;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static h(LR5/h;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LR5/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LR5/h;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, LR5/p;

    iget-boolean v0, v0, LR5/p;->d:Z

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, LR5/h;->h()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
