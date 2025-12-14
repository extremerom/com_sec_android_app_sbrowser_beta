.class public final La0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/b0;

.field public static final b:La0/b0;

.field public static final c:La0/b0;

.field public static final d:La0/b0;

.field public static final e:La0/b0;

.field public static final f:LB0/r;

.field public static final g:Ljava/lang/Object;

.field public static final h:La0/H;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, La0/b0;

    const-string v1, "provider"

    invoke-direct {v0, v1}, La0/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, La0/d;->a:La0/b0;

    new-instance v0, La0/b0;

    invoke-direct {v0, v1}, La0/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, La0/d;->b:La0/b0;

    new-instance v0, La0/b0;

    const-string v1, "compositionLocalMap"

    invoke-direct {v0, v1}, La0/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, La0/d;->c:La0/b0;

    new-instance v0, La0/b0;

    const-string v1, "providers"

    invoke-direct {v0, v1}, La0/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, La0/d;->d:La0/b0;

    new-instance v0, La0/b0;

    const-string v1, "reference"

    invoke-direct {v0, v1}, La0/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, La0/d;->e:La0/b0;

    new-instance v0, LB0/r;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LB0/r;-><init>(I)V

    sput-object v0, La0/d;->f:LB0/r;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La0/d;->g:Ljava/lang/Object;

    new-instance v0, La0/H;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La0/d;->h:La0/H;

    return-void
.end method

