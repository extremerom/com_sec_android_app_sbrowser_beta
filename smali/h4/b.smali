.class public final Lh4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/e;
.implements Lh4/c;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public volatile c:Lh4/c;

.field public volatile d:Lh4/c;

.field public e:Lh4/d;

.field public f:Lh4/d;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lh4/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh4/d;->CLEARED:Lh4/d;

    iput-object v0, p0, Lh4/b;->e:Lh4/d;

    iput-object v0, p0, Lh4/b;->f:Lh4/d;

    iput-object p1, p0, Lh4/b;->a:Ljava/lang/Object;

    iput-object p2, p0, Lh4/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->c:Lh4/c;

    invoke-interface {v1}, Lh4/c;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lh4/b;->d:Lh4/c;

    invoke-interface {p0}, Lh4/c;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lh4/c;)V
    .locals 2

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->d:Lh4/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lh4/d;->FAILED:Lh4/d;

    iput-object p1, p0, Lh4/b;->e:Lh4/d;

    iget-object p1, p0, Lh4/b;->f:Lh4/d;

    sget-object v1, Lh4/d;->RUNNING:Lh4/d;

    if-eq p1, v1, :cond_0

    iput-object v1, p0, Lh4/b;->f:Lh4/d;

    iget-object p0, p0, Lh4/b;->d:Lh4/c;

    invoke-interface {p0}, Lh4/c;->i()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    sget-object p1, Lh4/d;->FAILED:Lh4/d;

    iput-object p1, p0, Lh4/b;->f:Lh4/d;

    iget-object p1, p0, Lh4/b;->b:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lh4/e;->b(Lh4/c;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Lh4/c;)V
    .locals 2

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->c:Lh4/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lh4/d;->SUCCESS:Lh4/d;

    iput-object p1, p0, Lh4/b;->e:Lh4/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lh4/b;->d:Lh4/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lh4/d;->SUCCESS:Lh4/d;

    iput-object p1, p0, Lh4/b;->f:Lh4/d;

    :cond_1
    :goto_0
    iget-object p1, p0, Lh4/b;->b:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lh4/e;->c(Lh4/c;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh4/d;->CLEARED:Lh4/d;

    iput-object v1, p0, Lh4/b;->e:Lh4/d;

    iget-object v2, p0, Lh4/b;->c:Lh4/c;

    invoke-interface {v2}, Lh4/c;->clear()V

    iget-object v2, p0, Lh4/b;->f:Lh4/d;

    if-eq v2, v1, :cond_0

    iput-object v1, p0, Lh4/b;->f:Lh4/d;

    iget-object p0, p0, Lh4/b;->d:Lh4/c;

    invoke-interface {p0}, Lh4/c;->clear()V

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

.method public final d(Lh4/c;)Z
    .locals 3

    instance-of v0, p1, Lh4/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lh4/b;

    iget-object v0, p0, Lh4/b;->c:Lh4/c;

    iget-object v2, p1, Lh4/b;->c:Lh4/c;

    invoke-interface {v0, v2}, Lh4/c;->d(Lh4/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lh4/b;->d:Lh4/c;

    iget-object p1, p1, Lh4/b;->d:Lh4/c;

    invoke-interface {p0, p1}, Lh4/c;->d(Lh4/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final e(Lh4/c;)Z
    .locals 2

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lh4/e;->e(Lh4/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lh4/b;->c:Lh4/c;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f()Z
    .locals 3

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->e:Lh4/d;

    sget-object v2, Lh4/d;->CLEARED:Lh4/d;

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lh4/b;->f:Lh4/d;

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->e:Lh4/d;

    sget-object v2, Lh4/d;->SUCCESS:Lh4/d;

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lh4/b;->f:Lh4/d;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRoot()Lh4/e;
    .locals 2

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lh4/e;->getRoot()Lh4/e;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final h(Lh4/c;)Z
    .locals 1

    iget-object p1, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lh4/b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lh4/e;->h(Lh4/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->e:Lh4/d;

    sget-object v2, Lh4/d;->RUNNING:Lh4/d;

    if-eq v1, v2, :cond_0

    iput-object v2, p0, Lh4/b;->e:Lh4/d;

    iget-object p0, p0, Lh4/b;->c:Lh4/c;

    invoke-interface {p0}, Lh4/c;->i()V

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

.method public final isRunning()Z
    .locals 3

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->e:Lh4/d;

    sget-object v2, Lh4/d;->RUNNING:Lh4/d;

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lh4/b;->f:Lh4/d;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j(Lh4/c;)Z
    .locals 5

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lh4/e;->j(Lh4/c;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lh4/b;->e:Lh4/d;

    sget-object v3, Lh4/d;->FAILED:Lh4/d;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    iget-object p0, p0, Lh4/b;->c:Lh4/c;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lh4/b;->d:Lh4/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lh4/b;->f:Lh4/d;

    sget-object p1, Lh4/d;->SUCCESS:Lh4/d;

    if-eq p0, p1, :cond_2

    if-ne p0, v3, :cond_3

    :cond_2
    move p0, v4

    goto :goto_0

    :cond_3
    move p0, v2

    :goto_0
    if-eqz p0, :cond_4

    move v2, v4

    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pause()V
    .locals 3

    iget-object v0, p0, Lh4/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/b;->e:Lh4/d;

    sget-object v2, Lh4/d;->RUNNING:Lh4/d;

    if-ne v1, v2, :cond_0

    sget-object v1, Lh4/d;->PAUSED:Lh4/d;

    iput-object v1, p0, Lh4/b;->e:Lh4/d;

    iget-object v1, p0, Lh4/b;->c:Lh4/c;

    invoke-interface {v1}, Lh4/c;->pause()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lh4/b;->f:Lh4/d;

    if-ne v1, v2, :cond_1

    sget-object v1, Lh4/d;->PAUSED:Lh4/d;

    iput-object v1, p0, Lh4/b;->f:Lh4/d;

    iget-object p0, p0, Lh4/b;->d:Lh4/c;

    invoke-interface {p0}, Lh4/c;->pause()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
