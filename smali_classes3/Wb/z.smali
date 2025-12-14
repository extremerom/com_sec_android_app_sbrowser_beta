.class public final LWb/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:LWb/B;


# direct methods
.method public synthetic constructor <init>(LWb/B;I)V
    .locals 0

    iput p2, p0, LWb/z;->a:I

    iput-object p1, p0, LWb/z;->b:LWb/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    iget-object v4, v0, LWb/z;->b:LWb/B;

    const-string v5, "name"

    iget v0, v0, LWb/z;->a:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lhc/f;

    invoke-static {v0, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v4, LWb/B;->g:Lxc/j;

    invoke-virtual {v2, v0}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v1}, LWb/B;->n(Lhc/f;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, LWb/B;->q()LJb/l;

    move-result-object v0

    sget v2, Lkc/e;->a:I

    sget-object v2, LJb/g;->ANNOTATION_CLASS:LJb/g;

    invoke-static {v0, v2}, Lkc/e;->n(LJb/l;LJb/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v4, LWb/B;->b:Lo3/i;

    iget-object v2, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v2, LVb/a;

    iget-object v2, v2, LVb/a;->r:LZb/c;

    invoke-virtual {v2, v0, v1}, LZb/c;->e(Lo3/i;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lhc/f;

    invoke-static {v0, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v5, v4, LWb/B;->f:Lxc/e;

    invoke-virtual {v5, v0}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v1, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, LMb/M;

    invoke-static {v8, v3}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v2, :cond_3

    check-cast v5, Ljava/util/Collection;

    sget-object v6, LWb/n;->c:LWb/n;

    invoke-static {v5, v6}, Lkc/p;->o(Ljava/util/Collection;Lsb/k;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v1, v0}, LWb/B;->m(Ljava/util/LinkedHashSet;Lhc/f;)V

    iget-object v0, v4, LWb/B;->b:Lo3/i;

    iget-object v2, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v2, LVb/a;

    iget-object v2, v2, LVb/a;->r:LZb/c;

    invoke-virtual {v2, v0, v1}, LZb/c;->e(Lo3/i;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Lhc/f;

    invoke-static {v0, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v4, LWb/B;->c:LWb/B;

    if-eqz v5, :cond_5

    iget-object v1, v5, LWb/B;->g:Lxc/j;

    invoke-virtual {v1, v0}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJb/P;

    goto/16 :goto_c

    :cond_5
    iget-object v5, v4, LWb/B;->e:Lxc/i;

    invoke-virtual {v5}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LWb/c;

    invoke-interface {v5, v0}, LWb/c;->e(Lhc/f;)LPb/t;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_16

    iget-object v6, v0, LPb/t;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v7

    if-nez v7, :cond_16

    new-instance v7, Ltb/w;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, LPb/t;->b()Ljava/lang/reflect/Member;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v8

    xor-int/lit8 v13, v8, 0x1

    iget-object v8, v4, LWb/B;->b:Lo3/i;

    invoke-static {v8, v0}, LG5/V2;->f(Lo3/i;LYb/b;)LVb/c;

    move-result-object v10

    invoke-virtual {v4}, LWb/B;->q()LJb/l;

    move-result-object v9

    sget-object v11, LJb/B;->FINAL:LJb/B;

    invoke-virtual {v0}, LPb/v;->e()LJb/k0;

    move-result-object v12

    invoke-static {v12}, LG5/r2;->i(LJb/k0;)LJb/p;

    move-result-object v12

    invoke-virtual {v0}, LPb/v;->c()Lhc/f;

    move-result-object v14

    iget-object v15, v8, Lo3/i;->a:Ljava/lang/Object;

    check-cast v15, LVb/a;

    iget-object v2, v15, LVb/a;->j:LOb/d;

    invoke-virtual {v2, v0}, LOb/d;->b(LYb/c;)LOb/f;

    move-result-object v2

    invoke-virtual {v0}, LPb/t;->b()Ljava/lang/reflect/Member;

    move-result-object v16

    check-cast v16, Ljava/lang/reflect/Field;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual {v0}, LPb/t;->b()Ljava/lang/reflect/Member;

    move-result-object v16

    check-cast v16, Ljava/lang/reflect/Field;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x1

    goto :goto_3

    :cond_6
    move/from16 v16, v1

    :goto_3
    move-object v3, v15

    move-object v15, v2

    invoke-static/range {v9 .. v16}, LUb/h;->c1(LJb/l;LVb/c;LJb/B;LJb/p;ZLhc/f;LOb/f;Z)LUb/h;

    move-result-object v2

    iput-object v2, v7, Ltb/w;->a:Ljava/lang/Object;

    invoke-virtual {v2, v5, v5, v5, v5}, LMb/J;->Y0(LMb/K;LMb/L;LMb/t;LMb/t;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v6, "getGenericType(...)"

    invoke-static {v2, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, v2, Ljava/lang/Class;

    if-eqz v6, :cond_7

    move-object v9, v2

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v2, LPb/y;

    invoke-direct {v2, v9}, LPb/y;-><init>(Ljava/lang/Class;)V

    goto :goto_6

    :cond_7
    instance-of v9, v2, Ljava/lang/reflect/GenericArrayType;

    if-nez v9, :cond_a

    if-eqz v6, :cond_8

    move-object v6, v2

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    instance-of v6, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_9

    new-instance v6, LPb/D;

    check-cast v2, Ljava/lang/reflect/WildcardType;

    invoke-direct {v6, v2}, LPb/D;-><init>(Ljava/lang/reflect/WildcardType;)V

    :goto_4
    move-object v2, v6

    goto :goto_6

    :cond_9
    new-instance v6, LPb/p;

    invoke-direct {v6, v2}, LPb/p;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_4

    :cond_a
    :goto_5
    new-instance v6, LPb/h;

    invoke-direct {v6, v2}, LPb/h;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_4

    :goto_6
    sget-object v6, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v9, 0x7

    invoke-static {v6, v1, v1, v5, v9}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v6

    iget-object v9, v8, Lo3/i;->d:Ljava/lang/Object;

    check-cast v9, Lo3/t;

    invoke-virtual {v9, v2, v6}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object v11

    invoke-static {v11}, LGb/i;->G(Lyc/w;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, LGb/p;->f:Lhc/d;

    invoke-static {v11, v2}, LGb/i;->E(Lyc/w;Lhc/d;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    invoke-virtual {v0}, LPb/t;->b()Ljava/lang/reflect/Member;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, LPb/t;->b()Ljava/lang/reflect/Member;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    :cond_c
    iget-object v2, v7, Ltb/w;->a:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, LMb/J;

    sget-object v15, Lfb/v;->a:Lfb/v;

    invoke-virtual {v4}, LWb/B;->p()LMb/w;

    move-result-object v13

    const/4 v14, 0x0

    move-object v12, v15

    invoke-virtual/range {v10 .. v15}, LMb/J;->b1(Lyc/w;Ljava/util/List;LMb/w;LMb/w;Ljava/util/List;)V

    invoke-virtual {v4}, LWb/B;->q()LJb/l;

    move-result-object v2

    instance-of v6, v2, LJb/f;

    if-eqz v6, :cond_d

    check-cast v2, LJb/f;

    goto :goto_7

    :cond_d
    move-object v2, v5

    :goto_7
    if-eqz v2, :cond_e

    iget-object v6, v7, Ltb/w;->a:Ljava/lang/Object;

    check-cast v6, LMb/J;

    iget-object v9, v3, LVb/a;->x:Lpc/e;

    check-cast v9, Lpc/a;

    invoke-virtual {v9, v2, v6, v8}, Lpc/a;->h(LJb/f;LMb/J;Lo3/i;)LMb/J;

    move-result-object v2

    iput-object v2, v7, Ltb/w;->a:Ljava/lang/Object;

    :cond_e
    iget-object v2, v7, Ltb/w;->a:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, LJb/Z;

    check-cast v2, LMb/J;

    invoke-virtual {v2}, LMb/U;->getType()Lyc/w;

    move-result-object v2

    if-eqz v6, :cond_15

    if-eqz v2, :cond_14

    sget v8, Lkc/e;->a:I

    invoke-interface {v6}, LJb/Z;->M()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v2}, Lyc/c;->k(Lyc/w;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {v2}, Lyc/b0;->b(Lyc/w;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {v6}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object v6

    invoke-static {v2}, LGb/i;->G(Lyc/w;)Z

    move-result v8

    if-nez v8, :cond_11

    sget-object v8, Lzc/d;->a:Lzc/l;

    invoke-virtual {v6}, LGb/i;->v()Lyc/A;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lzc/l;->a(Lyc/w;Lyc/w;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "Number"

    invoke-virtual {v6, v9}, LGb/i;->k(Ljava/lang/String;)LJb/f;

    move-result-object v9

    invoke-interface {v9}, LJb/f;->n()Lyc/A;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lzc/l;->a(Lyc/w;Lyc/w;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v6}, LGb/i;->e()Lyc/A;

    move-result-object v6

    invoke-virtual {v8, v6, v2}, Lzc/l;->a(Lyc/w;Lyc/w;)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-static {v2}, LGb/u;->a(Lyc/w;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    :goto_8
    iget-object v2, v7, Ltb/w;->a:Ljava/lang/Object;

    check-cast v2, LMb/J;

    new-instance v6, LDb/v;

    const/4 v8, 0x2

    invoke-direct {v6, v4, v8, v0, v7}, LDb/v;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5, v6}, LMb/J;->Z0(Lxc/h;Lsb/a;)V

    :cond_12
    :goto_9
    iget-object v0, v7, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, LJb/P;

    iget-object v2, v3, LVb/a;->g:LTb/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_13

    iget-object v0, v7, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, LJb/P;

    goto :goto_c

    :cond_13
    const/4 v0, 0x6

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    packed-switch v0, :pswitch_data_1

    const-string v3, "fqName"

    aput-object v3, v2, v1

    goto :goto_a

    :pswitch_2
    const-string v3, "javaClass"

    aput-object v3, v2, v1

    goto :goto_a

    :pswitch_3
    const-string v3, "field"

    aput-object v3, v2, v1

    goto :goto_a

    :pswitch_4
    const-string v3, "element"

    aput-object v3, v2, v1

    goto :goto_a

    :pswitch_5
    const-string v3, "descriptor"

    aput-object v3, v2, v1

    goto :goto_a

    :pswitch_6
    const-string v3, "member"

    aput-object v3, v2, v1

    :goto_a
    const-string v1, "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    packed-switch v0, :pswitch_data_2

    const-string v0, "getClassResolvedFromSource"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    goto :goto_b

    :pswitch_7
    const/4 v1, 0x2

    const-string v0, "recordClass"

    aput-object v0, v2, v1

    goto :goto_b

    :pswitch_8
    const/4 v1, 0x2

    const-string v0, "recordField"

    aput-object v0, v2, v1

    goto :goto_b

    :pswitch_9
    const/4 v1, 0x2

    const-string v0, "recordConstructor"

    aput-object v0, v2, v1

    goto :goto_b

    :pswitch_a
    const/4 v1, 0x2

    const-string v0, "recordMethod"

    aput-object v0, v2, v1

    :goto_b
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    const/16 v0, 0x42

    invoke-static {v0}, Lkc/e;->a(I)V

    throw v5

    :cond_15
    const/16 v0, 0x41

    invoke-static {v0}, Lkc/e;->a(I)V

    throw v5

    :cond_16
    move-object v0, v5

    :goto_c
    return-object v0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lhc/f;

    invoke-static {v0, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v4, LWb/B;->c:LWb/B;

    if-eqz v1, :cond_17

    iget-object v1, v1, LWb/B;->f:Lxc/e;

    invoke-virtual {v1, v0}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_e

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v4, LWb/B;->e:Lxc/i;

    invoke-virtual {v2}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LWb/c;

    invoke-interface {v2, v0}, LWb/c;->f(Lhc/f;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LPb/w;

    invoke-virtual {v4, v3}, LWb/B;->t(LPb/w;)LUb/g;

    move-result-object v3

    invoke-virtual {v4, v3}, LWb/B;->r(LUb/g;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, v4, LWb/B;->b:Lo3/i;

    iget-object v5, v5, Lo3/i;->a:Ljava/lang/Object;

    check-cast v5, LVb/a;

    iget-object v5, v5, LVb/a;->g:LTb/h;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_19
    invoke-virtual {v4, v0, v1}, LWb/B;->j(Lhc/f;Ljava/util/ArrayList;)V

    move-object v0, v1

    :goto_e
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
