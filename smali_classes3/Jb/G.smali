.class public final LJb/G;
.super LMb/k;
.source "SourceFile"


# instance fields
.field public final g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:Lyc/k;


# direct methods
.method public constructor <init>(Lxc/o;LJb/h;Lhc/f;ZI)V
    .locals 2

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LJb/S;->L:LJb/T;

    invoke-direct {p0, p1, p2, p3, v0}, LMb/k;-><init>(Lxc/o;LJb/l;Lhc/f;LJb/S;)V

    iput-boolean p4, p0, LJb/G;->g:Z

    const/4 p2, 0x0

    invoke-static {p2, p5}, LG5/d3;->l(II)Lzb/d;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object p4, p2

    check-cast p4, Lzb/c;

    iget-boolean p4, p4, Lzb/c;->c:Z

    if-eqz p4, :cond_0

    move-object p4, p2

    check-cast p4, Lzb/c;

    invoke-virtual {p4}, Lzb/c;->b()I

    move-result p4

    sget-object p5, Lyc/e0;->INVARIANT:Lyc/e0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "T"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-static {p0, p5, v0, p4, p1}, LMb/Q;->X0(LMb/c;Lyc/e0;Lhc/f;ILxc/o;)LMb/Q;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p3, p0, LJb/G;->h:Ljava/util/ArrayList;

    new-instance p2, Lyc/k;

    invoke-static {p0}, LJb/y;->c(LJb/j;)Ljava/util/List;

    move-result-object p3

    invoke-static {p0}, Loc/d;->j(LJb/l;)LJb/C;

    move-result-object p4

    invoke-interface {p4}, LJb/C;->j()LGb/i;

    move-result-object p4

    invoke-virtual {p4}, LGb/i;->e()Lyc/A;

    move-result-object p4

    invoke-static {p4}, Lfb/F;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p4

    check-cast p4, Ljava/util/Collection;

    invoke-direct {p2, p0, p3, p4, p1}, Lyc/k;-><init>(LMb/A;Ljava/util/List;Ljava/util/Collection;Lxc/o;)V

    iput-object p2, p0, LJb/G;->i:Lyc/k;

    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E()LMb/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final R()LJb/X;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final U()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final W()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final X()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()LJb/g;
    .locals 0

    sget-object p0, LJb/g;->CLASS:LJb/g;

    return-object p0
.end method

.method public final f0(Lzc/f;)Lrc/o;
    .locals 0

    sget-object p0, Lrc/n;->b:Lrc/n;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getVisibility()LJb/p;
    .locals 1

    sget-object p0, LJb/q;->e:LJb/p;

    const-string v0, "PUBLIC"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final h()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final i()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final bridge synthetic j0()Lrc/o;
    .locals 0

    sget-object p0, Lrc/n;->b:Lrc/n;

    return-object p0
.end method

.method public final q()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJb/G;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final r()LJb/B;
    .locals 0

    sget-object p0, LJb/B;->FINAL:LJb/B;

    return-object p0
.end method

.method public final s()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/c;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (not found)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()LKb/h;
    .locals 0

    sget-object p0, LKb/g;->a:LKb/f;

    return-object p0
.end method

.method public final w()Lyc/L;
    .locals 0

    iget-object p0, p0, LJb/G;->i:Lyc/k;

    return-object p0
.end method

.method public final z()Z
    .locals 0

    iget-boolean p0, p0, LJb/G;->g:Z

    return p0
.end method
