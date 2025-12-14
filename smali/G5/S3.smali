.class public abstract LG5/S3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LJb/f;Lac/g;)Ljava/lang/String;
    .locals 3

    const-string v0, "klass"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    const-string v1, "getContainingDeclaration(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lhc/h;->a:Lhc/f;

    iget-boolean v2, v1, Lhc/f;->b:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lhc/h;->c:Lhc/f;

    :goto_0
    invoke-virtual {v1}, Lhc/f;->d()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, LJb/H;

    if-eqz v2, :cond_2

    check-cast v0, LJb/H;

    check-cast v0, LMb/D;

    iget-object p0, v0, LMb/D;->f:Lhc/c;

    iget-object p1, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p1}, Lhc/d;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    iget-object p0, p0, Lhc/d;->a:Ljava/lang/String;

    const/16 v0, 0x2e

    const/16 v2, 0x2f

    invoke-static {p0, v0, v2}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    instance-of v2, v0, LJb/f;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, LJb/f;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    invoke-static {v2, p1}, LG5/S3;->a(LJb/f;Lac/g;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x24

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Landroid/widget/EditText;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    and-int/lit16 v1, p0, 0xff

    if-eqz v1, :cond_4

    const/16 v3, 0xff

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0xff00

    and-int/2addr p0, v1

    if-nez p0, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public static final d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ", "

    const-string v6, "ClassicTypeSystemContext couldn\'t handle: "

    const-string v7, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    const-string v8, "$receiver"

    sget-object v9, Lac/g;->d:Lac/g;

    const-string v10, "kotlinType"

    invoke-static {v0, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "writeGenericType"

    invoke-static {v2, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, LG5/I2;->k(Lyc/w;)Z

    move-result v10

    const-string v11, "getType(...)"

    if-eqz v10, :cond_1

    sget-object v3, LGb/r;->a:LMb/C;

    invoke-static/range {p0 .. p0}, LG5/I2;->k(Lyc/w;)Z

    invoke-static/range {p0 .. p0}, LG5/B;->f(Lyc/w;)LGb/i;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lyc/w;->u()LKb/h;

    move-result-object v13

    invoke-static/range {p0 .. p0}, LG5/I2;->h(Lyc/w;)Lyc/w;

    move-result-object v14

    invoke-static/range {p0 .. p0}, LG5/I2;->f(Lyc/w;)Ljava/util/List;

    move-result-object v15

    invoke-static/range {p0 .. p0}, LG5/I2;->i(Lyc/w;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyc/Q;

    invoke-virtual {v6}, Lyc/Q;->b()Lyc/w;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v3, Lyc/H;->b:LA7/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lyc/H;->c:Lyc/H;

    sget-object v6, LGb/r;->a:LMb/C;

    invoke-virtual {v6}, LMb/C;->w()Lyc/L;

    move-result-object v6

    invoke-static/range {p0 .. p0}, LG5/I2;->j(Lyc/w;)Z

    invoke-virtual/range {p0 .. p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/Q;

    invoke-virtual {v7}, Lyc/Q;->b()Lyc/w;

    move-result-object v7

    invoke-static {v7, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, LG5/B;->b(Lyc/w;)Lyc/F;

    move-result-object v7

    invoke-static {v7}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v3, v6, v4}, Lyc/c;->u(Ljava/util/List;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object v3

    invoke-static {v5, v3}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-static/range {p0 .. p0}, LG5/B;->f(Lyc/w;)LGb/i;

    move-result-object v3

    invoke-virtual {v3}, LGb/i;->p()Lyc/A;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, LG5/I2;->c(LGb/i;LKb/h;Lyc/w;Ljava/util/List;Ljava/util/ArrayList;Lyc/w;Z)Lyc/A;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lyc/w;->G0()Z

    move-result v0

    invoke-virtual {v3, v0}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v0

    invoke-static {v0, v1, v2}, LG5/S3;->d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v10, Lzc/m;->a:Lzc/m;

    invoke-virtual {v10, v0}, Lzc/m;->F(LBc/d;)Lyc/L;

    move-result-object v10

    invoke-static {v10}, Lzc/g;->y(LBc/h;)Z

    move-result v12

    const-string v13, "["

    const/4 v14, 0x0

    if-nez v12, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-static {v10, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v12, v10, Lyc/L;

    if-eqz v12, :cond_22

    move-object v12, v10

    check-cast v12, Lyc/L;

    invoke-interface {v12}, Lyc/L;->c()LJb/i;

    move-result-object v12

    invoke-static {v12, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, LJb/f;

    invoke-static {v12}, LGb/i;->u(LJb/f;)LGb/l;

    move-result-object v12

    if-eqz v12, :cond_5

    sget-object v5, Lac/m;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v5, Lac/l;->h:Lac/k;

    goto :goto_1

    :pswitch_1
    sget-object v5, Lac/l;->g:Lac/k;

    goto :goto_1

    :pswitch_2
    sget-object v5, Lac/l;->f:Lac/k;

    goto :goto_1

    :pswitch_3
    sget-object v5, Lac/l;->e:Lac/k;

    goto :goto_1

    :pswitch_4
    sget-object v5, Lac/l;->d:Lac/k;

    goto :goto_1

    :pswitch_5
    sget-object v5, Lac/l;->c:Lac/k;

    goto :goto_1

    :pswitch_6
    sget-object v5, Lac/l;->b:Lac/k;

    goto :goto_1

    :pswitch_7
    sget-object v5, Lac/l;->a:Lac/k;

    :goto_1
    invoke-static/range {p0 .. p0}, Lzc/g;->H(LBc/d;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, LSb/x;->p:Lhc/c;

    const-string v8, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v6, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lzc/g;->u(Lyc/w;Lhc/c;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v3

    :goto_3
    invoke-static {v5, v6}, LG5/X3;->b(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_6

    :cond_5
    invoke-static {v10, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v12, v10, Lyc/L;

    if-eqz v12, :cond_21

    move-object v12, v10

    check-cast v12, Lyc/L;

    invoke-interface {v12}, Lyc/L;->c()LJb/i;

    move-result-object v12

    invoke-static {v12, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, LJb/f;

    invoke-static {v12}, LGb/i;->s(LJb/i;)LGb/l;

    move-result-object v12

    if-eqz v12, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lpc/c;->c(LGb/l;)Lpc/c;

    move-result-object v6

    invoke-virtual {v6}, Lpc/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lac/g;->c(Ljava/lang/String;)Lac/l;

    move-result-object v14

    goto/16 :goto_6

    :cond_6
    invoke-static {v10, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v12, v10, Lyc/L;

    if-eqz v12, :cond_20

    move-object v12, v10

    check-cast v12, Lyc/L;

    invoke-interface {v12}, Lyc/L;->c()LJb/i;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-static {v12}, LGb/i;->I(LJb/i;)Z

    move-result v12

    if-ne v12, v3, :cond_7

    move v12, v3

    goto :goto_4

    :cond_7
    move v12, v4

    :goto_4
    if-eqz v12, :cond_c

    invoke-static {v10, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v8, v10, Lyc/L;

    if-eqz v8, :cond_b

    check-cast v10, Lyc/L;

    invoke-interface {v10}, Lyc/L;->c()LJb/i;

    move-result-object v5

    invoke-static {v5, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, LJb/f;

    invoke-static {v5}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object v5

    sget-object v6, LIb/d;->a:Ljava/lang/String;

    invoke-static {v5}, LIb/d;->f(Lhc/d;)Lhc/b;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-boolean v6, v1, Lac/t;->g:Z

    if-nez v6, :cond_a

    sget-object v6, LIb/d;->n:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    instance-of v8, v6, Ljava/util/Collection;

    if-eqz v8, :cond_8

    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LIb/c;

    iget-object v8, v8, LIb/c;->a:Lhc/b;

    invoke-virtual {v8, v5}, Lhc/b;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_a
    :goto_5
    invoke-static {v5}, Lpc/b;->e(Lhc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lac/g;->d(Ljava/lang/String;)Lac/j;

    move-result-object v14

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-static {v2, v1, v0}, Lw2/j;->g(Ltb/y;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_6
    if-eqz v14, :cond_d

    iget-boolean v3, v1, Lac/t;->a:Z

    invoke-static {v14, v3}, LG5/X3;->b(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v5

    instance-of v6, v5, Lyc/v;

    if-eqz v6, :cond_f

    check-cast v5, Lyc/v;

    iget-object v0, v5, Lyc/v;->a:Lyc/w;

    if-eqz v0, :cond_e

    invoke-static {v0}, LG5/B;->l(Lyc/w;)Lyc/d0;

    move-result-object v0

    invoke-static {v0, v1, v2}, LG5/S3;->d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v1, v5, Lyc/v;->b:Ljava/util/LinkedHashSet;

    const-string v0, "types"

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v2, "There should be no intersection type in existing descriptors, but found: "

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v6, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_f
    invoke-interface {v5}, Lyc/L;->c()LJb/i;

    move-result-object v5

    if-eqz v5, :cond_1f

    invoke-static {v5}, LAc/l;->f(LJb/l;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v0, "error/NonExistentClass"

    invoke-static {v0}, Lac/g;->d(Ljava/lang/String;)Lac/j;

    move-result-object v0

    check-cast v5, LJb/f;

    return-object v0

    :cond_10
    instance-of v6, v5, LJb/f;

    iget-boolean v8, v1, Lac/t;->c:Z

    if-eqz v6, :cond_17

    invoke-static/range {p0 .. p0}, LGb/i;->z(Lyc/w;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual/range {p0 .. p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/Q;

    invoke-virtual {v0}, Lyc/Q;->b()Lyc/w;

    move-result-object v4

    invoke-static {v4, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lyc/Q;->a()Lyc/e0;

    move-result-object v5

    sget-object v6, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    if-ne v5, v6, :cond_11

    const-string v0, "java/lang/Object"

    invoke-static {v0}, Lac/g;->d(Ljava/lang/String;)Lac/j;

    move-result-object v0

    goto :goto_8

    :cond_11
    invoke-virtual {v0}, Lyc/Q;->a()Lyc/e0;

    move-result-object v0

    const-string v5, "getProjectionKind(...)"

    invoke-static {v0, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_12

    goto :goto_7

    :cond_12
    sget-object v5, Lac/s;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    if-eq v0, v3, :cond_14

    const/4 v3, 0x2

    if-eq v0, v3, :cond_13

    iget-object v0, v1, Lac/t;->f:Lac/t;

    if-nez v0, :cond_15

    goto :goto_7

    :cond_13
    iget-object v0, v1, Lac/t;->i:Lac/t;

    if-nez v0, :cond_15

    goto :goto_7

    :cond_14
    iget-object v0, v1, Lac/t;->h:Lac/t;

    if-nez v0, :cond_15

    :goto_7
    move-object v0, v1

    :cond_15
    invoke-static {v4, v0, v2}, LG5/S3;->d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lac/l;

    invoke-static {v0}, Lac/g;->h(Lac/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lac/g;->c(Ljava/lang/String;)Lac/l;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "arrays must have one type argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-eqz v6, :cond_1b

    invoke-static {v5}, Lkc/i;->b(LJb/l;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-boolean v3, v1, Lac/t;->b:Z

    if-nez v3, :cond_18

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v3}, Lyc/c;->d(LBc/d;Ljava/util/HashSet;)LBc/d;

    move-result-object v3

    check-cast v3, Lyc/w;

    if-eqz v3, :cond_18

    new-instance v0, Lac/t;

    iget-object v4, v1, Lac/t;->h:Lac/t;

    const/16 v21, 0x200

    iget-boolean v11, v1, Lac/t;->a:Z

    const/4 v12, 0x1

    iget-boolean v13, v1, Lac/t;->c:Z

    iget-boolean v14, v1, Lac/t;->d:Z

    iget-boolean v15, v1, Lac/t;->e:Z

    iget-object v5, v1, Lac/t;->f:Lac/t;

    iget-boolean v6, v1, Lac/t;->g:Z

    iget-object v1, v1, Lac/t;->i:Lac/t;

    const/16 v20, 0x0

    move-object v10, v0

    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v19, v1

    invoke-direct/range {v10 .. v21}, Lac/t;-><init>(ZZZZZLac/t;ZLac/t;Lac/t;ZI)V

    invoke-static {v3, v0, v2}, LG5/S3;->d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_18
    if-eqz v8, :cond_19

    move-object v3, v5

    check-cast v3, LJb/f;

    sget-object v4, LGb/i;->e:Lhc/f;

    sget-object v4, LGb/p;->Q:Lhc/d;

    invoke-static {v3, v4}, LGb/i;->b(LJb/f;Lhc/d;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "java/lang/Class"

    invoke-static {v3}, Lac/g;->d(Ljava/lang/String;)Lac/j;

    move-result-object v3

    goto :goto_9

    :cond_19
    check-cast v5, LJb/f;

    invoke-interface {v5}, LJb/f;->a()LJb/f;

    move-result-object v3

    const-string v4, "getOriginal(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, LJb/f;->d()LJb/g;

    move-result-object v3

    sget-object v6, LJb/g;->ENUM_ENTRY:LJb/g;

    if-ne v3, v6, :cond_1a

    invoke-interface {v5}, LJb/l;->k()LJb/l;

    move-result-object v3

    invoke-static {v3, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, LJb/f;

    :cond_1a
    invoke-interface {v5}, LJb/f;->a()LJb/f;

    move-result-object v3

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v9}, LG5/S3;->a(LJb/f;Lac/g;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lac/g;->d(Ljava/lang/String;)Lac/j;

    move-result-object v3

    :goto_9
    invoke-interface {v2, v0, v3, v1}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_1b
    instance-of v4, v5, LJb/W;

    if-eqz v4, :cond_1d

    check-cast v5, LJb/W;

    invoke-static {v5}, LG5/B;->g(LJb/W;)Lyc/w;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lyc/w;->G0()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {v2, v3}, Lyc/b0;->g(Lyc/w;Z)Lyc/d0;

    move-result-object v2

    :cond_1c
    sget-object v0, LHc/d;->a:LHc/d;

    invoke-static {v2, v1, v0}, LG5/S3;->d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1d
    instance-of v3, v5, LJb/V;

    if-eqz v3, :cond_1e

    iget-boolean v3, v1, Lac/t;->j:Z

    if-eqz v3, :cond_1e

    check-cast v5, LJb/V;

    check-cast v5, Lwc/t;

    invoke-virtual {v5}, Lwc/t;->V0()Lyc/A;

    move-result-object v0

    invoke-static {v0, v1, v2}, LG5/S3;->d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no descriptor for type constructor of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-static {v2, v1, v0}, Lw2/j;->g(Ltb/y;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-static {v2, v1, v0}, Lw2/j;->g(Ltb/y;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-static {v2, v1, v0}, Lw2/j;->g(Ltb/y;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
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
