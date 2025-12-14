.class public final Lnd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/x;


# instance fields
.field public final a:Lwd/m;

.field public b:Z

.field public final synthetic c:Lbc/c;


# direct methods
.method public constructor <init>(Lbc/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/b;->c:Lbc/c;

    new-instance v0, Lwd/m;

    iget-object p1, p1, Lbc/c;->f:Ljava/lang/Object;

    check-cast p1, Lwd/s;

    iget-object p1, p1, Lwd/s;->a:Lwd/x;

    invoke-interface {p1}, Lwd/x;->timeout()Lwd/B;

    move-result-object p1

    invoke-direct {v0, p1}, Lwd/m;-><init>(Lwd/B;)V

    iput-object v0, p0, Lnd/b;->a:Lwd/m;

    return-void
.end method


# virtual methods
.method public final R(Lwd/g;J)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lnd/b;->b:Z

    const-string v1, "closed"

    if-nez v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnd/b;->c:Lbc/c;

    iget-object v0, p0, Lbc/c;->f:Ljava/lang/Object;

    check-cast v0, Lwd/s;

    iget-boolean v2, v0, Lwd/s;->c:Z

    if-nez v2, :cond_1

    iget-object v1, v0, Lwd/s;->b:Lwd/g;

    invoke-virtual {v1, p2, p3}, Lwd/g;->k0(J)V

    invoke-virtual {v0}, Lwd/s;->a()Lwd/h;

    iget-object p0, p0, Lbc/c;->f:Ljava/lang/Object;

    check-cast p0, Lwd/s;

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p0, p1, p2, p3}, Lwd/s;->R(Lwd/g;J)V

    invoke-virtual {p0, v0}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnd/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lnd/b;->b:Z

    iget-object v0, p0, Lnd/b;->c:Lbc/c;

    iget-object v0, v0, Lbc/c;->f:Ljava/lang/Object;

    check-cast v0, Lwd/s;

    const-string v1, "0\r\n\r\n"

    invoke-virtual {v0, v1}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    iget-object v0, p0, Lnd/b;->c:Lbc/c;

    iget-object v1, p0, Lnd/b;->a:Lwd/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lwd/m;->e:Lwd/B;

    sget-object v2, Lwd/B;->d:Lwd/A;

    iput-object v2, v1, Lwd/m;->e:Lwd/B;

    invoke-virtual {v0}, Lwd/B;->a()Lwd/B;

    invoke-virtual {v0}, Lwd/B;->b()Lwd/B;

    iget-object v0, p0, Lnd/b;->c:Lbc/c;

    const/4 v1, 0x3

    iput v1, v0, Lbc/c;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnd/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnd/b;->c:Lbc/c;

    iget-object v0, v0, Lbc/c;->f:Ljava/lang/Object;

    check-cast v0, Lwd/s;

    invoke-virtual {v0}, Lwd/s;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lnd/b;->a:Lwd/m;

    return-object p0
.end method
