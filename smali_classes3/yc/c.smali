.class public abstract Lyc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Ljava/util/List;Lyc/U;LJb/l;Ljava/util/ArrayList;)Lyc/Y;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-static {p0, p1, p2, p3, v0}, Lyc/c;->B(Ljava/util/List;Lyc/U;LJb/l;Ljava/util/ArrayList;[Z)Lyc/Y;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Substitution failed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, Lyc/c;->a(I)V

    throw v0

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, Lyc/c;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0}, Lyc/c;->a(I)V

    throw v0
.end method

.method public static B(Ljava/util/List;Lyc/U;LJb/l;Ljava/util/ArrayList;[Z)Lyc/Y;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eqz v0, :cond_b

    if-eqz p2, :cond_a

    if-eqz v1, :cond_9

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    move v9, v14

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, LJb/W;

    invoke-interface {v15}, LKb/a;->u()LKb/h;

    move-result-object v5

    invoke-interface {v15}, LJb/W;->x()Z

    move-result v6

    invoke-interface {v15}, LJb/W;->A()Lyc/e0;

    move-result-object v7

    invoke-interface {v15}, LJb/l;->getName()Lhc/f;

    move-result-object v8

    add-int/lit8 v16, v9, 0x1

    invoke-interface {v15}, LJb/W;->L()Lxc/o;

    move-result-object v10

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v10}, LMb/Q;->W0(LJb/l;LKb/h;ZLyc/e0;Lhc/f;ILxc/o;)LMb/Q;

    move-result-object v4

    invoke-interface {v15}, LJb/i;->w()Lyc/L;

    move-result-object v5

    new-instance v6, Lyc/F;

    invoke-virtual {v4}, LMb/i;->n()Lyc/A;

    move-result-object v7

    invoke-direct {v6, v7}, Lyc/F;-><init>(Lyc/w;)V

    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v9, v16

    goto :goto_0

    :cond_0
    new-instance v1, Lyc/M;

    invoke-direct {v1, v11, v14}, Lyc/M;-><init>(Ljava/util/Map;Z)V

    invoke-static {v0, v1}, Lyc/Y;->e(Lyc/U;Lyc/U;)Lyc/Y;

    move-result-object v4

    new-instance v5, Lyc/T;

    invoke-direct {v5, v0}, Lyc/T;-><init>(Lyc/U;)V

    invoke-static {v5, v1}, Lyc/Y;->e(Lyc/U;Lyc/U;)Lyc/Y;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJb/W;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LMb/Q;

    invoke-interface {v5}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "Type parameter descriptor is already initialized: "

    const/4 v9, 0x1

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/w;

    invoke-virtual {v7}, Lyc/w;->F0()Lyc/L;

    move-result-object v10

    invoke-interface {v10}, Lyc/L;->c()LJb/i;

    move-result-object v10

    instance-of v11, v10, LJb/W;

    if-eqz v11, :cond_1

    check-cast v10, LJb/W;

    const-string v11, "typeParameter"

    invoke-static {v10, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v2, v3}, LG5/B;->i(LJb/W;Lyc/L;I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v4

    goto :goto_3

    :cond_1
    move-object v10, v0

    :goto_3
    sget-object v11, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    invoke-virtual {v10, v7, v11}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v10

    if-nez v10, :cond_2

    return-object v2

    :cond_2
    if-eq v10, v7, :cond_3

    if-eqz p4, :cond_3

    aput-boolean v9, p4, v14

    :cond_3
    iget-boolean v7, v6, LMb/Q;->m:Z

    if-nez v7, :cond_5

    invoke-static {v10}, Lyc/c;->k(Lyc/w;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, v6, LMb/Q;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, LMb/Q;->Y0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean v5, v6, LMb/Q;->m:Z

    if-nez v5, :cond_7

    iput-boolean v9, v6, LMb/Q;->m:Z

    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, LMb/Q;->Y0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-object v4

    :cond_9
    const/16 v0, 0x8

    invoke-static {v0}, Lyc/c;->a(I)V

    throw v2

    :cond_a
    const/4 v0, 0x7

    invoke-static {v0}, Lyc/c;->a(I)V

    throw v2

    :cond_b
    invoke-static {v3}, Lyc/c;->a(I)V

    throw v2
.end method

.method public static final C(LKb/h;)Lyc/H;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LKb/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lyc/H;->b:LA7/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lyc/H;->c:Lyc/H;

    goto :goto_0

    :cond_0
    sget-object v0, Lyc/H;->b:LA7/h;

    new-instance v1, Lyc/i;

    invoke-direct {v1, p0}, Lyc/i;-><init>(LKb/h;)V

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LA7/h;->c(Ljava/util/List;)Lyc/H;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final E(Lyc/w;)Lyc/A;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    instance-of v0, p0, Lyc/r;

    if-eqz v0, :cond_0

    check-cast p0, Lyc/r;

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lyc/A;

    if-eqz v0, :cond_1

    check-cast p0, Lyc/A;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final F(Lyc/A;Lyc/A;)Lyc/A;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviatedType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lyc/c;->k(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lyc/a;

    invoke-direct {v0, p0, p1}, Lyc/a;-><init>(Lyc/A;Lyc/A;)V

    return-object v0
.end method

.method public static final G(Lyc/d0;Lyc/w;)Lyc/d0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lyc/c0;

    if-eqz v0, :cond_0

    check-cast p0, Lyc/c0;

    invoke-interface {p0}, Lyc/c0;->z0()Lyc/d0;

    move-result-object p0

    invoke-static {p0, p1}, Lyc/c;->G(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Lyc/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lyc/A;

    if-eqz v0, :cond_2

    new-instance v0, Lyc/D;

    check-cast p0, Lyc/A;

    invoke-direct {v0, p0, p1}, Lyc/D;-><init>(Lyc/A;Lyc/w;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lyc/r;

    if-eqz v0, :cond_3

    new-instance v0, Lyc/t;

    check-cast p0, Lyc/r;

    invoke-direct {v0, p0, p1}, Lyc/t;-><init>(Lyc/r;Lyc/w;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static synthetic a(I)V
    .locals 7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v6, "typeParameters"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_1
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_2
    const-string v6, "result"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "newContainingDeclaration"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "originalSubstitution"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "substituteTypeParameters"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_2

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    if-eq p0, v0, :cond_3

    aput-object v5, v3, v2

    :cond_3
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static final b(Lyc/w;)Lyc/A;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object v0

    instance-of v1, v0, Lyc/A;

    if-eqz v1, :cond_0

    check-cast v0, Lyc/A;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is should be simple type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Ljava/util/ArrayList;Ljava/util/List;LGb/i;)Lyc/w;
    .locals 1

    new-instance v0, Lyc/G;

    invoke-direct {v0, p0}, Lyc/G;-><init>(Ljava/util/ArrayList;)V

    new-instance p0, Lyc/Y;

    invoke-direct {p0, v0}, Lyc/Y;-><init>(Lyc/U;)V

    invoke-static {p1}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyc/w;

    sget-object v0, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    invoke-virtual {p0, p1, v0}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, LGb/i;->n()Lyc/A;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final d(LBc/d;Ljava/util/HashSet;)LBc/d;
    .locals 4

    sget-object v0, Lzc/m;->a:Lzc/m;

    invoke-virtual {v0, p0}, Lzc/m;->F(LBc/d;)Lyc/L;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-static {v1}, Lzc/g;->s(LBc/h;)LJb/W;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, LG5/B;->g(LJb/W;)Lyc/w;

    move-result-object v1

    invoke-static {v1, p1}, Lyc/c;->d(LBc/d;Ljava/util/HashSet;)LBc/d;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v1}, Lzc/m;->F(LBc/d;)Lyc/L;

    move-result-object v2

    invoke-static {v2}, Lzc/g;->C(LBc/h;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, LBc/f;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, LBc/f;

    invoke-static {v2}, Lzc/g;->I(LBc/f;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    instance-of v3, p1, LBc/f;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, LBc/f;

    invoke-static {v3}, Lzc/g;->I(LBc/f;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0}, Lzc/g;->H(LBc/d;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lzc/m;->e(LBc/d;)LBc/d;

    move-result-object p0

    goto/16 :goto_3

    :cond_3
    invoke-static {p1}, Lzc/g;->H(LBc/d;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {p0}, Lzc/g;->F(LBc/d;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p1}, Lzc/m;->e(LBc/d;)LBc/d;

    move-result-object p0

    goto/16 :goto_3

    :cond_5
    move-object p0, v3

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lzc/g;->C(LBc/h;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "$receiver"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p0, Lyc/w;

    if-eqz v1, :cond_d

    move-object v1, p0

    check-cast v1, Lyc/w;

    invoke-static {v1}, Lkc/i;->i(Lyc/w;)Lyc/A;

    move-result-object v1

    if-nez v1, :cond_7

    return-object v3

    :cond_7
    invoke-static {v1, p1}, Lyc/c;->d(LBc/d;Ljava/util/HashSet;)LBc/d;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v3

    :cond_8
    invoke-static {p0}, Lzc/g;->H(LBc/d;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_2
    move-object p0, p1

    goto :goto_3

    :cond_a
    invoke-static {p1}, Lzc/g;->H(LBc/d;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    instance-of v1, p1, LBc/f;

    if-eqz v1, :cond_c

    move-object v1, p1

    check-cast v1, LBc/f;

    invoke-static {v1}, Lzc/g;->I(LBc/f;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v0, p1}, Lzc/m;->e(LBc/d;)LBc/d;

    move-result-object p0

    goto :goto_3

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ClassicTypeSystemContext couldn\'t handle: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ltb/x;->a:Ltb/y;

    invoke-static {v0, p0, p1}, Lw2/j;->g(Ltb/y;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_3
    return-object p0
.end method

.method public static e(Lo3/i;LJb/V;Ljava/util/List;)Lo3/i;
    .locals 3

    const-string v0, "typeAliasDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, LMb/g;

    iget-object v0, v0, LMb/g;->i:LMb/f;

    invoke-virtual {v0}, LMb/f;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJb/W;

    invoke-interface {v2}, LJb/W;->a()LJb/W;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lfb/n;->n0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lfb/B;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lo3/i;

    invoke-direct {v1, p0, p1, p2, v0}, Lo3/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final f(Lyc/A;Lyc/A;)Lyc/d0;
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lyc/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lyc/s;

    invoke-direct {v0, p0, p1}, Lyc/s;-><init>(Lyc/A;Lyc/A;)V

    return-object v0
.end method

.method public static final g(Lyc/w;)Lyc/w;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lyc/c0;

    if-eqz v0, :cond_0

    check-cast p0, Lyc/c0;

    invoke-interface {p0}, Lyc/c0;->f0()Lyc/w;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static h(Lyc/K;LBc/e;Lyc/c;)Z
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/K;->d:Lzc/b;

    invoke-interface {v0, p1}, Lzc/b;->r(LBc/e;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lzc/b;->I(LBc/d;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_0
    invoke-interface {v0, p1}, Lzc/b;->w(LBc/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Lyc/K;->b()V

    iget-object v1, p0, Lyc/K;->h:Ljava/util/ArrayDeque;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, p0, Lyc/K;->i:LHc/i;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBc/e;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, LHc/i;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p1}, Lzc/b;->I(LBc/d;)Z

    move-result v4

    sget-object v5, Lyc/J;->c:Lyc/J;

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    move-object v4, p2

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v0, p1}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object p1

    invoke-interface {v0, p1}, Lzc/b;->Z(LBc/h;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LBc/d;

    invoke-virtual {v4, p0, v5}, Lyc/c;->D(Lyc/K;LBc/d;)LBc/e;

    move-result-object v5

    invoke-interface {v0, v5}, Lzc/b;->r(LBc/e;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0, v5}, Lzc/b;->I(LBc/d;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    invoke-interface {v0, v5}, Lzc/b;->w(LBc/e;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    invoke-virtual {p0}, Lyc/K;->a()V

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lyc/K;->a()V

    const/4 v2, 0x0

    :cond_a
    :goto_4
    return v2
.end method

.method public static final i(Lyc/d0;Lyc/w;)Lyc/d0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lyc/c;->g(Lyc/w;)Lyc/w;

    move-result-object p1

    invoke-static {p0, p1}, Lyc/c;->G(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lyc/K;LBc/e;LBc/h;)Z
    .locals 2

    iget-object v0, p0, Lyc/K;->d:Lzc/b;

    invoke-interface {v0, p1}, Lzc/b;->f(LBc/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {v0, p1}, Lzc/b;->I(LBc/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-boolean p0, p0, Lyc/K;->b:Z

    if-eqz p0, :cond_2

    invoke-interface {v0, p1}, Lzc/b;->c0(LBc/e;)V

    :cond_2
    invoke-interface {v0, p1}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lzc/b;->i(LBc/h;LBc/h;)Z

    move-result p0

    return p0
.end method

.method public static final k(Lyc/w;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    instance-of v0, p0, LAc/i;

    if-nez v0, :cond_1

    instance-of v0, p0, Lyc/r;

    if-eqz v0, :cond_0

    check-cast p0, Lyc/r;

    invoke-virtual {p0}, Lyc/r;->M0()Lyc/A;

    move-result-object p0

    instance-of p0, p0, LAc/i;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final l(Lyc/w;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    instance-of p0, p0, Lyc/r;

    return p0
.end method

.method public static final m(Lyc/w;)Lyc/A;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    instance-of v0, p0, Lyc/r;

    if-eqz v0, :cond_0

    check-cast p0, Lyc/r;

    iget-object p0, p0, Lyc/r;->b:Lyc/A;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lyc/A;

    if-eqz v0, :cond_1

    check-cast p0, Lyc/A;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final n(Lyc/d0;Z)Lyc/d0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lyc/e;->p(Lyc/d0;Z)Lyc/n;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lyc/c;->o(Lyc/d0;)Lyc/A;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lyc/d0;->J0(Z)Lyc/d0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static final o(Lyc/d0;)Lyc/A;
    .locals 7

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    instance-of v0, p0, Lyc/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lyc/v;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lyc/v;->b:Ljava/util/LinkedHashSet;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyc/w;

    invoke-static {v5}, Lyc/b0;->e(Lyc/w;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lyc/w;->I0()Lyc/d0;

    move-result-object v4

    invoke-static {v4, v3}, Lyc/c;->n(Lyc/d0;Z)Lyc/d0;

    move-result-object v5

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    move-object v2, v1

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lyc/v;->a:Lyc/w;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lyc/b0;->e(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    invoke-static {p0, v3}, Lyc/c;->n(Lyc/d0;Z)Lyc/d0;

    move-result-object p0

    goto :goto_2

    :cond_5
    move-object p0, v1

    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    new-instance v2, Lyc/v;

    invoke-direct {v2, v0}, Lyc/v;-><init>(Ljava/util/AbstractCollection;)V

    iput-object p0, v2, Lyc/v;->a:Lyc/w;

    :goto_3
    if-nez v2, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {v2}, Lyc/v;->f()Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Lyc/A;Ljava/util/List;Lyc/H;)Lyc/A;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newArguments"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAttributes"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyc/w;->E0()Lyc/H;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, LAc/i;

    if-eqz v0, :cond_2

    check-cast p0, LAc/i;

    new-instance p2, LAc/i;

    iget-object v0, p0, LAc/i;->g:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    iget-object v1, p0, LAc/i;->b:Lyc/L;

    iget-object v2, p0, LAc/i;->c:LAc/g;

    iget-object v3, p0, LAc/i;->d:LAc/k;

    iget-boolean v5, p0, LAc/i;->f:Z

    move-object v0, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, LAc/i;-><init>(Lyc/L;LAc/g;LAc/k;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object p2

    :cond_2
    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result p0

    invoke-static {p1, p2, v0, p0}, Lyc/c;->u(Ljava/util/List;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lyc/w;Ljava/util/List;LKb/h;I)Lyc/w;
    .locals 1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lyc/w;->u()LKb/h;

    move-result-object p2

    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "newAnnotations"

    invoke-static {p2, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p3

    if-ne p1, p3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lyc/w;->u()LKb/h;

    move-result-object p3

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lyc/w;->E0()Lyc/H;

    move-result-object p3

    instance-of v0, p2, LKb/l;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, LKb/l;

    invoke-virtual {v0}, LKb/l;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p2, LKb/g;->a:LKb/f;

    :cond_3
    invoke-static {p3, p2}, Lyc/c;->s(Lyc/H;LKb/h;)Lyc/H;

    move-result-object p2

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    instance-of p3, p0, Lyc/r;

    if-eqz p3, :cond_4

    check-cast p0, Lyc/r;

    iget-object p3, p0, Lyc/r;->b:Lyc/A;

    invoke-static {p3, p1, p2}, Lyc/c;->p(Lyc/A;Ljava/util/List;Lyc/H;)Lyc/A;

    move-result-object p3

    iget-object p0, p0, Lyc/r;->c:Lyc/A;

    invoke-static {p0, p1, p2}, Lyc/c;->p(Lyc/A;Ljava/util/List;Lyc/H;)Lyc/A;

    move-result-object p0

    invoke-static {p3, p0}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of p3, p0, Lyc/A;

    if-eqz p3, :cond_5

    check-cast p0, Lyc/A;

    invoke-static {p0, p1, p2}, Lyc/c;->p(Lyc/A;Ljava/util/List;Lyc/H;)Lyc/A;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_5
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static synthetic r(Lyc/A;Ljava/util/List;Lyc/H;I)Lyc/A;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lyc/w;->E0()Lyc/H;

    move-result-object p2

    :cond_1
    invoke-static {p0, p1, p2}, Lyc/c;->p(Lyc/A;Ljava/util/List;Lyc/H;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public static final s(Lyc/H;LKb/h;)Lyc/H;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lyc/j;->a(Lyc/H;)LKb/h;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lyc/j;->a:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lyc/j;->b:LEc/p;

    invoke-virtual {v1, p0, v0}, LEc/p;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/i;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, LEc/d;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move-object v0, p0

    goto :goto_2

    :cond_1
    iget-object v1, p0, LEc/d;->a:LEc/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lyc/i;

    invoke-static {v4, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, LEc/d;->a:LEc/a;

    invoke-virtual {v1}, LEc/a;->g()I

    move-result v1

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lyc/H;->b:LA7/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, LA7/h;->c(Ljava/util/List;)Lyc/H;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object p0, v0

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, LKb/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Lyc/i;

    invoke-direct {v0, p1}, Lyc/i;-><init>(LKb/h;)V

    sget-object p1, Ltb/x;->a:Ltb/y;

    const-class v1, Lyc/i;

    invoke-virtual {p1, v1}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object p1

    sget-object v1, Lyc/H;->b:LA7/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, LAb/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, LA7/h;->g(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, LEc/d;->a:LEc/a;

    invoke-virtual {v1, p1}, LEc/a;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, LEc/d;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p0, Lyc/H;

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lyc/H;-><init>(Ljava/util/List;)V

    goto :goto_4

    :cond_9
    invoke-static {p0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, LA7/h;->c(Ljava/util/List;)Lyc/H;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public static final t(Lyc/H;LJb/f;Ljava/util/List;)Lyc/A;
    .locals 1

    const-string v0, "attributes"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/i;->w()Lyc/L;

    move-result-object p1

    const-string v0, "getTypeConstructor(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2, p0, p1, v0}, Lyc/c;->u(Ljava/util/List;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/util/List;Lyc/H;Lyc/L;Z)Lyc/A;
    .locals 7

    const-string v0, "attributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LEc/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p2}, Lyc/L;->c()LJb/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lyc/L;->c()LJb/i;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, LJb/i;->n()Lyc/A;

    move-result-object p0

    const-string p1, "getDefaultType(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    invoke-interface {p2}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v1, v0, LJb/W;

    if-eqz v1, :cond_1

    check-cast v0, LJb/W;

    invoke-interface {v0}, LJb/i;->n()Lyc/A;

    move-result-object v0

    invoke-virtual {v0}, Lyc/w;->G()Lrc/o;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    instance-of v1, v0, LJb/f;

    if-eqz v1, :cond_8

    invoke-static {v0}, Loc/d;->j(LJb/l;)LJb/C;

    move-result-object v1

    invoke-static {v1}, Loc/d;->i(LJb/C;)V

    sget-object v1, Lzc/f;->a:Lzc/f;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "<this>"

    if-eqz v2, :cond_5

    check-cast v0, LJb/f;

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v0, LMb/A;

    if-eqz v2, :cond_2

    move-object v3, v0

    check-cast v3, LMb/A;

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, LMb/A;->f0(Lzc/f;)Lrc/o;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    invoke-interface {v0}, LJb/f;->S()Lrc/o;

    move-result-object v0

    const-string v1, "getUnsubstitutedMemberScope(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    check-cast v0, LJb/f;

    sget-object v2, Lyc/N;->b:Lyc/e;

    invoke-virtual {v2, p2, p0}, Lyc/e;->g(Lyc/L;Ljava/util/List;)Lyc/U;

    move-result-object v2

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v0, LMb/A;

    if-eqz v4, :cond_6

    move-object v3, v0

    check-cast v3, LMb/A;

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3, v2, v1}, LMb/A;->y(Lyc/U;Lzc/f;)Lrc/o;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_7
    invoke-interface {v0, v2}, LJb/f;->o0(Lyc/U;)Lrc/o;

    move-result-object v0

    const-string v1, "getMemberScope(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    instance-of v1, v0, LJb/V;

    if-eqz v1, :cond_9

    sget-object v1, LAc/h;->SCOPE_FOR_ABBREVIATION_TYPE:LAc/h;

    check-cast v0, LJb/V;

    check-cast v0, LMb/n;

    invoke-virtual {v0}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    iget-object v0, v0, Lhc/f;->a:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, LAc/l;->a(LAc/h;Z[Ljava/lang/String;)LAc/g;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_9
    instance-of v1, p2, Lyc/v;

    if-eqz v1, :cond_a

    move-object v0, p2

    check-cast v0, Lyc/v;

    iget-object v0, v0, Lyc/v;->b:Ljava/util/LinkedHashSet;

    const-string v1, "member scope for intersection type"

    invoke-static {v1, v0}, LG5/H;->b(Ljava/lang/String;Ljava/util/Collection;)Lrc/o;

    move-result-object v0

    goto :goto_1

    :goto_2
    new-instance v6, Lyc/x;

    invoke-direct {v6, p0, p1, p2, p3}, Lyc/x;-><init>(Ljava/util/List;Lyc/H;Lyc/L;Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-static/range {v1 .. v6}, Lyc/c;->w(Lyc/H;Lyc/L;Ljava/util/List;ZLrc/o;Lsb/k;)Lyc/A;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported classifier: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for constructor: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final v(Ljava/util/List;Lrc/o;Lyc/H;Lyc/L;Z)Lyc/A;
    .locals 8

    const-string v0, "attributes"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyc/B;

    new-instance v7, Lyc/x;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lyc/x;-><init>(Ljava/util/List;Lrc/o;Lyc/H;Lyc/L;Z)V

    move-object v1, v0

    move-object v2, p3

    move-object v3, p0

    move v4, p4

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lyc/B;-><init>(Lyc/L;Ljava/util/List;ZLrc/o;Lsb/k;)V

    invoke-virtual {p2}, LEc/d;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lyc/C;

    invoke-direct {p0, v0, p2}, Lyc/C;-><init>(Lyc/A;Lyc/H;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final w(Lyc/H;Lyc/L;Ljava/util/List;ZLrc/o;Lsb/k;)Lyc/A;
    .locals 7

    const-string v0, "attributes"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyc/B;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lyc/B;-><init>(Lyc/L;Ljava/util/List;ZLrc/o;Lsb/k;)V

    invoke-virtual {p0}, LEc/d;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lyc/C;

    invoke-direct {p1, v0, p0}, Lyc/C;-><init>(Lyc/A;Lyc/H;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static final x(LJb/W;)Lyc/w;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    const-string v1, "getContainingDeclaration(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, LJb/j;

    const-string v2, "getUpperBounds(...)"

    const-string v3, "getTypeConstructor(...)"

    const/16 v4, 0xa

    if-eqz v1, :cond_1

    check-cast v0, LJb/j;

    invoke-interface {v0}, LJb/i;->w()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "getParameters(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJb/W;

    invoke-interface {v4}, LJb/i;->w()Lyc/L;

    move-result-object v4

    invoke-static {v4, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lyc/c;->c(Ljava/util/ArrayList;Ljava/util/List;LGb/i;)Lyc/w;

    move-result-object p0

    goto :goto_2

    :cond_1
    instance-of v1, v0, LJb/v;

    if-eqz v1, :cond_3

    check-cast v0, LJb/v;

    invoke-interface {v0}, LJb/b;->m()Ljava/util/List;

    move-result-object v0

    const-string v1, "getTypeParameters(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJb/W;

    invoke-interface {v4}, LJb/i;->w()Lyc/L;

    move-result-object v4

    invoke-static {v4, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p0}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lyc/c;->c(Ljava/util/ArrayList;Ljava/util/List;LGb/i;)Lyc/w;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported descriptor type to build star projection type based on type parameters of it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y(Lzc/b;LBc/e;LBc/e;)Z
    .locals 8

    invoke-interface {p0, p1}, Lzc/b;->w0(LBc/d;)I

    move-result v0

    invoke-interface {p0, p2}, Lzc/b;->w0(LBc/d;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    invoke-interface {p0, p1}, Lzc/b;->I(LBc/d;)Z

    move-result v0

    invoke-interface {p0, p2}, Lzc/b;->I(LBc/d;)Z

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-interface {p0, p1}, Lzc/b;->w(LBc/e;)Z

    move-result v0

    invoke-interface {p0, p2}, Lzc/b;->w(LBc/e;)Z

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-interface {p0, p1}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v0

    invoke-interface {p0, p2}, Lzc/b;->T(LBc/e;)Lyc/L;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lzc/b;->i(LBc/h;LBc/h;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, p1, p2}, Lzc/b;->a0(LBc/e;LBc/e;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0, p1}, Lzc/b;->w0(LBc/d;)I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    invoke-interface {p0, p1, v3}, Lzc/b;->i0(LBc/d;I)Lyc/Q;

    move-result-object v4

    invoke-interface {p0, p2, v3}, Lzc/b;->i0(LBc/d;I)Lyc/Q;

    move-result-object v5

    invoke-interface {p0, v4}, Lzc/b;->l(Lyc/Q;)Z

    move-result v6

    invoke-interface {p0, v5}, Lzc/b;->l(Lyc/Q;)Z

    move-result v7

    if-eq v6, v7, :cond_2

    return v2

    :cond_2
    invoke-interface {p0, v4}, Lzc/b;->l(Lyc/Q;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p0, v4}, Lzc/b;->v(Lyc/Q;)LBc/j;

    move-result-object v6

    invoke-interface {p0, v5}, Lzc/b;->v(Lyc/Q;)LBc/j;

    move-result-object v7

    if-eq v6, v7, :cond_3

    return v2

    :cond_3
    invoke-interface {p0, v4}, Lzc/b;->L(Lyc/Q;)Lyc/d0;

    move-result-object v4

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0, v5}, Lzc/b;->L(Lyc/Q;)Lyc/d0;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0, v4, v5}, Lyc/c;->z(Lzc/b;LBc/d;LBc/d;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method public static z(Lzc/b;LBc/d;LBc/d;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, p1}, Lzc/b;->v0(LBc/d;)Lyc/A;

    move-result-object v1

    invoke-interface {p0, p2}, Lzc/b;->v0(LBc/d;)Lyc/A;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {p0, v1, v2}, Lyc/c;->y(Lzc/b;LBc/e;LBc/e;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0, p1}, Lzc/b;->h(LBc/d;)Lyc/r;

    move-result-object p1

    invoke-interface {p0, p2}, Lzc/b;->h(LBc/d;)Lyc/r;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p0, p1}, Lzc/b;->b(Lyc/r;)Lyc/A;

    move-result-object v2

    invoke-interface {p0, p2}, Lzc/b;->b(Lyc/r;)Lyc/A;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lyc/c;->y(Lzc/b;LBc/e;LBc/e;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Lzc/b;->B(Lyc/r;)Lyc/A;

    move-result-object p1

    invoke-interface {p0, p2}, Lzc/b;->B(Lyc/r;)Lyc/A;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lyc/c;->y(Lzc/b;LBc/e;LBc/e;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public abstract D(Lyc/K;LBc/d;)LBc/e;
.end method
