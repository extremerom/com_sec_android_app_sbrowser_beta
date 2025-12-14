.class public final Lwc/t;
.super LMb/g;
.source "SourceFile"

# interfaces
.implements Lwc/l;


# instance fields
.field public final j:Lcc/V;

.field public final k:Lec/g;

.field public final l:LX4/i;

.field public final m:Lec/i;

.field public final n:Lac/h;

.field public o:Lyc/A;

.field public p:Lyc/A;

.field public q:Ljava/util/List;

.field public r:Lyc/A;


# direct methods
.method public constructor <init>(Lxc/o;LJb/l;LKb/h;Lhc/f;LJb/p;Lcc/V;Lec/g;LX4/i;Lec/i;Lac/h;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {p9, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, LMb/g;-><init>(Lxc/o;LJb/l;LKb/h;Lhc/f;LJb/p;)V

    iput-object p6, p0, Lwc/t;->j:Lcc/V;

    iput-object p7, p0, Lwc/t;->k:Lec/g;

    iput-object p8, p0, Lwc/t;->l:LX4/i;

    iput-object p9, p0, Lwc/t;->m:Lec/i;

    iput-object p10, p0, Lwc/t;->n:Lac/h;

    return-void
.end method


# virtual methods
.method public final F()LX4/i;
    .locals 0

    iget-object p0, p0, Lwc/t;->l:LX4/i;

    return-object p0
.end method

.method public final I()Lec/g;
    .locals 0

    iget-object p0, p0, Lwc/t;->k:Lec/g;

    return-object p0
.end method

.method public final J()Lwc/k;
    .locals 0

    iget-object p0, p0, Lwc/t;->n:Lac/h;

    return-object p0
.end method

.method public final U0()LJb/f;
    .locals 2

    invoke-virtual {p0}, Lwc/t;->V0()Lyc/A;

    move-result-object v0

    invoke-static {v0}, Lyc/c;->k(Lyc/w;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lwc/t;->V0()Lyc/A;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    instance-of v0, p0, LJb/f;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, LJb/f;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final V0()Lyc/A;
    .locals 0

    iget-object p0, p0, Lwc/t;->p:Lyc/A;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "expandedType"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final W0()Lyc/A;
    .locals 0

    iget-object p0, p0, Lwc/t;->o:Lyc/A;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "underlyingType"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final X0(Ljava/util/List;Lyc/A;Lyc/A;)V
    .locals 6

    const-string v0, "underlyingType"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandedType"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LMb/g;->h:Ljava/util/List;

    iput-object p2, p0, Lwc/t;->o:Lyc/A;

    iput-object p3, p0, Lwc/t;->p:Lyc/A;

    invoke-static {p0}, LJb/y;->c(LJb/j;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lwc/t;->q:Ljava/util/List;

    invoke-virtual {p0}, Lwc/t;->U0()LJb/f;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, LJb/f;->S()Lrc/o;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v4, p1

    goto :goto_2

    :cond_1
    :goto_1
    sget-object p1, Lrc/n;->b:Lrc/n;

    goto :goto_0

    :goto_2
    new-instance v5, LMb/e;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lyc/b0;->a:LAc/i;

    invoke-static {p0}, LAc/l;->f(LJb/l;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, LAc/k;->UNABLE_TO_SUBSTITUTE_TYPE:LAc/k;

    invoke-virtual {p0}, LMb/g;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p1

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, LMb/g;->w()Lyc/L;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object p1, v1

    check-cast p1, LMb/f;

    invoke-virtual {p1}, LMb/f;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lyc/b0;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sget-object p1, Lyc/H;->b:LA7/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyc/H;->c:Lyc/H;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lyc/c;->w(Lyc/H;Lyc/L;Ljava/util/List;ZLrc/o;Lsb/k;)Lyc/A;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lwc/t;->r:Lyc/A;

    return-void

    :cond_3
    const/16 p0, 0xc

    invoke-static {p0}, Lyc/b0;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d0()Lic/b;
    .locals 0

    iget-object p0, p0, Lwc/t;->j:Lcc/V;

    return-object p0
.end method

.method public final f(Lyc/Y;)LJb/m;
    .locals 12

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lyc/Y;->a:Lyc/U;

    invoke-virtual {v0}, Lyc/U;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lwc/t;

    invoke-virtual {p0}, LMb/o;->k()LJb/l;

    move-result-object v3

    const-string v1, "getContainingDeclaration(...)"

    invoke-static {v3, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LF3/f;->u()LKb/h;

    move-result-object v4

    const-string v1, "<get-annotations>(...)"

    invoke-static {v4, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object v5

    const-string v1, "getName(...)"

    invoke-static {v5, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lwc/t;->k:Lec/g;

    iget-object v9, p0, Lwc/t;->l:LX4/i;

    iget-object v2, p0, LMb/g;->f:Lxc/o;

    iget-object v6, p0, LMb/g;->g:LJb/p;

    iget-object v7, p0, Lwc/t;->j:Lcc/V;

    iget-object v10, p0, Lwc/t;->m:Lec/i;

    iget-object v11, p0, Lwc/t;->n:Lac/h;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lwc/t;-><init>(Lxc/o;LJb/l;LKb/h;Lhc/f;LJb/p;Lcc/V;Lec/g;LX4/i;Lec/i;Lac/h;)V

    invoke-virtual {p0}, LMb/g;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lwc/t;->W0()Lyc/A;

    move-result-object v2

    sget-object v3, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {p1, v2, v3}, Lyc/Y;->g(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v2

    invoke-static {v2}, Lyc/c;->b(Lyc/w;)Lyc/A;

    move-result-object v2

    invoke-virtual {p0}, Lwc/t;->V0()Lyc/A;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lyc/Y;->g(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object p0

    invoke-static {p0}, Lyc/c;->b(Lyc/w;)Lyc/A;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lwc/t;->X0(Ljava/util/List;Lyc/A;Lyc/A;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final n()Lyc/A;
    .locals 0

    iget-object p0, p0, Lwc/t;->r:Lyc/A;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "defaultTypeImpl"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
