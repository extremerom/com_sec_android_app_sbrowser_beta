.class public final LR5/p;
.super LR5/h;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/bumptech/glide/manager/o;

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    new-instance v0, Lcom/bumptech/glide/manager/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/bumptech/glide/manager/o;-><init>(I)V

    iput-object v0, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    return-void
.end method


# virtual methods
.method public final a(LR5/c;)LR5/p;
    .locals 2

    sget-object v0, LR5/j;->a:LH4/s;

    new-instance v1, LR5/l;

    invoke-direct {v1, v0, p1}, LR5/l;-><init>(Ljava/util/concurrent/Executor;LR5/c;)V

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;LR5/c;)LR5/p;
    .locals 1

    new-instance v0, LR5/l;

    invoke-direct {v0, p1, p2}, LR5/l;-><init>(Ljava/util/concurrent/Executor;LR5/c;)V

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    return-object p0
.end method

.method public final c(LR5/d;)LR5/p;
    .locals 1

    sget-object v0, LR5/j;->a:LH4/s;

    invoke-virtual {p0, v0, p1}, LR5/p;->d(Ljava/util/concurrent/Executor;LR5/d;)LR5/p;

    return-object p0
.end method

.method public final d(Ljava/util/concurrent/Executor;LR5/d;)LR5/p;
    .locals 1

    new-instance v0, LR5/l;

    invoke-direct {v0, p1, p2}, LR5/l;-><init>(Ljava/util/concurrent/Executor;LR5/d;)V

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    return-object p0
.end method

.method public final e(LR5/e;)LR5/p;
    .locals 1

    sget-object v0, LR5/j;->a:LH4/s;

    invoke-virtual {p0, v0, p1}, LR5/p;->f(Ljava/util/concurrent/Executor;LR5/e;)LR5/p;

    return-object p0
.end method

.method public final f(Ljava/util/concurrent/Executor;LR5/e;)LR5/p;
    .locals 1

    new-instance v0, LR5/l;

    invoke-direct {v0, p1, p2}, LR5/l;-><init>(Ljava/util/concurrent/Executor;LR5/e;)V

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    return-object p0
.end method

.method public final g(Ljava/util/concurrent/Executor;LR5/a;)LR5/p;
    .locals 3

    new-instance v0, LR5/p;

    invoke-direct {v0}, LR5/p;-><init>()V

    new-instance v1, LR5/k;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v0, v2}, LR5/k;-><init>(Ljava/util/concurrent/Executor;LR5/a;LR5/p;I)V

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    return-object v0
.end method

.method public final h()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, LR5/p;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR5/p;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/o;->h(Ljava/lang/String;Z)V

    iget-boolean v1, p0, LR5/p;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, LR5/p;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object p0, p0, LR5/p;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, LR5/f;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {p0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j()Ljava/lang/Object;
    .locals 4

    const-class v0, Ljava/io/IOException;

    iget-object v1, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, LR5/p;->c:Z

    const-string v3, "Task is not yet complete"

    invoke-static {v3, v2}, Lcom/google/android/gms/common/internal/o;->h(Ljava/lang/String;Z)V

    iget-boolean v2, p0, LR5/p;->d:Z

    if-nez v2, :cond_2

    iget-object v2, p0, LR5/p;->f:Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, LR5/p;->f:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object p0, p0, LR5/p;->e:Ljava/lang/Object;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, LR5/f;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    iget-object p0, p0, LR5/p;->f:Ljava/lang/Exception;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled."

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, LR5/p;->c:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final l()Z
    .locals 3

    iget-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR5/p;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LR5/p;->d:Z

    if-nez v1, :cond_0

    iget-object p0, p0, LR5/p;->f:Ljava/lang/Exception;

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m(Ljava/util/concurrent/Executor;LR5/a;)LR5/p;
    .locals 3

    new-instance v0, LR5/p;

    invoke-direct {v0}, LR5/p;-><init>()V

    new-instance v1, LR5/k;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v0, v2}, LR5/k;-><init>(Ljava/util/concurrent/Executor;LR5/a;LR5/p;I)V

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    return-object v0
.end method

.method public final n(Ljava/util/concurrent/Executor;LR5/g;)LR5/p;
    .locals 2

    new-instance v0, LR5/p;

    invoke-direct {v0}, LR5/p;-><init>()V

    new-instance v1, LR5/l;

    invoke-direct {v1, p1, p2, v0}, LR5/l;-><init>(Ljava/util/concurrent/Executor;LR5/g;LR5/p;)V

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    return-object v0
.end method

.method public final o(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LR5/p;->s()V

    const/4 v1, 0x1

    iput-boolean v1, p0, LR5/p;->c:Z

    iput-object p1, p0, LR5/p;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/manager/o;->i(LR5/h;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LR5/p;->s()V

    const/4 v1, 0x1

    iput-boolean v1, p0, LR5/p;->c:Z

    iput-object p1, p0, LR5/p;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/manager/o;->i(LR5/h;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR5/p;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LR5/p;->c:Z

    iput-boolean v1, p0, LR5/p;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/o;->i(LR5/h;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final r(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR5/p;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LR5/p;->c:Z

    iput-object p1, p0, LR5/p;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/manager/o;->i(LR5/h;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final s()V
    .locals 3

    iget-boolean v0, p0, LR5/p;->c:Z

    if-eqz v0, :cond_4

    sget v0, LJb/x;->a:I

    invoke-virtual {p0}, LR5/p;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LR5/p;->h()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, LR5/p;->l()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean p0, p0, LR5/p;->d:Z

    if-eqz p0, :cond_0

    const-string p0, "cancellation"

    goto :goto_0

    :cond_0
    const-string p0, "unknown issue"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LR5/p;->i()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "result "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "failure"

    :goto_0
    new-instance v1, LJb/x;

    const-string v2, "Complete with: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string p0, "DuplicateTaskCompletionException can only be created from completed Task."

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v1

    :cond_4
    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR5/p;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/o;->i(LR5/h;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
