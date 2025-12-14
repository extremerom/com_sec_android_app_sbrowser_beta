.class public abstract LJ2/O;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public onCreate(LS2/a;)V
    .locals 1
    .param p1    # LS2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LM2/a;

    if-eqz v0, :cond_0

    check-cast p1, LM2/a;

    iget-object p1, p1, LM2/a;->a:LT2/a;

    invoke-virtual {p0, p1}, LJ2/O;->onCreate(LT2/a;)V

    :cond_0
    return-void
.end method

.method public onCreate(LT2/a;)V
    .locals 0

    const-string p0, "db"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDestructiveMigration(LS2/a;)V
    .locals 1
    .param p1    # LS2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LM2/a;

    if-eqz v0, :cond_0

    check-cast p1, LM2/a;

    iget-object p1, p1, LM2/a;->a:LT2/a;

    invoke-virtual {p0, p1}, LJ2/O;->onDestructiveMigration(LT2/a;)V

    :cond_0
    return-void
.end method

.method public onDestructiveMigration(LT2/a;)V
    .locals 0
    .param p1    # LT2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "db"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(LS2/a;)V
    .locals 1
    .param p1    # LS2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LM2/a;

    if-eqz v0, :cond_0

    check-cast p1, LM2/a;

    iget-object p1, p1, LM2/a;->a:LT2/a;

    invoke-virtual {p0, p1}, LJ2/O;->onOpen(LT2/a;)V

    :cond_0
    return-void
.end method

.method public abstract onOpen(LT2/a;)V
.end method