.method public static final A(Lib/h;)La0/W;
    .locals 1

    sget-object v0, La0/V;->b:La0/V;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p0

    check-cast p0, La0/W;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final B()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid applier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final C(La0/q;Lsb/n;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<androidx.compose.runtime.Composer, kotlin.Int, kotlin.Unit>"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ltb/z;->e(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static D(La0/y0;ILa0/y0;ZZZ)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, La0/y0;->q(I)I

    move-result v3

    add-int v4, v1, v3

    iget-object v5, v0, La0/y0;->b:[I

    invoke-virtual/range {p0 .. p1}, La0/y0;->p(I)I

    move-result v6

    invoke-virtual {v0, v6, v5}, La0/y0;->f(I[I)I

    move-result v5

    iget-object v6, v0, La0/y0;->b:[I

    invoke-virtual {v0, v4}, La0/y0;->p(I)I

    move-result v7

    invoke-virtual {v0, v7, v6}, La0/y0;->f(I[I)I

    move-result v6

    sub-int v7, v6, v5

    const/4 v8, 0x1

    if-ltz v1, :cond_0

    iget-object v10, v0, La0/y0;->b:[I

    invoke-virtual/range {p0 .. p1}, La0/y0;->p(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x5

    add-int/2addr v11, v8

    aget v10, v10, v11

    const/high16 v11, 0xc000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v2, v3}, La0/y0;->r(I)V

    iget v11, v2, La0/y0;->s:I

    invoke-virtual {v2, v7, v11}, La0/y0;->s(II)V

    iget v11, v0, La0/y0;->g:I

    if-ge v11, v4, :cond_1

    invoke-virtual {v0, v4}, La0/y0;->u(I)V

    :cond_1
    iget v11, v0, La0/y0;->k:I

    if-ge v11, v6, :cond_2

    invoke-virtual {v0, v6, v4}, La0/y0;->v(II)V

    :cond_2
    iget-object v11, v2, La0/y0;->b:[I

    iget v12, v2, La0/y0;->s:I

    iget-object v13, v0, La0/y0;->b:[I

    mul-int/lit8 v14, v12, 0x5

    mul-int/lit8 v15, v1, 0x5

    mul-int/lit8 v9, v4, 0x5

    invoke-static {v14, v15, v13, v11, v9}, Lfb/l;->j(II[I[II)V

    iget-object v9, v2, La0/y0;->c:[Ljava/lang/Object;

    iget v13, v2, La0/y0;->i:I

    iget-object v15, v0, La0/y0;->c:[Ljava/lang/Object;

    invoke-static {v13, v5, v6, v15, v9}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iget v6, v2, La0/y0;->u:I

    add-int/lit8 v14, v14, 0x2

    aput v6, v11, v14

    sub-int v14, v12, v1

    add-int v15, v12, v3

    invoke-virtual {v2, v12, v11}, La0/y0;->f(I[I)I

    move-result v16

    sub-int v16, v13, v16

    iget v8, v2, La0/y0;->m:I

    move/from16 v17, v8

    iget v8, v2, La0/y0;->l:I

    array-length v9, v9

    move/from16 v18, v10

    move/from16 v10, v17

    move/from16 v17, v13

    move v13, v12

    :goto_1
    if-ge v13, v15, :cond_6

    if-eq v13, v12, :cond_3

    mul-int/lit8 v19, v13, 0x5

    add-int/lit8 v19, v19, 0x2

    aget v20, v11, v19

    add-int v20, v20, v14

    aput v20, v11, v19

    :cond_3
    invoke-virtual {v2, v13, v11}, La0/y0;->f(I[I)I

    move-result v19

    move/from16 v20, v15

    add-int v15, v19, v16

    if-ge v10, v13, :cond_4

    move/from16 v19, v12

    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    move/from16 v19, v12

    iget v12, v2, La0/y0;->k:I

    :goto_2
    invoke-static {v15, v12, v8, v9}, La0/y0;->h(IIII)I

    move-result v12

    mul-int/lit8 v15, v13, 0x5

    add-int/lit8 v15, v15, 0x4

    aput v12, v11, v15

    if-ne v13, v10, :cond_5

    add-int/lit8 v10, v10, 0x1

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v19

    move/from16 v15, v20

    goto :goto_1

    :cond_6
    move/from16 v19, v12

    move/from16 v20, v15

    iput v10, v2, La0/y0;->m:I

    iget-object v8, v0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, La0/y0;->n()I

    move-result v9

    invoke-static {v8, v1, v9}, La0/d;->l(Ljava/util/ArrayList;II)I

    move-result v8

    iget-object v9, v0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, La0/y0;->n()I

    move-result v10

    invoke-static {v9, v4, v10}, La0/d;->l(Ljava/util/ArrayList;II)I

    move-result v4

    if-ge v8, v4, :cond_8

    iget-object v9, v0, La0/y0;->d:Ljava/util/ArrayList;

    new-instance v10, Ljava/util/ArrayList;

    sub-int v12, v4, v8

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v8

    :goto_3
    if-ge v12, v4, :cond_7

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, La0/c;

    iget v15, v13, La0/c;->a:I

    add-int/2addr v15, v14

    iput v15, v13, La0/c;->a:I

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_7
    iget-object v12, v2, La0/y0;->d:Ljava/util/ArrayList;

    iget v13, v2, La0/y0;->s:I

    invoke-virtual/range {p2 .. p2}, La0/y0;->n()I

    move-result v14

    invoke-static {v12, v13, v14}, La0/d;->l(Ljava/util/ArrayList;II)I

    move-result v12

    iget-object v13, v2, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v13, v12, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v9, v8, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_8
    sget-object v10, Lfb/v;->a:Lfb/v;

    :goto_4
    move-object v4, v10

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, La0/y0;->e:Ljava/util/HashMap;

    iget-object v8, v2, La0/y0;->e:Ljava/util/HashMap;

    if-eqz v4, :cond_9

    if-eqz v8, :cond_9

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_9

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La0/c;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La0/M;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    iget v4, v2, La0/y0;->u:I

    invoke-virtual {v2, v6}, La0/y0;->F(I)La0/M;

    iget-object v4, v0, La0/y0;->b:[I

    invoke-virtual {v0, v1, v4}, La0/y0;->x(I[I)I

    move-result v4

    if-nez p5, :cond_a

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto :goto_7

    :cond_a
    if-eqz p3, :cond_e

    if-ltz v4, :cond_b

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, La0/y0;->G()V

    iget v3, v0, La0/y0;->s:I

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, La0/y0;->a(I)V

    invoke-virtual/range {p0 .. p0}, La0/y0;->G()V

    :cond_c
    iget v3, v0, La0/y0;->s:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, La0/y0;->a(I)V

    invoke-virtual/range {p0 .. p0}, La0/y0;->z()Z

    move-result v1

    if-eqz v9, :cond_d

    invoke-virtual/range {p0 .. p0}, La0/y0;->C()V

    invoke-virtual/range {p0 .. p0}, La0/y0;->i()V

    invoke-virtual/range {p0 .. p0}, La0/y0;->C()V

    invoke-virtual/range {p0 .. p0}, La0/y0;->i()V

    :cond_d
    move v9, v1

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v1, v3}, La0/y0;->A(II)Z

    move-result v9

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v5, v7, v1}, La0/y0;->B(III)V

    :goto_7
    if-nez v9, :cond_12

    iget v0, v2, La0/y0;->o:I

    move/from16 v1, v19

    invoke-static {v1, v11}, La0/d;->k(I[I)Z

    move-result v4

    if-eqz v4, :cond_f

    move v8, v3

    goto :goto_8

    :cond_f
    invoke-static {v1, v11}, La0/d;->m(I[I)I

    move-result v8

    :goto_8
    add-int/2addr v0, v8

    iput v0, v2, La0/y0;->o:I

    if-eqz p4, :cond_10

    move/from16 v12, v20

    iput v12, v2, La0/y0;->s:I

    add-int v13, v17, v7

    iput v13, v2, La0/y0;->i:I

    :cond_10
    if-eqz v18, :cond_11

    invoke-virtual {v2, v6}, La0/y0;->K(I)V

    :cond_11
    return-object v10

    :cond_12
    const-string v0, "Unexpectedly removed anchors"

    invoke-static {v0}, La0/d;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;
    .locals 1

    sget v0, La0/b;->b:I

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;La0/A0;)V

    return-object v0
.end method

.method public static final F(Lsb/n;La0/m;)La0/a0;
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p1, La0/q;

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, La0/l;->a:La0/V;

    if-ne v1, v2, :cond_0

    sget-object v1, La0/V;->f:La0/V;

    invoke-static {v0, v1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {p1, v1}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, La0/a0;

    sget-object v0, Ldb/r;->a:Ldb/r;

    invoke-virtual {p1, p0}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1

    if-ne v4, v2, :cond_2

    :cond_1
    new-instance v4, La0/C0;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v1, v2}, La0/C0;-><init>(Lsb/n;La0/a0;Lib/c;)V

    invoke-virtual {p1, v4}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_2
    check-cast v4, Lsb/n;

    invoke-static {p1, v0, v4}, La0/d;->d(La0/m;Ljava/lang/Object;Lsb/n;)V

    return-object v1
.end method

.method public static final G(La0/e0;La0/g0;)Ljava/lang/Object;
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, La0/g0;->a:La0/T;

    :cond_0
    check-cast v0, La0/N0;

    invoke-interface {v0, p0}, La0/N0;->a(La0/e0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final H(La0/m;)La0/o;
    .locals 8

    check-cast p0, La0/q;

    sget-object v0, La0/d;->e:La0/b0;

    const/16 v1, 0xce

    invoke-virtual {p0, v1, v0}, La0/q;->N(ILa0/b0;)V

    iget-boolean v0, p0, La0/q;->O:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La0/q;->H:La0/y0;

    iget v1, v0, La0/y0;->u:I

    invoke-virtual {v0, v1}, La0/y0;->p(I)I

    move-result v2

    iget-object v3, v0, La0/y0;->b:[I

    mul-int/lit8 v4, v2, 0x5

    add-int/lit8 v4, v4, 0x1

    aget v5, v3, v4

    const/high16 v6, 0x8000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    or-int/2addr v5, v6

    aput v5, v3, v4

    invoke-static {v2, v3}, La0/d;->f(I[I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, La0/y0;->b:[I

    invoke-virtual {v0, v1, v2}, La0/y0;->x(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, La0/y0;->K(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, La0/q;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, La0/n;

    if-eqz v1, :cond_2

    check-cast v0, La0/n;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    new-instance v6, La0/n;

    new-instance v7, La0/o;

    iget v2, p0, La0/q;->P:I

    iget-boolean v3, p0, La0/q;->p:Z

    iget-boolean v4, p0, La0/q;->B:Z

    iget-object v0, p0, La0/q;->g:La0/u;

    iget-object v5, v0, La0/u;->p:La0/x;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, La0/o;-><init>(La0/q;IZZLa0/x;)V

    invoke-direct {v6, v7}, La0/n;-><init>(La0/o;)V

    invoke-virtual {p0, v6}, La0/q;->b0(Ljava/lang/Object;)V

    move-object v0, v6

    :cond_3
    invoke-virtual {p0}, La0/q;->l()La0/e0;

    move-result-object v1

    iget-object v0, v0, La0/n;->a:La0/o;

    iget-object v2, v0, La0/o;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, La0/q;->p(Z)V

    return-object v0
.end method

.method public static final I(Ljava/lang/Object;La0/m;)La0/a0;
    .locals 2

    check-cast p1, La0/q;

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La0/l;->a:La0/V;

    if-ne v0, v1, :cond_0

    sget-object v0, La0/V;->f:La0/V;

    invoke-static {p0, v0}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {p1, v0}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, La0/a0;

    invoke-interface {v0, p0}, La0/a0;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final J(La0/y0;LB0/M;)V
    .locals 9

    iget v0, p0, La0/y0;->s:I

    invoke-virtual {p0, v0}, La0/y0;->p(I)I

    move-result v0

    iget-object v1, p0, La0/y0;->b:[I

    invoke-virtual {p0, v0, v1}, La0/y0;->f(I[I)I

    move-result v0

    iget-object v1, p0, La0/y0;->b:[I

    iget v2, p0, La0/y0;->s:I

    invoke-virtual {p0, v2}, La0/y0;->q(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, La0/y0;->p(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, La0/y0;->f(I[I)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v2, p0, La0/y0;->c:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, La0/y0;->g(I)I

    move-result v3

    aget-object v2, v2, v3

    instance-of v3, v2, La0/j;

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, La0/y0;->o()I

    move-result v3

    sub-int/2addr v3, v0

    move-object v5, v2

    check-cast v5, La0/j;

    iget-object v6, p1, LB0/M;->f:Ljava/lang/Object;

    check-cast v6, LN/v;

    if-nez v6, :cond_0

    sget v6, LN/z;->a:I

    new-instance v6, LN/v;

    invoke-direct {v6}, LN/v;-><init>()V

    iput-object v6, p1, LB0/M;->f:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v6, v5}, LN/v;->d(Ljava/lang/Object;)I

    move-result v7

    iget-object v6, v6, LN/v;->b:[Ljava/lang/Object;

    aput-object v5, v6, v7

    invoke-virtual {p1, v5, v3, v4, v4}, LB0/M;->n(Ljava/lang/Object;III)V

    :cond_1
    instance-of v3, v2, La0/r0;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, La0/y0;->o()I

    move-result v3

    sub-int/2addr v3, v0

    move-object v5, v2

    check-cast v5, La0/r0;

    iget-object v6, v5, La0/r0;->b:La0/c;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, La0/c;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v6}, La0/y0;->c(La0/c;)I

    move-result v4

    invoke-virtual {p0}, La0/y0;->o()I

    move-result v6

    iget-object v7, p0, La0/y0;->b:[I

    invoke-virtual {p0, v4}, La0/y0;->q(I)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, La0/y0;->p(I)I

    move-result v8

    invoke-virtual {p0, v8, v7}, La0/y0;->f(I[I)I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    iget-object v5, v5, La0/r0;->a:La0/q0;

    invoke-virtual {p1, v5, v3, v4, v6}, LB0/M;->n(Ljava/lang/Object;III)V

    :cond_3
    instance-of v3, v2, La0/i0;

    if-eqz v3, :cond_4

    check-cast v2, La0/i0;

    invoke-virtual {v2}, La0/i0;->d()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, La0/y0;->z()Z

    return-void
.end method

.method public static final K(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Check failed"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final L(Ljava/util/ArrayList;II)I
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_3

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/c;

    iget v3, v3, La0/c;->a:I

    if-gez v3, :cond_0

    add-int/2addr v3, p2

    :cond_0
    invoke-static {v3, p1}, Ltb/k;->h(II)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method

.method public static final M(La0/m;Ljava/lang/Object;Lsb/n;)V
    .locals 1

    check-cast p0, La0/q;

    iget-boolean v0, p0, La0/q;->O:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, La0/q;->G()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, La0/q;->a0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, La0/q;->b(Ljava/lang/Object;Lsb/n;)V

    :cond_1
    return-void
.end method

.method public static final N(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final O(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final P(I)I
    .locals 3

    const v0, 0x12492492

    and-int/2addr v0, p0

    const v1, 0x24924924

    and-int/2addr v1, p0

    const v2, -0x36db6db7

    and-int/2addr p0, v2

    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v2, v0

    or-int/2addr p0, v2

    shl-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static final Q([La0/h0;La0/e0;La0/e0;)Li0/e;
    .locals 6

    sget-object v0, Li0/e;->d:Li0/e;

    new-instance v1, Li0/d;

    invoke-direct {v1, v0}, Li0/d;-><init>(Li0/e;)V

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    iget-object v4, v3, La0/h0;->a:La0/g0;

    iget-boolean v5, v3, La0/h0;->f:Z

    if-nez v5, :cond_0

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La0/N0;

    invoke-virtual {v4, v3, v5}, La0/g0;->a(La0/h0;La0/N0;)La0/N0;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Li0/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Li0/d;->a()Li0/e;

    move-result-object p0

    return-object p0
.end method

.method public static final a(La0/h0;Li0/a;La0/m;I)V
    .locals 10

    check-cast p2, La0/q;

    const v0, -0x50862cb8

    invoke-virtual {p2, v0}, La0/q;->S(I)La0/q;

    invoke-virtual {p2}, La0/q;->l()La0/e0;

    move-result-object v0

    sget-object v1, La0/d;->b:La0/b0;

    const/16 v2, 0xc9

    invoke-virtual {p2, v2, v1}, La0/q;->N(ILa0/b0;)V

    invoke-virtual {p2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, La0/l;->a:La0/V;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.ValueHolder<kotlin.Any?>"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, La0/N0;

    :goto_0
    iget-object v2, p0, La0/h0;->a:La0/g0;

    invoke-virtual {v2, p0, v1}, La0/g0;->a(La0/h0;La0/N0;)La0/N0;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v4}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v5, p2, La0/q;->O:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    iget-boolean v1, p0, La0/h0;->f:Z

    if-nez v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    check-cast v0, Li0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v5, v0, Lf0/c;->a:Lf0/l;

    invoke-virtual {v5, v2, v1, v4, v7}, Lf0/l;->u(Ljava/lang/Object;ILjava/lang/Object;I)LMd/c;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Li0/e;

    iget-object v4, v1, LMd/c;->c:Ljava/lang/Object;

    check-cast v4, Lf0/l;

    iget v0, v0, Lf0/c;->b:I

    iget v1, v1, LMd/c;->b:I

    add-int/2addr v0, v1

    invoke-direct {v2, v4, v0}, Lf0/c;-><init>(Lf0/l;I)V

    move-object v0, v2

    :cond_4
    :goto_1
    iput-boolean v6, p2, La0/q;->I:Z

    :cond_5
    move v1, v7

    goto :goto_4

    :cond_6
    iget-object v5, p2, La0/q;->F:La0/v0;

    iget v8, v5, La0/v0;->g:I

    iget-object v9, v5, La0/v0;->b:[I

    invoke-virtual {v5, v8, v9}, La0/v0;->b(I[I)Ljava/lang/Object;

    move-result-object v5

    const-string v8, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v5, v8}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, La0/e0;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v1, :cond_8

    :cond_7
    iget-boolean v1, p0, La0/h0;->f:Z

    if-nez v1, :cond_9

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    move-object v0, v5

    goto :goto_3

    :cond_9
    :goto_2
    check-cast v0, Li0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v8, v0, Lf0/c;->a:Lf0/l;

    invoke-virtual {v8, v2, v1, v4, v7}, Lf0/l;->u(Ljava/lang/Object;ILjava/lang/Object;I)LMd/c;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    new-instance v2, Li0/e;

    iget-object v4, v1, LMd/c;->c:Ljava/lang/Object;

    check-cast v4, Lf0/l;

    iget v0, v0, Lf0/c;->b:I

    iget v1, v1, LMd/c;->b:I

    add-int/2addr v0, v1

    invoke-direct {v2, v4, v0}, Lf0/c;-><init>(Lf0/l;I)V

    move-object v0, v2

    :goto_3
    iget-boolean v1, p2, La0/q;->x:Z

    if-nez v1, :cond_b

    if-eq v5, v0, :cond_5

    :cond_b
    move v1, v6

    :goto_4
    if-eqz v1, :cond_c

    iget-boolean v2, p2, La0/q;->O:Z

    if-nez v2, :cond_c

    invoke-virtual {p2, v0}, La0/q;->E(La0/e0;)V

    :cond_c
    iget-boolean v2, p2, La0/q;->v:Z

    iget-object v4, p2, La0/q;->w:LB0/n;

    invoke-virtual {v4, v2}, LB0/n;->b(I)V

    iput-boolean v1, p2, La0/q;->v:Z

    iput-object v0, p2, La0/q;->J:La0/e0;

    sget-object v1, La0/d;->c:La0/b0;

    const/16 v2, 0xca

    invoke-virtual {p2, v1, v2, v0, v7}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    shr-int/lit8 v0, p3, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v7}, La0/q;->p(Z)V

    invoke-virtual {p2, v7}, La0/q;->p(Z)V

    invoke-virtual {v4}, LB0/n;->a()I

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    move v6, v7

    :goto_5
    iput-boolean v6, p2, La0/q;->v:Z

    iput-object v3, p2, La0/q;->J:La0/e0;

    invoke-virtual {p2}, La0/q;->r()La0/i0;

    move-result-object p2

    if-eqz p2, :cond_e

    new-instance v0, LV/p;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, p3, v1}, LV/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, La0/i0;->d:Lsb/n;

    :cond_e
    return-void
.end method

.method public static final b([La0/h0;Li0/a;La0/m;I)V
    .locals 7

    check-cast p2, La0/q;

    const v0, -0x52e5dee3

    invoke-virtual {p2, v0}, La0/q;->S(I)La0/q;

    invoke-virtual {p2}, La0/q;->l()La0/e0;

    move-result-object v0

    sget-object v1, La0/d;->b:La0/b0;

    const/16 v2, 0xc9

    invoke-virtual {p2, v2, v1}, La0/q;->N(ILa0/b0;)V

    iget-boolean v1, p2, La0/q;->O:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Li0/e;->d:Li0/e;

    invoke-static {p0, v0, v1}, La0/d;->Q([La0/h0;La0/e0;La0/e0;)Li0/e;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, La0/q;->Z(La0/e0;Li0/e;)Li0/e;

    move-result-object v0

    iput-boolean v2, p2, La0/q;->I:Z

    :cond_0
    :goto_0
    move v1, v3

    goto :goto_2

    :cond_1
    iget-object v1, p2, La0/q;->F:La0/v0;

    iget v4, v1, La0/v0;->g:I

    invoke-virtual {v1, v4, v3}, La0/v0;->g(II)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v1, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, La0/e0;

    iget-object v5, p2, La0/q;->F:La0/v0;

    iget v6, v5, La0/v0;->g:I

    invoke-virtual {v5, v6, v2}, La0/v0;->g(II)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, La0/e0;

    invoke-static {p0, v0, v5}, La0/d;->Q([La0/h0;La0/e0;La0/e0;)Li0/e;

    move-result-object v4

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p2, La0/q;->x:Z

    if-nez v6, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p2, La0/q;->k:I

    iget-object v4, p2, La0/q;->F:La0/v0;

    invoke-virtual {v4}, La0/v0;->l()I

    move-result v4

    add-int/2addr v4, v0

    iput v4, p2, La0/q;->k:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p2, v0, v4}, La0/q;->Z(La0/e0;Li0/e;)Li0/e;

    move-result-object v0

    iget-boolean v4, p2, La0/q;->x:Z

    if-nez v4, :cond_4

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    iget-boolean v4, p2, La0/q;->O:Z

    if-nez v4, :cond_5

    invoke-virtual {p2, v0}, La0/q;->E(La0/e0;)V

    :cond_5
    iget-boolean v4, p2, La0/q;->v:Z

    iget-object v5, p2, La0/q;->w:LB0/n;

    invoke-virtual {v5, v4}, LB0/n;->b(I)V

    iput-boolean v1, p2, La0/q;->v:Z

    iput-object v0, p2, La0/q;->J:La0/e0;

    sget-object v1, La0/d;->c:La0/b0;

    const/16 v4, 0xca

    invoke-virtual {p2, v1, v4, v0, v3}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    shr-int/lit8 v0, p3, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, La0/q;->p(Z)V

    invoke-virtual {p2, v3}, La0/q;->p(Z)V

    invoke-virtual {v5}, LB0/n;->a()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    iput-boolean v2, p2, La0/q;->v:Z

    const/4 v0, 0x0

    iput-object v0, p2, La0/q;->J:La0/e0;

    invoke-virtual {p2}, La0/q;->r()La0/i0;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, LV/p;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p3, v1}, LV/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, La0/i0;->d:Lsb/n;

    :cond_7
    return-void
.end method

.method public static final c(Ljava/lang/Object;Lsb/k;La0/m;)V
    .locals 1

    check-cast p2, La0/q;

    invoke-virtual {p2, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_0

    sget-object p0, La0/l;->a:La0/V;

    if-ne v0, p0, :cond_1

    :cond_0
    new-instance v0, La0/F;

    invoke-direct {v0, p1}, La0/F;-><init>(Lsb/k;)V

    invoke-virtual {p2, v0}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, La0/F;

    return-void
.end method

.method public static final d(La0/m;Ljava/lang/Object;Lsb/n;)V
    .locals 2

    check-cast p0, La0/q;

    iget-object v0, p0, La0/q;->b:La0/s;

    invoke-virtual {v0}, La0/s;->h()Lib/h;

    move-result-object v0

    invoke-virtual {p0, p1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_0

    sget-object p1, La0/l;->a:La0/V;

    if-ne v1, p1, :cond_1

    :cond_0
    new-instance v1, La0/S;

    invoke-direct {v1, v0, p2}, La0/S;-><init>(Lib/h;Lsb/n;)V

    invoke-virtual {p0, v1}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, La0/S;

    return-void
.end method

.method public static final e(Lsb/a;La0/m;)V
    .locals 11

    check-cast p1, La0/q;

    iget-object p1, p1, La0/q;->L:Lb0/b;

    iget-object p1, p1, Lb0/b;->b:Lb0/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lb0/v;->c:Lb0/v;

    iget-object p1, p1, Lb0/a;->b:Lb0/D;

    invoke-virtual {p1, v0}, Lb0/D;->l(Lb0/C;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, p0}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget p0, p1, Lb0/D;->h:I

    iget v2, v0, Lb0/C;->a:I

    invoke-static {p1, v2}, Lb0/D;->e(Lb0/D;I)I

    move-result v3

    iget v4, v0, Lb0/C;->b:I

    if-ne p0, v3, :cond_0

    iget p0, p1, Lb0/D;->i:I

    invoke-static {p1, v4}, Lb0/D;->e(Lb0/D;I)I

    move-result v3

    if-ne p0, v3, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    const-string v7, ", "

    if-ge v3, v2, :cond_3

    shl-int/2addr v6, v3

    iget v8, p1, Lb0/D;->h:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_2

    if-lez v5, :cond_1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v2}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v8, v1

    :goto_1
    if-ge v1, v4, :cond_6

    shl-int v9, v6, v1

    iget v10, p1, Lb0/D;->i:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_5

    if-lez v5, :cond_4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0, v1}, Lb0/v;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while pushing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Not all arguments were provided. Missing "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " int arguments ("

    const-string v2, ") and "

    invoke-static {v1, v5, v0, p0, v2}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " object arguments ("

    const-string v0, ")."

    invoke-static {v1, v8, p0, p1, v0}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final f(I[I)Z
    .locals 1

    mul-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    add-int/2addr p0, v0

    aget p0, p1, p0

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final g(I[I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x4

    aget p0, p1, p0

    return p0
.end method

.method public static final h(I[I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x3

    aget p0, p1, p0

    return p0
.end method

.method public static final i(I[I)Z
    .locals 1

    mul-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    add-int/2addr p0, v0

    aget p0, p1, p0

    const/high16 p1, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final j(I[I)Z
    .locals 1

    mul-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    add-int/2addr p0, v0

    aget p0, p1, p0

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final k(I[I)Z
    .locals 1

    mul-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    add-int/2addr p0, v0

    aget p0, p1, p0

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final l(Ljava/util/ArrayList;II)I
    .locals 0

    invoke-static {p0, p1, p2}, La0/d;->L(Ljava/util/ArrayList;II)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    :goto_0
    return p0
.end method

.method public static final m(I[I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x1

    aget p0, p1, p0

    const p1, 0x3ffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static final n(I[I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x2

    aget p0, p1, p0

    return p0
.end method

.method public static final o(Ljava/util/ArrayList;II)V
    .locals 1

    invoke-static {p1, p0}, La0/d;->z(ILjava/util/ArrayList;)I

    move-result p1

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/N;

    iget v0, v0, La0/N;->b:I

    if-ge v0, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final p(I[I)I
    .locals 1

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 v0, p0, 0x4

    aget v0, p1, v0

    add-int/lit8 p0, p0, 0x1

    aget p0, p1, p0

    shr-int/lit8 p0, p0, 0x1c

    invoke-static {p0}, La0/d;->v(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static final q(II[I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, La0/d;->K(Z)V

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x3

    aput p1, p2, p0

    return-void
.end method

.method public static final r(II[I)V
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const v1, 0x3ffffff

    if-ge p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, La0/d;->K(Z)V

    mul-int/lit8 p0, p0, 0x5

    add-int/2addr p0, v0

    aget v0, p2, p0

    const/high16 v1, -0x4000000

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    aput p1, p2, p0

    return-void
.end method

.method public static final s(LQc/h;La0/q;)La0/a0;
    .locals 7

    sget-object v0, Lib/i;->a:Lib/i;

    invoke-virtual {p1, v0}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, p0}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, La0/l;->a:La0/V;

    const/4 v4, 0x0

    if-nez v1, :cond_0

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, La0/G0;

    invoke-direct {v2, v0, p0, v4}, La0/G0;-><init>(Lib/h;LQc/h;Lib/c;)V

    invoke-virtual {p1, v2}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Lsb/n;

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2

    sget-object v1, La0/V;->f:La0/V;

    invoke-static {v4, v1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {p1, v1}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, La0/a0;

    invoke-virtual {p1, v2}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_3

    if-ne v6, v3, :cond_4

    :cond_3
    new-instance v6, La0/D0;

    invoke-direct {v6, v2, v1, v4}, La0/D0;-><init>(Lsb/n;La0/a0;Lib/c;)V

    invoke-virtual {p1, v6}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_4
    check-cast v6, Lsb/n;

    iget-object v2, p1, La0/q;->b:La0/s;

    invoke-virtual {v2}, La0/s;->h()Lib/h;

    move-result-object v2

    invoke-virtual {p1, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, v0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p0, v0

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_5

    if-ne v0, v3, :cond_6

    :cond_5
    new-instance v0, La0/S;

    invoke-direct {v0, v2, v6}, La0/S;-><init>(Lib/h;Lsb/n;)V

    invoke-virtual {p1, v0}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_6
    check-cast v0, La0/S;

    return-object v1
.end method

.method public static final t(Ljava/lang/String;)V
    .locals 3

    new-instance v0, La0/k;

    const-string v1, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-static {v1, p0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, La0/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final u(Ljava/lang/String;)V
    .locals 3

    new-instance v0, La0/k;

    const-string v1, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-static {v1, p0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, La0/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final v(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final w(La0/m;)LUc/e;
    .locals 3

    sget-object v0, Lib/i;->a:Lib/i;

    sget-object v1, LNc/i0;->a:LNc/i0;

    check-cast p0, La0/q;

    iget-object p0, p0, La0/q;->b:La0/s;

    invoke-virtual {p0}, La0/s;->h()Lib/h;

    move-result-object p0

    invoke-interface {p0, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v1

    check-cast v1, LNc/j0;

    new-instance v2, LNc/m0;

    invoke-direct {v2, v1}, LNc/m0;-><init>(LNc/j0;)V

    invoke-interface {p0, v2}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    invoke-interface {p0, v0}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    invoke-static {p0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p0

    return-object p0
.end method

.method public static final x(La0/y0;LB0/M;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, La0/y0;->s:I

    iget v3, v0, La0/y0;->t:I

    :goto_0
    if-ge v2, v3, :cond_8

    invoke-virtual {v0, v2}, La0/y0;->w(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, La0/j;

    const/4 v6, -0x1

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, La0/y0;->o()I

    move-result v5

    iget-object v7, v0, La0/y0;->b:[I

    invoke-virtual {v0, v2}, La0/y0;->p(I)I

    move-result v8

    invoke-virtual {v0, v8, v7}, La0/y0;->D(I[I)I

    move-result v7

    sub-int/2addr v5, v7

    check-cast v4, La0/j;

    invoke-virtual {v1, v4, v5, v6, v6}, LB0/M;->n(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {v0, v2}, La0/y0;->p(I)I

    move-result v4

    iget-object v5, v0, La0/y0;->b:[I

    invoke-virtual {v0, v4, v5}, La0/y0;->D(I[I)I

    move-result v4

    iget-object v5, v0, La0/y0;->b:[I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, La0/y0;->p(I)I

    move-result v8

    invoke-virtual {v0, v8, v5}, La0/y0;->f(I[I)I

    move-result v5

    move v8, v4

    :goto_1
    if-ge v8, v5, :cond_7

    sub-int v9, v8, v4

    iget-object v10, v0, La0/y0;->c:[Ljava/lang/Object;

    invoke-virtual {v0, v8}, La0/y0;->g(I)I

    move-result v11

    aget-object v10, v10, v11

    instance-of v11, v10, La0/r0;

    const-string v13, "Slot table is out of sync"

    sget-object v14, La0/l;->a:La0/V;

    if-eqz v11, :cond_4

    move-object v11, v10

    check-cast v11, La0/r0;

    iget-object v15, v11, La0/r0;->a:La0/q0;

    instance-of v6, v15, La0/n;

    if-nez v6, :cond_3

    invoke-virtual {v0, v2, v9}, La0/y0;->E(II)I

    move-result v6

    invoke-virtual {v0, v6}, La0/y0;->g(I)I

    move-result v6

    iget-object v12, v0, La0/y0;->c:[Ljava/lang/Object;

    move/from16 v16, v3

    aget-object v3, v12, v6

    aput-object v14, v12, v6

    if-ne v10, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, La0/y0;->o()I

    move-result v3

    sub-int/2addr v3, v9

    iget-object v6, v11, La0/r0;->b:La0/c;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, La0/c;->a()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, v6}, La0/y0;->c(La0/c;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, La0/y0;->o()I

    move-result v9

    iget-object v10, v0, La0/y0;->b:[I

    invoke-virtual {v0, v6}, La0/y0;->q(I)I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v0, v11}, La0/y0;->p(I)I

    move-result v11

    invoke-virtual {v0, v11, v10}, La0/y0;->f(I[I)I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    :cond_1
    const/4 v6, -0x1

    const/4 v9, -0x1

    :goto_2
    invoke-virtual {v1, v15, v3, v6, v9}, LB0/M;->n(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_2
    invoke-static {v13}, La0/d;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    move/from16 v16, v3

    goto :goto_3

    :cond_4
    move/from16 v16, v3

    instance-of v3, v10, La0/i0;

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2, v9}, La0/y0;->E(II)I

    move-result v3

    invoke-virtual {v0, v3}, La0/y0;->g(I)I

    move-result v3

    iget-object v6, v0, La0/y0;->c:[Ljava/lang/Object;

    aget-object v9, v6, v3

    aput-object v14, v6, v3

    if-ne v10, v9, :cond_5

    check-cast v10, La0/i0;

    invoke-virtual {v10}, La0/i0;->d()V

    goto :goto_3

    :cond_5
    invoke-static {v13}, La0/d;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v16

    const/4 v6, -0x1

    goto/16 :goto_1

    :cond_7
    move v2, v7

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static final y()Lc0/d;
    .locals 3

    sget-object v0, La0/B0;->b:LZ3/x;

    invoke-virtual {v0}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc0/d;

    if-nez v1, :cond_0

    new-instance v1, Lc0/d;

    const/4 v2, 0x0

    new-array v2, v2, [La0/p;

    invoke-direct {v1, v2}, Lc0/d;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LZ3/x;->G(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static final z(ILjava/util/ArrayList;)I
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/N;

    iget v3, v3, La0/N;->b:I

    invoke-static {v3, p0}, Ltb/k;->h(II)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method
