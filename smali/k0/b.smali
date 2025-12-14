.class public final Lk0/b;
.super Lk0/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILk0/l;)V
    .locals 4

    sget-object v0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk0/n;->h:Ljava/lang/Object;

    invoke-static {v1}, Lfb/n;->W(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsb/k;

    if-nez v2, :cond_0

    new-instance v2, LB0/a;

    const/16 v3, 0x19

    invoke-direct {v2, v3, v1}, LB0/a;-><init>(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v2}, Lk0/c;-><init>(ILk0/l;Lsb/k;Lsb/k;)V

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final B(Lsb/k;Lsb/k;)Lk0/c;
    .locals 1

    new-instance p0, Lk0/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lk0/a;-><init>(Lsb/k;Lsb/k;I)V

    new-instance p1, LQ/E;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, LQ/E;-><init>(ILsb/k;)V

    invoke-static {p1}, Lk0/n;->f(Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/h;

    check-cast p0, Lk0/c;

    return-object p0
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lk0/h;->d:I

    if-ltz v1, :cond_0

    invoke-static {v1}, Lk0/n;->t(I)V

    const/4 v1, -0x1

    iput v1, p0, Lk0/h;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final k()V
    .locals 0

    invoke-static {}, Lk0/q;->e()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l()V
    .locals 0

    invoke-static {}, Lk0/q;->e()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m()V
    .locals 0

    invoke-static {}, Lk0/n;->a()V

    return-void
.end method

.method public final t(Lsb/k;)Lk0/h;
    .locals 1

    new-instance p0, LB0/a;

    const/16 v0, 0x1a

    invoke-direct {p0, v0, p1}, LB0/a;-><init>(ILjava/lang/Object;)V

    new-instance p1, LQ/E;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, LQ/E;-><init>(ILsb/k;)V

    invoke-static {p1}, Lk0/n;->f(Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/h;

    return-object p0
.end method

.method public final v()Lk0/q;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
