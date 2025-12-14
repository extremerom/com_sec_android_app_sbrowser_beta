.class public final Lyc/s;
.super Lyc/r;
.source "SourceFile"

# interfaces
.implements Lyc/l;


# direct methods
.method public constructor <init>(Lyc/A;Lyc/A;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lyc/r;-><init>(Lyc/A;Lyc/A;)V

    return-void
.end method


# virtual methods
.method public final H0(Lzc/f;)Lyc/w;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lyc/s;

    iget-object v0, p0, Lyc/r;->b:Lyc/A;

    const-string v1, "type"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Lyc/s;-><init>(Lyc/A;Lyc/A;)V

    return-object p1
.end method

.method public final J0(Z)Lyc/d0;
    .locals 1

    iget-object v0, p0, Lyc/r;->b:Lyc/A;

    invoke-virtual {v0, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v0

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-virtual {p0, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p0

    invoke-static {v0, p0}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final K0(Lzc/f;)Lyc/d0;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lyc/s;

    iget-object v0, p0, Lyc/r;->b:Lyc/A;

    const-string v1, "type"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Lyc/s;-><init>(Lyc/A;Lyc/A;)V

    return-object p1
.end method

.method public final L0(Lyc/H;)Lyc/d0;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/r;->b:Lyc/A;

    invoke-virtual {v0, p1}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object v0

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-virtual {p0, p1}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object p0

    invoke-static {v0, p0}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final M0()Lyc/A;
    .locals 0

    iget-object p0, p0, Lyc/r;->b:Lyc/A;

    return-object p0
.end method

.method public final N0(Ljc/j;Ljc/j;)Ljava/lang/String;
    .locals 2

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Ljc/j;->a:Ljc/o;

    invoke-virtual {p2}, Ljc/o;->n()Z

    move-result p2

    iget-object v0, p0, Lyc/r;->c:Lyc/A;

    iget-object v1, p0, Lyc/r;->b:Lyc/A;

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v1}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, LG5/B;->f(Lyc/w;)LGb/i;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Ljc/j;->E(Ljava/lang/String;Ljava/lang/String;LGb/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lyc/r;->b:Lyc/A;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w0()Z
    .locals 2

    iget-object v0, p0, Lyc/r;->b:Lyc/A;

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v1

    invoke-interface {v1}, Lyc/L;->c()LJb/i;

    move-result-object v1

    instance-of v1, v1, LJb/W;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final y(Lyc/w;)Lyc/d0;
    .locals 1

    const-string p0, "replacement"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    instance-of p1, p0, Lyc/r;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lyc/A;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lyc/A;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v0

    invoke-static {p1, v0}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p1

    :goto_0
    invoke-static {p1, p0}, Lyc/c;->i(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
