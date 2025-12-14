.class public final Lyc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyc/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyc/e;->a:Lyc/e;

    return-void
.end method

.method public static final b(Lzc/b;LBc/e;)Z
    .locals 2

    invoke-interface {p0, p1}, Lzc/b;->P(LBc/e;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    instance-of v0, p1, LBc/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LBc/c;

    invoke-interface {p0, p1}, Lzc/b;->g0(LBc/c;)Lzc/i;

    move-result-object p1

    invoke-interface {p0, p1}, Lzc/b;->X(Llc/b;)Lyc/Q;

    move-result-object p1

    invoke-interface {p0, p1}, Lzc/b;->L(Lyc/Q;)Lyc/d0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lzc/b;->k(LBc/d;)Lyc/A;

    move-result-object p1

    invoke-interface {p0, p1}, Lzc/b;->P(LBc/e;)Z

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public static final c(Lzc/b;Lyc/K;LBc/e;LBc/e;Z)Z
    .locals 4

    invoke-interface {p0, p2}, Lzc/b;->O(LBc/e;)Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBc/d;

    invoke-interface {p0, v0}, Lzc/b;->F(LBc/d;)Lyc/L;

    move-result-object v2

    invoke-interface {p0, p3}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v3

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p4, :cond_1

    sget-object v2, Lyc/e;->a:Lyc/e;

    invoke-static {v2, p1, p3, v0}, Lyc/e;->n(Lyc/e;Lyc/K;LBc/d;LBc/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public static d(Lyc/K;LBc/e;LBc/h;)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lyc/K;->d:Lzc/b;

    invoke-interface {v0, p1, p2}, Lzc/b;->G(LBc/e;LBc/h;)V

    invoke-interface {v0, p2}, Lzc/b;->d(LBc/h;)Z

    move-result v1

    sget-object v2, Lfb/v;->a:Lfb/v;

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lzc/b;->r(LBc/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0, p2}, Lzc/b;->N(LBc/h;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lzc/b;->i(LBc/h;LBc/h;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, LBc/b;->FOR_SUBTYPING:LBc/b;

    invoke-interface {v0, p1, p0}, Lzc/b;->U(LBc/e;LBc/b;)Lyc/A;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    invoke-static {p1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_2
    return-object v2

    :cond_3
    new-instance v1, LHc/g;

    invoke-direct {v1}, LHc/g;-><init>()V

    invoke-virtual {p0}, Lyc/K;->b()V

    iget-object v2, p0, Lyc/K;->h:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, p0, Lyc/K;->i:LHc/i;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBc/e;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, LHc/i;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, LBc/b;->FOR_SUBTYPING:LBc/b;

    invoke-interface {v0, p1, v4}, Lzc/b;->U(LBc/e;LBc/b;)Lyc/A;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v4, p1

    :cond_5
    invoke-interface {v0, v4}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v5

    invoke-interface {v0, v5, p2}, Lzc/b;->i(LBc/h;LBc/h;)Z

    move-result v5

    sget-object v6, Lyc/J;->c:Lyc/J;

    if-eqz v5, :cond_6

    invoke-virtual {v1, v4}, LHc/g;->add(Ljava/lang/Object;)Z

    move-object v4, v6

    goto :goto_2

    :cond_6
    invoke-interface {v0, v4}, Lzc/b;->w0(LBc/d;)I

    move-result v5

    if-nez v5, :cond_7

    sget-object v4, Lyc/J;->b:Lyc/J;

    goto :goto_2

    :cond_7
    invoke-interface {v0, v4}, Lzc/b;->z(LBc/e;)Lzc/a;

    move-result-object v4

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {v0, p1}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object p1

    invoke-interface {v0, p1}, Lzc/b;->Z(LBc/h;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LBc/d;

    invoke-virtual {v4, p0, v5}, Lyc/c;->D(Lyc/K;LBc/d;)LBc/e;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lyc/K;->a()V

    return-object v1
.end method

.method public static e(Lyc/K;LBc/e;LBc/h;)Ljava/util/List;
    .locals 7

    invoke-static {p0, p1, p2}, Lyc/e;->d(Lyc/K;LBc/e;LBc/h;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_3

    :cond_0
    move-object p2, p1

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LBc/e;

    iget-object v3, p0, Lyc/K;->d:Lzc/b;

    invoke-interface {v3, v2}, Lzc/b;->r0(LBc/e;)LBc/g;

    move-result-object v2

    invoke-interface {v3, v2}, Lzc/b;->l0(LBc/g;)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-interface {v3, v2, v5}, Lzc/b;->u0(LBc/g;I)Lyc/Q;

    move-result-object v6

    invoke-interface {v3, v6}, Lzc/b;->L(Lyc/Q;)Lyc/d0;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v3, v6}, Lzc/b;->h(LBc/d;)Lyc/r;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    move-object p1, v0

    :cond_5
    :goto_3
    return-object p1
.end method

.method public static f(Lyc/K;LBc/d;LBc/d;Z)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lyc/K;->d(LBc/d;)Lyc/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyc/K;->c(LBc/d;)Lyc/d0;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lyc/K;->d(LBc/d;)Lyc/w;

    move-result-object v2

    invoke-virtual {v0, v2}, Lyc/K;->c(LBc/d;)Lyc/d0;

    move-result-object v2

    sget-object v3, Lyc/e;->a:Lyc/e;

    iget-boolean v4, v0, Lyc/K;->c:Z

    iget-object v5, v0, Lyc/K;->d:Lzc/b;

    if-eqz v4, :cond_0

    invoke-interface {v5, v1}, Lzc/b;->J(Lyc/d0;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5, v2}, Lzc/b;->t(LBc/d;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5, v1}, Lzc/b;->h(LBc/d;)Lyc/r;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v5, v1}, Lzc/b;->b(Lyc/r;)Lyc/A;

    move-result-object v1

    invoke-interface {v5, v2}, Lzc/b;->v0(LBc/d;)Lyc/A;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v5, v2}, Lzc/b;->s0(LBc/e;)LBc/f;

    move-result-object v2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lyc/e;->f(Lyc/K;LBc/d;LBc/d;Z)Z

    move-result v0

    return v0

    :cond_0
    invoke-interface {v5, v1}, Lzc/b;->n(LBc/d;)Lyc/A;

    move-result-object v4

    invoke-interface {v5, v2}, Lzc/b;->k(LBc/d;)Lyc/A;

    move-result-object v6

    invoke-interface {v5, v4}, Lzc/b;->Q(LBc/e;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-nez v7, :cond_11

    invoke-interface {v5, v6}, Lzc/b;->Q(LBc/e;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {v5, v4}, Lzc/b;->h0(LBc/e;)V

    invoke-interface {v5, v4}, Lzc/b;->c0(LBc/e;)V

    invoke-interface {v5, v6}, Lzc/b;->c0(LBc/e;)V

    invoke-interface {v5, v6}, Lzc/b;->E(LBc/e;)LBc/c;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v5, v7}, Lzc/b;->u(LBc/c;)Lyc/d0;

    move-result-object v11

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    if-eqz v7, :cond_8

    if-eqz v11, :cond_8

    invoke-interface {v5, v6}, Lzc/b;->I(LBc/d;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5, v11}, Lzc/b;->j0(LBc/d;)LBc/d;

    move-result-object v11

    goto :goto_1

    :cond_3
    invoke-interface {v5, v6}, Lzc/b;->w(LBc/e;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5, v11}, Lzc/b;->a(LBc/d;)Lyc/d0;

    move-result-object v11

    :cond_4
    :goto_1
    sget-object v7, Lyc/I;->CHECK_SUBTYPE_AND_LOWER:Lyc/I;

    sget-object v12, Lyc/d;->b:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v12, v7

    if-eq v7, v8, :cond_7

    const/4 v12, 0x2

    if-eq v7, v12, :cond_6

    const/4 v11, 0x3

    if-ne v7, v11, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    invoke-static {v3, v0, v4, v11}, Lyc/e;->n(Lyc/e;Lyc/K;LBc/d;LBc/d;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_7

    :cond_7
    invoke-static {v3, v0, v4, v11}, Lyc/e;->n(Lyc/e;Lyc/K;LBc/d;LBc/d;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_7

    :cond_8
    :goto_2
    invoke-interface {v5, v6}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v7

    invoke-interface {v5, v7}, Lzc/b;->c(LBc/h;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v5, v6}, Lzc/b;->I(LBc/d;)Z

    invoke-interface {v5, v7}, Lzc/b;->Z(LBc/h;)Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_a

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    move v3, v8

    goto :goto_3

    :cond_a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LBc/d;

    invoke-static {v3, v0, v4, v7}, Lyc/e;->n(Lyc/e;Lyc/K;LBc/d;LBc/d;)Z

    move-result v7

    if-nez v7, :cond_b

    move v3, v10

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_7

    :cond_c
    invoke-interface {v5, v4}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v3

    instance-of v7, v4, LBc/c;

    if-nez v7, :cond_f

    invoke-interface {v5, v3}, Lzc/b;->c(LBc/h;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5, v3}, Lzc/b;->Z(LBc/h;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    instance-of v7, v3, Ljava/util/Collection;

    if-eqz v7, :cond_d

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_4

    :cond_d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LBc/d;

    instance-of v7, v7, LBc/c;

    if-nez v7, :cond_e

    goto :goto_5

    :cond_f
    :goto_4
    invoke-static {v5, v6, v4}, Lyc/e;->k(Lzc/b;LBc/d;LBc/e;)LJb/W;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-interface {v5, v6}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Lzc/b;->x(LJb/W;LBc/h;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_10
    :goto_5
    const/4 v3, 0x0

    goto :goto_7

    :cond_11
    :goto_6
    iget-boolean v3, v0, Lyc/K;->a:Z

    if-eqz v3, :cond_12

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_12
    invoke-interface {v5, v4}, Lzc/b;->I(LBc/d;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v5, v6}, Lzc/b;->I(LBc/d;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_13
    invoke-interface {v5, v4}, Lzc/b;->p(LBc/e;)Lyc/A;

    move-result-object v3

    invoke-interface {v5, v6}, Lzc/b;->p(LBc/e;)Lyc/A;

    move-result-object v4

    const-string v6, "context"

    invoke-static {v5, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "a"

    invoke-static {v3, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "b"

    invoke-static {v4, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3, v4}, Lyc/c;->z(Lzc/b;LBc/d;LBc/d;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_7
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_14
    invoke-interface {v5, v1}, Lzc/b;->n(LBc/d;)Lyc/A;

    move-result-object v1

    invoke-interface {v5, v2}, Lzc/b;->k(LBc/d;)Lyc/A;

    move-result-object v2

    invoke-interface {v5, v2}, Lzc/b;->I(LBc/d;)Z

    move-result v3

    sget-object v4, Lyc/J;->c:Lyc/J;

    sget-object v6, Lyc/J;->b:Lyc/J;

    if-eqz v3, :cond_15

    goto/16 :goto_d

    :cond_15
    invoke-interface {v5, v1}, Lzc/b;->w(LBc/e;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-interface {v5, v1}, Lzc/b;->q0(LBc/d;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_d

    :cond_16
    instance-of v3, v1, LBc/c;

    if-eqz v3, :cond_17

    move-object v3, v1

    check-cast v3, LBc/c;

    invoke-interface {v5, v3}, Lzc/b;->m(LBc/c;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_d

    :cond_17
    invoke-static {v0, v1, v6}, Lyc/c;->h(Lyc/K;LBc/e;Lyc/c;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto/16 :goto_d

    :cond_18
    invoke-interface {v5, v2}, Lzc/b;->w(LBc/e;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto/16 :goto_c

    :cond_19
    sget-object v3, Lyc/J;->d:Lyc/J;

    invoke-static {v0, v2, v3}, Lyc/c;->h(Lyc/K;LBc/e;Lyc/c;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto/16 :goto_c

    :cond_1a
    invoke-interface {v5, v1}, Lzc/b;->r(LBc/e;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_c

    :cond_1b
    invoke-interface {v5, v2}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v3

    const-string v7, "end"

    invoke-static {v3, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Lyc/c;->j(Lyc/K;LBc/e;LBc/h;)Z

    move-result v7

    if-eqz v7, :cond_1c

    goto/16 :goto_d

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lyc/K;->b()V

    iget-object v7, v0, Lyc/K;->h:Ljava/util/ArrayDeque;

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v11, v0, Lyc/K;->i:LHc/i;

    invoke-static {v11}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_1d
    :goto_8
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_22

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LBc/e;

    invoke-static {v12}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, LHc/i;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-interface {v5, v12}, Lzc/b;->I(LBc/d;)Z

    move-result v13

    if-eqz v13, :cond_1e

    move-object v13, v4

    goto :goto_9

    :cond_1e
    move-object v13, v6

    :goto_9
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1f

    goto :goto_a

    :cond_1f
    const/4 v13, 0x0

    :goto_a
    if-nez v13, :cond_20

    goto :goto_8

    :cond_20
    invoke-interface {v5, v12}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v12

    invoke-interface {v5, v12}, Lzc/b;->Z(LBc/h;)Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LBc/d;

    invoke-virtual {v13, v0, v14}, Lyc/c;->D(Lyc/K;LBc/d;)LBc/e;

    move-result-object v14

    invoke-static {v0, v14, v3}, Lyc/c;->j(Lyc/K;LBc/e;LBc/h;)Z

    move-result v15

    if-eqz v15, :cond_21

    invoke-virtual/range {p0 .. p0}, Lyc/K;->a()V

    goto :goto_d

    :cond_21
    invoke-virtual {v7, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lyc/K;->a()V

    :goto_c
    move v8, v10

    goto/16 :goto_24

    :cond_23
    :goto_d
    invoke-interface {v5, v1}, Lzc/b;->P(LBc/e;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-interface {v5, v2}, Lzc/b;->P(LBc/e;)Z

    move-result v3

    if-nez v3, :cond_25

    :cond_24
    const/4 v3, 0x0

    goto :goto_10

    :cond_25
    invoke-static {v5, v1}, Lyc/e;->b(Lzc/b;LBc/e;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {v5, v2}, Lyc/e;->b(Lzc/b;LBc/e;)Z

    move-result v3

    if-eqz v3, :cond_26

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_26
    invoke-interface {v5, v1}, Lzc/b;->P(LBc/e;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static {v5, v0, v1, v2, v10}, Lyc/e;->c(Lzc/b;Lyc/K;LBc/e;LBc/e;Z)Z

    move-result v3

    if-eqz v3, :cond_24

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_27
    invoke-interface {v5, v2}, Lzc/b;->P(LBc/e;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v5, v1}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v3

    instance-of v7, v3, Lyc/v;

    if-eqz v7, :cond_2a

    invoke-interface {v5, v3}, Lzc/b;->Z(LBc/h;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    instance-of v7, v3, Ljava/util/Collection;

    if-eqz v7, :cond_28

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_28

    goto :goto_e

    :cond_28
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LBc/d;

    invoke-interface {v5, v7}, Lzc/b;->v0(LBc/d;)Lyc/A;

    move-result-object v7

    if-eqz v7, :cond_29

    invoke-interface {v5, v7}, Lzc/b;->P(LBc/e;)Z

    move-result v7

    if-ne v7, v8, :cond_29

    goto :goto_f

    :cond_2a
    :goto_e
    invoke-static {v5, v0, v2, v1, v8}, Lyc/e;->c(Lzc/b;Lyc/K;LBc/e;LBc/e;Z)Z

    move-result v3

    if-eqz v3, :cond_24

    :goto_f
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_10
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto/16 :goto_24

    :cond_2b
    invoke-interface {v5, v2}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v3

    invoke-interface {v5, v1}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Lzc/b;->i(LBc/h;LBc/h;)Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-interface {v5, v3}, Lzc/b;->e0(LBc/h;)I

    move-result v7

    if-nez v7, :cond_2c

    goto/16 :goto_24

    :cond_2c
    invoke-interface {v5, v2}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v7

    invoke-interface {v5, v7}, Lzc/b;->S(LBc/h;)Z

    move-result v7

    if-eqz v7, :cond_2d

    goto/16 :goto_24

    :cond_2d
    const-string v7, "superConstructor"

    invoke-static {v3, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Lzc/b;->r(LBc/e;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-static {v0, v1, v3}, Lyc/e;->e(Lyc/K;LBc/e;LBc/h;)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_16

    :cond_2e
    invoke-interface {v5, v3}, Lzc/b;->d(LBc/h;)Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-interface {v5, v3}, Lzc/b;->o(LBc/h;)Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-static {v0, v1, v3}, Lyc/e;->d(Lyc/K;LBc/e;LBc/h;)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_16

    :cond_2f
    new-instance v7, LHc/g;

    invoke-direct {v7}, LHc/g;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lyc/K;->b()V

    iget-object v11, v0, Lyc/K;->h:Ljava/util/ArrayDeque;

    invoke-static {v11}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v12, v0, Lyc/K;->i:LHc/i;

    invoke-static {v12}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_30
    :goto_11
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_34

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LBc/e;

    invoke-static {v13}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, LHc/i;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_30

    invoke-interface {v5, v13}, Lzc/b;->r(LBc/e;)Z

    move-result v14

    if-eqz v14, :cond_31

    invoke-virtual {v7, v13}, LHc/g;->add(Ljava/lang/Object;)Z

    move-object v14, v4

    goto :goto_12

    :cond_31
    move-object v14, v6

    :goto_12
    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_32

    goto :goto_13

    :cond_32
    const/4 v14, 0x0

    :goto_13
    if-nez v14, :cond_33

    goto :goto_11

    :cond_33
    invoke-interface {v5, v13}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v13

    invoke-interface {v5, v13}, Lzc/b;->Z(LBc/h;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_14
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_30

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LBc/d;

    invoke-virtual {v14, v0, v15}, Lyc/c;->D(Lyc/K;LBc/d;)LBc/e;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lyc/K;->a()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, LHc/g;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_35

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LBc/e;

    invoke-static {v12}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v0, v12, v3}, Lyc/e;->e(Lyc/K;LBc/e;LBc/h;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v12, v11}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_15

    :cond_35
    move-object v7, v11

    :goto_16
    invoke-interface {v7}, Ljava/util/List;->size()I

    check-cast v7, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v7, v12}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_37

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LBc/e;

    invoke-virtual {v0, v13}, Lyc/K;->c(LBc/d;)Lyc/d0;

    move-result-object v14

    invoke-interface {v5, v14}, Lzc/b;->v0(LBc/d;)Lyc/A;

    move-result-object v14

    if-nez v14, :cond_36

    goto :goto_18

    :cond_36
    move-object v13, v14

    :goto_18
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_37
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v7

    if-eqz v7, :cond_42

    if-eq v7, v8, :cond_41

    new-instance v4, LBc/a;

    invoke-interface {v5, v3}, Lzc/b;->e0(LBc/h;)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5, v3}, Lzc/b;->e0(LBc/h;)I

    move-result v6

    move v7, v10

    move v13, v7

    :goto_19
    if-ge v7, v6, :cond_3e

    if-nez v13, :cond_39

    invoke-interface {v5, v3, v7}, Lzc/b;->q(LBc/h;I)LJb/W;

    move-result-object v13

    invoke-interface {v5, v13}, Lzc/b;->m0(LJb/W;)LBc/j;

    move-result-object v13

    sget-object v14, LBc/j;->OUT:LBc/j;

    if-eq v13, v14, :cond_38

    goto :goto_1a

    :cond_38
    move v13, v10

    goto :goto_1b

    :cond_39
    :goto_1a
    move v13, v8

    :goto_1b
    if-nez v13, :cond_3d

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v11, v12}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, LBc/e;

    invoke-interface {v5, v8, v7}, Lzc/b;->C(LBc/e;I)Lyc/Q;

    move-result-object v9

    if-eqz v9, :cond_3b

    invoke-interface {v5, v9}, Lzc/b;->v(Lyc/Q;)LBc/j;

    move-result-object v10

    sget-object v12, LBc/j;->INV:LBc/j;

    if-ne v10, v12, :cond_3a

    goto :goto_1d

    :cond_3a
    const/4 v9, 0x0

    :goto_1d
    if-eqz v9, :cond_3b

    invoke-interface {v5, v9}, Lzc/b;->L(Lyc/Q;)Lyc/d0;

    move-result-object v9

    if-eqz v9, :cond_3b

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v12, 0xa

    goto :goto_1c

    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Incorrect type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", superType: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    invoke-interface {v5, v14}, Lzc/b;->D(Ljava/util/ArrayList;)Lyc/d0;

    move-result-object v8

    invoke-interface {v5, v8}, Lzc/b;->R(LBc/d;)Lyc/F;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v12, 0xa

    goto/16 :goto_19

    :cond_3e
    if-nez v13, :cond_3f

    invoke-static {v0, v4, v2}, Lyc/e;->m(Lyc/K;LBc/g;LBc/e;)Z

    move-result v1

    if-eqz v1, :cond_3f

    :goto_1e
    const/4 v8, 0x1

    goto/16 :goto_24

    :cond_3f
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, 0x0

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LBc/e;

    if-eqz v8, :cond_40

    goto :goto_1f

    :cond_40
    invoke-interface {v5, v3}, Lzc/b;->r0(LBc/e;)LBc/g;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lyc/e;->m(Lyc/K;LBc/g;LBc/e;)Z

    move-result v8

    goto :goto_1f

    :cond_41
    invoke-static {v11}, Lfb/n;->B(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBc/e;

    invoke-interface {v5, v1}, Lzc/b;->r0(LBc/e;)LBc/g;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lyc/e;->m(Lyc/K;LBc/g;LBc/e;)Z

    move-result v8

    goto/16 :goto_24

    :cond_42
    invoke-interface {v5, v1}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v2

    invoke-interface {v5, v2}, Lzc/b;->d(LBc/h;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v5, v2}, Lzc/b;->Y(LBc/h;)Z

    move-result v0

    move v8, v0

    goto/16 :goto_24

    :cond_43
    invoke-interface {v5, v1}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v2

    invoke-interface {v5, v2}, Lzc/b;->Y(LBc/h;)Z

    move-result v2

    if-eqz v2, :cond_44

    goto :goto_1e

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lyc/K;->b()V

    iget-object v2, v0, Lyc/K;->h:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, v0, Lyc/K;->i:LHc/i;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_45
    :goto_20
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBc/e;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, LHc/i;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v5, v1}, Lzc/b;->r(LBc/e;)Z

    move-result v7

    if-eqz v7, :cond_46

    move-object v7, v4

    goto :goto_21

    :cond_46
    move-object v7, v6

    :goto_21
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_47

    goto :goto_22

    :cond_47
    const/4 v7, 0x0

    :goto_22
    if-nez v7, :cond_48

    goto :goto_20

    :cond_48
    invoke-interface {v5, v1}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v1

    invoke-interface {v5, v1}, Lzc/b;->Z(LBc/h;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LBc/d;

    invoke-virtual {v7, v0, v8}, Lyc/c;->D(Lyc/K;LBc/d;)LBc/e;

    move-result-object v8

    invoke-interface {v5, v8}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v9

    invoke-interface {v5, v9}, Lzc/b;->Y(LBc/h;)Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-virtual/range {p0 .. p0}, Lyc/K;->a()V

    goto/16 :goto_1e

    :cond_49
    invoke-virtual {v2, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lyc/K;->a()V

    const/4 v8, 0x0

    :cond_4b
    :goto_24
    return v8
.end method

.method public static h(Lyc/K;LBc/d;LBc/d;)Z
    .locals 9

    const-string v0, "a"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    sget-object v1, Lyc/e;->a:Lyc/e;

    iget-object v2, p0, Lyc/K;->d:Lzc/b;

    invoke-static {v2, p1}, Lyc/e;->l(Lzc/b;LBc/d;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-static {v2, p2}, Lyc/e;->l(Lzc/b;LBc/d;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1}, Lyc/K;->d(LBc/d;)Lyc/w;

    move-result-object v3

    invoke-virtual {p0, v3}, Lyc/K;->c(LBc/d;)Lyc/d0;

    move-result-object v3

    invoke-virtual {p0, p2}, Lyc/K;->d(LBc/d;)Lyc/w;

    move-result-object v5

    invoke-virtual {p0, v5}, Lyc/K;->c(LBc/d;)Lyc/d0;

    move-result-object v5

    invoke-interface {v2, v3}, Lzc/b;->n(LBc/d;)Lyc/A;

    move-result-object v6

    invoke-interface {v2, v3}, Lzc/b;->F(LBc/d;)Lyc/L;

    move-result-object v7

    invoke-interface {v2, v5}, Lzc/b;->F(LBc/d;)Lyc/L;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lzc/b;->i(LBc/h;LBc/h;)Z

    move-result v7

    if-nez v7, :cond_1

    return v4

    :cond_1
    invoke-interface {v2, v6}, Lzc/b;->w0(LBc/d;)I

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v2, v3}, Lzc/b;->b0(Lyc/d0;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v2, v5}, Lzc/b;->b0(Lyc/d0;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2, v6}, Lzc/b;->I(LBc/d;)Z

    move-result p0

    invoke-interface {v2, v5}, Lzc/b;->n(LBc/d;)Lyc/A;

    move-result-object p1

    invoke-interface {v2, p1}, Lzc/b;->I(LBc/d;)Z

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v4

    :cond_4
    :goto_0
    return v0

    :cond_5
    invoke-static {v1, p0, p1, p2}, Lyc/e;->n(Lyc/e;Lyc/K;LBc/d;LBc/d;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1, p0, p2, p1}, Lyc/e;->n(Lyc/e;Lyc/K;LBc/d;LBc/d;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v0, v4

    :goto_1
    return v0
.end method

.method public static k(Lzc/b;LBc/d;LBc/e;)LJb/W;
    .locals 6

    invoke-interface {p0, p1}, Lzc/b;->w0(LBc/d;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_6

    invoke-interface {p0, p1, v2}, Lzc/b;->i0(LBc/d;I)Lyc/Q;

    move-result-object v4

    invoke-interface {p0, v4}, Lzc/b;->l(Lyc/Q;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    :cond_0
    if-eqz v3, :cond_5

    invoke-interface {p0, v3}, Lzc/b;->L(Lyc/Q;)Lyc/d0;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p0, v3}, Lzc/b;->n(LBc/d;)Lyc/A;

    move-result-object v4

    invoke-interface {p0, v4}, Lzc/b;->s(LBc/e;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, p2}, Lzc/b;->n(LBc/d;)Lyc/A;

    move-result-object v4

    invoke-interface {p0, v4}, Lzc/b;->s(LBc/e;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v3, p2}, Lyc/w;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    invoke-interface {p0, v3}, Lzc/b;->F(LBc/d;)Lyc/L;

    move-result-object v4

    invoke-interface {p0, p2}, Lzc/b;->F(LBc/d;)Lyc/L;

    move-result-object v5

    invoke-static {v4, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0, v3, p2}, Lyc/e;->k(Lzc/b;LBc/d;LBc/e;)LJb/W;

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    :cond_4
    :goto_2
    invoke-interface {p0, p1}, Lzc/b;->F(LBc/d;)Lyc/L;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lzc/b;->q(LBc/h;I)LJb/W;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v3
.end method

.method public static l(Lzc/b;LBc/d;)Z
    .locals 1

    invoke-interface {p0, p1}, Lzc/b;->F(LBc/d;)Lyc/L;

    move-result-object v0

    invoke-interface {p0, v0}, Lzc/b;->V(LBc/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lzc/b;->f0(LBc/d;)V

    invoke-interface {p0, p1}, Lzc/b;->t(LBc/d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lzc/b;->q0(LBc/d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lzc/b;->K(LBc/d;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(Lyc/K;LBc/g;LBc/e;)Z
    .locals 12

    const-string v0, "capturedSubArguments"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/K;->d:Lzc/b;

    invoke-interface {v0, p2}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v1

    invoke-interface {v0, p1}, Lzc/b;->l0(LBc/g;)I

    move-result v2

    invoke-interface {v0, v1}, Lzc/b;->e0(LBc/h;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_d

    invoke-interface {v0, p2}, Lzc/b;->w0(LBc/d;)I

    move-result v5

    if-eq v2, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    move v2, v4

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v3, :cond_c

    invoke-interface {v0, p2, v2}, Lzc/b;->i0(LBc/d;I)Lyc/Q;

    move-result-object v6

    invoke-interface {v0, v6}, Lzc/b;->L(Lyc/Q;)Lyc/d0;

    move-result-object v7

    if-nez v7, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {v0, p1, v2}, Lzc/b;->u0(LBc/g;I)Lyc/Q;

    move-result-object v8

    invoke-interface {v0, v8}, Lzc/b;->v(Lyc/Q;)LBc/j;

    sget-object v9, LBc/j;->INV:LBc/j;

    invoke-interface {v0, v8}, Lzc/b;->L(Lyc/Q;)Lyc/d0;

    move-result-object v8

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lzc/b;->q(LBc/h;I)LJb/W;

    move-result-object v10

    invoke-interface {v0, v10}, Lzc/b;->m0(LJb/W;)LBc/j;

    move-result-object v10

    invoke-interface {v0, v6}, Lzc/b;->v(Lyc/Q;)LBc/j;

    move-result-object v6

    const-string v11, "declared"

    invoke-static {v10, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "useSite"

    invoke-static {v6, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v10, v9, :cond_2

    move-object v10, v6

    goto :goto_1

    :cond_2
    if-ne v6, v9, :cond_3

    goto :goto_1

    :cond_3
    if-ne v10, v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_5

    iget-boolean p0, p0, Lyc/K;->a:Z

    return p0

    :cond_5
    sget-object v6, Lyc/e;->a:Lyc/e;

    if-ne v10, v9, :cond_6

    invoke-static {v0, v8, v7}, Lyc/e;->o(Lzc/b;LBc/d;LBc/d;)V

    invoke-static {v0, v7, v8}, Lyc/e;->o(Lzc/b;LBc/d;LBc/d;)V

    :cond_6
    iget v9, p0, Lyc/K;->g:I

    const/16 v11, 0x64

    if-gt v9, v11, :cond_b

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lyc/K;->g:I

    sget-object v9, Lyc/d;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v5, :cond_9

    const/4 v5, 0x2

    if-eq v9, v5, :cond_8

    const/4 v5, 0x3

    if-ne v9, v5, :cond_7

    invoke-static {v6, p0, v7, v8}, Lyc/e;->n(Lyc/e;Lyc/K;LBc/d;LBc/d;)Z

    move-result v5

    goto :goto_2

    :cond_7
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    invoke-static {v6, p0, v8, v7}, Lyc/e;->n(Lyc/e;Lyc/K;LBc/d;LBc/d;)Z

    move-result v5

    goto :goto_2

    :cond_9
    invoke-static {p0, v8, v7}, Lyc/e;->h(Lyc/K;LBc/d;LBc/d;)Z

    move-result v5

    :goto_2
    iget v6, p0, Lyc/K;->g:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lyc/K;->g:I

    if-nez v5, :cond_a

    return v4

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Arguments depth is too high. Some related argument: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    return v5

    :cond_d
    :goto_4
    return v4
.end method

.method public static n(Lyc/e;Lyc/K;LBc/d;LBc/d;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "subType"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "superType"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p2, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "subType"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "superType"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p1, p2, p3, p0}, Lyc/e;->f(Lyc/K;LBc/d;LBc/d;Z)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static o(Lzc/b;LBc/d;LBc/d;)V
    .locals 1

    invoke-interface {p0, p1}, Lzc/b;->v0(LBc/d;)Lyc/A;

    move-result-object p1

    instance-of v0, p1, LBc/c;

    if-eqz v0, :cond_2

    check-cast p1, LBc/c;

    invoke-interface {p0, p1}, Lzc/b;->o0(LBc/c;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Lzc/b;->g0(LBc/c;)Lzc/i;

    move-result-object v0

    invoke-interface {p0, v0}, Lzc/b;->X(Llc/b;)Lyc/Q;

    move-result-object v0

    invoke-interface {p0, v0}, Lzc/b;->l(Lyc/Q;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lzc/b;->y(LBc/c;)LBc/b;

    move-result-object p1

    sget-object v0, LBc/b;->FOR_SUBTYPING:LBc/b;

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p2}, Lzc/b;->F(LBc/d;)Lyc/L;

    :cond_2
    :goto_0
    return-void
.end method

.method public static p(Lyc/d0;Z)Lyc/n;
    .locals 6

    const-string v0, "type"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lyc/n;

    if-eqz v0, :cond_0

    check-cast p0, Lyc/n;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v0, v0, LJb/W;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v0, p0, Lzc/h;

    if-nez v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v3, v0, LMb/Q;

    if-eqz v3, :cond_2

    check-cast v0, LMb/Q;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, v0, LMb/Q;->m:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v0, v0, LJb/W;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lyc/b0;->e(Lyc/w;)Z

    move-result v3

    goto :goto_1

    :cond_4
    sget-object v0, Lzc/m;->a:Lzc/m;

    invoke-virtual {v0, v1}, Lzc/m;->g(Z)Lyc/K;

    move-result-object v0

    invoke-static {p0}, Lyc/c;->m(Lyc/w;)Lyc/A;

    move-result-object v4

    sget-object v5, Lyc/J;->b:Lyc/J;

    invoke-static {v0, v4, v5}, Lyc/c;->h(Lyc/K;LBc/e;Lyc/c;)Z

    move-result v0

    xor-int/2addr v3, v0

    :goto_1
    if-eqz v3, :cond_6

    instance-of v0, p0, Lyc/r;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lyc/r;

    iget-object v2, v0, Lyc/r;->b:Lyc/A;

    invoke-virtual {v2}, Lyc/w;->F0()Lyc/L;

    move-result-object v2

    iget-object v0, v0, Lyc/r;->c:Lyc/A;

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-static {v2, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Lyc/n;

    invoke-static {p0}, Lyc/c;->m(Lyc/w;)Lyc/A;

    move-result-object p0

    invoke-virtual {p0, v1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lyc/n;-><init>(Lyc/A;Z)V

    move-object p0, v0

    goto :goto_2

    :cond_6
    move-object p0, v2

    :goto_2
    return-object p0
.end method


# virtual methods
.method public a(LKb/h;LKb/h;)V
    .locals 1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKb/b;

    invoke-interface {v0}, LKb/b;->b()Lhc/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LKb/b;

    invoke-interface {p2}, LKb/b;->b()Lhc/c;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public g(Lyc/L;Ljava/util/List;)Lyc/U;
    .locals 4

    const-string p0, "typeConstructor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "arguments"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lyc/L;->a()Ljava/util/List;

    move-result-object p0

    const-string v0, "getParameters(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJb/W;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, LJb/W;->P()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-interface {p1}, Lyc/L;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJb/W;

    invoke-interface {v0}, LJb/i;->w()Lyc/L;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Lfb/n;->n0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lfb/B;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, Lyc/M;

    invoke-direct {p1, p0, v2}, Lyc/M;-><init>(Ljava/util/Map;Z)V

    return-object p1

    :cond_1
    new-instance p1, Lyc/u;

    check-cast p0, Ljava/util/Collection;

    new-array v0, v2, [LJb/W;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [LJb/W;

    check-cast p2, Ljava/util/Collection;

    new-array v0, v2, [Lyc/Q;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lyc/Q;

    invoke-direct {p1, p0, p2, v2}, Lyc/u;-><init>([LJb/W;[Lyc/Q;Z)V

    return-object p1
.end method

.method public i(Lo3/i;Lyc/H;ZIZ)Lyc/A;
    .locals 7

    new-instance v0, Lyc/F;

    sget-object v1, Lyc/e0;->INVARIANT:Lyc/e0;

    iget-object v2, p1, Lo3/i;->b:Ljava/lang/Object;

    check-cast v2, LJb/V;

    move-object v3, v2

    check-cast v3, Lwc/t;

    invoke-virtual {v3}, Lwc/t;->W0()Lyc/A;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p4}, Lyc/e;->j(Lyc/Q;Lo3/i;LJb/W;I)Lyc/Q;

    move-result-object p4

    invoke-virtual {p4}, Lyc/Q;->b()Lyc/w;

    move-result-object v0

    const-string v3, "getType(...)"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyc/c;->b(Lyc/w;)Lyc/A;

    move-result-object v0

    invoke-static {v0}, Lyc/c;->k(Lyc/w;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p4}, Lyc/Q;->a()Lyc/e0;

    invoke-virtual {v0}, Lyc/w;->u()LKb/h;

    move-result-object p4

    invoke-static {p2}, Lyc/j;->a(Lyc/H;)LKb/h;

    move-result-object v3

    invoke-virtual {p0, p4, v3}, Lyc/e;->a(LKb/h;LKb/h;)V

    invoke-static {v0}, Lyc/c;->k(Lyc/w;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v0}, Lyc/c;->k(Lyc/w;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lyc/w;->E0()Lyc/H;

    move-result-object p0

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, Lyc/w;->E0()Lyc/H;

    move-result-object p0

    const-string p4, "other"

    invoke-static {p0, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, LEc/d;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p0}, LEc/d;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    move-object p0, p2

    goto/16 :goto_3

    :cond_3
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lyc/H;->b:LA7/h;

    iget-object v3, v3, LA7/h;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    const-string v4, "<get-values>(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, p2, LEc/d;->a:LEc/a;

    invoke-virtual {v5, v4}, LEc/a;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyc/i;

    iget-object v6, p0, LEc/d;->a:LEc/a;

    invoke-virtual {v6, v4}, LEc/a;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/i;

    if-nez v5, :cond_6

    if-eqz v4, :cond_5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, Lyc/i;

    iget-object v4, v4, Lyc/i;->a:LKb/h;

    iget-object v5, v5, Lyc/i;->a:LKb/h;

    invoke-static {v4, v5}, LG5/V3;->a(LKb/h;LKb/h;)LKb/h;

    move-result-object v4

    invoke-direct {v6, v4}, Lyc/i;-><init>(LKb/h;)V

    move-object v4, v6

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    new-instance v6, Lyc/i;

    iget-object v5, v5, Lyc/i;->a:LKb/h;

    iget-object v4, v4, Lyc/i;->a:LKb/h;

    invoke-static {v5, v4}, LG5/V3;->a(LKb/h;LKb/h;)LKb/h;

    move-result-object v4

    invoke-direct {v6, v4}, Lyc/i;-><init>(LKb/h;)V

    move-object v5, v6

    :goto_1
    move-object v4, v5

    :goto_2
    invoke-static {p4, v4}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    invoke-static {p4}, LA7/h;->c(Ljava/util/List;)Lyc/H;

    move-result-object p0

    :goto_3
    const/4 p4, 0x1

    invoke-static {v0, v1, p0, p4}, Lyc/c;->r(Lyc/A;Ljava/util/List;Lyc/H;I)Lyc/A;

    move-result-object v0

    :goto_4
    invoke-static {v0, p3}, Lyc/b0;->i(Lyc/A;Z)Lyc/A;

    move-result-object p0

    if-eqz p5, :cond_9

    check-cast v2, LMb/g;

    iget-object p4, v2, LMb/g;->i:LMb/f;

    const-string p5, "getTypeConstructor(...)"

    invoke-static {p4, p5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p5, Lrc/n;->b:Lrc/n;

    iget-object p1, p1, Lo3/i;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p1, p5, p2, p4, p3}, Lyc/c;->v(Ljava/util/List;Lrc/o;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object p1

    invoke-static {p0, p1}, Lyc/c;->F(Lyc/A;Lyc/A;)Lyc/A;

    move-result-object p0

    :cond_9
    return-object p0
.end method

.method public j(Lyc/Q;Lo3/i;LJb/W;I)Lyc/Q;
    .locals 13

    move-object v6, p0

    move-object v7, p2

    move/from16 v8, p4

    const/16 v0, 0x64

    iget-object v1, v7, Lo3/i;->b:Ljava/lang/Object;

    check-cast v1, LJb/V;

    if-gt v8, v0, :cond_1e

    invoke-virtual {p1}, Lyc/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p3 .. p3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lyc/b0;->j(LJb/W;)Lyc/F;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lyc/Q;->b()Lyc/w;

    move-result-object v0

    const-string v2, "getType(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v3

    const-string v4, "constructor"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lyc/L;->c()LJb/i;

    move-result-object v3

    instance-of v4, v3, LJb/W;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v7, Lo3/i;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/Q;

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-nez v3, :cond_c

    invoke-virtual {p1}, Lyc/Q;->b()Lyc/w;

    move-result-object v0

    invoke-virtual {v0}, Lyc/w;->I0()Lyc/d0;

    move-result-object v0

    invoke-static {v0}, Lyc/c;->b(Lyc/w;)Lyc/A;

    move-result-object v9

    invoke-static {v9}, Lyc/c;->k(Lyc/w;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, LCc/a;->c:LCc/a;

    invoke-static {v9, v0, v5}, Lyc/b0;->c(Lyc/w;Lsb/k;LHc/i;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v9}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v1

    invoke-interface {v0}, Lyc/L;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    invoke-virtual {v9}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    instance-of v3, v1, LJb/W;

    if-eqz v3, :cond_3

    move-object v1, p1

    goto/16 :goto_3

    :cond_3
    instance-of v3, v1, LJb/V;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    check-cast v1, LJb/V;

    invoke-virtual {p2, v1}, Lo3/i;->f(LJb/V;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lyc/F;

    sget-object v2, Lyc/e0;->INVARIANT:Lyc/e0;

    sget-object v3, LAc/k;->RECURSIVE_TYPE_ALIAS:LAc/k;

    check-cast v1, LMb/n;

    invoke-virtual {v1}, LMb/n;->getName()Lhc/f;

    move-result-object v1

    iget-object v1, v1, Lhc/f;->a:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v9}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v2, v10}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v4, 0x1

    if-ltz v4, :cond_5

    check-cast v10, Lyc/Q;

    invoke-interface {v0}, Lyc/L;->a()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJb/W;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {p0, v10, p2, v4, v12}, Lyc/e;->j(Lyc/Q;Lo3/i;LJb/W;I)Lyc/Q;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v11

    goto :goto_1

    :cond_5
    invoke-static {}, Lfb/o;->l()V

    throw v5

    :cond_6
    invoke-static {p2, v1, v3}, Lyc/c;->e(Lo3/i;LJb/V;Ljava/util/List;)Lo3/i;

    move-result-object v1

    invoke-virtual {v9}, Lyc/w;->E0()Lyc/H;

    move-result-object v2

    invoke-virtual {v9}, Lyc/w;->G0()Z

    move-result v3

    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lyc/e;->i(Lo3/i;Lyc/H;ZIZ)Lyc/A;

    move-result-object v0

    invoke-virtual {p0, v9, p2, v8}, Lyc/e;->q(Lyc/A;Lo3/i;I)Lyc/A;

    move-result-object v1

    invoke-static {v0, v1}, Lyc/c;->F(Lyc/A;Lyc/A;)Lyc/A;

    move-result-object v0

    new-instance v1, Lyc/F;

    invoke-virtual {p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v9, p2, v8}, Lyc/e;->q(Lyc/A;Lo3/i;I)Lyc/A;

    move-result-object v0

    invoke-static {v0}, Lyc/Y;->d(Lyc/w;)Lyc/Y;

    invoke-virtual {v0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_9

    check-cast v3, Lyc/Q;

    invoke-virtual {v3}, Lyc/Q;->c()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v3}, Lyc/Q;->b()Lyc/w;

    move-result-object v3

    invoke-static {v3, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, LCc/a;->b:LCc/a;

    invoke-static {v3, v7, v5}, Lyc/b0;->c(Lyc/w;Lsb/k;LHc/i;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v9}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/Q;

    invoke-virtual {v9}, Lyc/w;->F0()Lyc/L;

    move-result-object v3

    invoke-interface {v3}, Lyc/L;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJb/W;

    :cond_8
    move v4, v6

    goto :goto_2

    :cond_9
    invoke-static {}, Lfb/o;->l()V

    throw v5

    :cond_a
    new-instance v1, Lyc/F;

    invoke-virtual {p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    :goto_3
    move-object v0, v1

    goto :goto_5

    :cond_b
    :goto_4
    move-object v0, p1

    :goto_5
    return-object v0

    :cond_c
    invoke-virtual {v3}, Lyc/Q;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static/range {p3 .. p3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lyc/b0;->j(LJb/W;)Lyc/F;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-virtual {v3}, Lyc/Q;->b()Lyc/w;

    move-result-object v2

    invoke-virtual {v2}, Lyc/w;->I0()Lyc/d0;

    move-result-object v2

    invoke-virtual {v3}, Lyc/Q;->a()Lyc/e0;

    move-result-object v3

    const-string v4, "getProjectionKind(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v7

    invoke-static {v7, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "typeAlias"

    if-ne v7, v3, :cond_e

    goto :goto_6

    :cond_e
    sget-object v8, Lyc/e0;->INVARIANT:Lyc/e0;

    if-ne v7, v8, :cond_f

    goto :goto_6

    :cond_f
    if-ne v3, v8, :cond_10

    move-object v3, v7

    goto :goto_6

    :cond_10
    invoke-static {v1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    if-eqz p3, :cond_11

    invoke-interface/range {p3 .. p3}, LJb/W;->A()Lyc/e0;

    move-result-object v7

    if-nez v7, :cond_12

    :cond_11
    sget-object v7, Lyc/e0;->INVARIANT:Lyc/e0;

    :cond_12
    if-ne v7, v3, :cond_13

    goto :goto_7

    :cond_13
    sget-object v8, Lyc/e0;->INVARIANT:Lyc/e0;

    if-ne v7, v8, :cond_14

    goto :goto_7

    :cond_14
    if-ne v3, v8, :cond_15

    move-object v3, v8

    goto :goto_7

    :cond_15
    invoke-static {v1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v0}, Lyc/w;->u()LKb/h;

    move-result-object v1

    invoke-virtual {v2}, Lyc/w;->u()LKb/h;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lyc/e;->a(LKb/h;LKb/h;)V

    invoke-static {v2}, Lyc/c;->b(Lyc/w;)Lyc/A;

    move-result-object v1

    invoke-virtual {v0}, Lyc/w;->G0()Z

    move-result v2

    invoke-static {v1, v2}, Lyc/b0;->i(Lyc/A;Z)Lyc/A;

    move-result-object v1

    invoke-virtual {v0}, Lyc/w;->E0()Lyc/H;

    move-result-object v0

    invoke-static {v1}, Lyc/c;->k(Lyc/w;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_c

    :cond_16
    invoke-static {v1}, Lyc/c;->k(Lyc/w;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lyc/w;->E0()Lyc/H;

    move-result-object v0

    goto/16 :goto_b

    :cond_17
    invoke-virtual {v1}, Lyc/w;->E0()Lyc/H;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "other"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LEc/d;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v2}, LEc/d;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    goto/16 :goto_b

    :cond_18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lyc/H;->b:LA7/h;

    iget-object v6, v6, LA7/h;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    const-string v7, "<get-values>(...)"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget-object v8, v0, LEc/d;->a:LEc/a;

    invoke-virtual {v8, v7}, LEc/a;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyc/i;

    iget-object v9, v2, LEc/d;->a:LEc/a;

    invoke-virtual {v9, v7}, LEc/a;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/i;

    if-nez v8, :cond_1b

    if-eqz v7, :cond_1a

    if-nez v8, :cond_19

    goto :goto_a

    :cond_19
    new-instance v9, Lyc/i;

    iget-object v7, v7, Lyc/i;->a:LKb/h;

    iget-object v8, v8, Lyc/i;->a:LKb/h;

    invoke-static {v7, v8}, LG5/V3;->a(LKb/h;LKb/h;)LKb/h;

    move-result-object v7

    invoke-direct {v9, v7}, Lyc/i;-><init>(LKb/h;)V

    move-object v7, v9

    goto :goto_a

    :cond_1a
    move-object v7, v5

    goto :goto_a

    :cond_1b
    if-nez v7, :cond_1c

    goto :goto_9

    :cond_1c
    new-instance v9, Lyc/i;

    iget-object v8, v8, Lyc/i;->a:LKb/h;

    iget-object v7, v7, Lyc/i;->a:LKb/h;

    invoke-static {v8, v7}, LG5/V3;->a(LKb/h;LKb/h;)LKb/h;

    move-result-object v7

    invoke-direct {v9, v7}, Lyc/i;-><init>(LKb/h;)V

    move-object v8, v9

    :goto_9
    move-object v7, v8

    :goto_a
    invoke-static {v4, v7}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_8

    :cond_1d
    invoke-static {v4}, LA7/h;->c(Ljava/util/List;)Lyc/H;

    move-result-object v0

    :goto_b
    const/4 v2, 0x1

    invoke-static {v1, v5, v0, v2}, Lyc/c;->r(Lyc/A;Ljava/util/List;Lyc/H;I)Lyc/A;

    move-result-object v1

    :goto_c
    new-instance v0, Lyc/F;

    invoke-direct {v0, v1, v3}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Too deep recursion while expanding type alias "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, LMb/n;

    invoke-virtual {v1}, LMb/n;->getName()Lhc/f;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public q(Lyc/A;Lo3/i;I)Lyc/A;
    .locals 8

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-virtual {p1}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_1

    check-cast v4, Lyc/Q;

    invoke-interface {v0}, Lyc/L;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJb/W;

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, v4, p2, v3, v5}, Lyc/e;->j(Lyc/Q;Lo3/i;LJb/W;I)Lyc/Q;

    move-result-object v3

    invoke-virtual {v3}, Lyc/Q;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lyc/F;

    invoke-virtual {v3}, Lyc/Q;->a()Lyc/e0;

    move-result-object v7

    invoke-virtual {v3}, Lyc/Q;->b()Lyc/w;

    move-result-object v3

    invoke-virtual {v4}, Lyc/Q;->b()Lyc/w;

    move-result-object v4

    invoke-virtual {v4}, Lyc/w;->G0()Z

    move-result v4

    invoke-static {v3, v4}, Lyc/b0;->h(Lyc/w;Z)Lyc/w;

    move-result-object v3

    invoke-direct {v5, v3, v7}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lfb/o;->l()V

    throw v5

    :cond_2
    const/4 p0, 0x2

    invoke-static {p1, v2, v5, p0}, Lyc/c;->r(Lyc/A;Ljava/util/List;Lyc/H;I)Lyc/A;

    move-result-object p0

    return-object p0
.end method
