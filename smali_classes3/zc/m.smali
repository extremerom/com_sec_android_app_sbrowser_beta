.class public final Lzc/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzc/b;


# static fields
.field public static final a:Lzc/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzc/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzc/m;->a:Lzc/m;

    return-void
.end method


# virtual methods
.method public final A(Lyc/w;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final B(Lyc/r;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->X(Lyc/r;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final C(LBc/e;I)Lyc/Q;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_0

    invoke-static {p1}, Lzc/g;->c(LBc/d;)I

    move-result p0

    if-ge p2, p0, :cond_0

    invoke-static {p1, p2}, Lzc/g;->p(LBc/d;I)Lyc/Q;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final D(Ljava/util/ArrayList;)Lyc/d0;
    .locals 8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyc/d0;

    if-nez v4, :cond_1

    invoke-static {v6}, Lyc/c;->k(Lyc/w;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v0

    :goto_2
    instance-of v7, v6, Lyc/A;

    if-eqz v7, :cond_2

    check-cast v6, Lyc/A;

    goto :goto_3

    :cond_2
    instance-of v5, v6, Lyc/r;

    if-eqz v5, :cond_3

    const-string v5, "<this>"

    invoke-static {v6, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lyc/r;

    iget-object v6, v6, Lyc/r;->b:Lyc/A;

    move v5, v0

    :goto_3
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    if-eqz v4, :cond_5

    sget-object p0, LAc/k;->INTERSECTION_OF_ERROR_TYPES:LAc/k;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    goto :goto_5

    :cond_5
    sget-object v0, Lzc/t;->a:Lzc/t;

    if-nez v5, :cond_6

    invoke-virtual {v0, p0}, Lzc/t;->b(Ljava/util/ArrayList;)Lyc/A;

    move-result-object p0

    goto :goto_5

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d0;

    invoke-static {v1}, Lyc/c;->E(Lyc/w;)Lyc/A;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v0, p0}, Lzc/t;->b(Ljava/util/ArrayList;)Lyc/A;

    move-result-object p0

    invoke-virtual {v0, v2}, Lzc/t;->b(Ljava/util/ArrayList;)Lyc/A;

    move-result-object p1

    invoke-static {p0, p1}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p0

    goto :goto_5

    :cond_8
    invoke-static {p1}, Lfb/n;->T(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/d0;

    :goto_5
    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected some types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final E(LBc/e;)LBc/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lzc/m;->s0(LBc/e;)LBc/f;

    move-result-object p1

    invoke-static {p0, p1}, Lzc/g;->e(Lzc/b;LBc/f;)LBc/c;

    move-result-object p0

    return-object p0
.end method

.method public final F(LBc/d;)Lyc/L;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lzc/m;->n(LBc/d;)Lyc/A;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object p0

    return-object p0
.end method

.method public final G(LBc/e;LBc/h;)V
    .locals 0

    return-void
.end method

.method public final H(LBc/e;)Lyc/A;
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lzc/g;->Z(LBc/e;Z)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final I(LBc/d;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->F(LBc/d;)Z

    move-result p0

    return p0
.end method

.method public final J(Lyc/d0;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->g(LBc/d;)Lyc/r;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final K(LBc/d;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lzc/m;->n(LBc/d;)Lyc/A;

    move-result-object v0

    invoke-static {v0}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object v0

    invoke-virtual {p0, p1}, Lzc/m;->k(LBc/d;)Lyc/A;

    move-result-object p0

    invoke-static {p0}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object p0

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final L(Lyc/Q;)Lyc/d0;
    .locals 0

    invoke-static {p0, p1}, Lzc/g;->r(Lzc/b;Lyc/Q;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final N(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->z(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final O(LBc/e;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0, p1}, Lzc/g;->R(Lzc/b;LBc/e;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final P(LBc/e;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object p0

    invoke-static {p0}, Lzc/g;->D(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final Q(LBc/e;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->B(LBc/d;)Z

    move-result p0

    return p0
.end method

.method public final R(LBc/d;)Lyc/F;
    .locals 0

    invoke-static {p1}, Lzc/g;->i(LBc/d;)Lyc/F;

    move-result-object p0

    return-object p0
.end method

.method public final S(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->x(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final T(LBc/e;)Lyc/L;
    .locals 0

    invoke-static {p1}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object p0

    return-object p0
.end method

.method public final U(LBc/e;LBc/b;)Lyc/A;
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->j(LBc/e;LBc/b;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final V(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->A(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final W(Lyc/r;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->X(Lyc/r;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final X(Llc/b;)Lyc/Q;
    .locals 0

    invoke-static {p1}, Lzc/g;->S(Llc/b;)Lyc/Q;

    move-result-object p0

    return-object p0
.end method

.method public final Y(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->G(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final Z(LBc/h;)Ljava/util/Collection;
    .locals 0

    invoke-static {p1}, Lzc/g;->U(LBc/h;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final a(LBc/d;)Lyc/d0;
    .locals 0

    invoke-static {p1}, Lzc/g;->P(LBc/d;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final a0(LBc/e;LBc/e;)Z
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->w(LBc/e;LBc/e;)Z

    move-result p0

    return p0
.end method

.method public final b(Lyc/r;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->N(Lyc/r;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Lyc/d0;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lzc/m;->n(LBc/d;)Lyc/A;

    move-result-object v0

    invoke-static {v0}, Lzc/g;->F(LBc/d;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lzc/m;->k(LBc/d;)Lyc/A;

    move-result-object p0

    invoke-static {p0}, Lzc/g;->F(LBc/d;)Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->E(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final c0(LBc/e;)V
    .locals 0

    invoke-static {p1}, Lzc/g;->L(LBc/e;)V

    return-void
.end method

.method public final d(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->y(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final e(LBc/d;)LBc/d;
    .locals 1

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lzc/g;->Z(LBc/e;Z)Lyc/A;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public final e0(LBc/h;)I
    .locals 0

    invoke-static {p1}, Lzc/g;->Q(LBc/h;)I

    move-result p0

    return p0
.end method

.method public final f(LBc/e;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lzc/m;->F(LBc/d;)Lyc/L;

    move-result-object p0

    invoke-static {p0}, Lzc/g;->G(LBc/h;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lzc/g;->H(LBc/d;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f0(LBc/d;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->g(LBc/d;)Lyc/r;

    return-void
.end method

.method public final g(Z)Lyc/K;
    .locals 6

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lzc/g;->l(ZZLzc/m;Lzc/e;Lzc/f;I)Lyc/K;

    move-result-object p0

    return-object p0
.end method

.method public final g0(LBc/c;)Lzc/i;
    .locals 0

    invoke-static {p1}, Lzc/g;->W(LBc/c;)Lzc/i;

    move-result-object p0

    return-object p0
.end method

.method public final h(LBc/d;)Lyc/r;
    .locals 0

    invoke-static {p1}, Lzc/g;->g(LBc/d;)Lyc/r;

    move-result-object p0

    return-object p0
.end method

.method public final h0(LBc/e;)V
    .locals 0

    invoke-static {p1}, Lzc/g;->M(LBc/e;)V

    return-void
.end method

.method public final i(LBc/h;LBc/h;)Z
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->b(LBc/h;LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final i0(LBc/d;I)Lyc/Q;
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->p(LBc/d;I)Lyc/Q;

    move-result-object p0

    return-object p0
.end method

.method public final j(LBc/f;LBc/f;)Lyc/d0;
    .locals 0

    invoke-static {p0, p1, p2}, Lzc/g;->m(Lzc/b;LBc/f;LBc/f;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final j0(LBc/d;)LBc/d;
    .locals 0

    invoke-static {p0, p1}, Lzc/g;->Y(Lzc/b;LBc/d;)LBc/d;

    move-result-object p0

    return-object p0
.end method

.method public final k(LBc/d;)Lyc/A;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->g(LBc/d;)Lyc/r;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lzc/g;->X(Lyc/r;)Lyc/A;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final k0(Lyc/A;)LBc/c;
    .locals 0

    invoke-static {p0, p1}, Lzc/g;->e(Lzc/b;LBc/f;)LBc/c;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lyc/Q;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->K(Lyc/Q;)Z

    move-result p0

    return p0
.end method

.method public final l0(LBc/g;)I
    .locals 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LBc/e;

    if-eqz p0, :cond_0

    check-cast p1, LBc/d;

    invoke-static {p1}, Lzc/g;->c(LBc/d;)I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, LBc/a;

    if-eqz p0, :cond_1

    check-cast p1, LBc/a;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown type argument list type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, p1}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(LBc/c;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->J(LBc/c;)Z

    move-result p0

    return p0
.end method

.method public final m0(LJb/W;)LBc/j;
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/W;->A()Lyc/e0;

    move-result-object p0

    const-string p1, "getVariance(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LG5/s;->b(Lyc/e0;)LBc/j;

    move-result-object p0

    return-object p0
.end method

.method public final n(LBc/d;)Lyc/A;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->g(LBc/d;)Lyc/r;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lzc/g;->N(Lyc/r;)Lyc/A;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final o(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->D(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final o0(LBc/c;)Z
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Llc/a;

    return p0
.end method

.method public final p(LBc/e;)Lyc/A;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lzc/g;->Z(LBc/e;Z)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final q(LBc/h;I)LJb/W;
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->q(LBc/h;I)LJb/W;

    move-result-object p0

    return-object p0
.end method

.method public final q0(LBc/d;)Z
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LZb/f;

    return p0
.end method

.method public final r(LBc/e;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object p0

    invoke-static {p0}, Lzc/g;->y(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final r0(LBc/e;)LBc/g;
    .locals 0

    invoke-static {p1}, Lzc/g;->d(LBc/e;)LBc/g;

    move-result-object p0

    return-object p0
.end method

.method public final s(LBc/e;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lzc/m;->E(LBc/e;)LBc/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final s0(LBc/e;)LBc/f;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->f(LBc/e;)Lyc/n;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyc/n;->b:Lyc/A;

    if-nez p0, :cond_1

    :cond_0
    move-object p0, p1

    check-cast p0, LBc/f;

    :cond_1
    return-object p0
.end method

.method public final t(LBc/d;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lzc/g;->f(LBc/e;)Lyc/n;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final t0(Lyc/r;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->N(Lyc/r;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final u(LBc/c;)Lyc/d0;
    .locals 0

    invoke-static {p1}, Lzc/g;->O(LBc/c;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final u0(LBc/g;I)Lyc/Q;
    .locals 1

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LBc/f;

    if-eqz p0, :cond_0

    check-cast p1, LBc/d;

    invoke-static {p1, p2}, Lzc/g;->p(LBc/d;I)Lyc/Q;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, LBc/a;

    if-eqz p0, :cond_1

    check-cast p1, LBc/a;

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lyc/Q;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unknown type argument list type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Ltb/x;->a:Ltb/y;

    invoke-virtual {v0, p1}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final v(Lyc/Q;)LBc/j;
    .locals 0

    invoke-static {p1}, Lzc/g;->t(Lyc/Q;)LBc/j;

    move-result-object p0

    return-object p0
.end method

.method public final v0(LBc/d;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final w(LBc/e;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->f(LBc/e;)Lyc/n;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w0(LBc/d;)I
    .locals 0

    invoke-static {p1}, Lzc/g;->c(LBc/d;)I

    move-result p0

    return p0
.end method

.method public final x(LJb/W;LBc/h;)Z
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->v(LJb/W;LBc/h;)Z

    move-result p0

    return p0
.end method

.method public final y(LBc/c;)LBc/b;
    .locals 0

    invoke-static {p1}, Lzc/g;->k(LBc/c;)LBc/b;

    move-result-object p0

    return-object p0
.end method

.method public final z(LBc/e;)Lzc/a;
    .locals 0

    invoke-static {p0, p1}, Lzc/g;->T(Lzc/b;LBc/e;)Lzc/a;

    move-result-object p0

    return-object p0
.end method
