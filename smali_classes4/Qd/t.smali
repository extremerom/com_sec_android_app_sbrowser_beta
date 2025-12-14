.class public abstract LQd/t;
.super LQd/u;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/Object;


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, LQd/t;->d:Ljava/lang/Object;

    instance-of v1, v0, LQd/c;

    if-nez v1, :cond_0

    new-instance v1, LQd/c;

    invoke-direct {v1}, LQd/c;-><init>()V

    iput-object v1, p0, LQd/t;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LQd/u;->p()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, LQd/c;->y(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LQd/t;->A()V

    invoke-super {p0, p1}, LQd/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQd/t;->d:Ljava/lang/Object;

    instance-of v0, v0, LQd/c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LQd/u;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LQd/t;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    :cond_1
    invoke-super {p0, p1}, LQd/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LQd/t;->d:Ljava/lang/Object;

    instance-of v0, v0, LQd/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LQd/u;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, LQd/t;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LQd/t;->A()V

    invoke-super {p0, p1, p2}, LQd/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final e()LQd/c;
    .locals 0

    invoke-virtual {p0}, LQd/t;->A()V

    iget-object p0, p0, LQd/t;->d:Ljava/lang/Object;

    check-cast p0, LQd/c;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LQd/u;->a:LQd/u;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LQd/u;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final g()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i(LQd/u;)LQd/u;
    .locals 1

    invoke-super {p0, p1}, LQd/u;->i(LQd/u;)LQd/u;

    move-result-object p1

    check-cast p1, LQd/t;

    iget-object p0, p0, LQd/t;->d:Ljava/lang/Object;

    instance-of v0, p0, LQd/c;

    if-eqz v0, :cond_0

    check-cast p0, LQd/c;

    invoke-virtual {p0}, LQd/c;->m()LQd/c;

    move-result-object p0

    iput-object p0, p1, LQd/t;->d:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final j()LQd/u;
    .locals 0

    return-object p0
.end method

.method public final k()Ljava/util/List;
    .locals 0

    sget-object p0, LQd/u;->c:Ljava/util/List;

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, LQd/t;->A()V

    const-string p1, "version"

    invoke-super {p0, p1}, LQd/u;->l(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, LQd/t;->d:Ljava/lang/Object;

    instance-of p0, p0, LQd/c;

    return p0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LQd/u;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQd/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
