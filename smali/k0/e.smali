.class public final Lk0/e;
.super Lk0/h;
.source "SourceFile"


# instance fields
.field public final e:Lsb/k;

.field public final f:Lk0/h;


# direct methods
.method public constructor <init>(ILk0/l;Lsb/k;Lk0/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk0/h;-><init>(ILk0/l;)V

    iput-object p3, p0, Lk0/e;->e:Lsb/k;

    iput-object p4, p0, Lk0/e;->f:Lk0/h;

    invoke-virtual {p4}, Lk0/h;->k()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-boolean v0, p0, Lk0/h;->c:Z

    if-nez v0, :cond_2

    iget v0, p0, Lk0/h;->b:I

    iget-object v1, p0, Lk0/e;->f:Lk0/h;

    invoke-virtual {v1}, Lk0/h;->d()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lk0/h;->a()V

    :cond_0
    invoke-virtual {v1}, Lk0/h;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk0/h;->c:Z

    sget-object v0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lk0/h;->d:I

    if-ltz v1, :cond_1

    invoke-static {v1}, Lk0/n;->t(I)V

    const/4 v1, -0x1

    iput v1, p0, Lk0/h;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final f()Lsb/k;
    .locals 0

    iget-object p0, p0, Lk0/e;->e:Lsb/k;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final i()Lsb/k;
    .locals 0

    const/4 p0, 0x0

    return-object p0
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

    return-void
.end method

.method public final n(Lk0/r;)V
    .locals 0

    sget-object p0, Lk0/n;->a:LZ3/x;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot modify a state object in a read-only snapshot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t(Lsb/k;)Lk0/h;
    .locals 5

    new-instance v0, Lk0/e;

    iget v1, p0, Lk0/h;->b:I

    iget-object v2, p0, Lk0/h;->a:Lk0/l;

    const/4 v3, 0x1

    iget-object v4, p0, Lk0/e;->e:Lsb/k;

    invoke-static {p1, v4, v3}, Lk0/n;->l(Lsb/k;Lsb/k;Z)Lsb/k;

    move-result-object p1

    iget-object p0, p0, Lk0/e;->f:Lk0/h;

    invoke-direct {v0, v1, v2, p1, p0}, Lk0/e;-><init>(ILk0/l;Lsb/k;Lk0/h;)V

    return-object v0
.end method
