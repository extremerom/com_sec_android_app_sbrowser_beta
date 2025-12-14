.class public final LMb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LMb/a;->a:I

    iput-object p2, p0, LMb/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$receiver"

    const-string v3, "getType(...)"

    const-string v4, "fqName"

    const-string v5, ", "

    const-string v6, "ClassicTypeSystemContext couldn\'t handle: "

    sget-object v7, Ldb/r;->a:Ldb/r;

    const/16 v8, 0xa

    const/4 v9, 0x0

    const-string v10, "it"

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v13, v0, LMb/a;->b:Ljava/lang/Object;

    iget v0, v0, LMb/a;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    check-cast v0, Lyc/P;

    iget-object v1, v0, Lyc/P;->a:LJb/W;

    check-cast v13, LL8/a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyc/P;->b:LXb/a;

    iget-object v10, v0, LXb/a;->e:Ljava/util/Set;

    if-eqz v10, :cond_0

    invoke-interface {v1}, LJb/W;->a()LJb/W;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v13, v0}, LL8/a;->o(LXb/a;)Lyc/d0;

    move-result-object v0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v1}, LJb/i;->n()Lyc/A;

    move-result-object v2

    const-string v3, "getDefaultType(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v2, v2, v3, v10}, LG5/B;->e(Lyc/w;Lyc/A;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    invoke-static {v3, v8}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lfb/C;->g(I)I

    move-result v2

    const/16 v4, 0x10

    if-ge v2, v4, :cond_1

    move v2, v4

    :cond_1
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, LJb/W;

    if-eqz v10, :cond_3

    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v14, v0}, Lyc/b0;->k(LJb/W;LXb/a;)Lyc/Q;

    move-result-object v2

    goto :goto_4

    :cond_3
    :goto_1
    iget-object v2, v0, LXb/a;->e:Ljava/util/Set;

    if-eqz v2, :cond_4

    invoke-static {v2, v1}, Lfb/F;->f(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v2

    :goto_2
    move-object v5, v2

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lfb/F;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    goto :goto_2

    :goto_3
    const/4 v4, 0x0

    const/16 v7, 0x2f

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, LXb/a;->a(LXb/a;LXb/b;ZLjava/util/Set;Lyc/A;I)LXb/a;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, LL8/a;->p(LJb/W;LXb/a;)Lyc/w;

    move-result-object v2

    invoke-static {v14, v0, v13, v2}, LXb/f;->a(LJb/W;LXb/a;LL8/a;Lyc/w;)Lyc/Q;

    move-result-object v2

    :goto_4
    invoke-interface {v14}, LJb/i;->w()Lyc/L;

    move-result-object v3

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance v2, Lyc/M;

    invoke-direct {v2, v8, v9}, Lyc/M;-><init>(Ljava/util/Map;Z)V

    new-instance v3, Lyc/Y;

    invoke-direct {v3, v2}, Lyc/Y;-><init>(Lyc/U;)V

    invoke-interface {v1}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    const-string v2, "getUpperBounds(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v3, v1, v0}, LL8/a;->w(Lyc/Y;Ljava/util/List;LXb/a;)Lgb/h;

    move-result-object v1

    iget-object v2, v1, Lgb/h;->a:Lgb/f;

    invoke-virtual {v2}, Lgb/f;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v0, v1, Lgb/h;->a:Lgb/f;

    iget v0, v0, Lgb/f;->i:I

    if-ne v0, v12, :cond_6

    invoke-static {v1}, Lfb/n;->T(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/w;

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should only be one computed upper bound if no need to intersect all bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v13, v0}, LL8/a;->o(LXb/a;)Lyc/d0;

    move-result-object v0

    :goto_5
    return-object v0

    :pswitch_0
    move-object v0, v1

    check-cast v0, Lzc/f;

    const-string v1, "kotlinTypeRefiner"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lyc/v;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v13, Lyc/v;->b:Ljava/util/LinkedHashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v8}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/w;

    invoke-virtual {v3, v0}, Lyc/w;->H0(Lzc/f;)Lyc/w;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v12

    goto :goto_6

    :cond_8
    if-nez v9, :cond_9

    goto :goto_7

    :cond_9
    iget-object v1, v13, Lyc/v;->a:Lyc/w;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Lyc/w;->H0(Lzc/f;)Lyc/w;

    move-result-object v11

    :cond_a
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    new-instance v1, Lyc/v;

    invoke-direct {v1, v0}, Lyc/v;-><init>(Ljava/util/AbstractCollection;)V

    iput-object v11, v1, Lyc/v;->a:Lyc/w;

    move-object v11, v1

    :goto_7
    if-nez v11, :cond_b

    goto :goto_8

    :cond_b
    move-object v13, v11

    :goto_8
    invoke-virtual {v13}, Lyc/v;->f()Lyc/A;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object v0, v1

    check-cast v0, Lyc/w;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v13, Lsb/k;

    invoke-interface {v13, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object v0, v1

    check-cast v0, Lyc/g;

    const-string v1, "supertypes"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lyc/h;

    invoke-virtual {v13}, Lyc/h;->h()LJb/T;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "superTypes"

    iget-object v2, v0, Lyc/g;->a:Ljava/util/Collection;

    invoke-static {v2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v13}, Lyc/h;->g()Lyc/w;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_9

    :cond_c
    move-object v1, v11

    :goto_9
    if-nez v1, :cond_d

    sget-object v1, Lfb/v;->a:Lfb/v;

    :cond_d
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    :cond_e
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_f

    move-object v11, v2

    check-cast v11, Ljava/util/List;

    :cond_f
    if-nez v11, :cond_10

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    :cond_10
    invoke-virtual {v13, v11}, Lyc/h;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lyc/g;->b:Ljava/util/List;

    return-object v7

    :pswitch_3
    move-object v0, v1

    check-cast v0, Lhc/b;

    invoke-static {v0, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lvc/c;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LJb/S;->L:LJb/T;

    return-object v0

    :pswitch_4
    move-object v0, v1

    check-cast v0, Luc/h;

    const-string v1, "key"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Luc/i;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v13, Luc/i;->a:Luc/k;

    iget-object v2, v1, Luc/k;->k:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, v0, Luc/h;->a:Lhc/b;

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLb/c;

    invoke-interface {v3, v4}, LLb/c;->c(Lhc/b;)LJb/f;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object v11, v3

    goto/16 :goto_e

    :cond_12
    sget-object v2, Luc/i;->c:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_e

    :cond_13
    iget-object v0, v0, Luc/h;->b:Luc/f;

    if-nez v0, :cond_14

    iget-object v0, v1, Luc/k;->d:Luc/g;

    invoke-interface {v0, v4}, Luc/g;->j(Lhc/b;)Luc/f;

    move-result-object v0

    if-nez v0, :cond_14

    goto/16 :goto_e

    :cond_14
    invoke-virtual {v4}, Lhc/b;->e()Lhc/b;

    move-result-object v2

    iget-object v9, v0, Luc/f;->c:Lec/a;

    iget-object v8, v0, Luc/f;->a:Lec/g;

    iget-object v7, v0, Luc/f;->b:Lcc/k;

    if-eqz v2, :cond_18

    invoke-virtual {v13, v2, v11}, Luc/i;->a(Lhc/b;Luc/f;)LJb/f;

    move-result-object v1

    instance-of v2, v1, Lwc/i;

    if-eqz v2, :cond_15

    check-cast v1, Lwc/i;

    goto :goto_a

    :cond_15
    move-object v1, v11

    :goto_a
    if-nez v1, :cond_16

    goto/16 :goto_e

    :cond_16
    invoke-virtual {v4}, Lhc/b;->f()Lhc/f;

    move-result-object v2

    invoke-virtual {v1}, Lwc/i;->D0()Lwc/g;

    move-result-object v3

    invoke-virtual {v3}, Lwc/p;->m()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_e

    :cond_17
    iget-object v1, v1, Lwc/i;->l:Luc/m;

    :goto_b
    move-object v6, v1

    goto :goto_d

    :cond_18
    iget-object v2, v4, Lhc/b;->a:Lhc/c;

    iget-object v1, v1, Luc/k;->f:LJb/L;

    invoke-static {v1, v2}, LJb/y;->i(LJb/I;Lhc/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LJb/H;

    instance-of v5, v3, Lvc/c;

    if-eqz v5, :cond_1b

    check-cast v3, Lvc/c;

    invoke-virtual {v4}, Lhc/b;->f()Lhc/f;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lvc/c;->G()Lrc/o;

    move-result-object v3

    check-cast v3, Lwc/p;

    invoke-virtual {v3}, Lwc/p;->m()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_c

    :cond_1a
    move-object v2, v11

    :cond_1b
    :goto_c
    move-object v15, v2

    check-cast v15, LJb/H;

    if-nez v15, :cond_1c

    goto :goto_e

    :cond_1c
    new-instance v1, LX4/i;

    iget-object v2, v7, Lcc/k;->E:Lcc/Z;

    const-string v3, "getTypeTable(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, LX4/i;-><init>(Lcc/Z;)V

    sget-object v2, Lec/i;->b:Lec/i;

    iget-object v2, v7, Lcc/k;->G:Lcc/g0;

    const-string v3, "getVersionRequirementTable(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LG5/R2;->c(Lcc/g0;)Lec/i;

    move-result-object v18

    const/16 v20, 0x0

    iget-object v14, v13, Luc/i;->a:Luc/k;

    move-object/from16 v16, v8

    move-object/from16 v17, v1

    move-object/from16 v19, v9

    invoke-virtual/range {v14 .. v20}, Luc/k;->a(LJb/H;Lec/g;LX4/i;Lec/i;Lec/a;Lac/h;)Luc/m;

    move-result-object v1

    goto :goto_b

    :goto_d
    new-instance v11, Lwc/i;

    iget-object v10, v0, Luc/f;->d:LJb/S;

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lwc/i;-><init>(Luc/m;Lcc/k;Lec/g;Lec/a;LJb/S;)V

    :goto_e
    return-object v11

    :pswitch_5
    move-object v0, v1

    check-cast v0, Lhc/c;

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LIb/s;

    invoke-virtual {v13, v0}, LIb/s;->d(Lhc/c;)Lvc/c;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, v13, LIb/s;->c:Luc/k;

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v1}, Lvc/c;->V0(Luc/k;)V

    move-object v11, v0

    goto :goto_f

    :cond_1d
    const-string v0, "components"

    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v11

    :cond_1e
    :goto_f
    return-object v11

    :pswitch_6
    move-object v0, v1

    check-cast v0, LJb/C;

    invoke-static {v0, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lyc/w;

    return-object v13

    :pswitch_7
    move-object v0, v1

    check-cast v0, LJb/C;

    invoke-static {v0, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, LJb/C;->j()LGb/i;

    move-result-object v0

    check-cast v13, LGb/l;

    invoke-virtual {v0, v13}, LGb/i;->r(LGb/l;)Lyc/A;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static/range {p1 .. p1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v13, LHc/i;

    invoke-virtual {v13, v1}, LHc/i;->add(Ljava/lang/Object;)Z

    return-object v7

    :pswitch_9
    move-object v0, v1

    check-cast v0, LOb/b;

    const-string v1, "kotlinClass"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LQ9/a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lo3/c;

    invoke-direct {v5, v13, v1, v2}, Lo3/c;-><init>(LQ9/a;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object v0, v0, LOb/b;->a:Ljava/lang/Class;

    const-string v6, "klass"

    invoke-static {v0, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v6}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v6

    :goto_10
    invoke-virtual {v6}, Lbd/e;->hasNext()Z

    move-result v7

    const-string v8, "toString(...)"

    const-string v10, "("

    if-eqz v7, :cond_25

    invoke-virtual {v6}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v10

    :goto_11
    invoke-virtual {v10}, Lbd/e;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1f

    invoke-virtual {v10}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Class;

    invoke-static {v14}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v14}, LPb/c;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_1f
    const-string v10, ")"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    const-string v14, "getReturnType(...)"

    invoke-static {v10, v14}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, LPb/c;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v11, v10}, Lo3/c;->o(Lhc/f;Ljava/lang/String;)Lcom/google/firebase/messaging/q;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    invoke-static {v10}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v10

    :goto_12
    invoke-virtual {v10}, Lbd/e;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-virtual {v10}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/annotation/Annotation;

    invoke-static {v11}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v11}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object v13

    invoke-static {v13}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v14

    new-instance v15, LOb/a;

    invoke-direct {v15, v11}, LOb/a;-><init>(Ljava/lang/annotation/Annotation;)V

    iget-object v9, v8, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v9, Lo3/c;

    iget-object v9, v9, Lo3/c;->a:Ljava/lang/Object;

    check-cast v9, LQ9/a;

    iget-object v12, v8, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v9, v14, v15, v12}, LQ9/a;->u(Lhc/b;LOb/a;Ljava/util/List;)LD4/d;

    move-result-object v9

    if-eqz v9, :cond_20

    invoke-static {v9, v11, v13}, Lp7/b;->c(Lac/n;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_20
    const/4 v9, 0x0

    const/4 v12, 0x1

    goto :goto_12

    :cond_21
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v9, "getParameterAnnotations(...)"

    invoke-static {v7, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, [[Ljava/lang/annotation/Annotation;

    array-length v9, v7

    const/4 v10, 0x0

    :goto_13
    if-ge v10, v9, :cond_24

    aget-object v11, v7, v10

    invoke-static {v11}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v11

    :cond_22
    :goto_14
    invoke-virtual {v11}, Lbd/e;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-virtual {v11}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/annotation/Annotation;

    invoke-static {v12}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object v13

    invoke-static {v13}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v14

    new-instance v15, LOb/a;

    invoke-direct {v15, v12}, LOb/a;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v8, v10, v14, v15}, Lcom/google/firebase/messaging/q;->m(ILhc/b;LOb/a;)LD4/d;

    move-result-object v14

    if-eqz v14, :cond_22

    invoke-static {v14, v12, v13}, Lp7/b;->c(Lac/n;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_14

    :cond_23
    const/4 v12, 0x1

    add-int/2addr v10, v12

    goto :goto_13

    :cond_24
    invoke-virtual {v8}, Lcom/google/firebase/messaging/q;->l()V

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto/16 :goto_10

    :cond_25
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-static {v6}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v6

    :goto_15
    invoke-virtual {v6}, Lbd/e;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-virtual {v6}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    sget-object v9, Lhc/h;->e:Lhc/f;

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v12

    :goto_16
    invoke-virtual {v12}, Lbd/e;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-virtual {v12}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    invoke-static {v13}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v13}, LPb/c;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_26
    const-string v12, ")V"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v9, v11}, Lo3/c;->o(Lhc/f;Ljava/lang/String;)Lcom/google/firebase/messaging/q;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v11

    invoke-static {v11}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v11

    :goto_17
    invoke-virtual {v11}, Lbd/e;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_28

    invoke-virtual {v11}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/annotation/Annotation;

    invoke-static {v12}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v12}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object v13

    invoke-static {v13}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v14

    new-instance v15, LOb/a;

    invoke-direct {v15, v12}, LOb/a;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object/from16 p0, v6

    iget-object v6, v9, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v6, Lo3/c;

    iget-object v6, v6, Lo3/c;->a:Ljava/lang/Object;

    check-cast v6, LQ9/a;

    move-object/from16 p1, v8

    iget-object v8, v9, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v6, v14, v15, v8}, LQ9/a;->u(Lhc/b;LOb/a;Ljava/util/List;)LD4/d;

    move-result-object v6

    if-eqz v6, :cond_27

    invoke-static {v6, v12, v13}, Lp7/b;->c(Lac/n;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_27
    move-object/from16 v6, p0

    move-object/from16 v8, p1

    goto :goto_17

    :cond_28
    move-object/from16 p0, v6

    move-object/from16 p1, v8

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    array-length v8, v6

    if-nez v8, :cond_29

    goto :goto_1a

    :cond_29
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    array-length v8, v6

    sub-int/2addr v7, v8

    array-length v8, v6

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v8, :cond_2c

    aget-object v12, v6, v11

    invoke-static {v12}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v12

    :goto_19
    invoke-virtual {v12}, Lbd/e;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2b

    invoke-virtual {v12}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/annotation/Annotation;

    invoke-static {v13}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object v14

    invoke-static {v14}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v14

    add-int v15, v11, v7

    move-object/from16 v18, v6

    invoke-static {v14}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v6

    move/from16 v19, v7

    new-instance v7, LOb/a;

    invoke-direct {v7, v13}, LOb/a;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v9, v15, v6, v7}, Lcom/google/firebase/messaging/q;->m(ILhc/b;LOb/a;)LD4/d;

    move-result-object v6

    if-eqz v6, :cond_2a

    invoke-static {v6, v13, v14}, Lp7/b;->c(Lac/n;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_2a
    move-object/from16 v6, v18

    move/from16 v7, v19

    goto :goto_19

    :cond_2b
    move-object/from16 v18, v6

    move/from16 v19, v7

    const/4 v6, 0x1

    add-int/2addr v11, v6

    move-object/from16 v6, v18

    goto :goto_18

    :cond_2c
    :goto_1a
    invoke-virtual {v9}, Lcom/google/firebase/messaging/q;->l()V

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    goto/16 :goto_15

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v0

    :cond_2e
    :goto_1b
    invoke-virtual {v0}, Lbd/e;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {v0}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, LPb/c;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "desc"

    invoke-static {v8, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v7

    const-string v9, "asString(...)"

    invoke-static {v7, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lac/q;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x23

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lac/q;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-static {v6}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v6

    :cond_2f
    :goto_1c
    invoke-virtual {v6}, Lbd/e;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-virtual {v6}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/annotation/Annotation;

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v8}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object v10

    invoke-static {v10}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v11

    new-instance v12, LOb/a;

    invoke-direct {v12, v8}, LOb/a;-><init>(Ljava/lang/annotation/Annotation;)V

    iget-object v13, v5, Lo3/c;->a:Ljava/lang/Object;

    check-cast v13, LQ9/a;

    invoke-virtual {v13, v11, v12, v7}, LQ9/a;->u(Lhc/b;LOb/a;Ljava/util/List;)LD4/d;

    move-result-object v11

    if-eqz v11, :cond_2f

    invoke-static {v11, v8, v10}, Lp7/b;->c(Lac/n;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_1c

    :cond_30
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, v5, Lo3/c;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_31
    new-instance v0, Lac/d;

    invoke-direct {v0, v1, v2, v4}, Lac/d;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0

    :pswitch_a
    move-object v0, v1

    check-cast v0, LJb/d;

    invoke-static {v0, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, LJb/b;->H()Ljava/util/List;

    move-result-object v0

    check-cast v13, LMb/T;

    iget v1, v13, LMb/T;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/T;

    check-cast v0, LMb/U;

    invoke-virtual {v0}, LMb/U;->getType()Lyc/w;

    move-result-object v0

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_b
    sget-object v0, Lzc/m;->a:Lzc/m;

    check-cast v1, LZb/a;

    invoke-static {v1, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LT2/c;

    iget-boolean v3, v13, LT2/c;->c:Z

    iget-object v4, v1, LZb/a;->a:LBc/d;

    if-eqz v3, :cond_33

    if-eqz v4, :cond_33

    invoke-static {v4, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v4, Lyc/w;

    if-eqz v3, :cond_32

    instance-of v3, v4, LXb/j;

    const/4 v12, 0x1

    if-ne v3, v12, :cond_33

    goto/16 :goto_1f

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-static {v2, v1, v0}, Lw2/j;->g(Ltb/y;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    if-eqz v4, :cond_38

    invoke-virtual {v0, v4}, Lzc/m;->F(LBc/d;)Lyc/L;

    move-result-object v3

    if-eqz v3, :cond_38

    instance-of v7, v3, Lyc/L;

    if-eqz v7, :cond_37

    check-cast v3, Lyc/L;

    invoke-interface {v3}, Lyc/L;->a()Ljava/util/List;

    move-result-object v3

    const-string v7, "getParameters(...)"

    invoke-static {v3, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v4, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v4, Lyc/w;

    if-eqz v2, :cond_36

    check-cast v4, Lyc/w;

    invoke-virtual {v4}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v2, v8}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/Q;

    check-cast v2, LJb/W;

    invoke-static {v0, v3}, Lzc/g;->r(Lzc/b;Lyc/Q;)Lyc/d0;

    move-result-object v3

    iget-object v7, v1, LZb/a;->b:LSb/u;

    if-nez v3, :cond_34

    new-instance v3, LZb/a;

    invoke-direct {v3, v11, v7, v2}, LZb/a;-><init>(LBc/d;LSb/u;LJb/W;)V

    goto :goto_1e

    :cond_34
    new-instance v8, LZb/a;

    iget-object v9, v13, LT2/c;->d:Ljava/lang/Object;

    check-cast v9, Lo3/i;

    iget-object v9, v9, Lo3/i;->a:Ljava/lang/Object;

    check-cast v9, LVb/a;

    invoke-virtual {v3}, Lyc/w;->u()LKb/h;

    move-result-object v10

    iget-object v9, v9, LVb/a;->q:LSb/c;

    invoke-virtual {v9, v7, v10}, LSb/c;->b(LSb/u;LKb/h;)LSb/u;

    move-result-object v7

    invoke-direct {v8, v3, v7, v2}, LZb/a;-><init>(LBc/d;LSb/u;LJb/W;)V

    move-object v3, v8

    :goto_1e
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_35
    move-object v11, v6

    goto :goto_1f

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-static {v2, v1, v0}, Lw2/j;->g(Ltb/y;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-static {v2, v1, v0}, Lw2/j;->g(Ltb/y;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    :goto_1f
    return-object v11

    :pswitch_c
    move-object v0, v1

    check-cast v0, Lrc/o;

    invoke-static {v0, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LRb/c;->WHEN_GET_SUPER_MEMBERS:LRb/c;

    check-cast v13, Lhc/f;

    invoke-interface {v0, v13, v1}, Lrc/o;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :pswitch_d
    move-object v0, v1

    check-cast v0, Lzc/f;

    invoke-static {v0, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LWb/p;

    move-object v3, v13

    check-cast v3, LWb/j;

    iget-object v2, v3, LWb/j;->j:Lo3/i;

    iget-object v1, v3, LWb/j;->i:LJb/f;

    if-eqz v1, :cond_39

    move v5, v12

    goto :goto_20

    :cond_39
    const/4 v5, 0x0

    :goto_20
    iget-object v6, v3, LWb/j;->q:LWb/p;

    iget-object v4, v3, LWb/j;->h:LPb/n;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, LWb/p;-><init>(Lo3/i;LJb/f;LPb/n;ZLWb/p;)V

    return-object v0

    :pswitch_e
    move-object v0, v1

    check-cast v0, LPb/w;

    const-string v1, "m"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LWb/a;

    iget-object v1, v13, LWb/a;->b:Lsb/k;

    invoke-interface {v1, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v0}, LPb/w;->b()Ljava/lang/reflect/Member;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDeclaringClass(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, LPb/v;->c()Lhc/f;

    move-result-object v1

    invoke-virtual {v1}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x69e9ad94

    if-eq v2, v3, :cond_40

    const v3, -0x4d378041

    if-eq v2, v3, :cond_3b

    const v3, 0x8cdac1b

    if-eq v2, v3, :cond_3a

    goto :goto_22

    :cond_3a
    const-string v2, "hashCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_22

    :cond_3b
    const-string v2, "equals"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_22

    :cond_3c
    invoke-virtual {v0}, LPb/w;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lfb/n;->W(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPb/C;

    if-eqz v0, :cond_3d

    iget-object v0, v0, LPb/C;->a:LPb/A;

    goto :goto_21

    :cond_3d
    move-object v0, v11

    :goto_21
    instance-of v1, v0, LPb/p;

    if-eqz v1, :cond_3e

    move-object v11, v0

    check-cast v11, LPb/p;

    :cond_3e
    if-nez v11, :cond_3f

    goto :goto_22

    :cond_3f
    iget-object v0, v11, LPb/p;->b:LPb/r;

    instance-of v1, v0, LPb/n;

    if-eqz v1, :cond_42

    check-cast v0, LPb/n;

    invoke-virtual {v0}, LPb/n;->c()Lhc/c;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    iget-object v0, v0, Lhc/d;->a:Ljava/lang/String;

    const-string v1, "java.lang.Object"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    move v0, v12

    goto :goto_23

    :cond_40
    const-string v2, "toString"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    :cond_41
    invoke-virtual {v0}, LPb/w;->g()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    goto :goto_23

    :cond_42
    :goto_22
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_43

    move v0, v12

    goto :goto_24

    :cond_43
    const/4 v0, 0x0

    :goto_24
    if-nez v0, :cond_44

    move v9, v12

    goto :goto_25

    :cond_44
    const/4 v9, 0x0

    :goto_25
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_f
    move-object v0, v1

    check-cast v0, LPb/B;

    const-string v1, "typeParameter"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LP9/a;

    iget-object v1, v13, LP9/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v11, LWb/G;

    iget-object v2, v13, LP9/a;->c:Ljava/lang/Object;

    check-cast v2, Lo3/i;

    const-string v3, "<this>"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lo3/i;

    iget-object v4, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast v4, LVb/a;

    iget-object v2, v2, Lo3/i;->c:Ljava/lang/Object;

    invoke-direct {v3, v4, v13, v2}, Lo3/i;-><init>(LVb/a;LVb/e;Ldb/f;)V

    iget-object v2, v13, LP9/a;->d:Ljava/lang/Object;

    check-cast v2, LJb/m;

    invoke-interface {v2}, LKb/a;->u()LKb/h;

    move-result-object v4

    invoke-static {v3, v4}, LG5/U2;->c(Lo3/i;LKb/h;)Lo3/i;

    move-result-object v3

    iget v4, v13, LP9/a;->b:I

    add-int/2addr v4, v1

    invoke-direct {v11, v3, v0, v4, v2}, LWb/G;-><init>(Lo3/i;LPb/B;ILJb/m;)V

    :cond_45
    return-object v11

    :pswitch_10
    move-object v0, v1

    check-cast v0, LPb/d;

    const-string v1, "annotation"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LTb/c;->a:Lhc/f;

    check-cast v13, LVb/c;

    iget-object v1, v13, LVb/c;->a:Lo3/i;

    iget-boolean v2, v13, LVb/c;->c:Z

    invoke-static {v0, v1, v2}, LTb/c;->b(LPb/d;Lo3/i;Z)LUb/i;

    move-result-object v0

    return-object v0

    :pswitch_11
    move-object v0, v1

    check-cast v0, LJb/d;

    if-eqz v0, :cond_46

    check-cast v13, LTb/a;

    iget-object v1, v13, LTb/a;->c:Luc/o;

    invoke-interface {v1, v0}, Luc/o;->c(LJb/d;)V

    return-object v7

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument for @NotNull parameter \'descriptor\' of kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1.invoke must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    move-object v0, v1

    check-cast v0, Lhc/c;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v13, Lt9/c;

    iget-object v1, v13, Lt9/c;->b:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhc/c;

    invoke-virtual {v0, v4}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    const-string v5, "packageName"

    invoke-static {v4, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v5}, Lhc/d;->c()Z

    move-result v5

    if-eqz v5, :cond_48

    move-object v5, v11

    goto :goto_27

    :cond_48
    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    move-result-object v5

    :goto_27
    invoke-static {v5, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    :cond_49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_4a
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_28

    :cond_4b
    move-object v2, v11

    :goto_28
    if-nez v2, :cond_4c

    goto :goto_2a

    :cond_4c
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4d

    move-object v1, v11

    goto :goto_29

    :cond_4d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4e

    goto :goto_29

    :cond_4e
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhc/c;

    invoke-static {v3, v0}, LG5/D3;->a(Lhc/c;Lhc/c;)Lhc/c;

    move-result-object v3

    iget-object v3, v3, Lhc/c;->a:Lhc/d;

    iget-object v3, v3, Lhc/d;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhc/c;

    invoke-static {v5, v0}, LG5/D3;->a(Lhc/c;Lhc/c;)Lhc/c;

    move-result-object v5

    iget-object v5, v5, Lhc/c;->a:Lhc/d;

    iget-object v5, v5, Lhc/d;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_50

    move-object v1, v4

    move v3, v5

    :cond_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4f

    :goto_29
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_51

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    :cond_51
    :goto_2a
    return-object v11

    :pswitch_13
    move-object v0, v1

    check-cast v0, LJb/d;

    invoke-static {v0, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LSb/H;->i:Ljava/util/LinkedHashMap;

    check-cast v13, LMb/M;

    invoke-static {v13}, LG5/W3;->c(LJb/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_14
    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_52
    const/4 v9, 0x0

    goto :goto_2c

    :cond_53
    check-cast v13, LPb/n;

    iget-object v1, v13, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "values"

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParameterTypes(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    if-nez v0, :cond_54

    move v0, v12

    goto :goto_2b

    :cond_54
    const/4 v0, 0x0

    goto :goto_2b

    :cond_55
    const-string v2, "valueOf"

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_2b
    if-nez v0, :cond_52

    :cond_56
    move v9, v12

    :goto_2c
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_15
    move-object v0, v1

    check-cast v0, Lhc/c;

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LMb/B;

    iget-object v1, v13, LMb/B;->g:LMb/G;

    check-cast v1, LMb/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v13, LMb/B;->d:Lxc/l;

    const-string v2, "storageManager"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LMb/y;

    invoke-direct {v2, v13, v0, v1}, LMb/y;-><init>(LMb/B;Lhc/c;Lxc/l;)V

    return-object v2

    :pswitch_16
    move-object v0, v1

    check-cast v0, Lyc/d0;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lyc/c;->k(Lyc/w;)Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v1, v0, LJb/W;

    if-eqz v1, :cond_57

    check-cast v0, LJb/W;

    invoke-interface {v0}, LJb/l;->k()LJb/l;

    move-result-object v0

    check-cast v13, LMb/g;

    invoke-static {v0, v13}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    move v9, v12

    goto :goto_2d

    :cond_57
    const/4 v9, 0x0

    :goto_2d
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_17
    move-object v0, v1

    check-cast v0, Lzc/f;

    check-cast v13, LMb/b;

    iget-object v1, v13, LMb/b;->b:LMb/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "descriptor"

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v13, LMb/b;->b:LMb/c;

    iget-object v0, v0, LMb/c;->b:Lxc/i;

    invoke-virtual {v0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/A;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
