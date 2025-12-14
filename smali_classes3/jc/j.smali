.class public final Ljc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljc/m;


# static fields
.field public static final c:Ljc/j;

.field public static final d:Ljc/j;

.field public static final e:Ljc/j;


# instance fields
.field public final a:Ljc/o;

.field public final b:Ldb/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljc/d;->b:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    sget-object v0, Ljc/d;->d:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    sget-object v0, Ljc/d;->e:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    sget-object v0, Ljc/d;->f:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    sget-object v0, Ljc/d;->g:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    sget-object v0, Ljc/d;->h:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    sget-object v0, Ljc/d;->i:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    move-result-object v0

    sput-object v0, Ljc/j;->c:Ljc/j;

    sget-object v0, Ljc/d;->j:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    sget-object v0, Ljc/d;->k:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    move-result-object v0

    sput-object v0, Ljc/j;->d:Ljc/j;

    sget-object v0, Ljc/d;->l:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    move-result-object v0

    sput-object v0, Ljc/j;->e:Ljc/j;

    sget-object v0, Ljc/d;->c:Ljc/d;

    invoke-static {v0}, LG5/V3;->c(Lsb/k;)Ljc/j;

    return-void
.end method

.method public constructor <init>(Ljc/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljc/j;->a:Ljc/o;

    new-instance p1, LDb/E;

    const/16 v0, 0x12

    invoke-direct {p1, v0, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Ljc/j;->b:Ldb/o;

    return-void
.end method

.method public static V(Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static h0(Lyc/w;)Z
    .locals 1

    invoke-static {p0}, LG5/I2;->j(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/Q;

    invoke-virtual {v0}, Lyc/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static final n(Ljc/j;LJb/P;Ljava/lang/StringBuilder;)V
    .locals 7

    invoke-virtual {p0}, Ljc/j;->r()Z

    move-result v0

    const-string v1, "getTypeParameters(...)"

    const/4 v2, 0x1

    if-nez v0, :cond_8

    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v3, Ljc/o;->Y:[LAb/u;

    const/4 v4, 0x5

    aget-object v4, v3, v4

    iget-object v5, v0, Ljc/o;->g:Ljc/n;

    invoke-virtual {v5, v0, v4}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_7

    invoke-interface {p1}, LJb/b;->r0()Ljava/util/List;

    move-result-object v4

    const-string v6, "getContextReceiverParameters(...)"

    invoke-static {v4, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v4}, Ljc/j;->B(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v4

    sget-object v6, Ljc/l;->ANNOTATIONS:Ljc/l;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, p2, p1, v4}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    invoke-interface {p1}, LJb/P;->p0()LMb/t;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v6, LKb/d;->FIELD:LKb/d;

    invoke-virtual {p0, p2, v4, v6}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    :cond_1
    invoke-interface {p1}, LJb/P;->O()LMb/t;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v6, LKb/d;->PROPERTY_DELEGATE_FIELD:LKb/d;

    invoke-virtual {p0, p2, v4, v6}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    :cond_2
    const/16 v4, 0x20

    aget-object v3, v3, v4

    iget-object v4, v0, Ljc/o;->H:Ljc/n;

    invoke-virtual {v4, v0, v3}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljc/t;

    sget-object v3, Ljc/t;->NONE:Ljc/t;

    if-ne v0, v3, :cond_4

    invoke-interface {p1}, LJb/P;->b()LMb/K;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v3, LKb/d;->PROPERTY_GETTER:LKb/d;

    invoke-virtual {p0, p2, v0, v3}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    :cond_3
    invoke-interface {p1}, LJb/P;->c()LMb/L;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v3, LKb/d;->PROPERTY_SETTER:LKb/d;

    invoke-virtual {p0, p2, v0, v3}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    invoke-virtual {v0}, LMb/L;->H()Ljava/util/List;

    move-result-object v0

    const-string v3, "getValueParameters(...)"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/T;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v3, LKb/d;->SETTER_PARAMETER:LKb/d;

    invoke-virtual {p0, p2, v0, v3}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    :cond_4
    :goto_0
    invoke-interface {p1}, LJb/z;->getVisibility()LJb/p;

    move-result-object v0

    const-string v3, "getVisibility(...)"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljc/j;->f0(LJb/p;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Ljc/l;->CONST:Ljc/l;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, LJb/Z;->Y()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v5

    :goto_1
    const-string v3, "const"

    invoke-virtual {p0, v3, p2, v0}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, p1, p2}, Ljc/j;->J(LJb/z;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Ljc/j;->L(LJb/d;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Ljc/j;->R(LJb/d;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Ljc/l;->LATEINIT:Ljc/l;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, LJb/Z;->s0()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_2
    const-string v3, "lateinit"

    invoke-virtual {p0, v3, p2, v0}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, p1, p2}, Ljc/j;->I(LJb/d;Ljava/lang/StringBuilder;)V

    :cond_7
    invoke-virtual {p0, p1, p2, v5}, Ljc/j;->c0(LJb/Z;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, LJb/b;->m()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v2}, Ljc/j;->b0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, p1, p2}, Ljc/j;->T(LJb/d;Ljava/lang/StringBuilder;)V

    :cond_8
    invoke-virtual {p0, p1, p2, v2}, Ljc/j;->O(LJb/l;Ljava/lang/StringBuilder;Z)V

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LJb/Y;->getType()Lyc/w;

    move-result-object v0

    const-string v2, "getType(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljc/j;->U(LJb/d;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Ljc/j;->G(LJb/Z;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, LJb/b;->m()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Ljc/j;->g0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public static v(LJb/z;)LJb/B;
    .locals 3

    instance-of v0, p0, LJb/f;

    if-eqz v0, :cond_1

    check-cast p0, LJb/f;

    invoke-interface {p0}, LJb/f;->d()LJb/g;

    move-result-object p0

    sget-object v0, LJb/g;->INTERFACE:LJb/g;

    if-ne p0, v0, :cond_0

    sget-object p0, LJb/B;->ABSTRACT:LJb/B;

    goto :goto_0

    :cond_0
    sget-object p0, LJb/B;->FINAL:LJb/B;

    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    instance-of v1, v0, LJb/f;

    if-eqz v1, :cond_2

    check-cast v0, LJb/f;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    sget-object p0, LJb/B;->FINAL:LJb/B;

    return-object p0

    :cond_3
    instance-of v1, p0, LJb/d;

    if-nez v1, :cond_4

    sget-object p0, LJb/B;->FINAL:LJb/B;

    return-object p0

    :cond_4
    check-cast p0, LJb/d;

    invoke-interface {p0}, LJb/d;->l()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "getOverriddenDescriptors(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, LJb/f;->r()LJb/B;

    move-result-object v1

    sget-object v2, LJb/B;->FINAL:LJb/B;

    if-eq v1, v2, :cond_5

    sget-object p0, LJb/B;->OPEN:LJb/B;

    return-object p0

    :cond_5
    invoke-interface {v0}, LJb/f;->d()LJb/g;

    move-result-object v0

    sget-object v1, LJb/g;->INTERFACE:LJb/g;

    if-ne v0, v1, :cond_7

    invoke-interface {p0}, LJb/z;->getVisibility()LJb/p;

    move-result-object v0

    sget-object v1, LJb/q;->a:LJb/p;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p0}, LJb/z;->r()LJb/B;

    move-result-object p0

    sget-object v0, LJb/B;->ABSTRACT:LJb/B;

    if-ne p0, v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, LJb/B;->OPEN:LJb/B;

    goto :goto_2

    :cond_7
    sget-object v0, LJb/B;->FINAL:LJb/B;

    :goto_2
    return-object v0
.end method


# virtual methods
.method public final A(Lmc/g;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->v:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsb/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p1, Lmc/b;

    if-eqz v0, :cond_3

    check-cast p1, Lmc/b;

    iget-object p1, p1, Lmc/g;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmc/g;

    invoke-virtual {p0, v1}, Ljc/j;->A(Lmc/g;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v3, "}"

    const/4 v4, 0x0

    const-string v1, ", "

    const-string v2, "{"

    const/16 v5, 0x38

    invoke-static/range {v0 .. v5}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lmc/a;

    if-eqz v0, :cond_4

    check-cast p1, Lmc/a;

    iget-object p1, p1, Lmc/g;->a:Ljava/lang/Object;

    check-cast p1, LKb/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljc/j;->x(LKb/b;LKb/d;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "@"

    invoke-static {p0, p1}, LKc/k;->D(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    instance-of p0, p1, Lmc/t;

    if-eqz p0, :cond_8

    check-cast p1, Lmc/t;

    iget-object p0, p1, Lmc/g;->a:Ljava/lang/Object;

    check-cast p0, Lmc/s;

    instance-of p1, p0, Lmc/q;

    const-string v0, "::class"

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lmc/q;

    iget-object p0, p0, Lmc/q;->a:Lyc/w;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    instance-of p1, p0, Lmc/r;

    if-eqz p1, :cond_7

    check-cast p0, Lmc/r;

    iget-object p1, p0, Lmc/r;->a:Lmc/f;

    iget-object p1, p1, Lmc/f;->a:Lhc/b;

    invoke-virtual {p1}, Lhc/b;->a()Lhc/c;

    move-result-object p1

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    iget-object p1, p1, Lhc/d;->a:Ljava/lang/String;

    iget-object p0, p0, Lmc/r;->a:Lmc/f;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lmc/f;->b:I

    if-ge v1, v2, :cond_6

    const-string v2, "kotlin.Array<"

    const/16 v3, 0x3e

    invoke-static {v3, v2, p1}, LB/e;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_7
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    invoke-virtual {p1}, Lmc/g;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final B(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "context("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMb/w;

    sget-object v4, LKb/d;->RECEIVER:LKb/d;

    invoke-virtual {p0, p1, v3, v4}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    invoke-virtual {v3}, LMb/w;->getType()Lyc/w;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljc/j;->F(Lyc/w;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lfb/o;->f(Ljava/util/List;)I

    move-result v3

    if-ne v1, v3, :cond_0

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final C(Ljava/lang/StringBuilder;Lyc/A;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    instance-of v1, p2, Lyc/n;

    invoke-static {p2}, Lyc/c;->k(Lyc/w;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    instance-of v0, p2, LAc/i;

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, LAc/i;

    iget-object v1, v1, LAc/i;->d:LAc/k;

    invoke-virtual {v1}, LAc/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Ljc/j;->a:Ljc/o;

    if-eqz v1, :cond_2

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v4, 0x2f

    aget-object v1, v1, v4

    iget-object v4, v3, Ljc/o;->V:Ljc/n;

    invoke-virtual {v4, v3, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, LAc/l;->a:LAc/l;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, LAc/i;

    iget-object v0, v0, LAc/i;->d:LAc/k;

    invoke-virtual {v0}, LAc/k;->c()Z

    move-result v0

    :cond_1
    invoke-virtual {p2}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LAc/j;

    iget-object v0, v0, LAc/j;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Ljc/j;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/16 v1, 0x31

    aget-object v0, v0, v1

    iget-object v1, v3, Ljc/o;->X:Ljc/n;

    invoke-virtual {v1, v3, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p2

    check-cast v0, LAc/i;

    iget-object v0, v0, LAc/i;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljc/j;->X(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lyc/w;->F0()Lyc/L;

    move-result-object v1

    invoke-virtual {p2}, Lyc/w;->F0()Lyc/L;

    move-result-object v3

    invoke-interface {v3}, Lyc/L;->c()LJb/i;

    move-result-object v3

    instance-of v4, v3, LJb/j;

    if-eqz v4, :cond_5

    move-object v0, v3

    check-cast v0, LJb/j;

    :cond_5
    invoke-static {p2, v0, v2}, LJb/y;->a(Lyc/A;LJb/j;I)Lo3/t;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v1}, Ljc/j;->Y(Lyc/L;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljc/j;->X(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1, v0}, Ljc/j;->S(Ljava/lang/StringBuilder;Lo3/t;)V

    :goto_2
    invoke-virtual {p2}, Lyc/w;->G0()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    instance-of p0, p2, Lyc/n;

    if-eqz p0, :cond_8

    const-string p0, " & Any"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    return-void
.end method

.method public final D(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljc/j;->s()Ljc/w;

    move-result-object p0

    sget-object v0, Ljc/i;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "<font color=red><b>"

    const-string v0, "</b></font>"

    invoke-static {p0, p1, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;LGb/i;)Ljava/lang/String;
    .locals 5

    const-string v0, "lowerRendered"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperRendered"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, LG5/W3;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "("

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-static {p2, v1, p0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ")!"

    invoke-static {v1, p1, p0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "!"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljc/j;->p()Ljc/c;

    move-result-object v0

    sget-object v2, LGb/p;->C:Lhc/c;

    invoke-virtual {p3, v2}, LGb/i;->j(Lhc/c;)LJb/f;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljc/c;->a(LJb/i;Ljc/j;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Collection"

    invoke-static {v0, v2}, LKc/k;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mutable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(Mutable)"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, p2, v0, v3}, LG5/W3;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    const-string v2, "MutableMap.MutableEntry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Map.Entry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(Mutable)Map.(Mutable)Entry"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, p2, v3, v0}, LG5/W3;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, Ljc/j;->p()Ljc/c;

    move-result-object v0

    const-string v2, "Array"

    invoke-virtual {p3, v2}, LGb/i;->k(Ljava/lang/String;)LJb/f;

    move-result-object p3

    invoke-interface {v0, p3, p0}, Ljc/c;->a(LJb/i;Ljc/j;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, LKc/k;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Array<"

    invoke-virtual {p0, v0}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Array<out "

    invoke-virtual {p0, v2}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Array<(out) "

    invoke-virtual {p0, v3}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p2, v2, p0}, LG5/W3;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final F(Lyc/w;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljc/j;->h0(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyc/b0;->e(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of p1, p1, Lyc/n;

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "("

    const/16 v0, 0x29

    invoke-static {v0, p1, p0}, LB/e;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public final G(LJb/Z;Ljava/lang/StringBuilder;)V
    .locals 3

    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->u:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LJb/Z;->k0()Lmc/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljc/j;->A(Lmc/g;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final H(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljc/j;->s()Ljc/w;

    move-result-object v0

    sget-object v1, Ljc/i;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/16 v1, 0x30

    aget-object v0, v0, v1

    iget-object v1, p0, Ljc/o;->W:Ljc/n;

    invoke-virtual {v1, p0, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "<b>"

    const-string v0, "</b>"

    invoke-static {p0, p1, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final I(LJb/d;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljc/l;->MEMBER_KIND:Ljc/l;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljc/j;->u()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, LJb/d;->d()LJb/c;

    move-result-object p0

    sget-object v0, LJb/c;->DECLARATION:LJb/c;

    if-eq p0, v0, :cond_1

    const-string p0, "/*"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LJb/d;->d()LJb/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/B2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*/ "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final J(LJb/z;Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-interface {p1}, LJb/z;->W()Z

    move-result v0

    const-string v1, "external"

    invoke-virtual {p0, v1, p2, v0}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljc/l;->EXPECT:Ljc/l;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, LJb/z;->g0()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "expect"

    invoke-virtual {p0, v3, p2, v0}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Ljc/l;->ACTUAL:Ljc/l;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, LJb/z;->U()Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    const-string p1, "actual"

    invoke-virtual {p0, p1, p2, v1}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final K(LJb/B;Ljava/lang/StringBuilder;LJb/B;)V
    .locals 3

    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->p:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object p3

    sget-object v0, Ljc/l;->MODALITY:Ljc/l;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/B2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final L(LJb/d;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-static {p1}, Lkc/e;->s(LJb/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LJb/z;->r()LJb/B;

    move-result-object v0

    sget-object v1, LJb/B;->FINAL:LJb/B;

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->B:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljc/r;

    sget-object v1, Ljc/r;->RENDER_OVERRIDE:Ljc/r;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, LJb/z;->r()LJb/B;

    move-result-object v0

    sget-object v1, LJb/B;->OPEN:LJb/B;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, LJb/d;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, LJb/z;->r()LJb/B;

    move-result-object v0

    const-string v1, "getModality(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljc/j;->v(LJb/z;)LJb/B;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Ljc/j;->K(LJb/B;Ljava/lang/StringBuilder;LJb/B;)V

    :cond_2
    return-void
.end method

.method public final M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final N(Lhc/f;Z)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, LG5/W3;->f(Lhc/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x30

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->W:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljc/j;->s()Ljc/w;

    move-result-object p0

    sget-object v0, Ljc/w;->HTML:Ljc/w;

    if-ne p0, v0, :cond_0

    if-eqz p2, :cond_0

    const-string p0, "<b>"

    const-string p2, "</b>"

    invoke-static {p0, p1, p2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final O(LJb/l;Ljava/lang/StringBuilder;Z)V
    .locals 1

    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object p1

    const-string v0, "getName(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Ljc/j;->N(Lhc/f;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final P(Ljava/lang/StringBuilder;Lyc/w;)V
    .locals 8

    invoke-virtual {p2}, Lyc/w;->I0()Lyc/d0;

    move-result-object v0

    instance-of v1, v0, Lyc/a;

    if-eqz v1, :cond_0

    check-cast v0, Lyc/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget-object p2, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x2a

    aget-object v2, v1, v2

    iget-object v3, p2, Ljc/o;->R:Ljc/n;

    invoke-virtual {v3, p2, v2}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "</i></font>"

    const-string v4, " */"

    const-string v5, " /* "

    const-string v6, "<font color=\"808080\"><i>"

    iget-object v7, v0, Lyc/a;->c:Lyc/A;

    iget-object v0, v0, Lyc/a;->b:Lyc/A;

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v0}, Ljc/j;->Q(Ljava/lang/StringBuilder;Lyc/w;)V

    const/16 v0, 0x2b

    aget-object v0, v1, v0

    iget-object v1, p2, Ljc/o;->S:Ljc/n;

    invoke-virtual {v1, p2, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Ljc/j;->s()Ljc/w;

    move-result-object p2

    sget-object v0, Ljc/w;->HTML:Ljc/w;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "from: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v7}, Ljc/j;->Q(Ljava/lang/StringBuilder;Lyc/w;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljc/j;->s()Ljc/w;

    move-result-object p0

    if-ne p0, v0, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v7}, Ljc/j;->Q(Ljava/lang/StringBuilder;Lyc/w;)V

    const/16 v2, 0x29

    aget-object v1, v1, v2

    iget-object v2, p2, Ljc/o;->Q:Ljc/n;

    invoke-virtual {v2, p2, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Ljc/j;->s()Ljc/w;

    move-result-object p2

    sget-object v1, Ljc/w;->HTML:Ljc/w;

    if-ne p2, v1, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v0}, Ljc/j;->Q(Ljava/lang/StringBuilder;Lyc/w;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljc/j;->s()Ljc/w;

    move-result-object p0

    if-ne p0, v1, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0, p1, p2}, Ljc/j;->Q(Ljava/lang/StringBuilder;Lyc/w;)V

    return-void
.end method

.method public final Q(Ljava/lang/StringBuilder;Lyc/w;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lyc/y;

    iget-object v4, v0, Ljc/j;->a:Ljc/o;

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljc/o;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lyc/y;

    iget-object v3, v3, Lyc/y;->d:Lxc/i;

    iget-object v5, v3, Lxc/h;->c:Ljava/lang/Object;

    sget-object v6, Lxc/k;->NOT_COMPUTED:Lxc/k;

    if-eq v5, v6, :cond_0

    iget-object v3, v3, Lxc/h;->c:Ljava/lang/Object;

    sget-object v5, Lxc/k;->COMPUTING:Lxc/k;

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "<Not computed yet>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lyc/w;->I0()Lyc/d0;

    move-result-object v2

    instance-of v3, v2, Lyc/r;

    if-eqz v3, :cond_2

    check-cast v2, Lyc/r;

    invoke-virtual {v2, v0, v0}, Lyc/r;->N0(Ljc/j;Ljc/j;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_2
    instance-of v3, v2, Lyc/A;

    if-eqz v3, :cond_21

    check-cast v2, Lyc/A;

    sget-object v3, Lyc/b0;->b:LAc/i;

    invoke-virtual {v2, v3}, Lyc/w;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "???"

    if-nez v3, :cond_1f

    invoke-virtual {v2}, Lyc/w;->F0()Lyc/L;

    move-result-object v3

    sget-object v6, Lyc/b0;->a:LAc/i;

    iget-object v6, v6, LAc/i;->b:Lyc/L;

    if-ne v3, v6, :cond_3

    goto/16 :goto_c

    :cond_3
    invoke-virtual {v2}, Lyc/w;->F0()Lyc/L;

    move-result-object v3

    instance-of v6, v3, LAc/j;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    check-cast v3, LAc/j;

    iget-object v3, v3, LAc/j;->a:LAc/k;

    sget-object v6, LAc/k;->UNINFERRED_TYPE_VARIABLE:LAc/k;

    if-ne v3, v6, :cond_5

    iget-object v3, v4, Ljc/o;->t:Ljc/n;

    sget-object v6, Ljc/o;->Y:[LAb/u;

    const/16 v8, 0x12

    aget-object v6, v6, v8

    invoke-virtual {v3, v4, v6}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lyc/w;->F0()Lyc/L;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor"

    invoke-static {v2, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LAc/j;

    iget-object v2, v2, LAc/j;->b:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Ljc/j;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_5
    invoke-static {v2}, Lyc/c;->k(Lyc/w;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v1, v2}, Ljc/j;->C(Ljava/lang/StringBuilder;Lyc/A;)V

    goto/16 :goto_d

    :cond_6
    invoke-static {v2}, Ljc/j;->h0(Lyc/w;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget-object v6, v0, Ljc/j;->b:Ldb/o;

    invoke-virtual {v6}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljc/j;

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v2, v8}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v9, 0x1

    if-eq v6, v3, :cond_7

    move v6, v9

    goto :goto_1

    :cond_7
    move v6, v7

    :goto_1
    invoke-static {v2}, LG5/I2;->h(Lyc/w;)Lyc/w;

    move-result-object v10

    invoke-static {v2}, LG5/I2;->f(Lyc/w;)Ljava/util/List;

    move-result-object v11

    invoke-static {v2}, LG5/I2;->k(Lyc/w;)Z

    move-result v12

    invoke-virtual {v2}, Lyc/w;->G0()Z

    move-result v13

    if-nez v13, :cond_9

    if-eqz v6, :cond_8

    if-eqz v10, :cond_8

    goto :goto_2

    :cond_8
    move v14, v7

    goto :goto_3

    :cond_9
    :goto_2
    move v14, v9

    :goto_3
    const-string v15, "("

    if-eqz v14, :cond_c

    if-eqz v12, :cond_a

    const/16 v6, 0x28

    invoke-virtual {v1, v3, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    if-eqz v6, :cond_b

    invoke-static/range {p1 .. p1}, LKc/k;->y(Ljava/lang/CharSequence;)C

    move-result v3

    invoke-static {v3}, LG5/W3;->e(C)Z

    invoke-static/range {p1 .. p1}, LKc/k;->r(Ljava/lang/CharSequence;)I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v6, 0x29

    if-eq v3, v6, :cond_b

    invoke-static/range {p1 .. p1}, LKc/k;->r(Ljava/lang/CharSequence;)I

    move-result v3

    const-string v6, "()"

    invoke-virtual {v1, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_4
    move-object v3, v11

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const-string v6, ") "

    const-string v8, ", "

    if-nez v3, :cond_e

    const-string v3, "context("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lfb/o;->f(Ljava/util/List;)I

    move-result v3

    invoke-interface {v11, v7, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lyc/w;

    invoke-virtual {v0, v1, v7}, Ljc/j;->P(Ljava/lang/StringBuilder;Lyc/w;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto :goto_5

    :cond_d
    invoke-static {v11}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/w;

    invoke-virtual {v0, v1, v3}, Ljc/j;->P(Ljava/lang/StringBuilder;Lyc/w;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v3, "suspend"

    invoke-virtual {v0, v3, v1, v12}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v3, ")"

    if-eqz v10, :cond_15

    invoke-static {v10}, Ljc/j;->h0(Lyc/w;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v10}, Lyc/w;->G0()Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_f
    invoke-static {v10}, LG5/I2;->k(Lyc/w;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v10}, Lyc/w;->u()LKb/h;

    move-result-object v7

    invoke-interface {v7}, LKb/h;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_6

    :cond_10
    instance-of v7, v10, Lyc/n;

    if-eqz v7, :cond_11

    goto :goto_6

    :cond_11
    const/4 v7, 0x0

    goto :goto_7

    :cond_12
    :goto_6
    move v7, v9

    :goto_7
    if-eqz v7, :cond_13

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {v0, v1, v10}, Ljc/j;->P(Ljava/lang/StringBuilder;Lyc/w;)V

    if-eqz v7, :cond_14

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LG5/I2;->j(Lyc/w;)Z

    move-result v7

    const-string v10, "getType(...)"

    if-eqz v7, :cond_16

    invoke-virtual {v2}, Lyc/w;->u()LKb/h;

    move-result-object v7

    sget-object v11, LGb/p;->p:Lhc/c;

    invoke-interface {v7, v11}, LKb/h;->B(Lhc/c;)LKb/b;

    move-result-object v7

    if-eqz v7, :cond_16

    invoke-virtual {v2}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v9, :cond_16

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_16
    invoke-static {v2}, LG5/I2;->i(Lyc/w;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    add-int/lit8 v11, v7, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyc/Q;

    if-lez v7, :cond_17

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-object v7, v4, Ljc/o;->U:Ljc/n;

    sget-object v15, Ljc/o;->Y:[LAb/u;

    const/16 v16, 0x2d

    aget-object v15, v15, v16

    invoke-virtual {v7, v4, v15}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v12}, Lyc/Q;->b()Lyc/w;

    move-result-object v7

    invoke-static {v7, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, LG5/I2;->d(Lyc/w;)Lhc/f;

    move-result-object v7

    goto :goto_9

    :cond_18
    const/4 v7, 0x0

    :goto_9
    const/4 v15, 0x0

    if-eqz v7, :cond_19

    invoke-virtual {v0, v7, v15}, Ljc/j;->N(Lhc/f;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const-string v7, "typeProjection"

    invoke-static {v12, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/Iterable;

    new-instance v12, Ljc/g;

    const/4 v15, 0x0

    invoke-direct {v12, v0, v15}, Ljc/g;-><init>(Ljc/j;I)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v18, ", "

    const/16 v22, 0x3c

    move-object/from16 v17, v7

    move-object/from16 v21, v12

    invoke-static/range {v16 .. v22}, Lfb/n;->H(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v11

    goto :goto_8

    :cond_1a
    :goto_a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljc/j;->s()Ljc/w;

    move-result-object v4

    sget-object v5, Ljc/i;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v9, :cond_1c

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b

    const-string v4, "&rarr;"

    goto :goto_b

    :cond_1b
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c
    const-string v4, "->"

    invoke-virtual {v0, v4}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LG5/I2;->j(Lyc/w;)Z

    invoke-virtual {v2}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/Q;

    invoke-virtual {v2}, Lyc/Q;->b()Lyc/w;

    move-result-object v2

    invoke-static {v2, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljc/j;->P(Ljava/lang/StringBuilder;Lyc/w;)V

    if-eqz v14, :cond_1d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    if-eqz v13, :cond_20

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1e
    invoke-virtual {v0, v1, v2}, Ljc/j;->C(Ljava/lang/StringBuilder;Lyc/A;)V

    goto :goto_d

    :cond_1f
    :goto_c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    :goto_d
    return-void

    :cond_21
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final R(LJb/d;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljc/l;->OVERRIDE:Ljc/l;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, LJb/d;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->B:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljc/r;

    sget-object v1, Ljc/r;->RENDER_OPEN:Ljc/r;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    const-string v1, "override"

    invoke-virtual {p0, v1, p2, v0}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Ljc/j;->u()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/*"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LJb/d;->l()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "*/ "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final S(Ljava/lang/StringBuilder;Lo3/t;)V
    .locals 2

    iget-object v0, p2, Lo3/t;->d:Ljava/lang/Object;

    check-cast v0, Lo3/t;

    iget-object v1, p2, Lo3/t;->b:Ljava/lang/Object;

    check-cast v1, LJb/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Ljc/j;->S(Ljava/lang/StringBuilder;Lo3/t;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, LJb/l;->getName()Lhc/f;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljc/j;->N(Lhc/f;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, LJb/i;->w()Lyc/L;

    move-result-object v0

    const-string v1, "getTypeConstructor(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljc/j;->Y(Lyc/L;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p2, p2, Lo3/t;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Ljc/j;->X(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final T(LJb/d;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-interface {p1}, LJb/b;->N()LMb/w;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, LKb/d;->RECEIVER:LKb/d;

    invoke-virtual {p0, p2, p1, v0}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    invoke-virtual {p1}, LMb/w;->getType()Lyc/w;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljc/j;->F(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final U(LJb/d;Ljava/lang/StringBuilder;)V
    .locals 3

    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->F:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, LJb/b;->N()LMb/w;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, " on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LMb/w;->getType()Lyc/w;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final W(Lyc/w;)Ljava/lang/String;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljc/j;->a:Ljc/o;

    sget-object v2, Ljc/o;->Y:[LAb/u;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    iget-object v3, v1, Ljc/o;->y:Ljc/n;

    invoke-virtual {v3, v1, v2}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsb/k;

    invoke-interface {v1, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyc/w;

    invoke-virtual {p0, v0, p1}, Ljc/j;->P(Ljava/lang/StringBuilder;Lyc/w;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final X(Ljava/util/List;)Ljava/lang/String;
    .locals 8

    const-string v0, "typeArguments"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljc/g;

    const/4 p1, 0x0

    invoke-direct {v5, p0, p1}, Ljc/g;-><init>(Ljc/j;I)V

    const-string v2, ", "

    const/16 v6, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v0 .. v6}, Lfb/n;->H(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)V

    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final Y(Lyc/L;)Ljava/lang/String;
    .locals 2

    const-string v0, "typeConstructor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v1, v0, LJb/W;

    if-nez v1, :cond_3

    instance-of v1, v0, LJb/f;

    if-nez v1, :cond_3

    instance-of v1, v0, LJb/V;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    instance-of p0, p1, Lyc/v;

    if-eqz p0, :cond_1

    check-cast p1, Lyc/v;

    sget-object p0, Ljc/d;->m:Ljc/d;

    invoke-virtual {p1, p0}, Lyc/v;->g(Lsb/k;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected classifier: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const-string p1, "klass"

    invoke-static {v0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LAc/l;->f(LJb/l;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, LJb/i;->w()Lyc/L;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljc/j;->p()Ljc/c;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Ljc/c;->a(LJb/i;Ljc/j;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final Z(LJb/W;Ljava/lang/StringBuilder;Z)V
    .locals 7

    if-eqz p3, :cond_0

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Ljc/j;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LJb/W;->getIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p1}, LJb/W;->x()Z

    move-result v0

    const-string v1, "reified"

    invoke-virtual {p0, v1, p2, v0}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, LJb/W;->A()Lyc/e0;

    move-result-object v0

    invoke-virtual {v0}, Lyc/e0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0, v0, p2, v1}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    invoke-virtual {p0, p1, p2, p3}, Ljc/j;->O(LJb/l;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v4, 0x8d

    const-string v5, " : "

    if-le v1, v3, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    if-ne v1, v3, :cond_7

    :cond_4
    invoke-interface {p1}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyc/w;

    if-eqz p1, :cond_6

    invoke-static {p1}, LGb/i;->y(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lyc/w;->G0()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-static {v4}, LGb/i;->a(I)V

    throw v0

    :cond_7
    if-eqz p3, :cond_b

    invoke-interface {p1}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/w;

    if-eqz v1, :cond_a

    invoke-static {v1}, LGb/i;->y(Lyc/w;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lyc/w;->G0()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const-string v3, " & "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0, v1}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    goto :goto_1

    :cond_a
    invoke-static {v4}, LGb/i;->a(I)V

    throw v0

    :cond_b
    :goto_3
    if-eqz p3, :cond_c

    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    return-void
.end method

.method public final a()V
    .locals 0

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0}, Ljc/o;->a()V

    return-void
.end method

.method public final a0(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJb/W;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ljc/j;->Z(LJb/W;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0}, Ljc/o;->b()V

    return-void
.end method

.method public final b0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V
    .locals 3

    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->w:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p1}, Ljc/j;->a0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final c(Ljc/s;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0, p1}, Ljc/o;->c(Ljc/s;)V

    return-void
.end method

.method public final c0(LJb/Z;Ljava/lang/StringBuilder;Z)V
    .locals 0

    if-nez p3, :cond_0

    instance-of p3, p1, LMb/T;

    if-nez p3, :cond_2

    :cond_0
    invoke-interface {p1}, LJb/Z;->M()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "var"

    goto :goto_0

    :cond_1
    const-string p1, "val"

    :goto_0
    invoke-virtual {p0, p1}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0}, Ljc/o;->d()V

    return-void
.end method

.method public final d0(LMb/T;ZLjava/lang/StringBuilder;Z)V
    .locals 10

    if-eqz p4, :cond_0

    const-string v0, "value-parameter"

    invoke-virtual {p0, v0}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Ljc/j;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, LMb/T;->g:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, v0}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    const-string v1, "crossinline"

    iget-boolean v2, p1, LMb/T;->i:Z

    invoke-virtual {p0, v1, p3, v2}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, "noinline"

    iget-boolean v2, p1, LMb/T;->j:Z

    invoke-virtual {p0, v1, p3, v2}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Ljc/j;->a:Ljc/o;

    sget-object v2, Ljc/o;->Y:[LAb/u;

    const/16 v3, 0x10

    aget-object v3, v2, v3

    iget-object v4, v1, Ljc/o;->r:Ljc/n;

    invoke-virtual {v4, v1, v3}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {p1}, LMb/T;->W0()LJb/b;

    move-result-object v3

    instance-of v6, v3, LMb/j;

    if-eqz v6, :cond_2

    move-object v0, v3

    check-cast v0, LMb/j;

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v0, v0, LMb/j;->E:Z

    if-ne v0, v5, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    if-eqz v0, :cond_4

    const/16 v3, 0x11

    aget-object v3, v2, v3

    iget-object v6, v1, Ljc/o;->s:Ljc/n;

    invoke-virtual {v6, v1, v3}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v6, "actual"

    invoke-virtual {p0, v6, p3, v3}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_4
    move-object v3, p1

    check-cast v3, LMb/U;

    invoke-virtual {v3}, LMb/U;->getType()Lyc/w;

    move-result-object v3

    const-string v6, "getType(...)"

    invoke-static {v3, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p1, LMb/T;->k:Lyc/w;

    if-nez v6, :cond_5

    move-object v7, v3

    goto :goto_1

    :cond_5
    move-object v7, v6

    :goto_1
    if-eqz v6, :cond_6

    move v8, v5

    goto :goto_2

    :cond_6
    move v8, v4

    :goto_2
    const-string v9, "vararg"

    invoke-virtual {p0, v9, p3, v8}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-nez v0, :cond_7

    if-eqz p4, :cond_8

    invoke-virtual {p0}, Ljc/j;->r()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    invoke-virtual {p0, p1, p3, v0}, Ljc/j;->c0(LJb/Z;Ljava/lang/StringBuilder;Z)V

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p0, p1, p3, p4}, Ljc/j;->O(LJb/l;Ljava/lang/StringBuilder;Z)V

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0, v7}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3}, Ljc/j;->G(LJb/Z;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljc/j;->u()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz v6, :cond_a

    const-string p2, " /*"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/16 p0, 0x18

    aget-object p2, v2, p0

    iget-object p4, v1, Ljc/o;->z:Ljc/n;

    invoke-virtual {p4, v1, p2}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsb/k;

    if-eqz p2, :cond_c

    invoke-virtual {v1}, Ljc/o;->n()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, LMb/T;->V0()Z

    move-result p2

    goto :goto_3

    :cond_b
    invoke-static {p1}, Loc/d;->a(LMb/T;)Z

    move-result p2

    :goto_3
    if-eqz p2, :cond_c

    move v4, v5

    :cond_c
    if-eqz v4, :cond_d

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, " = "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, v2, p0

    iget-object p4, v1, Ljc/o;->z:Ljc/n;

    invoke-virtual {p4, v1, p0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsb/k;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    return-void
.end method

.method public final e(Ljc/w;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0, p1}, Ljc/o;->e(Ljc/w;)V

    return-void
.end method

.method public final e0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V
    .locals 7

    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->E:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljc/s;

    sget-object v1, Ljc/i;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-ne v0, p2, :cond_1

    :cond_0
    move p2, v2

    goto :goto_0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    if-nez p2, :cond_0

    :cond_3
    move p2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0}, Ljc/j;->t()Ljc/f;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "builder"

    invoke-static {p3, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "("

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LMb/T;

    invoke-virtual {p0}, Ljc/j;->t()Ljc/f;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "parameter"

    invoke-static {v5, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5, p2, p3, v2}, Ljc/j;->d0(LMb/T;ZLjava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Ljc/j;->t()Ljc/f;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v0, -0x1

    if-eq v3, v5, :cond_4

    const-string v3, ", "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljc/j;->t()Ljc/f;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ")"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final f(Ljc/c;)V
    .locals 0

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0, p1}, Ljc/o;->f(Ljc/c;)V

    return-void
.end method

.method public final f0(LJb/p;Ljava/lang/StringBuilder;)Z
    .locals 5

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljc/l;->VISIBILITY:Ljc/l;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v2, Ljc/o;->Y:[LAb/u;

    const/16 v3, 0xc

    aget-object v3, v2, v3

    iget-object v4, v0, Ljc/o;->n:Ljc/n;

    invoke-virtual {v4, v0, v3}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p1, LJb/p;->a:LJb/k0;

    invoke-virtual {p1}, LJb/k0;->c()LJb/k0;

    move-result-object p1

    invoke-static {p1}, LJb/q;->f(LJb/k0;)LJb/p;

    move-result-object p1

    :cond_1
    const/16 v3, 0xd

    aget-object v2, v2, v3

    iget-object v3, v0, Ljc/o;->o:Ljc/n;

    invoke-virtual {v3, v0, v2}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, LJb/q;->j:LJb/p;

    invoke-static {p1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p1, p1, LJb/p;->a:LJb/k0;

    invoke-virtual {p1}, LJb/k0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0}, Ljc/o;->g()V

    return-void
.end method

.method public final g0(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    iget-object v2, v0, Ljc/o;->w:Ljc/n;

    invoke-virtual {v2, v0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJb/W;

    invoke-interface {v2}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v3

    const-string v4, "getUpperBounds(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lfb/n;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/w;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, LJb/l;->getName()Lhc/f;

    move-result-object v6

    const-string v7, "getName(...)"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Ljc/j;->N(Lhc/f;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "where"

    invoke-virtual {p0, v0}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ", "

    const/4 v4, 0x0

    const/16 v7, 0x7c

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lfb/n;->H(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)V

    :cond_3
    return-void
.end method

.method public final h()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0}, Ljc/o;->h()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0}, Ljc/o;->i()V

    return-void
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0}, Ljc/o;->j()V

    return-void
.end method

.method public final k(Ljava/util/Set;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0, p1}, Ljc/o;->k(Ljava/util/Set;)V

    return-void
.end method

.method public final l(Ljava/util/LinkedHashSet;)V
    .locals 0

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0, p1}, Ljc/o;->l(Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method public final m()V
    .locals 0

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {p0}, Ljc/o;->m()V

    return-void
.end method

.method public final o(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljc/j;->s()Ljc/w;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljc/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ljc/c;
    .locals 3

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    iget-object v0, p0, Ljc/o;->b:Ljc/n;

    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljc/c;

    return-object p0
.end method

.method public final q()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Ljc/o;->e:Ljc/n;

    invoke-virtual {v1, p0, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final r()Z
    .locals 2

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Ljc/o;->f:Ljc/n;

    invoke-virtual {v1, p0, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final s()Ljc/w;
    .locals 2

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    iget-object v1, p0, Ljc/o;->D:Ljc/n;

    invoke-virtual {v1, p0, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljc/w;

    return-object p0
.end method

.method public final t()Ljc/f;
    .locals 2

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    iget-object v1, p0, Ljc/o;->C:Ljc/n;

    invoke-virtual {v1, p0, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljc/f;

    return-object p0
.end method

.method public final u()Z
    .locals 2

    iget-object p0, p0, Ljc/j;->a:Ljc/o;

    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Ljc/o;->j:Ljc/n;

    invoke-virtual {v1, p0, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final w(LJb/l;)Ljava/lang/String;
    .locals 8

    const-string v0, "declarationDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, LO9/a;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, LO9/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1, v0}, LJb/l;->a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ljc/j;->a:Ljc/o;

    iget-object v2, v1, Ljc/o;->c:Ljc/n;

    sget-object v3, Ljc/o;->Y:[LAb/u;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-virtual {v2, v1, v5}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, p1, LJb/H;

    if-nez v2, :cond_4

    instance-of v2, p1, LJb/M;

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object v2

    if-eqz v2, :cond_4

    instance-of v5, v2, LJb/C;

    if-nez v5, :cond_4

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljc/j;->s()Ljc/w;

    move-result-object v6

    sget-object v7, Ljc/i;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x2

    if-eq v6, v4, :cond_2

    if-ne v6, v7, :cond_1

    const-string v4, "<i>defined in</i>"

    goto :goto_0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    const-string v4, "defined in"

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lkc/e;->g(LJb/l;)Lhc/d;

    move-result-object v4

    const-string v5, "getFqName(...)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lhc/d;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p0, "root package"

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lhc/d;->e(Lhc/d;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, LG5/W3;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v1, Ljc/o;->d:Ljc/n;

    aget-object v3, v3, v7

    invoke-virtual {p0, v1, v3}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    instance-of p0, v2, LJb/H;

    if-eqz p0, :cond_4

    instance-of p0, p1, LJb/m;

    if-eqz p0, :cond_4

    check-cast p1, LJb/m;

    invoke-interface {p1}, LJb/m;->e()LJb/S;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(LKb/b;LKb/d;)Ljava/lang/String;
    .locals 11

    const-string v0, "annotation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, LKb/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1}, LKb/b;->getType()Lyc/w;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljc/j;->a:Ljc/o;

    sget-object v2, Ljc/o;->Y:[LAb/u;

    const/16 v3, 0x26

    aget-object v4, v2, v3

    iget-object v5, v1, Ljc/o;->N:Ljc/n;

    invoke-virtual {v5, v1, v4}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljc/a;

    invoke-virtual {v4}, Ljc/a;->a()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p1}, LKb/b;->a()Ljava/util/Map;

    move-result-object v4

    const/16 v6, 0x21

    aget-object v2, v2, v6

    iget-object v6, v1, Ljc/o;->I:Ljc/n;

    invoke-virtual {v6, v1, v2}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    invoke-static {p1}, Loc/d;->d(LKb/b;)LJb/f;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v6

    :goto_0
    const/16 v2, 0xa

    if-eqz p1, :cond_5

    invoke-interface {p1}, LJb/f;->E()LMb/j;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, LMb/v;

    invoke-virtual {p1}, LMb/v;->H()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, LMb/T;

    invoke-virtual {v8}, LMb/T;->V0()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v6, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {p1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LMb/T;

    check-cast v7, LMb/n;

    invoke-virtual {v7}, LMb/n;->getName()Lhc/f;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v6, p1

    :cond_5
    if-nez v6, :cond_6

    sget-object v6, Lfb/v;->a:Lfb/v;

    :cond_6
    move-object p1, v6

    check-cast p1, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lhc/f;

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v7, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {p1, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhc/f;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = ..."

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhc/f;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmc/g;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {p0, v4}, Ljc/j;->A(Lmc/g;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_a
    const-string v4, "..."

    :goto_6
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-static {v7, p1}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lfb/n;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    sget-object v2, Ljc/o;->Y:[LAb/u;

    aget-object v2, v2, v3

    invoke-virtual {v5, v1, v2}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljc/a;

    invoke-virtual {v1}, Ljc/a;->c()Z

    move-result v1

    if-nez v1, :cond_c

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const-string v5, ")"

    const/4 v6, 0x0

    const-string v3, ", "

    const-string v4, "("

    const/16 v7, 0x70

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lfb/n;->H(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)V

    :cond_d
    invoke-virtual {p0}, Ljc/j;->u()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {p2}, Lyc/c;->k(Lyc/w;)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-virtual {p2}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    instance-of p0, p0, LJb/G;

    if-eqz p0, :cond_f

    :cond_e
    const-string p0, " /* annotation class not found */"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V
    .locals 6

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljc/l;->ANNOTATIONS:Ljc/l;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Lyc/w;

    iget-object v1, p0, Ljc/j;->a:Ljc/o;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljc/o;->h()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/16 v2, 0x23

    aget-object v0, v0, v2

    iget-object v2, v1, Ljc/o;->K:Ljc/n;

    invoke-virtual {v2, v1, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_0
    sget-object v2, Ljc/o;->Y:[LAb/u;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    iget-object v3, v1, Ljc/o;->M:Ljc/n;

    invoke-virtual {v3, v1, v2}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsb/k;

    invoke-interface {p2}, LKb/a;->u()LKb/h;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LKb/b;

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v3}, LKb/b;->b()Lhc/c;

    move-result-object v5

    invoke-static {v4, v5}, Lfb/n;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, LKb/b;->b()Lhc/c;

    move-result-object v4

    sget-object v5, LGb/p;->r:Lhc/c;

    invoke-static {v4, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    invoke-virtual {p0, v3, p3}, Ljc/j;->x(LKb/b;LKb/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljc/o;->Y:[LAb/u;

    const/16 v4, 0x22

    aget-object v3, v3, v4

    iget-object v4, v1, Ljc/o;->J:Ljc/n;

    invoke-virtual {v4, v1, v3}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final z(LJb/j;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-interface {p1}, LJb/j;->q()Ljava/util/List;

    move-result-object v0

    const-string v1, "getDeclaredTypeParameters(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/i;->w()Lyc/L;

    move-result-object v1

    invoke-interface {v1}, Lyc/L;->a()Ljava/util/List;

    move-result-object v1

    const-string v2, "getParameters(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljc/j;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, LJb/j;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    const-string p1, " /*captured type parameters: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljc/j;->a0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p0, "*/"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
