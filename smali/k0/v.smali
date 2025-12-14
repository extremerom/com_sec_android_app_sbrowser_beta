.class public final Lk0/v;
.super Lk0/c;
.source "SourceFile"


# instance fields
.field public final o:Lk0/c;

.field public final p:Z

.field public final q:Z

.field public r:Lsb/k;

.field public s:Lsb/k;

.field public final t:J


# direct methods
.method public constructor <init>(Lk0/c;Lsb/k;Lsb/k;ZZ)V
    .locals 2

    sget-object v0, Lk0/l;->e:Lk0/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk0/c;->x()Lsb/k;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lk0/n;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/b;

    iget-object v1, v1, Lk0/c;->e:Lsb/k;

    :cond_1
    invoke-static {p2, v1, p4}, Lk0/n;->l(Lsb/k;Lsb/k;Z)Lsb/k;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lk0/c;->i()Lsb/k;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lk0/n;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/b;

    iget-object v1, v1, Lk0/c;->f:Lsb/k;

    :cond_3
    invoke-static {p3, v1}, Lk0/n;->b(Lsb/k;Lsb/k;)Lsb/k;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2, p3}, Lk0/c;-><init>(ILk0/l;Lsb/k;Lsb/k;)V

    iput-object p1, p0, Lk0/v;->o:Lk0/c;

    iput-boolean p4, p0, Lk0/v;->p:Z

    iput-boolean p5, p0, Lk0/v;->q:Z

    iget-object p1, p0, Lk0/c;->e:Lsb/k;

    iput-object p1, p0, Lk0/v;->r:Lsb/k;

    iget-object p1, p0, Lk0/c;->f:Lsb/k;

    iput-object p1, p0, Lk0/v;->s:Lsb/k;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lk0/v;->t:J

    return-void
.end method


# virtual methods
.method public final A(LN/v;)V
    .locals 0

    invoke-static {}, Lk0/q;->e()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final B(Lsb/k;Lsb/k;)Lk0/c;
    .locals 8

    iget-object v0, p0, Lk0/v;->r:Lsb/k;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lk0/n;->l(Lsb/k;Lsb/k;Z)Lsb/k;

    move-result-object v4

    iget-object p1, p0, Lk0/v;->s:Lsb/k;

    invoke-static {p2, p1}, Lk0/n;->b(Lsb/k;Lsb/k;)Lsb/k;

    move-result-object v5

    iget-boolean p1, p0, Lk0/v;->p:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v5}, Lk0/c;->B(Lsb/k;Lsb/k;)Lk0/c;

    move-result-object v3

    new-instance p0, Lk0/v;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lk0/v;-><init>(Lk0/c;Lsb/k;Lsb/k;ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Lk0/c;->B(Lsb/k;Lsb/k;)Lk0/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final C()Lk0/c;
    .locals 0

    iget-object p0, p0, Lk0/v;->o:Lk0/c;

    if-nez p0, :cond_0

    sget-object p0, Lk0/n;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/c;

    :cond_0
    return-object p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk0/h;->c:Z

    iget-boolean v0, p0, Lk0/v;->q:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk0/v;->o:Lk0/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk0/c;->c()V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 0

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0}, Lk0/h;->d()I

    move-result p0

    return p0
.end method

.method public final e()Lk0/l;
    .locals 0

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0}, Lk0/h;->e()Lk0/l;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lsb/k;
    .locals 0

    iget-object p0, p0, Lk0/v;->r:Lsb/k;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0}, Lk0/c;->g()Z

    move-result p0

    return p0
.end method

.method public final h()I
    .locals 0

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0}, Lk0/c;->h()I

    move-result p0

    return p0
.end method

.method public final i()Lsb/k;
    .locals 0

    iget-object p0, p0, Lk0/v;->s:Lsb/k;

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

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0}, Lk0/c;->m()V

    return-void
.end method

.method public final n(Lk0/r;)V
    .locals 0

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk0/c;->n(Lk0/r;)V

    return-void
.end method

.method public final q(I)V
    .locals 0

    invoke-static {}, Lk0/q;->e()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final r(Lk0/l;)V
    .locals 0

    invoke-static {}, Lk0/q;->e()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s(I)V
    .locals 0

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk0/c;->s(I)V

    return-void
.end method

.method public final t(Lsb/k;)Lk0/h;
    .locals 2

    iget-object v0, p0, Lk0/v;->r:Lsb/k;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lk0/n;->l(Lsb/k;Lsb/k;Z)Lsb/k;

    move-result-object p1

    iget-boolean v0, p0, Lk0/v;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk0/c;->t(Lsb/k;)Lk0/h;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk0/c;->t(Lsb/k;)Lk0/h;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final v()Lk0/q;
    .locals 0

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0}, Lk0/c;->v()Lk0/q;

    move-result-object p0

    return-object p0
.end method

.method public final w()LN/v;
    .locals 0

    invoke-virtual {p0}, Lk0/v;->C()Lk0/c;

    move-result-object p0

    invoke-virtual {p0}, Lk0/c;->w()LN/v;

    move-result-object p0

    return-object p0
.end method

.method public final x()Lsb/k;
    .locals 0

    iget-object p0, p0, Lk0/v;->r:Lsb/k;

    return-object p0
.end method
