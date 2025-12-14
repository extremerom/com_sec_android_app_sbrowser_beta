.class public final Lk0/w;
.super Lk0/h;
.source "SourceFile"


# instance fields
.field public final e:Lk0/h;

.field public final f:Z

.field public final g:Lsb/k;


# direct methods
.method public constructor <init>(Lk0/h;Lsb/k;Z)V
    .locals 2

    sget-object v0, Lk0/l;->e:Lk0/l;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lk0/h;-><init>(ILk0/l;)V

    iput-object p1, p0, Lk0/w;->e:Lk0/h;

    iput-boolean p3, p0, Lk0/w;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk0/h;->f()Lsb/k;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lk0/n;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk0/b;

    iget-object p1, p1, Lk0/c;->e:Lsb/k;

    :cond_1
    invoke-static {p2, p1, v1}, Lk0/n;->l(Lsb/k;Lsb/k;Z)Lsb/k;

    move-result-object p1

    iput-object p1, p0, Lk0/w;->g:Lsb/k;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk0/h;->c:Z

    iget-boolean v0, p0, Lk0/w;->f:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk0/w;->e:Lk0/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk0/h;->c()V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 0

    invoke-virtual {p0}, Lk0/w;->u()Lk0/h;

    move-result-object p0

    invoke-virtual {p0}, Lk0/h;->d()I

    move-result p0

    return p0
.end method

.method public final e()Lk0/l;
    .locals 0

    invoke-virtual {p0}, Lk0/w;->u()Lk0/h;

    move-result-object p0

    invoke-virtual {p0}, Lk0/h;->e()Lk0/l;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lsb/k;
    .locals 0

    iget-object p0, p0, Lk0/w;->g:Lsb/k;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    invoke-virtual {p0}, Lk0/w;->u()Lk0/h;

    move-result-object p0

    invoke-virtual {p0}, Lk0/h;->g()Z

    move-result p0

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

    invoke-virtual {p0}, Lk0/w;->u()Lk0/h;

    move-result-object p0

    invoke-virtual {p0}, Lk0/h;->m()V

    return-void
.end method

.method public final n(Lk0/r;)V
    .locals 0

    invoke-virtual {p0}, Lk0/w;->u()Lk0/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk0/h;->n(Lk0/r;)V

    return-void
.end method

.method public final t(Lsb/k;)Lk0/h;
    .locals 2

    iget-object v0, p0, Lk0/w;->g:Lsb/k;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lk0/n;->l(Lsb/k;Lsb/k;Z)Lsb/k;

    move-result-object p1

    invoke-virtual {p0}, Lk0/w;->u()Lk0/h;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk0/h;->t(Lsb/k;)Lk0/h;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object p0

    return-object p0
.end method

.method public final u()Lk0/h;
    .locals 0

    iget-object p0, p0, Lk0/w;->e:Lk0/h;

    if-nez p0, :cond_0

    sget-object p0, Lk0/n;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/h;

    :cond_0
    return-object p0
.end method
