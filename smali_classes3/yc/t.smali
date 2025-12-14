.class public final Lyc/t;
.super Lyc/r;
.source "SourceFile"

# interfaces
.implements Lyc/c0;


# instance fields
.field public final d:Lyc/r;

.field public final e:Lyc/w;


# direct methods
.method public constructor <init>(Lyc/r;Lyc/w;)V
    .locals 2

    const-string v0, "origin"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lyc/r;->b:Lyc/A;

    iget-object v1, p1, Lyc/r;->c:Lyc/A;

    invoke-direct {p0, v0, v1}, Lyc/r;-><init>(Lyc/A;Lyc/A;)V

    iput-object p1, p0, Lyc/t;->d:Lyc/r;

    iput-object p2, p0, Lyc/t;->e:Lyc/w;

    return-void
.end method


# virtual methods
.method public final H0(Lzc/f;)Lyc/w;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lyc/t;

    iget-object v0, p0, Lyc/t;->d:Lyc/r;

    const-string v1, "type"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/t;->e:Lyc/w;

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Lyc/t;-><init>(Lyc/r;Lyc/w;)V

    return-object p1
.end method

.method public final J0(Z)Lyc/d0;
    .locals 1

    iget-object v0, p0, Lyc/t;->d:Lyc/r;

    invoke-virtual {v0, p1}, Lyc/d0;->J0(Z)Lyc/d0;

    move-result-object v0

    iget-object p0, p0, Lyc/t;->e:Lyc/w;

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyc/d0;->J0(Z)Lyc/d0;

    move-result-object p0

    invoke-static {v0, p0}, Lyc/c;->G(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final K0(Lzc/f;)Lyc/d0;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lyc/t;

    iget-object v0, p0, Lyc/t;->d:Lyc/r;

    const-string v1, "type"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/t;->e:Lyc/w;

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Lyc/t;-><init>(Lyc/r;Lyc/w;)V

    return-object p1
.end method

.method public final L0(Lyc/H;)Lyc/d0;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/t;->d:Lyc/r;

    invoke-virtual {v0, p1}, Lyc/d0;->L0(Lyc/H;)Lyc/d0;

    move-result-object p1

    iget-object p0, p0, Lyc/t;->e:Lyc/w;

    invoke-static {p1, p0}, Lyc/c;->G(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final M0()Lyc/A;
    .locals 0

    iget-object p0, p0, Lyc/t;->d:Lyc/r;

    invoke-virtual {p0}, Lyc/r;->M0()Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final N0(Ljc/j;Ljc/j;)Ljava/lang/String;
    .locals 3

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Ljc/j;->a:Ljc/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->m:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyc/t;->e:Lyc/w;

    invoke-virtual {p1, p0}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lyc/t;->d:Lyc/r;

    invoke-virtual {p0, p1, p2}, Lyc/r;->N0(Ljc/j;Ljc/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f0()Lyc/w;
    .locals 0

    iget-object p0, p0, Lyc/t;->e:Lyc/w;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[@EnhancedForWarnings("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lyc/t;->e:Lyc/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyc/t;->d:Lyc/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z0()Lyc/d0;
    .locals 0

    iget-object p0, p0, Lyc/t;->d:Lyc/r;

    return-object p0
.end method
