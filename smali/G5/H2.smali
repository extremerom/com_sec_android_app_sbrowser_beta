.class public abstract LG5/H2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Lx1/r;Le2/l;IFLa0/m;I)V
    .locals 8

    const-string v0, "text"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, La0/q;

    const v0, -0x208848a1

    invoke-virtual {p5, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p6, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p5, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p6

    goto :goto_1

    :cond_1
    move v0, p6

    :goto_1
    and-int/lit8 v1, p6, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p5, p1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p6, 0x380

    if-nez v1, :cond_5

    invoke-virtual {p5, p2}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, p6, 0x1c00

    if-nez v1, :cond_7

    invoke-virtual {p5, p3}, La0/q;->c(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    const v1, 0xe000

    and-int/2addr v1, p6

    if-nez v1, :cond_a

    invoke-virtual {p5}, La0/q;->z()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_8

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v1, p4, v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p5, v1}, La0/q;->b0(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_9

    const/16 v1, 0x4000

    goto :goto_6

    :cond_9
    const/16 v1, 0x2000

    :goto_6
    or-int/2addr v0, v1

    :cond_a
    const v1, 0xb6db

    and-int/2addr v0, v1

    const/16 v1, 0x2492

    if-ne v0, v1, :cond_c

    invoke-virtual {p5}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p5}, La0/q;->K()V

    goto/16 :goto_b

    :cond_c
    :goto_7
    invoke-virtual {p5}, La0/q;->M()V

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p5}, La0/q;->w()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {p5}, La0/q;->K()V

    :cond_e
    :goto_8
    invoke-virtual {p5}, La0/q;->q()V

    sget-object v0, Le2/h;->a:Le2/h;

    const v1, -0x428332f6

    invoke-virtual {p5, v1}, La0/q;->R(I)V

    const v1, 0x7076b8d0

    invoke-virtual {p5, v1}, La0/q;->R(I)V

    iget-object v1, p5, La0/q;->a:LJ2/i0;

    instance-of v1, v1, Lx1/b;

    if-eqz v1, :cond_14

    invoke-virtual {p5}, La0/q;->O()V

    iget-boolean v1, p5, La0/q;->O:Z

    if-eqz v1, :cond_f

    new-instance v1, LA4/a;

    invoke-direct {v1, v0}, LA4/a;-><init>(Lsb/a;)V

    invoke-virtual {p5, v1}, La0/q;->k(Lsb/a;)V

    goto :goto_9

    :cond_f
    invoke-virtual {p5}, La0/q;->d0()V

    :goto_9
    sget-object v0, Le2/i;->b:Le2/i;

    invoke-static {p5, p0, v0}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v0, Le2/i;->c:Le2/i;

    invoke-static {p5, p1, v0}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v0, Le2/i;->d:Le2/i;

    invoke-static {p5, p2, v0}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v0, Le2/i;->e:Le2/i;

    iget-boolean v1, p5, La0/q;->O:Z

    if-nez v1, :cond_10

    invoke-virtual {p5}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, v1}, La0/q;->a0(Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, v1, v0}, La0/q;->b(Ljava/lang/Object;Lsb/n;)V

    :cond_11
    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    if-gez v1, :cond_12

    goto :goto_a

    :cond_12
    move v0, p4

    :goto_a
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Le2/i;->f:Le2/i;

    invoke-static {p5, v0, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    const/4 v0, 0x1

    invoke-virtual {p5, v0}, La0/q;->p(Z)V

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, La0/q;->p(Z)V

    invoke-virtual {p5, v0}, La0/q;->p(Z)V

    :goto_b
    invoke-virtual {p5}, La0/q;->r()La0/i0;

    move-result-object p5

    if-eqz p5, :cond_13

    new-instance v7, Le2/j;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Le2/j;-><init>(Ljava/lang/String;Lx1/r;Le2/l;IFI)V

    iput-object v7, p5, La0/i0;->d:Lsb/n;

    :cond_13
    return-void

    :cond_14
    invoke-static {}, La0/d;->B()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final b(Ljava/util/List;Ljava/util/Collection;LJb/v;)Ljava/util/ArrayList;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "oldValueParameters"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Iterable;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lfb/n;->n0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldb/j;

    iget-object v3, v2, Ldb/j;->a:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Lyc/w;

    iget-object v2, v2, Ldb/j;->b:Ljava/lang/Object;

    check-cast v2, LMb/T;

    new-instance v3, LMb/T;

    iget v7, v2, LMb/T;->g:I

    move-object v4, v2

    check-cast v4, LF3/f;

    invoke-virtual {v4}, LF3/f;->u()LKb/h;

    move-result-object v8

    move-object v4, v2

    check-cast v4, LMb/n;

    invoke-virtual {v4}, LMb/n;->getName()Lhc/f;

    move-result-object v9

    const-string v4, "getName(...)"

    invoke-static {v9, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, LMb/T;->V0()Z

    move-result v11

    iget-object v4, v2, LMb/T;->k:Lyc/w;

    if-eqz v4, :cond_0

    invoke-static/range {p2 .. p2}, Loc/d;->j(LJb/l;)LJb/C;

    move-result-object v4

    invoke-interface {v4}, LJb/C;->j()LGb/i;

    move-result-object v4

    invoke-virtual {v4, v10}, LGb/i;->f(Lyc/w;)Lyc/w;

    move-result-object v4

    :goto_1
    move-object v14, v4

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :goto_2
    move-object v4, v2

    check-cast v4, LMb/o;

    invoke-virtual {v4}, LMb/o;->e()LJb/S;

    move-result-object v15

    const-string v4, "getSource(...)"

    invoke-static {v15, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v12, v2, LMb/T;->i:Z

    iget-boolean v13, v2, LMb/T;->j:Z

    const/4 v6, 0x0

    move-object v4, v3

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v15}, LMb/T;-><init>(LJb/b;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final c(LJb/f;)LWb/E;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Loc/d;->a:I

    invoke-interface {p0}, LJb/f;->n()Lyc/A;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/w;

    invoke-static {v0}, LGb/i;->y(Lyc/w;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    sget v2, Lkc/e;->a:I

    sget-object v2, LJb/g;->CLASS:LJb/g;

    invoke-static {v0, v2}, Lkc/e;->n(LJb/l;LJb/g;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, LJb/g;->ENUM_CLASS:LJb/g;

    invoke-static {v0, v2}, Lkc/e;->n(LJb/l;LJb/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const-string p0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v0, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LJb/f;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v0}, LJb/f;->j0()Lrc/o;

    move-result-object p0

    instance-of v2, p0, LWb/E;

    if-eqz v2, :cond_4

    move-object v1, p0

    check-cast v1, LWb/E;

    :cond_4
    if-nez v1, :cond_5

    invoke-static {v0}, LG5/H2;->c(LJb/f;)LWb/E;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public static final d(LJb/f;)Z
    .locals 1

    sget-object v0, LGb/d;->a:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lkc/e;->l(LJb/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LGb/d;->a:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Loc/d;->f(LJb/i;)Lhc/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lhc/b;->e()Lhc/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lfb/n;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static e(Lv/A;)Landroid/app/appsearch/SearchSpec;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lz/c;->m()Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lv/A;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/16 v3, 0x22

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    invoke-static {v0, v1}, Lz/g;->d(Landroid/app/appsearch/SearchSpec$Builder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SEARCH_SPEC_ADVANCED_RANKING_EXPRESSION is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0}, Lz/c;->z(Landroid/app/appsearch/SearchSpec$Builder;)V

    :goto_0
    invoke-static {v0}, Lz/c;->v(Landroid/app/appsearch/SearchSpec$Builder;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    iget-object v2, p0, Lv/A;->a:Ljava/util/List;

    if-nez v2, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_2
    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Lz/c;->p(Landroid/app/appsearch/SearchSpec$Builder;Ljava/util/List;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    iget-object v2, p0, Lv/A;->b:Ljava/util/List;

    if-nez v2, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_3
    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Lz/c;->x(Landroid/app/appsearch/SearchSpec$Builder;Ljava/util/List;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    iget-object v2, p0, Lv/A;->d:Ljava/util/List;

    if-nez v2, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_4
    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Lz/c;->B(Landroid/app/appsearch/SearchSpec$Builder;Ljava/util/List;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    iget v2, p0, Lv/A;->e:I

    invoke-static {v1, v2}, Lz/c;->w(Landroid/app/appsearch/SearchSpec$Builder;I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    invoke-static {v1}, Lz/c;->A(Landroid/app/appsearch/SearchSpec$Builder;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    invoke-static {v1}, Lz/c;->n(Landroid/app/appsearch/SearchSpec$Builder;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    iget v2, p0, Lv/A;->f:I

    invoke-static {v1, v2}, Lz/c;->o(Landroid/app/appsearch/SearchSpec$Builder;I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    invoke-static {v1}, Lz/c;->t(Landroid/app/appsearch/SearchSpec$Builder;)V

    iget-object v1, p0, Lv/A;->g:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v4, LN/f;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, LN/A;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, LN/f;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, LN/a;

    invoke-virtual {v1}, LN/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v0, v4, v2}, Lz/c;->u(Landroid/app/appsearch/SearchSpec$Builder;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lv/A;->f()LN/f;

    move-result-object v1

    invoke-virtual {v1}, LN/A;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_7

    invoke-virtual {p0}, Lv/A;->f()LN/f;

    move-result-object v1

    invoke-static {v0, v1}, Lz/g;->c(Landroid/app/appsearch/SearchSpec$Builder;Ljava/util/Map;)V

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Property weights are not supported with this backend/Android API level combination."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    iget-object v1, p0, Lv/A;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/16 v4, 0x23

    if-nez v2, :cond_f

    const-string v2, "NUMERIC_SEARCH"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "VERBATIM_SEARCH"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "LIST_FILTER_QUERY_LANGUAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_e

    invoke-static {v0, p0}, Lz/g;->a(Landroid/app/appsearch/SearchSpec$Builder;Lv/A;)V

    :cond_a
    const-string v2, "LIST_FILTER_HAS_PROPERTY_FUNCTION"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_b

    invoke-static {v0, p0}, Lz/h;->b(Landroid/app/appsearch/SearchSpec$Builder;Lv/A;)V

    goto :goto_4

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "LIST_FILTER_HAS_PROPERTY_FUNCTION is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_4
    const-string v2, "LIST_FILTER_MATCH_SCORE_EXPRESSION_FUNCTION"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "LIST_FILTER_MATCH_SCORE_EXPRESSION_FUNCTION is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Advanced query features (NUMERIC_SEARCH, VERBATIM_SEARCH and LIST_FILTER_QUERY_LANGUAGE) are not supported with this backend/Android API level combination."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_5
    iget-object v2, p0, Lv/A;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lv/A;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lv/A;->e()LN/f;

    move-result-object v2

    invoke-virtual {v2}, LN/A;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_10

    invoke-virtual {p0}, Lv/A;->e()LN/f;

    move-result-object v2

    invoke-static {v0, v2}, Lz/h;->a(Landroid/app/appsearch/SearchSpec$Builder;Ljava/util/Map;)V

    goto :goto_6

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SEARCH_SPEC_ADD_FILTER_PROPERTIES is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_6
    iget-object v2, p0, Lv/A;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object p0, p0, Lv/A;->n:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "SCHEMA_SCORABLE_PROPERTY_CONFIG"

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    invoke-static {v0}, Lz/c;->q(Landroid/app/appsearch/SearchSpec$Builder;)Landroid/app/appsearch/SearchSpec;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SCHEMA_SCORABLE_PROPERTY_CONFIG is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SEARCH_SPEC_ADD_FILTER_DOCUMENT_IDS is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SEARCH_SPEC_ADD_INFORMATIONAL_RANKING_EXPRESSIONS are not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SEARCH_SPEC_SEARCH_STRING_PARAMETERS is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SCHEMA_EMBEDDING_PROPERTY_CONFIG is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
