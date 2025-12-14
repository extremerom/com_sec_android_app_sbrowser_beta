.class public final La0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/m;


# instance fields
.field public A:I

.field public B:Z

.field public final C:La0/p;

.field public final D:La0/J0;

.field public E:Z

.field public F:La0/v0;

.field public G:La0/w0;

.field public H:La0/y0;

.field public I:Z

.field public J:La0/e0;

.field public K:Lb0/a;

.field public final L:Lb0/b;

.field public M:La0/c;

.field public N:Lb0/c;

.field public O:Z

.field public P:I

.field public final a:LJ2/i0;

.field public final b:La0/s;

.field public final c:La0/w0;

.field public final d:LN/u;

.field public final e:Lb0/a;

.field public final f:Lb0/a;

.field public final g:La0/u;

.field public final h:La0/J0;

.field public i:La0/d0;

.field public j:I

.field public k:I

.field public l:I

.field public final m:LB0/n;

.field public n:[I

.field public o:LN/o;

.field public p:Z

.field public q:Z

.field public final r:Ljava/util/ArrayList;

.field public final s:LB0/n;

.field public t:La0/e0;

.field public u:LX4/i;

.field public v:Z

.field public final w:LB0/n;

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(LJ2/i0;La0/s;La0/w0;LN/u;Lb0/a;Lb0/a;La0/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/q;->a:LJ2/i0;

    iput-object p2, p0, La0/q;->b:La0/s;

    iput-object p3, p0, La0/q;->c:La0/w0;

    iput-object p4, p0, La0/q;->d:LN/u;

    iput-object p5, p0, La0/q;->e:Lb0/a;

    iput-object p6, p0, La0/q;->f:Lb0/a;

    iput-object p7, p0, La0/q;->g:La0/u;

    new-instance p1, La0/J0;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, La0/J0;-><init>(I)V

    iput-object p1, p0, La0/q;->h:La0/J0;

    new-instance p1, LB0/n;

    invoke-direct {p1}, LB0/n;-><init>()V

    iput-object p1, p0, La0/q;->m:LB0/n;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La0/q;->r:Ljava/util/ArrayList;

    new-instance p1, LB0/n;

    invoke-direct {p1}, LB0/n;-><init>()V

    iput-object p1, p0, La0/q;->s:LB0/n;

    sget-object p1, Li0/e;->d:Li0/e;

    iput-object p1, p0, La0/q;->t:La0/e0;

    new-instance p1, LB0/n;

    invoke-direct {p1}, LB0/n;-><init>()V

    iput-object p1, p0, La0/q;->w:LB0/n;

    const/4 p1, -0x1

    iput p1, p0, La0/q;->y:I

    invoke-virtual {p2}, La0/s;->e()Z

    move-result p1

    const/4 p4, 0x1

    const/4 p6, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p2}, La0/s;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p6

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p4

    :goto_1
    iput-boolean p1, p0, La0/q;->B:Z

    new-instance p1, La0/p;

    invoke-direct {p1, p0}, La0/p;-><init>(La0/q;)V

    iput-object p1, p0, La0/q;->C:La0/p;

    new-instance p1, La0/J0;

    const/4 p7, 0x0

    invoke-direct {p1, p7}, La0/J0;-><init>(I)V

    iput-object p1, p0, La0/q;->D:La0/J0;

    invoke-virtual {p3}, La0/w0;->i()La0/v0;

    move-result-object p1

    invoke-virtual {p1}, La0/v0;->c()V

    iput-object p1, p0, La0/q;->F:La0/v0;

    new-instance p1, La0/w0;

    invoke-direct {p1}, La0/w0;-><init>()V

    invoke-virtual {p2}, La0/s;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p1, La0/w0;->i:Ljava/util/HashMap;

    :cond_2
    invoke-virtual {p2}, La0/s;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, LN/q;

    invoke-direct {p2}, LN/q;-><init>()V

    iput-object p2, p1, La0/w0;->j:LN/q;

    :cond_3
    iput-object p1, p0, La0/q;->G:La0/w0;

    invoke-virtual {p1}, La0/w0;->m()La0/y0;

    move-result-object p1

    invoke-virtual {p1, p4}, La0/y0;->e(Z)V

    iput-object p1, p0, La0/q;->H:La0/y0;

    new-instance p1, Lb0/b;

    invoke-direct {p1, p0, p5}, Lb0/b;-><init>(La0/q;Lb0/a;)V

    iput-object p1, p0, La0/q;->L:Lb0/b;

    iget-object p1, p0, La0/q;->G:La0/w0;

    invoke-virtual {p1}, La0/w0;->i()La0/v0;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p6}, La0/v0;->a(I)La0/c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, La0/v0;->c()V

    iput-object p2, p0, La0/q;->M:La0/c;

    new-instance p1, Lb0/c;

    invoke-direct {p1}, Lb0/c;-><init>()V

    iput-object p1, p0, La0/q;->N:Lb0/c;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, La0/v0;->c()V

    throw p0
.end method

.method public static final H(La0/q;IZI)I
    .locals 11

    iget-object v0, p0, La0/q;->F:La0/v0;

    iget-object v1, v0, La0/v0;->b:[I

    mul-int/lit8 v2, p1, 0x5

    add-int/lit8 v3, v2, 0x1

    aget v3, v1, v3

    const/high16 v4, 0x8000000

    and-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_7

    aget p2, v1, v2

    invoke-virtual {v0, p1, v1}, La0/v0;->j(I[I)Ljava/lang/Object;

    move-result-object p3

    const/16 v2, 0xce

    if-ne p2, v2, :cond_5

    sget-object p2, La0/d;->e:La0/b0;

    invoke-static {p3, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v0, p1, v4}, La0/v0;->g(II)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, La0/n;

    if-eqz p3, :cond_1

    check-cast p2, La0/n;

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    iget-object p2, p2, La0/n;->a:La0/o;

    iget-object p2, p2, La0/o;->e:Ljava/util/LinkedHashSet;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, La0/q;

    iget-object v0, p3, La0/q;->L:Lb0/b;

    iget-object v2, p3, La0/q;->c:La0/w0;

    iget v3, v2, La0/w0;->b:I

    if-lez v3, :cond_3

    iget-object v3, v2, La0/w0;->a:[I

    invoke-static {v4, v3}, La0/d;->f(I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lb0/a;

    invoke-direct {v3}, Lb0/a;-><init>()V

    iput-object v3, p3, La0/q;->K:Lb0/a;

    invoke-virtual {v2}, La0/w0;->i()La0/v0;

    move-result-object v2

    :try_start_0
    iput-object v2, p3, La0/q;->F:La0/v0;

    iget-object v5, v0, Lb0/b;->b:Lb0/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v3, v0, Lb0/b;->b:Lb0/a;

    invoke-static {p3, v4, v4, v4}, La0/q;->H(La0/q;IZI)I

    invoke-virtual {v0}, Lb0/b;->c()V

    invoke-virtual {v0}, Lb0/b;->b()V

    iget-boolean v3, v0, Lb0/b;->c:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lb0/w;->c:Lb0/w;

    iget-object v3, v3, Lb0/a;->b:Lb0/D;

    invoke-virtual {v3, v6}, Lb0/D;->k(Lb0/C;)V

    iget-boolean v3, v0, Lb0/b;->c:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0, v4}, Lb0/b;->d(Z)V

    invoke-virtual {v0, v4}, Lb0/b;->d(Z)V

    iget-object v3, v0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lb0/i;->c:Lb0/i;

    iget-object v3, v3, Lb0/a;->b:Lb0/D;

    invoke-virtual {v3, v6}, Lb0/D;->k(Lb0/C;)V

    iput-boolean v4, v0, Lb0/b;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    :try_start_2
    iput-object v5, v0, Lb0/b;->b:Lb0/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v2}, La0/v0;->c()V

    goto :goto_5

    :goto_4
    :try_start_3
    iput-object v5, v0, Lb0/b;->b:Lb0/a;

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {v2}, La0/v0;->c()V

    throw p0

    :cond_3
    :goto_5
    iget-object p3, p3, La0/q;->g:La0/u;

    iget-object v0, p0, La0/q;->b:La0/s;

    invoke-virtual {v0, p3}, La0/s;->l(La0/u;)V

    goto :goto_2

    :cond_4
    invoke-static {p1, v1}, La0/d;->m(I[I)I

    move-result v5

    goto/16 :goto_a

    :cond_5
    invoke-static {p1, v1}, La0/d;->k(I[I)Z

    move-result p0

    if-eqz p0, :cond_6

    goto/16 :goto_a

    :cond_6
    invoke-static {p1, v1}, La0/d;->m(I[I)I

    move-result v5

    goto/16 :goto_a

    :cond_7
    invoke-static {p1, v1}, La0/d;->f(I[I)Z

    move-result v3

    if-eqz v3, :cond_f

    add-int/lit8 v2, v2, 0x3

    aget v2, v1, v2

    add-int/2addr v2, p1

    add-int/lit8 v3, p1, 0x1

    move v6, v4

    :goto_6
    if-ge v3, v2, :cond_d

    invoke-static {v3, v1}, La0/d;->k(I[I)Z

    move-result v7

    iget-object v8, p0, La0/q;->L:Lb0/b;

    if-eqz v7, :cond_8

    invoke-virtual {v8}, Lb0/b;->c()V

    invoke-virtual {v0, v3}, La0/v0;->i(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8}, Lb0/b;->c()V

    iget-object v10, v8, Lb0/b;->h:La0/J0;

    iget-object v10, v10, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v7, :cond_a

    if-eqz p2, :cond_9

    goto :goto_7

    :cond_9
    move v9, v4

    goto :goto_8

    :cond_a
    :goto_7
    move v9, v5

    :goto_8
    if-eqz v7, :cond_b

    move v10, v4

    goto :goto_9

    :cond_b
    add-int v10, p3, v6

    :goto_9
    invoke-static {p0, v3, v9, v10}, La0/q;->H(La0/q;IZI)I

    move-result v9

    add-int/2addr v6, v9

    if-eqz v7, :cond_c

    invoke-virtual {v8}, Lb0/b;->c()V

    invoke-virtual {v8}, Lb0/b;->a()V

    :cond_c
    mul-int/lit8 v7, v3, 0x5

    add-int/lit8 v7, v7, 0x3

    aget v7, v1, v7

    add-int/2addr v3, v7

    goto :goto_6

    :cond_d
    invoke-static {p1, v1}, La0/d;->k(I[I)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_a

    :cond_e
    move v5, v6

    goto :goto_a

    :cond_f
    invoke-static {p1, v1}, La0/d;->k(I[I)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_a

    :cond_10
    invoke-static {p1, v1}, La0/d;->m(I[I)I

    move-result v5

    :goto_a
    return v5
.end method


# virtual methods
.method public final A(I)I
    .locals 3

    iget-object v0, p0, La0/q;->F:La0/v0;

    iget-object v0, v0, La0/v0;->b:[I

    invoke-static {p1, v0}, La0/d;->n(I[I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, La0/q;->F:La0/v0;

    iget-object v2, v2, La0/v0;->b:[I

    invoke-static {v0, v2}, La0/d;->j(I[I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v2, p0, La0/q;->F:La0/v0;

    iget-object v2, v2, La0/v0;->b:[I

    invoke-static {v0, v2}, La0/d;->h(I[I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final B(LB3/c;)Z
    .locals 3

    iget-object v0, p0, La0/q;->e:Lb0/a;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0}, Lb0/D;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, LB3/c;->a:Ljava/lang/Object;

    check-cast v1, LN/s;

    iget v1, v1, LN/s;->e:I

    if-gtz v1, :cond_0

    iget-object v1, p0, La0/q;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, v2}, La0/q;->m(LB3/c;Lsb/n;)V

    invoke-virtual {v0}, Lb0/D;->i()Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "Expected applyChanges() to have been called"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v2
.end method

.method public final C()V
    .locals 35

    move-object/from16 v0, p0

    iget-boolean v1, v0, La0/q;->E:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, La0/q;->E:Z

    iget-object v3, v0, La0/q;->F:La0/v0;

    iget v4, v3, La0/v0;->i:I

    iget-object v5, v3, La0/v0;->b:[I

    mul-int/lit8 v6, v4, 0x5

    add-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    add-int/2addr v5, v4

    iget v7, v0, La0/q;->j:I

    iget v8, v0, La0/q;->P:I

    iget v9, v0, La0/q;->k:I

    iget v10, v0, La0/q;->l:I

    iget-object v11, v0, La0/q;->r:Ljava/util/ArrayList;

    iget v3, v3, La0/v0;->g:I

    invoke-static {v3, v11}, La0/d;->z(ILjava/util/ArrayList;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_1

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/N;

    iget v12, v3, La0/N;->b:I

    if-ge v12, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v15, v4

    const/4 v14, 0x0

    :goto_1
    if-eqz v3, :cond_23

    iget v12, v3, La0/N;->b:I

    invoke-static {v12, v11}, La0/d;->z(ILjava/util/ArrayList;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/N;

    :cond_2
    iget-object v2, v3, La0/N;->c:Ljava/lang/Object;

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v23, 0x7

    iget-object v3, v3, La0/N;->a:La0/i0;

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    move/from16 v24, v1

    :cond_3
    move-object/from16 v29, v3

    move/from16 v28, v5

    move/from16 v27, v6

    move/from16 v32, v7

    move/from16 v26, v9

    move/from16 v25, v10

    :cond_4
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_a

    :cond_5
    iget-object v13, v3, La0/i0;->g:LN/s;

    if-nez v13, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v24, v1

    instance-of v1, v2, La0/E;

    if-eqz v1, :cond_7

    check-cast v2, La0/E;

    invoke-static {v2, v13}, La0/i0;->a(La0/E;LN/s;)Z

    move-result v1

    move-object/from16 v29, v3

    move/from16 v28, v5

    move/from16 v27, v6

    move/from16 v32, v7

    move/from16 v26, v9

    move/from16 v25, v10

    goto/16 :goto_a

    :cond_7
    instance-of v1, v2, LN/v;

    if-eqz v1, :cond_3

    check-cast v2, LN/v;

    invoke-virtual {v2}, LN/v;->h()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v2, LN/v;->b:[Ljava/lang/Object;

    iget-object v2, v2, LN/v;->a:[J

    move/from16 v25, v10

    array-length v10, v2

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_c

    move/from16 v28, v5

    move/from16 v27, v6

    move/from16 v26, v9

    const/4 v9, 0x0

    :goto_4
    aget-wide v5, v2, v9

    move-object/from16 v30, v2

    move-object/from16 v29, v3

    not-long v2, v5

    shl-long v2, v2, v23

    and-long/2addr v2, v5

    and-long v2, v2, v21

    cmp-long v2, v2, v21

    if-eqz v2, :cond_b

    sub-int v2, v9, v10

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_a

    and-long v31, v5, v18

    cmp-long v31, v31, v16

    if-gez v31, :cond_9

    shl-int/lit8 v31, v9, 0x3

    add-int v31, v31, v3

    move/from16 v32, v7

    aget-object v7, v1, v31

    move-object/from16 v31, v1

    instance-of v1, v7, La0/E;

    if-eqz v1, :cond_4

    check-cast v7, La0/E;

    invoke-static {v7, v13}, La0/i0;->a(La0/E;LN/s;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    :goto_6
    const/16 v1, 0x8

    goto :goto_7

    :cond_9
    move-object/from16 v31, v1

    move/from16 v32, v7

    goto :goto_6

    :goto_7
    shr-long/2addr v5, v1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v31

    move/from16 v7, v32

    goto :goto_5

    :cond_a
    move-object/from16 v31, v1

    move/from16 v32, v7

    const/16 v1, 0x8

    if-ne v2, v1, :cond_e

    goto :goto_8

    :cond_b
    move-object/from16 v31, v1

    move/from16 v32, v7

    :goto_8
    if-eq v9, v10, :cond_e

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v29

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move/from16 v7, v32

    goto :goto_4

    :cond_c
    move-object/from16 v29, v3

    move/from16 v28, v5

    move/from16 v27, v6

    move/from16 v32, v7

    move/from16 v26, v9

    goto :goto_9

    :cond_d
    move-object/from16 v29, v3

    move/from16 v28, v5

    move/from16 v27, v6

    move/from16 v32, v7

    move/from16 v26, v9

    move/from16 v25, v10

    :cond_e
    :goto_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_19

    iget-object v1, v0, La0/q;->F:La0/v0;

    invoke-virtual {v1, v12}, La0/v0;->k(I)V

    iget-object v1, v0, La0/q;->F:La0/v0;

    iget v1, v1, La0/v0;->g:I

    invoke-virtual {v0, v15, v1, v4}, La0/q;->F(III)V

    iget-object v2, v0, La0/q;->F:La0/v0;

    iget-object v2, v2, La0/v0;->b:[I

    mul-int/lit8 v3, v1, 0x5

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    :goto_b
    if-eq v2, v4, :cond_f

    iget-object v5, v0, La0/q;->F:La0/v0;

    iget-object v5, v5, La0/v0;->b:[I

    invoke-static {v2, v5}, La0/d;->k(I[I)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, v0, La0/q;->F:La0/v0;

    iget-object v5, v5, La0/v0;->b:[I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    aget v2, v5, v2

    goto :goto_b

    :cond_f
    iget-object v5, v0, La0/q;->F:La0/v0;

    iget-object v5, v5, La0/v0;->b:[I

    invoke-static {v2, v5}, La0/d;->k(I[I)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    goto :goto_c

    :cond_10
    move/from16 v5, v32

    :goto_c
    if-ne v2, v1, :cond_11

    goto :goto_f

    :cond_11
    invoke-virtual {v0, v2}, La0/q;->c0(I)I

    move-result v6

    iget-object v7, v0, La0/q;->F:La0/v0;

    iget-object v7, v7, La0/v0;->b:[I

    invoke-static {v1, v7}, La0/d;->m(I[I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v5

    :cond_12
    if-ge v5, v6, :cond_14

    if-eq v2, v12, :cond_14

    add-int/lit8 v2, v2, 0x1

    :goto_d
    if-ge v2, v12, :cond_14

    iget-object v7, v0, La0/q;->F:La0/v0;

    iget-object v7, v7, La0/v0;->b:[I

    mul-int/lit8 v9, v2, 0x5

    add-int/lit8 v9, v9, 0x3

    aget v9, v7, v9

    add-int/2addr v9, v2

    if-lt v12, v9, :cond_12

    invoke-static {v2, v7}, La0/d;->k(I[I)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v2, 0x1

    goto :goto_e

    :cond_13
    invoke-virtual {v0, v2}, La0/q;->c0(I)I

    move-result v2

    :goto_e
    add-int/2addr v5, v2

    move v2, v9

    goto :goto_d

    :cond_14
    :goto_f
    iput v5, v0, La0/q;->j:I

    invoke-virtual {v0, v1}, La0/q;->A(I)I

    move-result v2

    iput v2, v0, La0/q;->l:I

    iget-object v2, v0, La0/q;->F:La0/v0;

    iget-object v2, v2, La0/v0;->b:[I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, La0/q;->A(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v8}, La0/q;->i(IIII)I

    move-result v2

    iput v2, v0, La0/q;->P:I

    const/4 v2, 0x0

    iput-object v2, v0, La0/q;->J:La0/e0;

    move-object/from16 v3, v29

    iget-object v3, v3, La0/i0;->d:Lsb/n;

    if-eqz v3, :cond_15

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v20, Ldb/r;->a:Ldb/r;

    goto :goto_10

    :cond_15
    move-object/from16 v20, v2

    :goto_10
    if-eqz v20, :cond_18

    iput-object v2, v0, La0/q;->J:La0/e0;

    iget-object v2, v0, La0/q;->F:La0/v0;

    iget-object v3, v2, La0/v0;->b:[I

    aget v3, v3, v27

    add-int/2addr v3, v4

    iget v5, v2, La0/v0;->g:I

    if-lt v5, v4, :cond_16

    if-gt v5, v3, :cond_16

    const/4 v6, 0x1

    goto :goto_11

    :cond_16
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_17

    iput v4, v2, La0/v0;->i:I

    iput v3, v2, La0/v0;->h:I

    const/4 v3, 0x0

    iput v3, v2, La0/v0;->l:I

    iput v3, v2, La0/v0;->m:I

    move v15, v1

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v14, 0x1

    goto/16 :goto_1b

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not a parent of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La0/d;->t(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid restart scope"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object/from16 v3, v29

    const/4 v1, 0x0

    iget-object v2, v0, La0/q;->D:La0/J0;

    iget-object v5, v2, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v3, La0/i0;->b:La0/u;

    if-eqz v5, :cond_1f

    iget-object v6, v3, La0/i0;->f:LN/r;

    if-eqz v6, :cond_1f

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, La0/i0;->e(Z)V

    :try_start_0
    iget-object v7, v6, LN/r;->b:[Ljava/lang/Object;

    iget-object v9, v6, LN/r;->c:[I

    iget-object v6, v6, LN/r;->a:[J

    array-length v10, v6

    add-int/lit8 v10, v10, -0x2

    move-object v13, v2

    if-ltz v10, :cond_1e

    const/4 v12, 0x0

    :goto_12
    aget-wide v1, v6, v12

    move/from16 v29, v14

    move/from16 v30, v15

    not-long v14, v1

    shl-long v14, v14, v23

    and-long/2addr v14, v1

    and-long v14, v14, v21

    cmp-long v14, v14, v21

    if-eqz v14, :cond_1d

    sub-int v14, v12, v10

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v14, :cond_1b

    and-long v33, v1, v18

    cmp-long v31, v33, v16

    if-gez v31, :cond_1a

    shl-int/lit8 v31, v12, 0x3

    add-int v31, v31, v15

    move-object/from16 v33, v6

    aget-object v6, v7, v31

    aget v31, v9, v31

    invoke-virtual {v5, v6}, La0/u;->w(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_14
    const/16 v6, 0x8

    goto :goto_15

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_19

    :cond_1a
    move-object/from16 v33, v6

    goto :goto_14

    :goto_15
    shr-long/2addr v1, v6

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v33

    goto :goto_13

    :cond_1b
    move-object/from16 v33, v6

    const/16 v6, 0x8

    if-ne v14, v6, :cond_1c

    goto :goto_17

    :cond_1c
    :goto_16
    const/4 v1, 0x0

    goto :goto_18

    :cond_1d
    move-object/from16 v33, v6

    const/16 v6, 0x8

    :goto_17
    if-eq v12, v10, :cond_1c

    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v29

    move/from16 v15, v30

    move-object/from16 v6, v33

    goto :goto_12

    :cond_1e
    move/from16 v29, v14

    move/from16 v30, v15

    goto :goto_16

    :goto_18
    invoke-virtual {v3, v1}, La0/i0;->e(Z)V

    goto :goto_1a

    :goto_19
    invoke-virtual {v3, v1}, La0/i0;->e(Z)V

    throw v0

    :cond_1f
    move-object v13, v2

    move/from16 v29, v14

    move/from16 v30, v15

    const/4 v1, 0x0

    :goto_1a
    iget-object v2, v13, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move/from16 v14, v29

    move/from16 v15, v30

    :goto_1b
    iget-object v2, v0, La0/q;->F:La0/v0;

    iget v2, v2, La0/v0;->g:I

    invoke-static {v2, v11}, La0/d;->z(ILjava/util/ArrayList;)I

    move-result v2

    if-gez v2, :cond_20

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    :cond_20
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/N;

    iget v3, v2, La0/N;->b:I

    move/from16 v6, v28

    if-ge v3, v6, :cond_22

    move-object v3, v2

    goto :goto_1c

    :cond_21
    move/from16 v6, v28

    :cond_22
    const/4 v3, 0x0

    :goto_1c
    move v2, v5

    move v5, v6

    move/from16 v1, v24

    move/from16 v10, v25

    move/from16 v9, v26

    move/from16 v6, v27

    move/from16 v7, v32

    goto/16 :goto_1

    :cond_23
    move/from16 v24, v1

    move/from16 v32, v7

    move/from16 v26, v9

    move/from16 v25, v10

    move/from16 v29, v14

    move/from16 v30, v15

    if-eqz v29, :cond_24

    move/from16 v15, v30

    invoke-virtual {v0, v15, v4, v4}, La0/q;->F(III)V

    iget-object v1, v0, La0/q;->F:La0/v0;

    invoke-virtual {v1}, La0/v0;->m()V

    invoke-virtual {v0, v4}, La0/q;->c0(I)I

    move-result v1

    add-int v7, v32, v1

    iput v7, v0, La0/q;->j:I

    add-int v9, v26, v1

    iput v9, v0, La0/q;->k:I

    move/from16 v1, v25

    iput v1, v0, La0/q;->l:I

    goto :goto_1d

    :cond_24
    invoke-virtual/range {p0 .. p0}, La0/q;->J()V

    :goto_1d
    iput v8, v0, La0/q;->P:I

    move/from16 v1, v24

    iput-boolean v1, v0, La0/q;->E:Z

    return-void
.end method

.method public final D()V
    .locals 12

    iget-object v0, p0, La0/q;->F:La0/v0;

    iget v0, v0, La0/v0;->g:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, La0/q;->H(La0/q;IZI)I

    iget-object p0, p0, La0/q;->L:Lb0/b;

    invoke-virtual {p0}, Lb0/b;->c()V

    invoke-virtual {p0, v1}, Lb0/b;->d(Z)V

    iget-object v0, p0, Lb0/b;->a:La0/q;

    iget-object v2, v0, La0/q;->F:La0/v0;

    iget v3, v2, La0/v0;->c:I

    if-lez v3, :cond_9

    iget v3, v2, La0/v0;->i:I

    iget-object v4, p0, Lb0/b;->d:LB0/n;

    iget v5, v4, LB0/n;->b:I

    const/4 v6, 0x1

    if-lez v5, :cond_0

    iget-object v7, v4, LB0/n;->a:[I

    sub-int/2addr v5, v6

    aget v5, v7, v5

    goto :goto_0

    :cond_0
    const/4 v5, -0x2

    :goto_0
    if-eq v5, v3, :cond_9

    iget-boolean v5, p0, Lb0/b;->c:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lb0/b;->e:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, v1}, Lb0/b;->d(Z)V

    iget-object v5, p0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lb0/l;->c:Lb0/l;

    iget-object v5, v5, Lb0/a;->b:Lb0/D;

    invoke-virtual {v5, v7}, Lb0/D;->k(Lb0/C;)V

    iput-boolean v6, p0, Lb0/b;->c:Z

    :cond_1
    if-lez v3, :cond_9

    invoke-virtual {v2, v3}, La0/v0;->a(I)La0/c;

    move-result-object v2

    invoke-virtual {v4, v3}, LB0/n;->b(I)V

    invoke-virtual {p0, v1}, Lb0/b;->d(Z)V

    iget-object v3, p0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lb0/k;->c:Lb0/k;

    iget-object v3, v3, Lb0/a;->b:Lb0/D;

    invoke-virtual {v3, v4}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v3, v1, v2}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v2, v3, Lb0/D;->h:I

    iget v5, v4, Lb0/C;->a:I

    invoke-static {v3, v5}, Lb0/D;->e(Lb0/D;I)I

    move-result v7

    iget v8, v4, Lb0/C;->b:I

    if-ne v2, v7, :cond_2

    iget v2, v3, Lb0/D;->i:I

    invoke-static {v3, v8}, Lb0/D;->e(Lb0/D;I)I

    move-result v7

    if-ne v2, v7, :cond_2

    iput-boolean v6, p0, Lb0/b;->c:Z

    goto/16 :goto_3

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v0

    :goto_1
    const-string v7, ", "

    if-ge v0, v5, :cond_5

    shl-int v9, v6, v0

    iget v10, v3, Lb0/D;->h:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_4

    if-lez v2, :cond_3

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4, v0}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v9, v1

    :goto_2
    if-ge v1, v8, :cond_8

    shl-int v10, v6, v1

    iget v11, v3, Lb0/D;->i:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_7

    if-lez v2, :cond_6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v4, v1}, Lb0/k;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Error while pushing "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Not all arguments were provided. Missing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " int arguments ("

    const-string v4, ") and "

    invoke-static {v0, v2, v3, p0, v4}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " object arguments ("

    const-string v2, ")."

    invoke-static {v0, v9, p0, v1, v2}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_9
    :goto_3
    iget-object v1, p0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lb0/s;->c:Lb0/s;

    iget-object v1, v1, Lb0/a;->b:Lb0/D;

    invoke-virtual {v1, v2}, Lb0/D;->k(Lb0/C;)V

    iget v1, p0, Lb0/b;->f:I

    iget-object v0, v0, La0/q;->F:La0/v0;

    iget-object v2, v0, La0/v0;->b:[I

    iget v0, v0, La0/v0;->g:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x3

    aget v0, v2, v0

    add-int/2addr v0, v1

    iput v0, p0, Lb0/b;->f:I

    return-void
.end method

.method public final E(La0/e0;)V
    .locals 2

    iget-object v0, p0, La0/q;->u:LX4/i;

    if-nez v0, :cond_0

    new-instance v0, LX4/i;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LX4/i;-><init>(I)V

    iput-object v0, p0, La0/q;->u:LX4/i;

    :cond_0
    iget-object p0, p0, La0/q;->F:La0/v0;

    iget p0, p0, La0/v0;->g:I

    iget-object v0, v0, LX4/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final F(III)V
    .locals 7

    iget-object v0, p0, La0/q;->F:La0/v0;

    if-ne p1, p2, :cond_0

    :goto_0
    move p3, p1

    goto/16 :goto_6

    :cond_0
    if-eq p1, p3, :cond_9

    if-ne p2, p3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, v0, La0/v0;->b:[I

    mul-int/lit8 v2, p1, 0x5

    add-int/lit8 v2, v2, 0x2

    aget v2, v1, v2

    if-ne v2, p2, :cond_2

    move p3, p2

    goto/16 :goto_6

    :cond_2
    mul-int/lit8 v3, p2, 0x5

    add-int/lit8 v3, v3, 0x2

    aget v3, v1, v3

    if-ne v3, p1, :cond_3

    goto :goto_0

    :cond_3
    if-ne v2, v3, :cond_4

    move p3, v2

    goto :goto_6

    :cond_4
    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    :goto_1
    iget-object v5, v0, La0/v0;->b:[I

    if-lez v3, :cond_5

    if-eq v3, p3, :cond_5

    invoke-static {v3, v5}, La0/d;->n(I[I)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v3, p2

    move v6, v2

    :goto_2
    if-lez v3, :cond_6

    if-eq v3, p3, :cond_6

    invoke-static {v3, v5}, La0/d;->n(I[I)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    sub-int p3, v4, v6

    move v5, p1

    move v3, v2

    :goto_3
    if-ge v3, p3, :cond_7

    mul-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x2

    aget v5, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    sub-int/2addr v6, v4

    move p3, p2

    :goto_4
    if-ge v2, v6, :cond_8

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0x2

    aget p3, v1, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move v2, p3

    move p3, v5

    :goto_5
    if-eq p3, v2, :cond_9

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0x2

    aget p3, v1, p3

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    aget v2, v1, v2

    goto :goto_5

    :cond_9
    :goto_6
    if-lez p1, :cond_b

    if-eq p1, p3, :cond_b

    iget-object v1, v0, La0/v0;->b:[I

    invoke-static {p1, v1}, La0/d;->k(I[I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, La0/q;->L:Lb0/b;

    invoke-virtual {v1}, Lb0/b;->a()V

    :cond_a
    iget-object v1, v0, La0/v0;->b:[I

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x2

    aget p1, v1, p1

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p2, p3}, La0/q;->n(II)V

    return-void
.end method

.method public final G()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, La0/q;->O:Z

    sget-object v1, La0/l;->a:La0/V;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, La0/q;->q:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget-object v0, p0, La0/q;->F:La0/v0;

    invoke-virtual {v0}, La0/v0;->h()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, La0/q;->x:Z

    if-eqz p0, :cond_2

    instance-of p0, v0, La0/n;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    instance-of p0, v0, La0/r0;

    if-eqz p0, :cond_3

    check-cast v0, La0/r0;

    iget-object v1, v0, La0/r0;->a:La0/q0;

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final I()V
    .locals 12

    iget-object v0, p0, La0/q;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, La0/q;->k:I

    iget-object v1, p0, La0/q;->F:La0/v0;

    invoke-virtual {v1}, La0/v0;->l()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, La0/q;->k:I

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, La0/q;->F:La0/v0;

    invoke-virtual {v0}, La0/v0;->f()I

    move-result v1

    iget v2, v0, La0/v0;->g:I

    iget v3, v0, La0/v0;->h:I

    const/4 v4, 0x0

    iget-object v5, v0, La0/v0;->b:[I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2, v5}, La0/v0;->j(I[I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {v0}, La0/v0;->e()Ljava/lang/Object;

    move-result-object v3

    iget v6, p0, La0/q;->l:I

    sget-object v7, La0/l;->a:La0/V;

    const/16 v8, 0xcf

    const/4 v9, 0x3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    if-ne v1, v8, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    iget v11, p0, La0/q;->P:I

    invoke-static {v11, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v10, v6

    iput v10, p0, La0/q;->P:I

    goto :goto_3

    :cond_2
    iget v10, p0, La0/q;->P:I

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v10, v1

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v10, v6

    :goto_1
    iput v10, p0, La0/q;->P:I

    goto :goto_3

    :cond_3
    instance-of v10, v2, Ljava/lang/Enum;

    if-eqz v10, :cond_4

    move-object v10, v2

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_2
    iget v11, p0, La0/q;->P:I

    invoke-static {v11, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_2

    :goto_3
    iget v10, v0, La0/v0;->g:I

    invoke-static {v10, v5}, La0/d;->k(I[I)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, La0/q;->P(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, La0/q;->C()V

    invoke-virtual {v0}, La0/v0;->d()V

    if-nez v2, :cond_6

    if-eqz v3, :cond_5

    if-ne v1, v8, :cond_5

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, La0/q;->P:I

    xor-int/2addr v1, v6

    invoke-static {v1, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    iput v0, p0, La0/q;->P:I

    goto :goto_6

    :cond_5
    iget v0, p0, La0/q;->P:I

    xor-int/2addr v0, v6

    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    xor-int/2addr v0, v1

    :goto_4
    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    iput v0, p0, La0/q;->P:I

    goto :goto_6

    :cond_6
    instance-of v0, v2, Ljava/lang/Enum;

    if-eqz v0, :cond_7

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_5
    iget v1, p0, La0/q;->P:I

    invoke-static {v1, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :goto_6
    return-void
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, La0/q;->F:La0/v0;

    iget v1, v0, La0/v0;->i:I

    if-ltz v1, :cond_0

    iget-object v0, v0, La0/v0;->b:[I

    invoke-static {v1, v0}, La0/d;->m(I[I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, La0/q;->k:I

    iget-object p0, p0, La0/q;->F:La0/v0;

    invoke-virtual {p0}, La0/v0;->m()V

    return-void
.end method

.method public final K()V
    .locals 2

    iget v0, p0, La0/q;->k:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, La0/q;->v()La0/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, La0/i0;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, La0/i0;->a:I

    :cond_0
    iget-object v0, p0, La0/q;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La0/q;->J()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, La0/q;->C()V

    :goto_0
    return-void

    :cond_2
    const-string p0, "No nodes can be emitted before calling skipAndEndGroup"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final L(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget-boolean v5, v0, La0/q;->q:Z

    const/4 v6, 0x0

    if-nez v5, :cond_40

    iget v5, v0, La0/q;->l:I

    sget-object v7, La0/l;->a:La0/V;

    const/4 v8, 0x3

    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    const/16 v9, 0xcf

    if-ne v2, v9, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v9

    iget v10, v0, La0/q;->P:I

    invoke-static {v10, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v9, v10

    invoke-static {v9, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v5, v8

    iput v5, v0, La0/q;->P:I

    goto :goto_2

    :cond_0
    iget v9, v0, La0/q;->P:I

    invoke-static {v9, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    xor-int/2addr v9, v2

    invoke-static {v9, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v5, v8

    :goto_0
    iput v5, v0, La0/q;->P:I

    goto :goto_2

    :cond_1
    instance-of v5, v1, Ljava/lang/Enum;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    :goto_1
    iget v9, v0, La0/q;->P:I

    invoke-static {v9, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    xor-int/2addr v5, v9

    invoke-static {v5, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    :goto_2
    const/4 v5, 0x1

    if-nez v1, :cond_3

    iget v8, v0, La0/q;->l:I

    add-int/2addr v8, v5

    iput v8, v0, La0/q;->l:I

    :cond_3
    const/4 v8, 0x0

    if-eqz v4, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v8

    :goto_3
    iget-boolean v10, v0, La0/q;->O:Z

    const/4 v11, -0x2

    const/4 v12, -0x1

    if-eqz v10, :cond_a

    iget-object v4, v0, La0/q;->F:La0/v0;

    iget v10, v4, La0/v0;->k:I

    add-int/2addr v10, v5

    iput v10, v4, La0/v0;->k:I

    iget-object v4, v0, La0/q;->H:La0/y0;

    iget v10, v4, La0/y0;->s:I

    if-eqz v9, :cond_5

    invoke-virtual {v4, v2, v7, v7, v5}, La0/y0;->H(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_7

    if-nez v1, :cond_6

    move-object v1, v7

    :cond_6
    invoke-virtual {v4, v2, v1, v3, v8}, La0/y0;->H(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    move-object v1, v7

    :cond_8
    invoke-virtual {v4, v2, v1, v7, v8}, La0/y0;->H(ILjava/lang/Object;Ljava/lang/Object;Z)V

    :goto_4
    iget-object v1, v0, La0/q;->i:La0/d0;

    if-eqz v1, :cond_9

    new-instance v3, La0/Q;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sub-int/2addr v11, v10

    invoke-direct {v3, v4, v2, v11, v12}, La0/Q;-><init>(Ljava/lang/Object;III)V

    iget v2, v0, La0/q;->j:I

    iget v4, v1, La0/d0;->b:I

    sub-int/2addr v2, v4

    new-instance v4, La0/K;

    invoke-direct {v4, v12, v2, v8}, La0/K;-><init>(III)V

    iget-object v2, v1, La0/d0;->e:LN/q;

    invoke-virtual {v2, v11, v4}, LN/q;->d(ILjava/lang/Object;)V

    iget-object v1, v1, La0/d0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v0, v9, v6}, La0/q;->t(ZLa0/d0;)V

    return-void

    :cond_a
    if-eq v4, v5, :cond_b

    goto :goto_5

    :cond_b
    iget-boolean v4, v0, La0/q;->x:Z

    if-eqz v4, :cond_c

    move v4, v5

    goto :goto_6

    :cond_c
    :goto_5
    move v4, v8

    :goto_6
    iget-object v10, v0, La0/q;->i:La0/d0;

    if-nez v10, :cond_12

    iget-object v10, v0, La0/q;->F:La0/v0;

    invoke-virtual {v10}, La0/v0;->f()I

    move-result v10

    if-nez v4, :cond_e

    if-ne v10, v2, :cond_e

    iget-object v10, v0, La0/q;->F:La0/v0;

    iget v13, v10, La0/v0;->g:I

    iget v14, v10, La0/v0;->h:I

    if-ge v13, v14, :cond_d

    iget-object v14, v10, La0/v0;->b:[I

    invoke-virtual {v10, v13, v14}, La0/v0;->j(I[I)Ljava/lang/Object;

    move-result-object v10

    goto :goto_7

    :cond_d
    move-object v10, v6

    :goto_7
    invoke-static {v1, v10}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v0, v3, v9}, La0/q;->P(Ljava/lang/Object;Z)V

    goto :goto_b

    :cond_e
    new-instance v10, La0/d0;

    iget-object v13, v0, La0/q;->F:La0/v0;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget v15, v13, La0/v0;->k:I

    if-lez v15, :cond_f

    goto :goto_a

    :cond_f
    iget v15, v13, La0/v0;->g:I

    :goto_8
    iget v11, v13, La0/v0;->h:I

    if-ge v15, v11, :cond_11

    new-instance v11, La0/Q;

    mul-int/lit8 v17, v15, 0x5

    iget-object v12, v13, La0/v0;->b:[I

    aget v6, v12, v17

    invoke-virtual {v13, v15, v12}, La0/v0;->j(I[I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v15, v12}, La0/d;->k(I[I)Z

    move-result v19

    if-eqz v19, :cond_10

    const/4 v8, 0x1

    goto :goto_9

    :cond_10
    invoke-static {v15, v12}, La0/d;->m(I[I)I

    move-result v19

    move/from16 v8, v19

    :goto_9
    invoke-direct {v11, v5, v6, v15, v8}, La0/Q;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x3

    aget v5, v12, v17

    add-int/2addr v15, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v12, -0x1

    goto :goto_8

    :cond_11
    :goto_a
    iget v5, v0, La0/q;->j:I

    invoke-direct {v10, v5, v14}, La0/d0;-><init>(ILjava/util/ArrayList;)V

    iput-object v10, v0, La0/q;->i:La0/d0;

    :cond_12
    :goto_b
    iget-object v5, v0, La0/q;->i:La0/d0;

    if-eqz v5, :cond_3f

    if-eqz v1, :cond_13

    new-instance v6, La0/P;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v8, v1}, La0/P;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    goto :goto_c

    :cond_13
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_c
    iget-object v8, v5, La0/d0;->f:Ldb/o;

    invoke-virtual {v8}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La0/Z;

    iget-object v8, v8, La0/Z;->a:LN/s;

    invoke-virtual {v8, v6}, LN/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_17

    instance-of v11, v10, Ljava/util/List;

    if-eqz v11, :cond_15

    instance-of v11, v10, Lub/a;

    if-eqz v11, :cond_14

    instance-of v11, v10, Lub/c;

    if-eqz v11, :cond_15

    :cond_14
    invoke-static {v10}, Ltb/z;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual {v8, v6}, LN/s;->f(Ljava/lang/Object;)V

    goto :goto_d

    :cond_15
    invoke-virtual {v8, v6}, LN/s;->f(Ljava/lang/Object;)V

    move-object v12, v10

    :cond_16
    :goto_d
    const-string v6, "null cannot be cast to non-null type V of androidx.compose.runtime.MutableScatterMultiMap.pop_impl$lambda$1"

    invoke-static {v12, v6}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    :cond_17
    const/4 v12, 0x0

    :goto_e
    check-cast v12, La0/Q;

    iget-object v6, v5, La0/d0;->d:Ljava/util/ArrayList;

    iget-object v8, v5, La0/d0;->e:LN/q;

    iget v10, v5, La0/d0;->b:I

    if-nez v4, :cond_38

    if-eqz v12, :cond_38

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v12, La0/Q;->c:I

    invoke-virtual {v8, v1}, LN/q;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/K;

    if-eqz v2, :cond_18

    iget v2, v2, La0/K;->b:I

    goto :goto_f

    :cond_18
    const/4 v2, -0x1

    :goto_f
    add-int/2addr v2, v10

    iput v2, v0, La0/q;->j:I

    invoke-virtual {v8, v1}, LN/q;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/K;

    if-eqz v2, :cond_19

    iget v12, v2, La0/K;->a:I

    goto :goto_10

    :cond_19
    const/4 v12, -0x1

    :goto_10
    iget v2, v5, La0/d0;->c:I

    sub-int v4, v12, v2

    const/4 v7, 0x7

    const/16 v15, 0x8

    if-le v12, v2, :cond_1f

    iget-object v5, v8, LN/q;->c:[Ljava/lang/Object;

    iget-object v6, v8, LN/q;->a:[J

    array-length v8, v6

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_1e

    const/4 v10, 0x0

    :goto_11
    aget-wide v13, v6, v10

    move/from16 p4, v4

    not-long v3, v13

    shl-long/2addr v3, v7

    and-long/2addr v3, v13

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v3, v3, v20

    cmp-long v3, v3, v20

    if-eqz v3, :cond_1d

    sub-int v3, v10, v8

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    rsub-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_1c

    const-wide/16 v17, 0xff

    and-long v22, v13, v17

    const-wide/16 v24, 0x80

    cmp-long v11, v22, v24

    if-gez v11, :cond_1b

    shl-int/lit8 v11, v10, 0x3

    add-int/2addr v11, v4

    aget-object v11, v5, v11

    check-cast v11, La0/K;

    iget v7, v11, La0/K;->a:I

    if-ne v7, v12, :cond_1a

    iput v2, v11, La0/K;->a:I

    goto :goto_13

    :cond_1a
    if-gt v2, v7, :cond_1b

    if-ge v7, v12, :cond_1b

    add-int/lit8 v7, v7, 0x1

    iput v7, v11, La0/K;->a:I

    :cond_1b
    :goto_13
    shr-long/2addr v13, v15

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x7

    goto :goto_12

    :cond_1c
    if-ne v3, v15, :cond_25

    :cond_1d
    if-eq v10, v8, :cond_25

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v7, 0x7

    goto :goto_11

    :cond_1e
    move/from16 p4, v4

    goto/16 :goto_19

    :cond_1f
    move/from16 p4, v4

    if-le v2, v12, :cond_25

    iget-object v3, v8, LN/q;->c:[Ljava/lang/Object;

    iget-object v4, v8, LN/q;->a:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_25

    const/4 v6, 0x0

    :goto_14
    aget-wide v7, v4, v6

    not-long v10, v7

    const/4 v13, 0x7

    shl-long/2addr v10, v13

    and-long/2addr v10, v7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v10, v10, v20

    cmp-long v10, v10, v20

    if-eqz v10, :cond_24

    sub-int v10, v6, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    :goto_15
    if-ge v11, v10, :cond_23

    const-wide/16 v17, 0xff

    and-long v22, v7, v17

    const-wide/16 v24, 0x80

    cmp-long v14, v22, v24

    if-gez v14, :cond_22

    shl-int/lit8 v14, v6, 0x3

    add-int/2addr v14, v11

    aget-object v14, v3, v14

    check-cast v14, La0/K;

    iget v13, v14, La0/K;->a:I

    if-ne v13, v12, :cond_20

    iput v2, v14, La0/K;->a:I

    goto :goto_16

    :cond_20
    add-int/lit8 v15, v12, 0x1

    if-gt v15, v13, :cond_21

    if-ge v13, v2, :cond_21

    add-int/lit8 v13, v13, -0x1

    iput v13, v14, La0/K;->a:I

    :cond_21
    :goto_16
    const/16 v13, 0x8

    goto :goto_17

    :cond_22
    move v13, v15

    :goto_17
    shr-long/2addr v7, v13

    add-int/lit8 v11, v11, 0x1

    move v15, v13

    const/4 v13, 0x7

    goto :goto_15

    :cond_23
    move v13, v15

    const-wide/16 v17, 0xff

    const-wide/16 v24, 0x80

    if-ne v10, v13, :cond_25

    goto :goto_18

    :cond_24
    move v13, v15

    const-wide/16 v17, 0xff

    const-wide/16 v24, 0x80

    :goto_18
    if-eq v6, v5, :cond_25

    add-int/lit8 v6, v6, 0x1

    move v15, v13

    goto :goto_14

    :cond_25
    :goto_19
    iget-object v2, v0, La0/q;->L:Lb0/b;

    iget v3, v2, Lb0/b;->f:I

    iget-object v4, v2, Lb0/b;->a:La0/q;

    iget-object v5, v4, La0/q;->F:La0/v0;

    iget v5, v5, La0/v0;->g:I

    sub-int v5, v1, v5

    add-int/2addr v5, v3

    iput v5, v2, Lb0/b;->f:I

    iget-object v3, v0, La0/q;->F:La0/v0;

    invoke-virtual {v3, v1}, La0/v0;->k(I)V

    if-lez p4, :cond_30

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lb0/b;->d(Z)V

    iget-object v1, v4, La0/q;->F:La0/v0;

    iget v3, v1, La0/v0;->c:I

    const-string v4, ")."

    const-string v5, " object arguments ("

    const-string v6, ") and "

    const-string v7, " int arguments ("

    const-string v8, ". Not all arguments were provided. Missing "

    const-string v10, "Error while pushing "

    const-string v11, "StringBuilder().apply(builderAction).toString()"

    const-string v12, ", "

    if-lez v3, :cond_2f

    iget v3, v1, La0/v0;->i:I

    iget-object v13, v2, Lb0/b;->d:LB0/n;

    iget v14, v13, LB0/n;->b:I

    if-lez v14, :cond_26

    iget-object v15, v13, LB0/n;->a:[I

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v14, v15, v14

    goto :goto_1a

    :cond_26
    const/4 v14, -0x2

    :goto_1a
    if-eq v14, v3, :cond_2f

    iget-boolean v14, v2, Lb0/b;->c:Z

    if-nez v14, :cond_27

    iget-boolean v14, v2, Lb0/b;->e:Z

    if-eqz v14, :cond_27

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lb0/b;->d(Z)V

    iget-object v14, v2, Lb0/b;->b:Lb0/a;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lb0/l;->c:Lb0/l;

    iget-object v14, v14, Lb0/a;->b:Lb0/D;

    invoke-virtual {v14, v15}, Lb0/D;->k(Lb0/C;)V

    const/4 v14, 0x1

    iput-boolean v14, v2, Lb0/b;->c:Z

    :cond_27
    if-lez v3, :cond_2f

    invoke-virtual {v1, v3}, La0/v0;->a(I)La0/c;

    move-result-object v1

    invoke-virtual {v13, v3}, LB0/n;->b(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lb0/b;->d(Z)V

    iget-object v13, v2, Lb0/b;->b:Lb0/a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lb0/k;->c:Lb0/k;

    iget-object v13, v13, Lb0/a;->b:Lb0/D;

    invoke-virtual {v13, v14}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v13, v3, v1}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v1, v13, Lb0/D;->h:I

    iget v3, v14, Lb0/C;->a:I

    invoke-static {v13, v3}, Lb0/D;->e(Lb0/D;I)I

    move-result v15

    iget v0, v14, Lb0/C;->b:I

    if-ne v1, v15, :cond_28

    iget v1, v13, Lb0/D;->i:I

    invoke-static {v13, v0}, Lb0/D;->e(Lb0/D;I)I

    move-result v15

    if-ne v1, v15, :cond_28

    const/4 v1, 0x1

    iput-boolean v1, v2, Lb0/b;->c:Z

    goto :goto_1d

    :cond_28
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_1b
    if-ge v9, v3, :cond_2b

    shl-int v16, v1, v9

    iget v1, v13, Lb0/D;->h:I

    and-int v1, v16, v1

    if-eqz v1, :cond_2a

    if-lez v15, :cond_29

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v14, v9}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_2a
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x1

    goto :goto_1b

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_1c
    if-ge v3, v0, :cond_2e

    const/16 v16, 0x1

    shl-int v17, v16, v3

    move/from16 v16, v0

    iget v0, v13, Lb0/D;->i:I

    and-int v0, v17, v0

    if-eqz v0, :cond_2d

    if-lez v15, :cond_2c

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-virtual {v14, v3}, Lb0/k;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v16

    goto :goto_1c

    :cond_2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v15, v7, v1, v6}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v9, v5, v0, v4}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2f
    :goto_1d
    iget-object v0, v2, Lb0/b;->b:Lb0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lb0/p;->c:Lb0/p;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0, v1}, Lb0/D;->l(Lb0/C;)V

    move/from16 v3, p4

    const/4 v2, 0x0

    invoke-static {v0, v2, v3}, LD/a;->n(Lb0/D;II)V

    iget v2, v0, Lb0/D;->h:I

    iget v3, v1, Lb0/C;->a:I

    invoke-static {v0, v3}, Lb0/D;->e(Lb0/D;I)I

    move-result v13

    iget v14, v1, Lb0/C;->b:I

    if-ne v2, v13, :cond_31

    iget v2, v0, Lb0/D;->i:I

    invoke-static {v0, v14}, Lb0/D;->e(Lb0/D;I)I

    move-result v13

    if-ne v2, v13, :cond_31

    :cond_30
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    goto :goto_20

    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_1e
    if-ge v9, v3, :cond_34

    const/4 v15, 0x1

    shl-int v16, v15, v9

    iget v15, v0, Lb0/D;->h:I

    and-int v15, v16, v15

    if-eqz v15, :cond_33

    if-lez v13, :cond_32

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {v1, v9}, Lb0/p;->b(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    :cond_33
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_1f
    if-ge v9, v14, :cond_37

    const/16 v16, 0x1

    shl-int v17, v16, v9

    move/from16 v16, v14

    iget v14, v0, Lb0/D;->i:I

    and-int v14, v17, v14

    if-eqz v14, :cond_36

    if-lez v13, :cond_35

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    invoke-virtual {v1, v9}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_36
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v16

    goto :goto_1f

    :cond_37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v13, v7, v2, v6}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v15, v5, v0, v4}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :goto_20
    invoke-virtual {v0, v3, v9}, La0/q;->P(Ljava/lang/Object;Z)V

    goto/16 :goto_23

    :cond_38
    iget-object v4, v0, La0/q;->F:La0/v0;

    iget v5, v4, La0/v0;->k:I

    const/4 v11, 0x1

    add-int/2addr v5, v11

    iput v5, v4, La0/v0;->k:I

    iput-boolean v11, v0, La0/q;->O:Z

    const/4 v4, 0x0

    iput-object v4, v0, La0/q;->J:La0/e0;

    iget-object v4, v0, La0/q;->H:La0/y0;

    iget-boolean v4, v4, La0/y0;->v:Z

    if-eqz v4, :cond_39

    iget-object v4, v0, La0/q;->G:La0/w0;

    invoke-virtual {v4}, La0/w0;->m()La0/y0;

    move-result-object v4

    iput-object v4, v0, La0/q;->H:La0/y0;

    invoke-virtual {v4}, La0/y0;->C()V

    const/4 v4, 0x0

    iput-boolean v4, v0, La0/q;->I:Z

    const/4 v4, 0x0

    iput-object v4, v0, La0/q;->J:La0/e0;

    :cond_39
    iget-object v4, v0, La0/q;->H:La0/y0;

    invoke-virtual {v4}, La0/y0;->d()V

    iget-object v4, v0, La0/q;->H:La0/y0;

    iget v5, v4, La0/y0;->s:I

    if-eqz v9, :cond_3a

    const/4 v11, 0x1

    invoke-virtual {v4, v2, v7, v7, v11}, La0/y0;->H(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_21

    :cond_3a
    if-eqz v3, :cond_3c

    if-nez v1, :cond_3b

    move-object v1, v7

    :cond_3b
    const/4 v11, 0x0

    invoke-virtual {v4, v2, v1, v3, v11}, La0/y0;->H(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_21

    :cond_3c
    const/4 v11, 0x0

    if-nez v1, :cond_3d

    move-object v1, v7

    :cond_3d
    invoke-virtual {v4, v2, v1, v7, v11}, La0/y0;->H(ILjava/lang/Object;Ljava/lang/Object;Z)V

    :goto_21
    iget-object v1, v0, La0/q;->H:La0/y0;

    invoke-virtual {v1, v5}, La0/y0;->b(I)La0/c;

    move-result-object v1

    iput-object v1, v0, La0/q;->M:La0/c;

    new-instance v1, La0/Q;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, -0x2

    rsub-int/lit8 v11, v5, -0x2

    invoke-direct {v1, v4, v2, v11, v3}, La0/Q;-><init>(Ljava/lang/Object;III)V

    iget v2, v0, La0/q;->j:I

    sub-int/2addr v2, v10

    new-instance v4, La0/K;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v2, v5}, La0/K;-><init>(III)V

    invoke-virtual {v8, v11, v4}, LN/q;->d(ILjava/lang/Object;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, La0/d0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_3e

    move v8, v5

    goto :goto_22

    :cond_3e
    iget v8, v0, La0/q;->j:I

    :goto_22
    invoke-direct {v6, v8, v1}, La0/d0;-><init>(ILjava/util/ArrayList;)V

    goto :goto_24

    :cond_3f
    :goto_23
    const/4 v6, 0x0

    :goto_24
    invoke-virtual {v0, v9, v6}, La0/q;->t(ZLa0/d0;)V

    return-void

    :cond_40
    const-string v0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {v0}, La0/d;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final M()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, -0x7f

    invoke-virtual {p0, v0, v2, v0, v1}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public final N(ILa0/b0;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1, v0}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public final O()V
    .locals 3

    const/16 v0, 0x7d

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    iput-boolean v2, p0, La0/q;->q:Z

    return-void
.end method

.method public final P(Ljava/lang/Object;Z)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p0, p0, La0/q;->F:La0/v0;

    iget p1, p0, La0/v0;->k:I

    if-gtz p1, :cond_a

    iget-object p1, p0, La0/v0;->b:[I

    iget p2, p0, La0/v0;->g:I

    invoke-static {p2, p1}, La0/d;->k(I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, La0/v0;->n()V

    goto/16 :goto_3

    :cond_0
    const-string p0, "Expected a node group"

    invoke-static {p0}, La0/d;->N(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_9

    iget-object p2, p0, La0/q;->F:La0/v0;

    invoke-virtual {p2}, La0/v0;->e()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_9

    iget-object p2, p0, La0/q;->L:Lb0/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lb0/b;->d(Z)V

    iget-object p2, p2, Lb0/b;->b:Lb0/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lb0/y;->c:Lb0/y;

    iget-object p2, p2, Lb0/a;->b:Lb0/D;

    invoke-virtual {p2, v2}, Lb0/D;->l(Lb0/C;)V

    invoke-static {p2, v1, p1}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget p1, p2, Lb0/D;->h:I

    iget v3, v2, Lb0/C;->a:I

    invoke-static {p2, v3}, Lb0/D;->e(Lb0/D;I)I

    move-result v4

    iget v5, v2, Lb0/C;->b:I

    if-ne p1, v4, :cond_2

    iget p1, p2, Lb0/D;->i:I

    invoke-static {p2, v5}, Lb0/D;->e(Lb0/D;I)I

    move-result v4

    if-ne p1, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move p1, v1

    move v4, p1

    :goto_0
    const/4 v6, 0x1

    const-string v7, ", "

    if-ge p1, v3, :cond_5

    shl-int/2addr v6, p1

    iget v8, p2, Lb0/D;->h:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_4

    if-lez v4, :cond_3

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v2, p1}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v8, v1

    :goto_1
    if-ge v1, v5, :cond_8

    shl-int v9, v6, v1

    iget v10, p2, Lb0/D;->i:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_7

    if-lez v4, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2, v1}, Lb0/y;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error while pushing "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Not all arguments were provided. Missing "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " int arguments ("

    const-string v2, ") and "

    invoke-static {p1, v4, v1, p0, v2}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " object arguments ("

    const-string v1, ")."

    invoke-static {p1, v8, p0, p2, v1}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    iget-object p0, p0, La0/q;->F:La0/v0;

    invoke-virtual {p0}, La0/v0;->n()V

    :cond_a
    :goto_3
    return-void
.end method

.method public final Q(I)V
    .locals 9

    iget-object v0, p0, La0/q;->i:La0/d0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, p1, v2, v1}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void

    :cond_0
    iget-boolean v0, p0, La0/q;->q:Z

    if-nez v0, :cond_7

    iget v0, p0, La0/q;->l:I

    iget v3, p0, La0/q;->P:I

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    xor-int/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    xor-int/2addr v0, v3

    iput v0, p0, La0/q;->P:I

    iget v0, p0, La0/q;->l:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, La0/q;->l:I

    iget-object v0, p0, La0/q;->F:La0/v0;

    iget-boolean v4, p0, La0/q;->O:Z

    sget-object v5, La0/l;->a:La0/V;

    if-eqz v4, :cond_1

    iget v4, v0, La0/v0;->k:I

    add-int/2addr v4, v3

    iput v4, v0, La0/v0;->k:I

    iget-object v0, p0, La0/q;->H:La0/y0;

    invoke-virtual {v0, p1, v5, v5, v1}, La0/y0;->H(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v1, v2}, La0/q;->t(ZLa0/d0;)V

    return-void

    :cond_1
    invoke-virtual {v0}, La0/v0;->f()I

    move-result v4

    if-ne v4, p1, :cond_3

    iget v4, v0, La0/v0;->g:I

    iget v6, v0, La0/v0;->h:I

    if-ge v4, v6, :cond_2

    iget-object v6, v0, La0/v0;->b:[I

    invoke-static {v4, v6}, La0/d;->j(I[I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, La0/v0;->n()V

    invoke-virtual {p0, v1, v2}, La0/q;->t(ZLa0/d0;)V

    return-void

    :cond_3
    :goto_0
    iget v4, v0, La0/v0;->k:I

    if-lez v4, :cond_4

    goto :goto_1

    :cond_4
    iget v4, v0, La0/v0;->g:I

    iget v6, v0, La0/v0;->h:I

    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    iget v6, p0, La0/q;->j:I

    invoke-virtual {p0}, La0/q;->D()V

    invoke-virtual {v0}, La0/v0;->l()I

    move-result v7

    iget-object v8, p0, La0/q;->L:Lb0/b;

    invoke-virtual {v8, v6, v7}, Lb0/b;->e(II)V

    iget-object v6, p0, La0/q;->r:Ljava/util/ArrayList;

    iget v7, v0, La0/v0;->g:I

    invoke-static {v6, v4, v7}, La0/d;->o(Ljava/util/ArrayList;II)V

    :goto_1
    iget v4, v0, La0/v0;->k:I

    add-int/2addr v4, v3

    iput v4, v0, La0/v0;->k:I

    iput-boolean v3, p0, La0/q;->O:Z

    iput-object v2, p0, La0/q;->J:La0/e0;

    iget-object v0, p0, La0/q;->H:La0/y0;

    iget-boolean v0, v0, La0/y0;->v:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, La0/q;->G:La0/w0;

    invoke-virtual {v0}, La0/w0;->m()La0/y0;

    move-result-object v0

    iput-object v0, p0, La0/q;->H:La0/y0;

    invoke-virtual {v0}, La0/y0;->C()V

    iput-boolean v1, p0, La0/q;->I:Z

    iput-object v2, p0, La0/q;->J:La0/e0;

    :cond_6
    iget-object v0, p0, La0/q;->H:La0/y0;

    invoke-virtual {v0}, La0/y0;->d()V

    iget v3, v0, La0/y0;->s:I

    invoke-virtual {v0, p1, v5, v5, v1}, La0/y0;->H(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v3}, La0/y0;->b(I)La0/c;

    move-result-object p1

    iput-object p1, p0, La0/q;->M:La0/c;

    invoke-virtual {p0, v1, v2}, La0/q;->t(ZLa0/d0;)V

    return-void

    :cond_7
    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v2
.end method

.method public final R(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v0, v1}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public final S(I)La0/q;
    .locals 4

    invoke-virtual {p0, p1}, La0/q;->Q(I)V

    iget-boolean p1, p0, La0/q;->O:Z

    iget-object v0, p0, La0/q;->g:La0/u;

    iget-object v1, p0, La0/q;->D:La0/J0;

    if-eqz p1, :cond_0

    new-instance p1, La0/i0;

    invoke-direct {p1, v0}, La0/i0;-><init>(La0/u;)V

    iget-object v0, v1, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, La0/q;->b0(Ljava/lang/Object;)V

    iget v0, p0, La0/q;->A:I

    iput v0, p1, La0/i0;->e:I

    iget v0, p1, La0/i0;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p1, La0/i0;->a:I

    goto :goto_5

    :cond_0
    iget-object p1, p0, La0/q;->r:Ljava/util/ArrayList;

    iget-object v2, p0, La0/q;->F:La0/v0;

    iget v2, v2, La0/v0;->i:I

    invoke-static {v2, p1}, La0/d;->z(ILjava/util/ArrayList;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/N;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, La0/q;->F:La0/v0;

    invoke-virtual {v2}, La0/v0;->h()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, La0/l;->a:La0/V;

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, La0/i0;

    invoke-direct {v2, v0}, La0/i0;-><init>(La0/u;)V

    invoke-virtual {p0, v2}, La0/q;->b0(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v2, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, La0/i0;

    :goto_1
    if-nez p1, :cond_6

    iget p1, v2, La0/i0;->a:I

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    and-int/lit8 p1, p1, -0x41

    iput p1, v2, La0/i0;->a:I

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget p1, v2, La0/i0;->a:I

    and-int/lit8 p1, p1, -0x9

    iput p1, v2, La0/i0;->a:I

    goto :goto_4

    :cond_6
    :goto_3
    iget p1, v2, La0/i0;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v2, La0/i0;->a:I

    :goto_4
    iget-object p1, v1, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, La0/q;->A:I

    iput p1, v2, La0/i0;->e:I

    iget p1, v2, La0/i0;->a:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v2, La0/i0;->a:I

    :goto_5
    return-object p0
.end method

.method public final T(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, La0/q;->O:Z

    const/16 v1, 0xcf

    if-nez v0, :cond_0

    iget-object v0, p0, La0/q;->F:La0/v0;

    invoke-virtual {v0}, La0/v0;->f()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La0/q;->F:La0/v0;

    invoke-virtual {v0}, La0/v0;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, La0/q;->y:I

    if-gez v0, :cond_0

    iget-object v0, p0, La0/q;->F:La0/v0;

    iget v0, v0, La0/v0;->g:I

    iput v0, p0, La0/q;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, La0/q;->x:Z

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public final U()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x7d

    invoke-virtual {p0, v0, v2, v0, v1}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La0/q;->q:Z

    return-void
.end method

.method public final V()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, La0/q;->l:I

    iget-object v1, p0, La0/q;->c:La0/w0;

    invoke-virtual {v1}, La0/w0;->i()La0/v0;

    move-result-object v2

    iput-object v2, p0, La0/q;->F:La0/v0;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3, v0}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    iget-object v2, p0, La0/q;->b:La0/s;

    invoke-virtual {v2}, La0/s;->m()V

    invoke-virtual {v2}, La0/s;->f()La0/e0;

    move-result-object v4

    iput-object v4, p0, La0/q;->t:La0/e0;

    iget-boolean v4, p0, La0/q;->v:Z

    iget-object v5, p0, La0/q;->w:LB0/n;

    invoke-virtual {v5, v4}, LB0/n;->b(I)V

    iget-object v4, p0, La0/q;->t:La0/e0;

    invoke-virtual {p0, v4}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, La0/q;->v:Z

    iput-object v3, p0, La0/q;->J:La0/e0;

    iget-boolean v4, p0, La0/q;->p:Z

    if-nez v4, :cond_0

    invoke-virtual {v2}, La0/s;->d()Z

    move-result v4

    iput-boolean v4, p0, La0/q;->p:Z

    :cond_0
    iget-boolean v4, p0, La0/q;->B:Z

    if-nez v4, :cond_1

    invoke-virtual {v2}, La0/s;->e()Z

    move-result v4

    iput-boolean v4, p0, La0/q;->B:Z

    :cond_1
    iget-object v4, p0, La0/q;->t:La0/e0;

    sget-object v5, Ll0/b;->a:La0/L0;

    invoke-static {v4, v5}, La0/d;->G(La0/e0;La0/g0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_2

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, La0/s;->j(Ljava/util/Set;)V

    :cond_2
    invoke-virtual {v2}, La0/s;->g()I

    move-result v1

    invoke-virtual {p0, v3, v1, v3, v0}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public final W(La0/i0;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p1, La0/i0;->c:La0/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, La0/q;->F:La0/v0;

    iget-object v2, v2, La0/v0;->a:La0/w0;

    invoke-virtual {v2, v0}, La0/w0;->g(La0/c;)I

    move-result v0

    iget-boolean v2, p0, La0/q;->E:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, La0/q;->F:La0/v0;

    iget v2, v2, La0/v0;->g:I

    if-lt v0, v2, :cond_6

    iget-object p0, p0, La0/q;->r:Ljava/util/ArrayList;

    invoke-static {v0, p0}, La0/d;->z(ILjava/util/ArrayList;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_2

    add-int/2addr v1, v2

    neg-int v1, v1

    instance-of v4, p2, La0/E;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v3

    :goto_0
    new-instance v3, La0/N;

    invoke-direct {v3, p1, v0, p2}, La0/N;-><init>(La0/i0;ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/N;

    instance-of p1, p2, La0/E;

    if-eqz p1, :cond_5

    iget-object p1, p0, La0/N;->c:Ljava/lang/Object;

    if-nez p1, :cond_3

    iput-object p2, p0, La0/N;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    instance-of v0, p1, LN/v;

    if-eqz v0, :cond_4

    check-cast p1, LN/v;

    invoke-virtual {p1, p2}, LN/v;->a(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget v0, LN/z;->a:I

    new-instance v0, LN/v;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LN/v;-><init>(I)V

    invoke-virtual {v0, p1}, LN/v;->d(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, v0, LN/v;->b:[Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, p2}, LN/v;->d(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, v0, LN/v;->b:[Ljava/lang/Object;

    aput-object p2, v1, p1

    iput-object v0, p0, La0/N;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iput-object v3, p0, La0/N;->c:Ljava/lang/Object;

    :goto_1
    return v2

    :cond_6
    return v1
.end method

.method public final X(II)V
    .locals 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, La0/q;->c0(I)I

    move-result v3

    if-eq v3, v2, :cond_13

    if-gez v1, :cond_11

    iget-object v5, v0, La0/q;->o:LN/o;

    const/4 v6, 0x6

    if-nez v5, :cond_0

    new-instance v5, LN/o;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sget-object v7, LN/x;->a:[J

    iput-object v7, v5, LN/o;->a:[J

    sget-object v7, LN/j;->a:[I

    iput-object v7, v5, LN/o;->b:[I

    iput-object v7, v5, LN/o;->c:[I

    invoke-static {v6}, LN/x;->f(I)I

    move-result v7

    invoke-virtual {v5, v7}, LN/o;->d(I)V

    iput-object v5, v0, La0/q;->o:LN/o;

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const v7, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v0, v7

    shl-int/lit8 v8, v0, 0x10

    xor-int/2addr v0, v8

    ushr-int/lit8 v8, v0, 0x7

    and-int/lit8 v9, v0, 0x7f

    iget v10, v5, LN/o;->d:I

    and-int v0, v8, v10

    const/4 v11, 0x0

    :goto_0
    iget-object v12, v5, LN/o;->a:[J

    shr-int/lit8 v13, v0, 0x3

    and-int/lit8 v14, v0, 0x7

    shl-int/lit8 v14, v14, 0x3

    aget-wide v15, v12, v13

    ushr-long/2addr v15, v14

    const/16 v17, 0x1

    add-int/lit8 v13, v13, 0x1

    aget-wide v12, v12, v13

    rsub-int/lit8 v18, v14, 0x40

    shl-long v12, v12, v18

    int-to-long v3, v14

    neg-long v3, v3

    const/16 v14, 0x3f

    shr-long/2addr v3, v14

    and-long/2addr v3, v12

    or-long/2addr v3, v15

    int-to-long v12, v9

    const-wide v14, 0x101010101010101L

    mul-long v19, v12, v14

    move/from16 v21, v8

    xor-long v7, v3, v19

    sub-long v14, v7, v14

    not-long v7, v7

    and-long/2addr v7, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v14

    :goto_1
    const-wide/16 v19, 0x0

    cmp-long v22, v7, v19

    if-eqz v22, :cond_2

    invoke-static {v7, v8}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v19

    shr-int/lit8 v19, v19, 0x3

    add-int v19, v0, v19

    and-int v19, v19, v10

    iget-object v14, v5, LN/o;->b:[I

    aget v14, v14, v19

    if-ne v14, v1, :cond_1

    move/from16 v0, v19

    goto/16 :goto_9

    :cond_1
    const-wide/16 v14, 0x1

    sub-long v14, v7, v14

    and-long/2addr v7, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_1

    :cond_2
    not-long v7, v3

    shl-long/2addr v7, v6

    and-long/2addr v3, v7

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v3, v7

    cmp-long v3, v3, v19

    const/16 v4, 0x8

    if-eqz v3, :cond_10

    move/from16 v3, v21

    invoke-virtual {v5, v3}, LN/o;->a(I)I

    move-result v0

    iget v6, v5, LN/o;->f:I

    const-wide/16 v9, 0xff

    if-nez v6, :cond_3

    iget-object v6, v5, LN/o;->a:[J

    shr-int/lit8 v11, v0, 0x3

    aget-wide v14, v6, v11

    and-int/lit8 v6, v0, 0x7

    shl-int/lit8 v6, v6, 0x3

    shr-long/2addr v14, v6

    and-long/2addr v14, v9

    const-wide/16 v19, 0xfe

    cmp-long v6, v14, v19

    if-nez v6, :cond_4

    :cond_3
    move-wide/from16 v34, v12

    goto/16 :goto_7

    :cond_4
    iget v0, v5, LN/o;->d:I

    if-le v0, v4, :cond_b

    iget v6, v5, LN/o;->e:I

    int-to-long v14, v6

    const-wide/16 v21, 0x20

    mul-long v14, v14, v21

    int-to-long v7, v0

    const-wide/16 v23, 0x19

    mul-long v7, v7, v23

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_b

    iget-object v0, v5, LN/o;->a:[J

    iget v6, v5, LN/o;->d:I

    iget-object v7, v5, LN/o;->b:[I

    iget-object v8, v5, LN/o;->c:[I

    invoke-static {v0, v6}, LN/x;->a([JI)V

    const/4 v11, 0x0

    const/4 v14, -0x1

    :goto_2
    if-eq v11, v6, :cond_a

    shr-int/lit8 v15, v11, 0x3

    aget-wide v23, v0, v15

    and-int/lit8 v25, v11, 0x7

    shl-int/lit8 v25, v25, 0x3

    shr-long v23, v23, v25

    and-long v23, v23, v9

    const-wide/16 v21, 0x80

    cmp-long v26, v23, v21

    if-nez v26, :cond_5

    add-int/lit8 v14, v11, 0x1

    move/from16 v36, v14

    move v14, v11

    move/from16 v11, v36

    goto :goto_2

    :cond_5
    cmp-long v23, v23, v19

    if-eqz v23, :cond_6

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    aget v23, v7, v11

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->hashCode(I)I

    move-result v23

    const v16, -0x3361d2af    # -8.2930312E7f

    mul-int v23, v23, v16

    shl-int/lit8 v24, v23, 0x10

    xor-int v23, v23, v24

    ushr-int/lit8 v9, v23, 0x7

    invoke-virtual {v5, v9}, LN/o;->a(I)I

    move-result v10

    and-int/2addr v9, v6

    sub-int v24, v10, v9

    and-int v24, v24, v6

    div-int/lit8 v2, v24, 0x8

    sub-int v9, v11, v9

    and-int/2addr v9, v6

    div-int/2addr v9, v4

    const-wide v28, 0xffffffffffffffL

    const-wide/high16 v30, -0x8000000000000000L

    if-ne v2, v9, :cond_7

    and-int/lit8 v2, v23, 0x7f

    int-to-long v9, v2

    aget-wide v23, v0, v15

    move-object v2, v5

    const-wide/16 v26, 0xff

    shl-long v4, v26, v25

    not-long v4, v4

    and-long v4, v23, v4

    shl-long v9, v9, v25

    or-long/2addr v4, v9

    aput-wide v4, v0, v15

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aget-wide v9, v0, v5

    and-long v9, v9, v28

    or-long v9, v9, v30

    aput-wide v9, v0, v4

    add-int/lit8 v11, v11, 0x1

    move-object v5, v2

    const/16 v4, 0x8

    const-wide/16 v9, 0xff

    move/from16 v2, p2

    goto :goto_2

    :cond_7
    move-object v2, v5

    shr-int/lit8 v4, v10, 0x3

    aget-wide v32, v0, v4

    and-int/lit8 v5, v10, 0x7

    shl-int/lit8 v5, v5, 0x3

    shr-long v34, v32, v5

    const-wide/16 v26, 0xff

    and-long v34, v34, v26

    const-wide/16 v21, 0x80

    cmp-long v9, v34, v21

    if-nez v9, :cond_8

    and-int/lit8 v9, v23, 0x7f

    move-wide/from16 v34, v12

    int-to-long v12, v9

    move-object/from16 v24, v2

    shl-long v1, v26, v5

    not-long v1, v1

    and-long v1, v32, v1

    shl-long/2addr v12, v5

    or-long/2addr v1, v12

    aput-wide v1, v0, v4

    aget-wide v1, v0, v15

    shl-long v4, v26, v25

    not-long v4, v4

    and-long/2addr v1, v4

    const-wide/16 v4, 0x80

    shl-long v12, v4, v25

    or-long/2addr v1, v12

    aput-wide v1, v0, v15

    aget v1, v7, v11

    aput v1, v7, v10

    const/4 v1, 0x0

    aput v1, v7, v11

    aget v2, v8, v11

    aput v2, v8, v10

    aput v1, v8, v11

    move-object v15, v8

    move v14, v11

    goto :goto_3

    :cond_8
    move-object/from16 v24, v2

    move-wide/from16 v34, v12

    and-int/lit8 v1, v23, 0x7f

    int-to-long v1, v1

    move-object v15, v8

    const-wide/16 v12, 0xff

    shl-long v8, v12, v5

    not-long v8, v8

    and-long v8, v32, v8

    shl-long/2addr v1, v5

    or-long/2addr v1, v8

    aput-wide v1, v0, v4

    const/4 v1, -0x1

    if-ne v14, v1, :cond_9

    add-int/lit8 v1, v11, 0x1

    invoke-static {v0, v1, v6}, LN/x;->b([JII)I

    move-result v14

    :cond_9
    aget v1, v7, v10

    aput v1, v7, v14

    aget v1, v7, v11

    aput v1, v7, v10

    aget v1, v7, v14

    aput v1, v7, v11

    aget v1, v15, v10

    aput v1, v15, v14

    aget v1, v15, v11

    aput v1, v15, v10

    aget v1, v15, v14

    aput v1, v15, v11

    add-int/lit8 v11, v11, -0x1

    :goto_3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aget-wide v4, v0, v2

    and-long v4, v4, v28

    or-long v4, v4, v30

    aput-wide v4, v0, v1

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v8, v15

    move-object/from16 v5, v24

    move-wide/from16 v12, v34

    const/16 v4, 0x8

    const-wide/16 v9, 0xff

    goto/16 :goto_2

    :cond_a
    move-wide/from16 v34, v12

    iget v0, v5, LN/o;->d:I

    invoke-static {v0}, LN/x;->c(I)I

    move-result v0

    iget v1, v5, LN/o;->e:I

    sub-int/2addr v0, v1

    iput v0, v5, LN/o;->f:I

    goto/16 :goto_6

    :cond_b
    move-wide/from16 v34, v12

    iget v0, v5, LN/o;->d:I

    invoke-static {v0}, LN/x;->d(I)I

    move-result v0

    iget-object v1, v5, LN/o;->a:[J

    iget-object v2, v5, LN/o;->b:[I

    iget-object v4, v5, LN/o;->c:[I

    iget v6, v5, LN/o;->d:I

    invoke-virtual {v5, v0}, LN/o;->d(I)V

    iget-object v0, v5, LN/o;->a:[J

    iget-object v7, v5, LN/o;->b:[I

    iget-object v8, v5, LN/o;->c:[I

    iget v9, v5, LN/o;->d:I

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v6, :cond_d

    shr-int/lit8 v11, v10, 0x3

    aget-wide v11, v1, v11

    and-int/lit8 v13, v10, 0x7

    shl-int/lit8 v13, v13, 0x3

    shr-long/2addr v11, v13

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_c

    aget v11, v2, v10

    invoke-static {v11}, Ljava/lang/Integer;->hashCode(I)I

    move-result v12

    const v13, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v12, v13

    shl-int/lit8 v14, v12, 0x10

    xor-int/2addr v12, v14

    ushr-int/lit8 v14, v12, 0x7

    invoke-virtual {v5, v14}, LN/o;->a(I)I

    move-result v14

    and-int/lit8 v12, v12, 0x7f

    move-object v15, v1

    move-object/from16 v16, v2

    int-to-long v1, v12

    shr-int/lit8 v12, v14, 0x3

    and-int/lit8 v18, v14, 0x7

    shl-int/lit8 v18, v18, 0x3

    aget-wide v19, v0, v12

    move/from16 p0, v14

    const-wide/16 v23, 0xff

    shl-long v13, v23, v18

    not-long v13, v13

    and-long v13, v19, v13

    shl-long v1, v1, v18

    or-long/2addr v1, v13

    aput-wide v1, v0, v12

    add-int/lit8 v14, p0, -0x7

    and-int v12, v14, v9

    and-int/lit8 v13, v9, 0x7

    add-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x3

    aput-wide v1, v0, v12

    aput v11, v7, p0

    aget v1, v4, v10

    aput v1, v8, p0

    goto :goto_5

    :cond_c
    move-object v15, v1

    move-object/from16 v16, v2

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object v1, v15

    move-object/from16 v2, v16

    goto :goto_4

    :cond_d
    :goto_6
    invoke-virtual {v5, v3}, LN/o;->a(I)I

    move-result v0

    :goto_7
    iget v1, v5, LN/o;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, LN/o;->e:I

    iget v1, v5, LN/o;->f:I

    iget-object v2, v5, LN/o;->a:[J

    shr-int/lit8 v3, v0, 0x3

    aget-wide v6, v2, v3

    and-int/lit8 v4, v0, 0x7

    shl-int/lit8 v4, v4, 0x3

    shr-long v8, v6, v4

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const-wide/16 v12, 0x80

    cmp-long v8, v8, v12

    if-nez v8, :cond_e

    goto :goto_8

    :cond_e
    const/16 v17, 0x0

    :goto_8
    sub-int v1, v1, v17

    iput v1, v5, LN/o;->f:I

    iget v1, v5, LN/o;->d:I

    shl-long v8, v10, v4

    not-long v8, v8

    and-long/2addr v6, v8

    shl-long v8, v34, v4

    or-long/2addr v6, v8

    aput-wide v6, v2, v3

    add-int/lit8 v3, v0, -0x7

    and-int/2addr v3, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v3, v1

    shr-int/lit8 v1, v3, 0x3

    aput-wide v6, v2, v1

    not-int v0, v0

    :goto_9
    if-gez v0, :cond_f

    not-int v0, v0

    :cond_f
    iget-object v1, v5, LN/o;->b:[I

    aput p1, v1, v0

    iget-object v1, v5, LN/o;->c:[I

    aput p2, v1, v0

    goto :goto_a

    :cond_10
    move v1, v4

    move/from16 v3, v21

    add-int/2addr v11, v1

    add-int/2addr v0, v11

    and-int/2addr v0, v10

    move/from16 v1, p1

    move/from16 v2, p2

    move v8, v3

    const v7, -0x3361d2af    # -8.2930312E7f

    goto/16 :goto_0

    :cond_11
    iget-object v1, v0, La0/q;->n:[I

    if-nez v1, :cond_12

    iget-object v1, v0, La0/q;->F:La0/v0;

    iget v1, v1, La0/v0;->c:I

    new-array v2, v1, [I

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    iput-object v2, v0, La0/q;->n:[I

    move-object v1, v2

    :cond_12
    aput p2, v1, p1

    :cond_13
    :goto_a
    return-void
.end method

.method public final Y(II)V
    .locals 6

    invoke-virtual {p0, p1}, La0/q;->c0(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    sub-int/2addr p2, v0

    iget-object v0, p0, La0/q;->h:La0/J0;

    iget-object v1, v0, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    invoke-virtual {p0, p1}, La0/q;->c0(I)I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0, p1, v3}, La0/q;->X(II)V

    move v4, v1

    :goto_1
    if-ge v2, v4, :cond_1

    iget-object v5, v0, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La0/d0;

    if-eqz v5, :cond_0

    invoke-virtual {v5, p1, v3}, La0/d0;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez p1, :cond_2

    iget-object p1, p0, La0/q;->F:La0/v0;

    iget p1, p1, La0/v0;->i:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, La0/q;->F:La0/v0;

    iget-object v2, v2, La0/v0;->b:[I

    invoke-static {p1, v2}, La0/d;->k(I[I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, La0/q;->F:La0/v0;

    iget-object v2, v2, La0/v0;->b:[I

    invoke-static {p1, v2}, La0/d;->n(I[I)I

    move-result p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final Z(La0/e0;Li0/e;)Li0/e;
    .locals 2

    check-cast p1, Li0/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Li0/d;

    invoke-direct {v0, p1}, Li0/d;-><init>(Li0/e;)V

    invoke-virtual {v0, p2}, Li0/d;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Li0/d;->a()Li0/e;

    move-result-object p1

    sget-object v0, La0/d;->d:La0/b0;

    const/16 v1, 0xcc

    invoke-virtual {p0, v1, v0}, La0/q;->N(ILa0/b0;)V

    invoke-virtual {p0}, La0/q;->z()Ljava/lang/Object;

    invoke-virtual {p0, p1}, La0/q;->b0(Ljava/lang/Object;)V

    invoke-virtual {p0}, La0/q;->z()Ljava/lang/Object;

    invoke-virtual {p0, p2}, La0/q;->b0(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, La0/q;->p(Z)V

    return-object p1
.end method

.method public final a()V
    .locals 3

    invoke-virtual {p0}, La0/q;->h()V

    iget-object v0, p0, La0/q;->h:La0/J0;

    iget-object v0, v0, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, La0/q;->m:LB0/n;

    const/4 v1, 0x0

    iput v1, v0, LB0/n;->b:I

    iget-object v0, p0, La0/q;->s:LB0/n;

    iput v1, v0, LB0/n;->b:I

    iget-object v0, p0, La0/q;->w:LB0/n;

    iput v1, v0, LB0/n;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, La0/q;->u:LX4/i;

    iget-object v0, p0, La0/q;->N:Lb0/c;

    iget-object v2, v0, Lb0/c;->c:Lb0/D;

    invoke-virtual {v2}, Lb0/D;->f()V

    iget-object v0, v0, Lb0/c;->b:Lb0/D;

    invoke-virtual {v0}, Lb0/D;->f()V

    iput v1, p0, La0/q;->P:I

    iput v1, p0, La0/q;->z:I

    iput-boolean v1, p0, La0/q;->q:Z

    iput-boolean v1, p0, La0/q;->O:Z

    iput-boolean v1, p0, La0/q;->x:Z

    iput-boolean v1, p0, La0/q;->E:Z

    const/4 v0, -0x1

    iput v0, p0, La0/q;->y:I

    iget-object v0, p0, La0/q;->F:La0/v0;

    iget-boolean v1, v0, La0/v0;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, La0/v0;->c()V

    :cond_0
    iget-object v0, p0, La0/q;->H:La0/y0;

    iget-boolean v0, v0, La0/y0;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, La0/q;->u()V

    :cond_1
    return-void
.end method

.method public final a0(Ljava/lang/Object;)V
    .locals 13

    instance-of v0, p1, La0/q0;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, La0/q;->O:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, La0/q0;

    iget-object v3, p0, La0/q;->L:Lb0/b;

    iget-object v3, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lb0/r;->c:Lb0/r;

    iget-object v3, v3, Lb0/a;->b:Lb0/D;

    invoke-virtual {v3, v4}, Lb0/D;->l(Lb0/C;)V

    const/4 v5, 0x0

    invoke-static {v3, v5, v0}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v0, v3, Lb0/D;->h:I

    iget v6, v4, Lb0/C;->a:I

    invoke-static {v3, v6}, Lb0/D;->e(Lb0/D;I)I

    move-result v7

    iget v8, v4, Lb0/C;->b:I

    if-ne v0, v7, :cond_0

    iget v0, v3, Lb0/D;->i:I

    invoke-static {v3, v8}, Lb0/D;->e(Lb0/D;I)I

    move-result v7

    if-ne v0, v7, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move p1, v5

    move v0, p1

    :goto_0
    const-string v7, ", "

    if-ge p1, v6, :cond_3

    shl-int v9, v2, p1

    iget v10, v3, Lb0/D;->h:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    if-lez v0, :cond_1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4, p1}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v9, v5

    :goto_1
    if-ge v5, v8, :cond_6

    shl-int v10, v2, v5

    iget v11, v3, Lb0/D;->i:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_5

    if-lez v0, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v4, v5}, Lb0/r;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Error while pushing "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Not all arguments were provided. Missing "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " int arguments ("

    const-string v4, ") and "

    invoke-static {p1, v0, v3, p0, v4}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " object arguments ("

    const-string v0, ")."

    invoke-static {p1, v9, p0, v2, v0}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    iget-object v0, p0, La0/q;->d:LN/u;

    invoke-virtual {v0, p1}, LN/u;->add(Ljava/lang/Object;)Z

    new-instance v0, La0/r0;

    check-cast p1, La0/q0;

    iget-boolean v3, p0, La0/q;->O:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, La0/q;->H:La0/y0;

    iget v4, v3, La0/y0;->s:I

    iget v5, v3, La0/y0;->u:I

    add-int/2addr v5, v2

    if-le v4, v5, :cond_b

    sub-int/2addr v4, v2

    iget-object v1, v3, La0/y0;->b:[I

    invoke-virtual {v3, v4, v1}, La0/y0;->x(I[I)I

    move-result v1

    :goto_3
    move v12, v4

    move v4, v1

    move v1, v12

    iget-object v2, p0, La0/q;->H:La0/y0;

    iget v3, v2, La0/y0;->u:I

    if-eq v4, v3, :cond_8

    if-ltz v4, :cond_8

    iget-object v1, v2, La0/y0;->b:[I

    invoke-virtual {v2, v4, v1}, La0/y0;->x(I[I)I

    move-result v1

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v1}, La0/y0;->b(I)La0/c;

    move-result-object v1

    goto :goto_5

    :cond_9
    iget-object v3, p0, La0/q;->F:La0/v0;

    iget v4, v3, La0/v0;->g:I

    iget v5, v3, La0/v0;->i:I

    add-int/2addr v5, v2

    if-le v4, v5, :cond_b

    sub-int/2addr v4, v2

    iget-object v1, v3, La0/v0;->b:[I

    mul-int/lit8 v2, v4, 0x5

    add-int/lit8 v2, v2, 0x2

    aget v1, v1, v2

    :goto_4
    move v12, v4

    move v4, v1

    move v1, v12

    iget-object v2, p0, La0/q;->F:La0/v0;

    iget v3, v2, La0/v0;->i:I

    if-eq v4, v3, :cond_a

    if-ltz v4, :cond_a

    iget-object v1, v2, La0/v0;->b:[I

    mul-int/lit8 v2, v4, 0x5

    add-int/lit8 v2, v2, 0x2

    aget v1, v1, v2

    goto :goto_4

    :cond_a
    invoke-virtual {v2, v1}, La0/v0;->a(I)La0/c;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, La0/r0;->a:La0/q0;

    iput-object v1, v0, La0/r0;->b:La0/c;

    move-object p1, v0

    :cond_c
    invoke-virtual {p0, p1}, La0/q;->b0(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Lsb/n;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, La0/q;->O:Z

    const/4 v5, 0x1

    const-string v6, ")."

    const-string v7, " object arguments ("

    const-string v8, ") and "

    const-string v9, " int arguments ("

    const-string v10, ". Not all arguments were provided. Missing "

    const-string v11, "Error while pushing "

    const-string v12, "StringBuilder().apply(builderAction).toString()"

    const-string v13, ", "

    const/4 v14, 0x2

    const-string v15, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v0, v0, La0/q;->N:Lb0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lb0/z;->c:Lb0/z;

    iget-object v0, v0, Lb0/c;->b:Lb0/D;

    invoke-virtual {v0, v3}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v0, v4, v1}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    invoke-static {v2, v15}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v2}, Ltb/z;->e(ILjava/lang/Object;)V

    invoke-static {v0, v5, v2}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v1, v0, Lb0/D;->h:I

    iget v2, v3, Lb0/C;->a:I

    invoke-static {v0, v2}, Lb0/D;->e(Lb0/D;I)I

    move-result v14

    iget v15, v3, Lb0/C;->b:I

    if-ne v1, v14, :cond_0

    iget v1, v0, Lb0/D;->i:I

    invoke-static {v0, v15}, Lb0/D;->e(Lb0/D;I)I

    move-result v14

    if-ne v1, v14, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v14, v4

    :goto_0
    if-ge v14, v2, :cond_3

    shl-int v17, v5, v14

    iget v5, v0, Lb0/D;->h:I

    and-int v5, v17, v5

    if-eqz v5, :cond_2

    if-lez v4, :cond_1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v14}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v5, v15, :cond_6

    const/16 v16, 0x1

    shl-int v17, v16, v5

    move/from16 p0, v15

    iget v15, v0, Lb0/D;->i:I

    and-int v15, v17, v15

    if-eqz v15, :cond_5

    if-lez v4, :cond_4

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v3, v5}, Lb0/z;->c(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, p0

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4, v9, v1, v8}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v14, v7, v0, v6}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_7
    iget-object v0, v0, La0/q;->L:Lb0/b;

    invoke-virtual {v0}, Lb0/b;->b()V

    iget-object v0, v0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lb0/z;->c:Lb0/z;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0, v3}, Lb0/D;->l(Lb0/C;)V

    const/4 v4, 0x0

    invoke-static {v0, v4, v1}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    invoke-static {v2, v15}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v2}, Ltb/z;->e(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v1, v0, Lb0/D;->h:I

    iget v2, v3, Lb0/C;->a:I

    invoke-static {v0, v2}, Lb0/D;->e(Lb0/D;I)I

    move-result v5

    iget v14, v3, Lb0/C;->b:I

    if-ne v1, v5, :cond_8

    iget v1, v0, Lb0/D;->i:I

    invoke-static {v0, v14}, Lb0/D;->e(Lb0/D;I)I

    move-result v5

    if-ne v1, v5, :cond_8

    :goto_2
    return-void

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v4

    move v15, v5

    :goto_3
    if-ge v5, v2, :cond_b

    const/16 v16, 0x1

    shl-int v17, v16, v5

    iget v4, v0, Lb0/D;->h:I

    and-int v4, v17, v4

    if-eqz v4, :cond_a

    if-lez v15, :cond_9

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v3, v5}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_a
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v4, v14, :cond_e

    const/16 v16, 0x1

    shl-int v17, v16, v4

    move/from16 v18, v14

    iget v14, v0, Lb0/D;->i:I

    and-int v14, v17, v14

    if-eqz v14, :cond_d

    if-lez v15, :cond_c

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v3, v4}, Lb0/z;->c(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_d
    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v18

    goto :goto_4

    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v15, v9, v1, v8}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5, v7, v0, v6}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b0(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, La0/q;->O:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v0, v0, La0/q;->H:La0/y0;

    iget v2, v0, La0/y0;->n:I

    if-lez v2, :cond_0

    iget v2, v0, La0/y0;->u:I

    invoke-virtual {v0, v4, v2}, La0/y0;->s(II)V

    :cond_0
    iget-object v2, v0, La0/y0;->c:[Ljava/lang/Object;

    iget v5, v0, La0/y0;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, La0/y0;->i:I

    invoke-virtual {v0, v5}, La0/y0;->g(I)I

    move-result v5

    aget-object v2, v2, v5

    iget v2, v0, La0/y0;->i:I

    iget v5, v0, La0/y0;->j:I

    if-gt v2, v5, :cond_1

    iget-object v3, v0, La0/y0;->c:[Ljava/lang/Object;

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, La0/y0;->g(I)I

    move-result v0

    aput-object v1, v3, v0

    goto/16 :goto_4

    :cond_1
    const-string v0, "Writing to an invalid slot"

    invoke-static {v0}, La0/d;->t(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v2, v0, La0/q;->F:La0/v0;

    iget-boolean v5, v2, La0/v0;->n:Z

    iget-object v6, v0, La0/q;->L:Lb0/b;

    const-string v7, ")."

    const-string v8, " object arguments ("

    const-string v9, ") and "

    const-string v10, " int arguments ("

    const-string v11, ". Not all arguments were provided. Missing "

    const-string v12, "Error while pushing "

    const-string v13, "StringBuilder().apply(builderAction).toString()"

    const-string v14, ", "

    const/4 v15, 0x0

    if-eqz v5, :cond_d

    iget v5, v2, La0/v0;->l:I

    iget-object v3, v2, La0/v0;->b:[I

    iget v2, v2, La0/v0;->i:I

    invoke-static {v2, v3}, La0/d;->p(I[I)I

    move-result v2

    sub-int/2addr v5, v2

    sub-int/2addr v5, v4

    iget-object v2, v6, Lb0/b;->a:La0/q;

    iget-object v2, v2, La0/q;->F:La0/v0;

    iget v2, v2, La0/v0;->i:I

    iget v3, v6, Lb0/b;->f:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_8

    iget-object v0, v0, La0/q;->F:La0/v0;

    iget v2, v0, La0/v0;->i:I

    invoke-virtual {v0, v2}, La0/v0;->a(I)La0/c;

    move-result-object v0

    iget-object v2, v6, Lb0/b;->b:Lb0/a;

    sget-object v3, Lb0/m;->f:Lb0/m;

    iget-object v2, v2, Lb0/a;->b:Lb0/D;

    invoke-virtual {v2, v3}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v2, v15, v1}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    invoke-static {v2, v4, v0}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    invoke-static {v2, v15, v5}, LD/a;->n(Lb0/D;II)V

    iget v0, v2, Lb0/D;->h:I

    invoke-static {v2, v4}, Lb0/D;->e(Lb0/D;I)I

    move-result v1

    const/4 v5, 0x2

    if-ne v0, v1, :cond_3

    iget v0, v2, Lb0/D;->i:I

    invoke-static {v2, v5}, Lb0/D;->e(Lb0/D;I)I

    move-result v1

    if-ne v0, v1, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v2, Lb0/D;->h:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    invoke-virtual {v3, v15}, Lb0/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v15

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v16, v7

    move v7, v15

    :goto_1
    if-ge v15, v5, :cond_7

    shl-int v17, v4, v15

    iget v5, v2, Lb0/D;->i:I

    and-int v5, v17, v5

    if-eqz v5, :cond_6

    if-lez v1, :cond_5

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v3, v15}, Lb0/m;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1, v10, v0, v9}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-static {v4, v7, v8, v2, v0}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_8
    move-object v0, v7

    invoke-virtual {v6, v4}, Lb0/b;->d(Z)V

    iget-object v2, v6, Lb0/b;->b:Lb0/a;

    sget-object v3, Lb0/m;->g:Lb0/m;

    iget-object v2, v2, Lb0/a;->b:Lb0/D;

    invoke-virtual {v2, v3}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v2, v15, v1}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    invoke-static {v2, v15, v5}, LD/a;->n(Lb0/D;II)V

    iget v1, v2, Lb0/D;->h:I

    invoke-static {v2, v4}, Lb0/D;->e(Lb0/D;I)I

    move-result v5

    if-ne v1, v5, :cond_9

    iget v1, v2, Lb0/D;->i:I

    invoke-static {v2, v4}, Lb0/D;->e(Lb0/D;I)I

    move-result v5

    if-ne v1, v5, :cond_9

    goto/16 :goto_4

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lb0/D;->h:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_a

    invoke-virtual {v3, v15}, Lb0/m;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v4

    goto :goto_2

    :cond_a
    move v5, v15

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v2, v2, Lb0/D;->i:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_c

    if-lez v5, :cond_b

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v3, v15}, Lb0/m;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    move v4, v15

    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v5, v10, v1, v9}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v4, v8, v2, v0}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_d
    move-object v0, v7

    iget v3, v2, La0/v0;->i:I

    invoke-virtual {v2, v3}, La0/v0;->a(I)La0/c;

    move-result-object v2

    iget-object v3, v6, Lb0/b;->b:Lb0/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lb0/e;->c:Lb0/e;

    iget-object v3, v3, Lb0/a;->b:Lb0/D;

    invoke-virtual {v3, v5}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v3, v15, v2}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    invoke-static {v3, v4, v1}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v1, v3, Lb0/D;->h:I

    iget v2, v5, Lb0/C;->a:I

    invoke-static {v3, v2}, Lb0/D;->e(Lb0/D;I)I

    move-result v6

    iget v7, v5, Lb0/C;->b:I

    if-ne v1, v6, :cond_e

    iget v1, v3, Lb0/D;->i:I

    invoke-static {v3, v7}, Lb0/D;->e(Lb0/D;I)I

    move-result v6

    if-ne v1, v6, :cond_e

    :goto_4
    return-void

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v15

    :goto_5
    if-ge v6, v2, :cond_11

    shl-int v17, v4, v6

    iget v4, v3, Lb0/D;->h:I

    and-int v4, v17, v4

    if-eqz v4, :cond_10

    if-lez v15, :cond_f

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v5, v6}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_10
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v4, v7, :cond_14

    const/16 v16, 0x1

    shl-int v17, v16, v4

    move/from16 v18, v7

    iget v7, v3, Lb0/D;->i:I

    and-int v7, v17, v7

    if-eqz v7, :cond_13

    if-lez v15, :cond_12

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v5, v4}, Lb0/e;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    :cond_13
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v18

    goto :goto_6

    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v15, v10, v1, v9}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v6, v8, v2, v0}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(I)Z
    .locals 2

    invoke-virtual {p0}, La0/q;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, La0/q;->b0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final c0(I)I
    .locals 2

    if-gez p1, :cond_1

    iget-object p0, p0, La0/q;->o:LN/o;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LN/o;->b(I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, p1}, LN/o;->c(I)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, La0/q;->n:[I

    if-eqz v0, :cond_2

    aget v0, v0, p1

    if-ltz v0, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, La0/q;->F:La0/v0;

    iget-object p0, p0, La0/v0;->b:[I

    invoke-static {p1, p0}, La0/d;->m(I[I)I

    move-result p0

    return p0
.end method

.method public final d(J)Z
    .locals 2

    invoke-virtual {p0}, La0/q;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, La0/q;->b0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final d0()V
    .locals 3

    iget-boolean v0, p0, La0/q;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, La0/q;->q:Z

    iget-boolean v0, p0, La0/q;->O:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La0/q;->F:La0/v0;

    iget v1, v0, La0/v0;->i:I

    invoke-virtual {v0, v1}, La0/v0;->i(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, La0/q;->L:Lb0/b;

    invoke-virtual {v1}, Lb0/b;->c()V

    iget-object v2, v1, Lb0/b;->h:La0/J0;

    iget-object v2, v2, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, La0/q;->x:Z

    if-eqz p0, :cond_0

    instance-of p0, v0, La0/j;

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lb0/b;->b()V

    iget-object p0, v1, Lb0/b;->b:Lb0/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, La0/j;

    if-eqz v0, :cond_0

    sget-object v0, Lb0/B;->c:Lb0/B;

    iget-object p0, p0, Lb0/a;->b:Lb0/D;

    invoke-virtual {p0, v0}, Lb0/D;->k(Lb0/C;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "useNode() called while inserting"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v1
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, La0/q;->z()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, La0/q;->b0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Z)Z
    .locals 2

    invoke-virtual {p0}, La0/q;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, La0/q;->b0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, La0/q;->z()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, La0/q;->b0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, La0/q;->i:La0/d0;

    const/4 v1, 0x0

    iput v1, p0, La0/q;->j:I

    iput v1, p0, La0/q;->k:I

    iput v1, p0, La0/q;->P:I

    iput-boolean v1, p0, La0/q;->q:Z

    iget-object v2, p0, La0/q;->L:Lb0/b;

    iput-boolean v1, v2, Lb0/b;->c:Z

    iget-object v3, v2, Lb0/b;->d:LB0/n;

    iput v1, v3, LB0/n;->b:I

    iput v1, v2, Lb0/b;->f:I

    iget-object v1, p0, La0/q;->D:La0/J0;

    iget-object v1, v1, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, La0/q;->n:[I

    iput-object v0, p0, La0/q;->o:LN/o;

    return-void
.end method

.method public final i(IIII)I
    .locals 5

    if-ne p1, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, La0/q;->F:La0/v0;

    iget-object v1, v0, La0/v0;->b:[I

    invoke-static {p1, v1}, La0/d;->j(I[I)Z

    move-result v1

    iget-object v2, v0, La0/v0;->b:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1, v2}, La0/v0;->j(I[I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/Enum;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    mul-int/lit8 v1, p1, 0x5

    aget v1, v2, v1

    const/16 v4, 0xcf

    if-ne v1, v4, :cond_5

    invoke-virtual {v0, p1, v2}, La0/v0;->b(I[I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v2, La0/l;->a:La0/V;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    :goto_0
    move v0, v1

    :goto_1
    const v1, 0x78cc281

    if-ne v0, v1, :cond_6

    move p4, v0

    goto :goto_3

    :cond_6
    iget-object v1, p0, La0/q;->F:La0/v0;

    iget-object v1, v1, La0/v0;->b:[I

    mul-int/lit8 v2, p1, 0x5

    add-int/lit8 v2, v2, 0x2

    aget v1, v1, v2

    if-ne v1, p3, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, La0/q;->A(I)I

    move-result v2

    invoke-virtual {p0, v1, v2, p3, p4}, La0/q;->i(IIII)I

    move-result p4

    :goto_2
    iget-object p0, p0, La0/q;->F:La0/v0;

    iget-object p0, p0, La0/v0;->b:[I

    invoke-static {p1, p0}, La0/d;->j(I[I)Z

    move-result p0

    if-eqz p0, :cond_8

    move p2, v3

    :cond_8
    const/4 p0, 0x3

    invoke-static {p4, p0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1, p0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, p2

    move p4, p0

    :goto_3
    return p4
.end method

.method public final j(La0/g0;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La0/q;->l()La0/e0;

    move-result-object p0

    invoke-static {p0, p1}, La0/d;->G(La0/e0;La0/g0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lsb/a;)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, La0/q;->q:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    iput-boolean v1, v0, La0/q;->q:Z

    iget-boolean v3, v0, La0/q;->O:Z

    if-eqz v3, :cond_a

    iget-object v3, v0, La0/q;->m:LB0/n;

    iget-object v4, v3, LB0/n;->a:[I

    iget v3, v3, LB0/n;->b:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    aget v3, v4, v3

    iget-object v4, v0, La0/q;->H:La0/y0;

    iget v6, v4, La0/y0;->u:I

    invoke-virtual {v4, v6}, La0/y0;->b(I)La0/c;

    move-result-object v4

    iget v6, v0, La0/q;->k:I

    add-int/2addr v6, v5

    iput v6, v0, La0/q;->k:I

    iget-object v0, v0, La0/q;->N:Lb0/c;

    sget-object v6, Lb0/m;->d:Lb0/m;

    iget-object v7, v0, Lb0/c;->b:Lb0/D;

    invoke-virtual {v7, v6}, Lb0/D;->l(Lb0/C;)V

    move-object/from16 v8, p1

    invoke-static {v7, v1, v8}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    invoke-static {v7, v1, v3}, LD/a;->n(Lb0/D;II)V

    invoke-static {v7, v5, v4}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v8, v7, Lb0/D;->h:I

    invoke-static {v7, v5}, Lb0/D;->e(Lb0/D;I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v8, v9, :cond_0

    iget v8, v7, Lb0/D;->i:I

    invoke-static {v7, v10}, Lb0/D;->e(Lb0/D;I)I

    move-result v9

    if-ne v8, v9, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    const-string v9, ")."

    const-string v11, " object arguments ("

    const-string v12, ") and "

    const-string v13, " int arguments ("

    const-string v14, ". Not all arguments were provided. Missing "

    const-string v15, "Error while pushing "

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    const-string v10, ", "

    if-nez v8, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v7, Lb0/D;->h:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {v6, v1}, Lb0/m;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v8, v1

    move-object/from16 p0, v9

    :goto_2
    const/4 v9, 0x2

    if-ge v1, v9, :cond_4

    shl-int v16, v5, v1

    iget v9, v7, Lb0/D;->i:I

    and-int v9, v16, v9

    if-eqz v9, :cond_3

    if-lez v3, :cond_2

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v6, v1}, Lb0/m;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3, v13, v0, v12}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, p0

    invoke-static {v2, v8, v11, v1, v6}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_5
    move-object v6, v9

    sget-object v7, Lb0/m;->e:Lb0/m;

    iget-object v0, v0, Lb0/c;->c:Lb0/D;

    invoke-virtual {v0, v7}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v0, v1, v3}, LD/a;->n(Lb0/D;II)V

    invoke-static {v0, v1, v4}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v3, v0, Lb0/D;->h:I

    invoke-static {v0, v5}, Lb0/D;->e(Lb0/D;I)I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, v0, Lb0/D;->i:I

    invoke-static {v0, v5}, Lb0/D;->e(Lb0/D;I)I

    move-result v4

    if-ne v3, v4, :cond_6

    return-void

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lb0/D;->h:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    invoke-virtual {v7, v1}, Lb0/m;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v0, Lb0/D;->i:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    if-lez v4, :cond_8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v7, v1}, Lb0/m;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v5

    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4, v13, v3, v12}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1, v11, v0, v6}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_a
    const/4 v0, 0x0

    const-string v1, "createNode() can only be called when inserting"

    invoke-static {v1}, La0/d;->t(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    const-string v1, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {v1}, La0/d;->t(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()La0/e0;
    .locals 9

    iget-object v0, p0, La0/q;->J:La0/e0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, La0/q;->F:La0/v0;

    iget v0, v0, La0/v0;->i:I

    iget-boolean v1, p0, La0/q;->O:Z

    sget-object v2, La0/d;->c:La0/b0;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    const/16 v4, 0xca

    if-eqz v1, :cond_4

    iget-boolean v1, p0, La0/q;->I:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, La0/q;->H:La0/y0;

    iget v1, v1, La0/y0;->u:I

    :goto_0
    if-lez v1, :cond_4

    iget-object v5, p0, La0/q;->H:La0/y0;

    iget-object v6, v5, La0/y0;->b:[I

    invoke-virtual {v5, v1}, La0/y0;->p(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    aget v5, v6, v5

    if-ne v5, v4, :cond_3

    iget-object v5, p0, La0/q;->H:La0/y0;

    invoke-virtual {v5, v1}, La0/y0;->p(I)I

    move-result v6

    iget-object v7, v5, La0/y0;->b:[I

    invoke-static {v6, v7}, La0/d;->j(I[I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v5, La0/y0;->c:[Ljava/lang/Object;

    iget-object v5, v5, La0/y0;->b:[I

    mul-int/lit8 v6, v6, 0x5

    add-int/lit8 v8, v6, 0x4

    aget v8, v5, v8

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    shr-int/lit8 v5, v5, 0x1e

    invoke-static {v5}, La0/d;->v(I)I

    move-result v5

    add-int/2addr v5, v8

    aget-object v5, v7, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, p0, La0/q;->H:La0/y0;

    invoke-virtual {v0, v1}, La0/y0;->p(I)I

    move-result v1

    iget-object v2, v0, La0/y0;->b:[I

    invoke-static {v1, v2}, La0/d;->i(I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, La0/y0;->c:[Ljava/lang/Object;

    iget-object v4, v0, La0/y0;->b:[I

    invoke-virtual {v0, v1, v4}, La0/y0;->f(I[I)I

    move-result v0

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget v1, v4, v1

    shr-int/lit8 v1, v1, 0x1d

    invoke-static {v1}, La0/d;->v(I)I

    move-result v1

    add-int/2addr v1, v0

    aget-object v0, v2, v1

    goto :goto_2

    :cond_2
    sget-object v0, La0/l;->a:La0/V;

    :goto_2
    invoke-static {v0, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La0/e0;

    iput-object v0, p0, La0/q;->J:La0/e0;

    goto :goto_6

    :cond_3
    iget-object v5, p0, La0/q;->H:La0/y0;

    iget-object v6, v5, La0/y0;->b:[I

    invoke-virtual {v5, v1, v6}, La0/y0;->x(I[I)I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, La0/q;->F:La0/v0;

    iget v1, v1, La0/v0;->c:I

    if-lez v1, :cond_8

    :goto_3
    if-lez v0, :cond_8

    iget-object v1, p0, La0/q;->F:La0/v0;

    mul-int/lit8 v5, v0, 0x5

    iget-object v6, v1, La0/v0;->b:[I

    aget v7, v6, v5

    if-ne v7, v4, :cond_7

    invoke-virtual {v1, v0, v6}, La0/v0;->j(I[I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, La0/q;->u:LX4/i;

    if-eqz v1, :cond_6

    iget-object v1, v1, LX4/i;->b:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/e0;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v1, p0, La0/q;->F:La0/v0;

    iget-object v2, v1, La0/v0;->b:[I

    invoke-virtual {v1, v0, v2}, La0/v0;->b(I[I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La0/e0;

    :goto_5
    iput-object v0, p0, La0/q;->J:La0/e0;

    goto :goto_6

    :cond_7
    iget-object v0, p0, La0/q;->F:La0/v0;

    iget-object v0, v0, La0/v0;->b:[I

    add-int/lit8 v5, v5, 0x2

    aget v0, v0, v5

    goto :goto_3

    :cond_8
    iget-object v0, p0, La0/q;->t:La0/e0;

    iput-object v0, p0, La0/q;->J:La0/e0;

    :goto_6
    return-object v0
.end method

.method public final m(LB3/c;Lsb/n;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-boolean v2, v1, La0/q;->E:Z

    const/4 v3, 0x0

    if-nez v2, :cond_9

    const-string v2, "Compose:recompose"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v2

    invoke-virtual {v2}, Lk0/h;->d()I

    move-result v2

    iput v2, v1, La0/q;->A:I

    iput-object v3, v1, La0/q;->u:LX4/i;

    move-object/from16 v2, p1

    iget-object v2, v2, LB3/c;->a:Ljava/lang/Object;

    check-cast v2, LN/s;

    iget-object v4, v2, LN/s;->b:[Ljava/lang/Object;

    iget-object v5, v2, LN/s;->c:[Ljava/lang/Object;

    iget-object v2, v2, LN/s;->a:[J

    array-length v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    iget-object v8, v1, La0/q;->r:Ljava/util/ArrayList;

    if-ltz v6, :cond_5

    const/4 v10, 0x0

    :goto_0
    :try_start_1
    aget-wide v11, v2, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    sub-int v13, v10, v6

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_3

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_2

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v3, v4, v16

    aget-object v7, v5, v16

    const-string v9, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v3, v9}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v3

    check-cast v9, La0/i0;

    move-object v9, v3

    check-cast v9, La0/i0;

    iget-object v9, v9, La0/i0;->c:La0/c;

    if-eqz v9, :cond_1

    iget v9, v9, La0/c;->a:I

    check-cast v3, La0/i0;

    sget-object v14, La0/V;->e:La0/V;

    if-ne v7, v14, :cond_0

    const/4 v7, 0x0

    :cond_0
    new-instance v14, La0/N;

    invoke-direct {v14, v3, v9, v7}, La0/N;-><init>(La0/i0;ILjava/lang/Object;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_2
    const/16 v3, 0x8

    goto :goto_3

    :cond_2
    move v3, v14

    :goto_3
    shr-long/2addr v11, v3

    add-int/lit8 v15, v15, 0x1

    move v14, v3

    const/4 v3, 0x0

    const/4 v7, 0x2

    goto :goto_1

    :cond_3
    move v3, v14

    if-ne v13, v3, :cond_5

    :cond_4
    if-eq v10, v6, :cond_5

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    goto :goto_0

    :cond_5
    sget-object v2, La0/d;->f:LB0/r;

    invoke-static {v8, v2}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    iput v2, v1, La0/q;->j:I

    const/4 v2, 0x1

    iput-boolean v2, v1, La0/q;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, La0/q;->V()V

    invoke-virtual/range {p0 .. p0}, La0/q;->z()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, La0/q;->b0(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_7

    :cond_6
    :goto_4
    iget-object v4, v1, La0/q;->C:La0/p;

    invoke-static {}, La0/d;->y()Lc0/d;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5, v4}, Lc0/d;->c(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sget-object v4, La0/d;->a:La0/b0;

    const/16 v6, 0xc8

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v1, v6, v4}, La0/q;->N(ILa0/b0;)V

    invoke-static {v1, v0}, La0/d;->C(La0/q;Lsb/n;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, La0/q;->p(Z)V

    goto :goto_5

    :cond_7
    iget-boolean v0, v1, La0/q;->v:Z

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    sget-object v0, La0/l;->a:La0/V;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1, v6, v4}, La0/q;->N(ILa0/b0;)V

    const/4 v0, 0x2

    invoke-static {v0, v3}, Ltb/z;->e(ILjava/lang/Object;)V

    check-cast v3, Lsb/n;

    invoke-static {v1, v3}, La0/d;->C(La0/q;Lsb/n;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, La0/q;->p(Z)V

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_8
    invoke-virtual/range {p0 .. p0}, La0/q;->I()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_5
    :try_start_5
    iget v0, v5, Lc0/d;->c:I

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lc0/d;->n(I)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, La0/q;->s()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, v1, La0/q;->E:Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, La0/q;->H:La0/y0;

    iget-boolean v0, v0, La0/y0;->v:Z

    invoke-static {v0}, La0/d;->K(Z)V

    invoke-virtual/range {p0 .. p0}, La0/q;->u()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_6
    :try_start_7
    iget v3, v5, Lc0/d;->c:I

    sub-int/2addr v3, v2

    invoke-virtual {v5, v3}, Lc0/d;->n(I)Ljava/lang/Object;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    :try_start_8
    iput-boolean v2, v1, La0/q;->E:Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, La0/q;->a()V

    iget-object v2, v1, La0/q;->H:La0/y0;

    iget-boolean v2, v2, La0/y0;->v:Z

    invoke-static {v2}, La0/d;->K(Z)V

    invoke-virtual/range {p0 .. p0}, La0/q;->u()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_9
    const-string v0, "Reentrant composition is not supported"

    invoke-static {v0}, La0/d;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final n(II)V
    .locals 2

    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    iget-object v0, p0, La0/q;->F:La0/v0;

    iget-object v0, v0, La0/v0;->b:[I

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, La0/q;->n(II)V

    iget-object p2, p0, La0/q;->F:La0/v0;

    iget-object p2, p2, La0/v0;->b:[I

    invoke-static {p1, p2}, La0/d;->k(I[I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, La0/q;->F:La0/v0;

    invoke-virtual {p2, p1}, La0/v0;->i(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, La0/q;->L:Lb0/b;

    invoke-virtual {p0}, Lb0/b;->c()V

    iget-object p0, p0, Lb0/b;->h:La0/J0;

    iget-object p0, p0, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    iget v0, p0, La0/q;->y:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, La0/q;->x:Z

    return-void
.end method

.method public final p(Z)V
    .locals 42

    move-object/from16 v0, p0

    iget-object v1, v0, La0/q;->m:LB0/n;

    iget-object v2, v1, LB0/n;->a:[I

    iget v3, v1, LB0/n;->b:I

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aget v2, v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-boolean v5, v0, La0/q;->O:Z

    sget-object v6, La0/l;->a:La0/V;

    const/4 v7, 0x3

    const/16 v9, 0xcf

    if-eqz v5, :cond_5

    iget-object v5, v0, La0/q;->H:La0/y0;

    iget v10, v5, La0/y0;->u:I

    iget-object v11, v5, La0/y0;->b:[I

    invoke-virtual {v5, v10}, La0/y0;->p(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    aget v5, v11, v5

    iget-object v11, v0, La0/q;->H:La0/y0;

    invoke-virtual {v11, v10}, La0/y0;->p(I)I

    move-result v12

    iget-object v13, v11, La0/y0;->b:[I

    invoke-static {v12, v13}, La0/d;->j(I[I)Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v13, v11, La0/y0;->c:[Ljava/lang/Object;

    iget-object v11, v11, La0/y0;->b:[I

    mul-int/lit8 v12, v12, 0x5

    add-int/lit8 v14, v12, 0x4

    aget v14, v11, v14

    add-int/2addr v12, v3

    aget v11, v11, v12

    shr-int/lit8 v11, v11, 0x1e

    invoke-static {v11}, La0/d;->v(I)I

    move-result v11

    add-int/2addr v11, v14

    aget-object v11, v13, v11

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    iget-object v12, v0, La0/q;->H:La0/y0;

    invoke-virtual {v12, v10}, La0/y0;->p(I)I

    move-result v10

    iget-object v13, v12, La0/y0;->b:[I

    invoke-static {v10, v13}, La0/d;->i(I[I)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v12, La0/y0;->c:[Ljava/lang/Object;

    iget-object v14, v12, La0/y0;->b:[I

    invoke-virtual {v12, v10, v14}, La0/y0;->f(I[I)I

    move-result v12

    mul-int/lit8 v10, v10, 0x5

    add-int/2addr v10, v3

    aget v10, v14, v10

    shr-int/lit8 v10, v10, 0x1d

    invoke-static {v10}, La0/d;->v(I)I

    move-result v10

    add-int/2addr v10, v12

    aget-object v10, v13, v10

    goto :goto_1

    :cond_1
    move-object v10, v6

    :goto_1
    if-nez v11, :cond_3

    if-eqz v10, :cond_2

    if-ne v5, v9, :cond_2

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget v6, v0, La0/q;->P:I

    xor-int/2addr v2, v6

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Integer;->hashCode(I)I

    move-result v5

    xor-int/2addr v2, v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, La0/q;->P:I

    goto/16 :goto_6

    :cond_2
    iget v6, v0, La0/q;->P:I

    xor-int/2addr v2, v6

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Integer;->hashCode(I)I

    move-result v5

    xor-int/2addr v2, v5

    :goto_2
    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, La0/q;->P:I

    goto/16 :goto_6

    :cond_3
    instance-of v2, v11, Ljava/lang/Enum;

    if-eqz v2, :cond_4

    check-cast v11, Ljava/lang/Enum;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_3
    iget v5, v0, La0/q;->P:I

    invoke-static {v5, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    xor-int/2addr v2, v5

    goto :goto_2

    :cond_4
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_5
    iget-object v5, v0, La0/q;->F:La0/v0;

    iget v10, v5, La0/v0;->i:I

    mul-int/lit8 v11, v10, 0x5

    iget-object v12, v5, La0/v0;->b:[I

    aget v11, v12, v11

    invoke-virtual {v5, v10, v12}, La0/v0;->j(I[I)Ljava/lang/Object;

    move-result-object v5

    iget-object v12, v0, La0/q;->F:La0/v0;

    iget-object v13, v12, La0/v0;->b:[I

    invoke-virtual {v12, v10, v13}, La0/v0;->b(I[I)Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_7

    if-eqz v10, :cond_6

    if-ne v11, v9, :cond_6

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget v6, v0, La0/q;->P:I

    xor-int/2addr v2, v6

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Integer;->hashCode(I)I

    move-result v5

    xor-int/2addr v2, v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, La0/q;->P:I

    goto :goto_6

    :cond_6
    iget v5, v0, La0/q;->P:I

    xor-int/2addr v2, v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v11}, Ljava/lang/Integer;->hashCode(I)I

    move-result v5

    xor-int/2addr v2, v5

    :goto_4
    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, La0/q;->P:I

    goto :goto_6

    :cond_7
    instance-of v2, v5, Ljava/lang/Enum;

    if-eqz v2, :cond_8

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_5
    iget v5, v0, La0/q;->P:I

    invoke-static {v5, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    xor-int/2addr v2, v5

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :goto_6
    iget v2, v0, La0/q;->k:I

    iget-object v5, v0, La0/q;->i:La0/d0;

    iget-object v6, v0, La0/q;->r:Ljava/util/ArrayList;

    iget-object v11, v0, La0/q;->L:Lb0/b;

    if-eqz v5, :cond_27

    iget-object v12, v5, La0/d0;->a:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_27

    iget-object v13, v5, La0/d0;->d:Ljava/util/ArrayList;

    new-instance v14, Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v15, :cond_9

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    :goto_8
    if-ge v9, v15, :cond_25

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    check-cast v7, La0/Q;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    iget-object v10, v5, La0/d0;->e:LN/q;

    move-object/from16 v23, v14

    iget v14, v5, La0/d0;->b:I

    if-nez v21, :cond_b

    move/from16 v21, v15

    iget v15, v7, La0/Q;->c:I

    invoke-virtual {v10, v15}, LN/q;->b(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La0/K;

    if-eqz v10, :cond_a

    iget v10, v10, La0/K;->b:I

    goto :goto_9

    :cond_a
    const/4 v10, -0x1

    :goto_9
    add-int/2addr v10, v14

    iget v14, v7, La0/Q;->d:I

    invoke-virtual {v11, v10, v14}, Lb0/b;->e(II)V

    iget v7, v7, La0/Q;->c:I

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, La0/d0;->a(II)Z

    iget v10, v11, Lb0/b;->f:I

    iget-object v14, v11, Lb0/b;->a:La0/q;

    iget-object v14, v14, La0/q;->F:La0/v0;

    iget v14, v14, La0/v0;->g:I

    sub-int v14, v7, v14

    add-int/2addr v14, v10

    iput v14, v11, Lb0/b;->f:I

    iget-object v10, v0, La0/q;->F:La0/v0;

    invoke-virtual {v10, v7}, La0/v0;->k(I)V

    invoke-virtual/range {p0 .. p0}, La0/q;->D()V

    iget-object v10, v0, La0/q;->F:La0/v0;

    invoke-virtual {v10}, La0/v0;->l()I

    iget-object v10, v0, La0/q;->F:La0/v0;

    iget-object v10, v10, La0/v0;->b:[I

    mul-int/lit8 v14, v7, 0x5

    const/4 v15, 0x3

    add-int/2addr v14, v15

    aget v10, v10, v14

    add-int/2addr v10, v7

    invoke-static {v6, v7, v10}, La0/d;->o(Ljava/util/ArrayList;II)V

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move v7, v15

    move/from16 v15, v21

    :goto_b
    move-object/from16 v14, v23

    goto :goto_8

    :cond_b
    move/from16 v21, v15

    const/4 v15, 0x3

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    goto :goto_a

    :cond_c
    if-ge v4, v8, :cond_24

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v15, v22

    check-cast v15, La0/Q;

    if-eq v15, v7, :cond_22

    iget v7, v15, La0/Q;->c:I

    invoke-virtual {v10, v7}, LN/q;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La0/K;

    if-eqz v7, :cond_d

    iget v7, v7, La0/K;->b:I

    goto :goto_c

    :cond_d
    const/4 v7, -0x1

    :goto_c
    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v3

    move/from16 v3, v20

    if-eq v7, v3, :cond_20

    move-object/from16 v20, v5

    iget v5, v15, La0/Q;->c:I

    invoke-virtual {v10, v5}, LN/q;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La0/K;

    if-eqz v5, :cond_e

    iget v5, v5, La0/K;->c:I

    :goto_d
    move/from16 v25, v8

    goto :goto_e

    :cond_e
    iget v5, v15, La0/Q;->d:I

    goto :goto_d

    :goto_e
    add-int v8, v7, v14

    add-int/2addr v14, v3

    if-lez v5, :cond_11

    move-object/from16 v26, v13

    iget v13, v11, Lb0/b;->l:I

    if-lez v13, :cond_f

    move-object/from16 v27, v6

    iget v6, v11, Lb0/b;->j:I

    move-object/from16 v28, v1

    sub-int v1, v8, v13

    if-ne v6, v1, :cond_10

    iget v1, v11, Lb0/b;->k:I

    sub-int v6, v14, v13

    if-ne v1, v6, :cond_10

    add-int/2addr v13, v5

    iput v13, v11, Lb0/b;->l:I

    goto :goto_f

    :cond_f
    move-object/from16 v28, v1

    move-object/from16 v27, v6

    :cond_10
    invoke-virtual {v11}, Lb0/b;->c()V

    iput v8, v11, Lb0/b;->j:I

    iput v14, v11, Lb0/b;->k:I

    iput v5, v11, Lb0/b;->l:I

    goto :goto_f

    :cond_11
    move-object/from16 v28, v1

    move-object/from16 v27, v6

    move-object/from16 v26, v13

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_f
    const-wide/16 v29, 0xff

    const/4 v1, 0x7

    const-wide v31, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-le v7, v3, :cond_19

    iget-object v8, v10, LN/q;->c:[Ljava/lang/Object;

    iget-object v13, v10, LN/q;->a:[J

    array-length v14, v13

    const/16 v19, 0x2

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_17

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    const/4 v6, 0x0

    :goto_10
    aget-wide v11, v13, v6

    move/from16 v38, v9

    move-object/from16 v37, v10

    not-long v9, v11

    shl-long/2addr v9, v1

    and-long/2addr v9, v11

    and-long v9, v9, v31

    cmp-long v9, v9, v31

    if-eqz v9, :cond_16

    sub-int v9, v6, v14

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v9, :cond_15

    and-long v39, v11, v29

    const-wide/16 v33, 0x80

    cmp-long v39, v39, v33

    if-gez v39, :cond_14

    shl-int/lit8 v39, v6, 0x3

    add-int v39, v39, v10

    aget-object v39, v8, v39

    move-object/from16 v1, v39

    check-cast v1, La0/K;

    move-object/from16 v39, v8

    iget v8, v1, La0/K;->b:I

    move-object/from16 v41, v13

    if-gt v7, v8, :cond_12

    add-int v13, v7, v5

    if-ge v8, v13, :cond_12

    sub-int/2addr v8, v7

    add-int/2addr v8, v3

    iput v8, v1, La0/K;->b:I

    goto :goto_12

    :cond_12
    if-gt v3, v8, :cond_13

    if-ge v8, v7, :cond_13

    add-int/2addr v8, v5

    iput v8, v1, La0/K;->b:I

    :cond_13
    :goto_12
    const/16 v1, 0x8

    goto :goto_13

    :cond_14
    move-object/from16 v39, v8

    move-object/from16 v41, v13

    goto :goto_12

    :goto_13
    shr-long/2addr v11, v1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v39

    move-object/from16 v13, v41

    const/4 v1, 0x7

    goto :goto_11

    :cond_15
    move-object/from16 v39, v8

    move-object/from16 v41, v13

    const/16 v1, 0x8

    if-ne v9, v1, :cond_18

    goto :goto_14

    :cond_16
    move-object/from16 v39, v8

    move-object/from16 v41, v13

    :goto_14
    if-eq v6, v14, :cond_18

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, v37

    move/from16 v9, v38

    move-object/from16 v8, v39

    move-object/from16 v13, v41

    const/4 v1, 0x7

    goto :goto_10

    :cond_17
    move/from16 v38, v9

    move-object/from16 v37, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    :cond_18
    move/from16 v41, v2

    move-object/from16 v1, v37

    goto/16 :goto_1a

    :cond_19
    move/from16 v38, v9

    move-object/from16 v37, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    if-le v3, v7, :cond_18

    move-object/from16 v1, v37

    iget-object v6, v1, LN/q;->c:[Ljava/lang/Object;

    iget-object v8, v1, LN/q;->a:[J

    array-length v9, v8

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    if-ltz v9, :cond_1f

    const/4 v10, 0x0

    :goto_15
    aget-wide v11, v8, v10

    not-long v13, v11

    const/16 v37, 0x7

    shl-long v13, v13, v37

    and-long/2addr v13, v11

    and-long v13, v13, v31

    cmp-long v13, v13, v31

    if-eqz v13, :cond_1e

    sub-int v13, v10, v9

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_16
    if-ge v14, v13, :cond_1d

    and-long v39, v11, v29

    const-wide/16 v33, 0x80

    cmp-long v39, v39, v33

    if-gez v39, :cond_1c

    shl-int/lit8 v39, v10, 0x3

    add-int v39, v39, v14

    aget-object v39, v6, v39

    move-object/from16 v40, v6

    move-object/from16 v6, v39

    check-cast v6, La0/K;

    move-object/from16 v39, v8

    iget v8, v6, La0/K;->b:I

    move/from16 v41, v2

    if-gt v7, v8, :cond_1a

    add-int v2, v7, v5

    if-ge v8, v2, :cond_1a

    sub-int/2addr v8, v7

    add-int/2addr v8, v3

    iput v8, v6, La0/K;->b:I

    goto :goto_17

    :cond_1a
    add-int/lit8 v2, v7, 0x1

    if-gt v2, v8, :cond_1b

    if-ge v8, v3, :cond_1b

    sub-int/2addr v8, v5

    iput v8, v6, La0/K;->b:I

    :cond_1b
    :goto_17
    const/16 v2, 0x8

    goto :goto_18

    :cond_1c
    move/from16 v41, v2

    move-object/from16 v40, v6

    move-object/from16 v39, v8

    goto :goto_17

    :goto_18
    shr-long/2addr v11, v2

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v39

    move-object/from16 v6, v40

    move/from16 v2, v41

    goto :goto_16

    :cond_1d
    move/from16 v41, v2

    move-object/from16 v40, v6

    move-object/from16 v39, v8

    const/16 v2, 0x8

    const-wide/16 v33, 0x80

    if-ne v13, v2, :cond_21

    goto :goto_19

    :cond_1e
    move/from16 v41, v2

    move-object/from16 v40, v6

    move-object/from16 v39, v8

    const/16 v2, 0x8

    const-wide/16 v33, 0x80

    :goto_19
    if-eq v10, v9, :cond_21

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v39

    move-object/from16 v6, v40

    move/from16 v2, v41

    goto :goto_15

    :cond_1f
    move/from16 v41, v2

    goto :goto_1a

    :cond_20
    move-object/from16 v28, v1

    move/from16 v41, v2

    move-object/from16 v20, v5

    move-object/from16 v27, v6

    move/from16 v25, v8

    move/from16 v38, v9

    move-object v1, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move-object/from16 v26, v13

    :cond_21
    :goto_1a
    move/from16 v9, v38

    goto :goto_1b

    :cond_22
    move-object/from16 v28, v1

    move/from16 v41, v2

    move-object/from16 v22, v3

    move-object/from16 v27, v6

    move/from16 v25, v8

    move/from16 v38, v9

    move-object v1, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move-object/from16 v26, v13

    move/from16 v3, v20

    move-object/from16 v20, v5

    add-int/lit8 v9, v38, 0x1

    :goto_1b
    add-int/lit8 v4, v4, 0x1

    iget v2, v15, La0/Q;->c:I

    invoke-virtual {v1, v2}, LN/q;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/K;

    if-eqz v1, :cond_23

    iget v1, v1, La0/K;->c:I

    goto :goto_1c

    :cond_23
    iget v1, v15, La0/Q;->d:I

    :goto_1c
    add-int/2addr v1, v3

    move-object/from16 v5, v20

    move/from16 v15, v21

    move-object/from16 v3, v22

    move-object/from16 v14, v23

    move/from16 v8, v25

    move-object/from16 v13, v26

    move-object/from16 v6, v27

    move-object/from16 v11, v35

    move-object/from16 v12, v36

    move/from16 v2, v41

    const/4 v7, 0x3

    move/from16 v20, v1

    move-object/from16 v1, v28

    goto/16 :goto_8

    :cond_24
    move-object/from16 v22, v3

    move/from16 v38, v9

    move/from16 v3, v20

    move v7, v15

    move/from16 v15, v21

    move-object/from16 v3, v22

    goto/16 :goto_b

    :cond_25
    move-object/from16 v28, v1

    move/from16 v41, v2

    move-object/from16 v27, v6

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    invoke-virtual/range {v35 .. v35}, Lb0/b;->c()V

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    iget-object v1, v0, La0/q;->F:La0/v0;

    iget v2, v1, La0/v0;->h:I

    move-object/from16 v3, v35

    iget v4, v3, Lb0/b;->f:I

    iget-object v5, v3, Lb0/b;->a:La0/q;

    iget-object v5, v5, La0/q;->F:La0/v0;

    iget v5, v5, La0/v0;->g:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v4

    iput v2, v3, Lb0/b;->f:I

    invoke-virtual {v1}, La0/v0;->m()V

    goto :goto_1d

    :cond_26
    move-object/from16 v3, v35

    goto :goto_1d

    :cond_27
    move-object/from16 v28, v1

    move/from16 v41, v2

    move-object/from16 v27, v6

    move-object v3, v11

    :goto_1d
    iget v1, v0, La0/q;->j:I

    :goto_1e
    iget-object v2, v0, La0/q;->F:La0/v0;

    iget v4, v2, La0/v0;->k:I

    if-lez v4, :cond_28

    goto :goto_1f

    :cond_28
    iget v4, v2, La0/v0;->g:I

    iget v2, v2, La0/v0;->h:I

    if-ne v4, v2, :cond_72

    :goto_1f
    iget-boolean v1, v0, La0/q;->O:Z

    const-string v4, ")."

    const-string v5, " object arguments ("

    const-string v6, ") and "

    const-string v7, " int arguments ("

    const-string v8, ". Not all arguments were provided. Missing "

    const-string v9, "Error while pushing "

    const-string v10, "StringBuilder().apply(builderAction).toString()"

    const-string v11, ", "

    if-eqz v1, :cond_56

    if-eqz p1, :cond_2d

    iget-object v12, v0, La0/q;->N:Lb0/c;

    iget-object v13, v12, Lb0/c;->c:Lb0/D;

    invoke-virtual {v13}, Lb0/D;->i()Z

    move-result v14

    if-eqz v14, :cond_2c

    invoke-virtual {v13}, Lb0/D;->h()Z

    move-result v14

    if-nez v14, :cond_2b

    iget-object v14, v13, Lb0/D;->b:[Lb0/C;

    iget v15, v13, Lb0/D;->c:I

    const/16 v18, -0x1

    add-int/lit8 v15, v15, -0x1

    iput v15, v13, Lb0/D;->c:I

    aget-object v14, v14, v15

    invoke-static {v14}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v15, v13, Lb0/D;->b:[Lb0/C;

    iget v2, v13, Lb0/D;->c:I

    const/16 v17, 0x0

    aput-object v17, v15, v2

    iget-object v2, v12, Lb0/c;->b:Lb0/D;

    invoke-virtual {v2, v14}, Lb0/D;->l(Lb0/C;)V

    iget v12, v13, Lb0/D;->g:I

    iget v15, v2, Lb0/D;->g:I

    move/from16 v21, v1

    move-object/from16 v22, v4

    const/4 v1, 0x0

    :goto_20
    iget v4, v14, Lb0/C;->b:I

    if-ge v1, v4, :cond_29

    const/16 v18, -0x1

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v12, v12, -0x1

    iget-object v4, v2, Lb0/D;->f:[Ljava/lang/Object;

    move-object/from16 v23, v5

    iget-object v5, v13, Lb0/D;->f:[Ljava/lang/Object;

    aget-object v24, v5, v12

    aput-object v24, v4, v15

    const/4 v4, 0x0

    aput-object v4, v5, v12

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v23

    goto :goto_20

    :cond_29
    move-object/from16 v23, v5

    iget v1, v13, Lb0/D;->e:I

    iget v5, v2, Lb0/D;->e:I

    const/4 v12, 0x0

    :goto_21
    iget v15, v14, Lb0/C;->a:I

    if-ge v12, v15, :cond_2a

    const/16 v18, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    iget-object v15, v2, Lb0/D;->d:[I

    move-object/from16 v24, v2

    iget-object v2, v13, Lb0/D;->d:[I

    aget v25, v2, v1

    aput v25, v15, v5

    const/4 v15, 0x0

    aput v15, v2, v1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v24

    goto :goto_21

    :cond_2a
    iget v1, v13, Lb0/D;->g:I

    sub-int/2addr v1, v4

    iput v1, v13, Lb0/D;->g:I

    iget v1, v13, Lb0/D;->e:I

    sub-int/2addr v1, v15

    iput v1, v13, Lb0/D;->e:I

    const/4 v2, 0x1

    goto :goto_22

    :cond_2b
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot pop(), because the stack is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const-string v0, "Cannot end node insertion, there are no pending operations that can be realized."

    invoke-static {v0}, La0/d;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2d
    move/from16 v21, v1

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v2, v41

    :goto_22
    iget-object v1, v0, La0/q;->F:La0/v0;

    iget v4, v1, La0/v0;->k:I

    if-lez v4, :cond_55

    const/16 v18, -0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, La0/v0;->k:I

    iget-object v1, v0, La0/q;->H:La0/y0;

    iget v4, v1, La0/y0;->u:I

    invoke-virtual {v1}, La0/y0;->i()V

    iget-object v1, v0, La0/q;->F:La0/v0;

    iget v1, v1, La0/v0;->k:I

    if-lez v1, :cond_2e

    move-object v5, v0

    move v0, v2

    goto/16 :goto_31

    :cond_2e
    const/4 v1, -0x2

    rsub-int/lit8 v4, v4, -0x2

    iget-object v5, v0, La0/q;->H:La0/y0;

    invoke-virtual {v5}, La0/y0;->j()V

    iget-object v5, v0, La0/q;->H:La0/y0;

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, La0/y0;->e(Z)V

    iget-object v5, v0, La0/q;->M:La0/c;

    iget-object v12, v0, La0/q;->N:Lb0/c;

    iget-object v12, v12, Lb0/c;->b:Lb0/D;

    invoke-virtual {v12}, Lb0/D;->h()Z

    move-result v12

    if-eqz v12, :cond_41

    iget-object v12, v0, La0/q;->G:La0/w0;

    invoke-virtual {v3}, Lb0/b;->b()V

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lb0/b;->d(Z)V

    iget-object v13, v3, Lb0/b;->a:La0/q;

    iget-object v13, v13, La0/q;->F:La0/v0;

    iget v14, v13, La0/v0;->c:I

    if-lez v14, :cond_39

    iget v14, v13, La0/v0;->i:I

    iget-object v15, v3, Lb0/b;->d:LB0/n;

    iget v1, v15, LB0/n;->b:I

    move/from16 v24, v2

    if-lez v1, :cond_2f

    iget-object v2, v15, LB0/n;->a:[I

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    aget v2, v2, v1

    goto :goto_23

    :cond_2f
    const/4 v2, -0x2

    :goto_23
    if-eq v2, v14, :cond_38

    iget-boolean v1, v3, Lb0/b;->c:Z

    if-nez v1, :cond_30

    iget-boolean v1, v3, Lb0/b;->e:Z

    if-eqz v1, :cond_30

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lb0/b;->d(Z)V

    iget-object v1, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lb0/l;->c:Lb0/l;

    iget-object v1, v1, Lb0/a;->b:Lb0/D;

    invoke-virtual {v1, v2}, Lb0/D;->k(Lb0/C;)V

    const/4 v1, 0x1

    iput-boolean v1, v3, Lb0/b;->c:Z

    :cond_30
    if-lez v14, :cond_38

    invoke-virtual {v13, v14}, La0/v0;->a(I)La0/c;

    move-result-object v1

    invoke-virtual {v15, v14}, LB0/n;->b(I)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lb0/b;->d(Z)V

    iget-object v13, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lb0/k;->c:Lb0/k;

    iget-object v13, v13, Lb0/a;->b:Lb0/D;

    invoke-virtual {v13, v14}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v13, v2, v1}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v1, v13, Lb0/D;->h:I

    iget v2, v14, Lb0/C;->a:I

    invoke-static {v13, v2}, Lb0/D;->e(Lb0/D;I)I

    move-result v15

    move/from16 p1, v4

    iget v4, v14, Lb0/C;->b:I

    if-ne v1, v15, :cond_31

    iget v1, v13, Lb0/D;->i:I

    invoke-static {v13, v4}, Lb0/D;->e(Lb0/D;I)I

    move-result v15

    if-ne v1, v15, :cond_31

    const/4 v1, 0x1

    iput-boolean v1, v3, Lb0/b;->c:Z

    :goto_24
    move-object/from16 v4, v22

    move-object/from16 v13, v23

    goto/16 :goto_28

    :cond_31
    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_25
    if-ge v3, v2, :cond_34

    shl-int v12, v1, v3

    iget v1, v13, Lb0/D;->h:I

    and-int/2addr v1, v12

    if-eqz v1, :cond_33

    if-lez v5, :cond_32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {v14, v3}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_33
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x1

    goto :goto_25

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_26
    if-ge v2, v4, :cond_37

    const/4 v12, 0x1

    shl-int v15, v12, v2

    iget v12, v13, Lb0/D;->i:I

    and-int/2addr v12, v15

    if-eqz v12, :cond_36

    if-lez v5, :cond_35

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    invoke-virtual {v14, v2}, Lb0/k;->c(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5, v7, v0, v6}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v22

    move-object/from16 v13, v23

    invoke-static {v2, v3, v13, v1, v4}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_38
    :goto_27
    move/from16 p1, v4

    goto :goto_24

    :cond_39
    move/from16 v24, v2

    goto :goto_27

    :goto_28
    invoke-virtual {v3}, Lb0/b;->c()V

    iget-object v1, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lb0/n;->c:Lb0/n;

    iget-object v1, v1, Lb0/a;->b:Lb0/D;

    invoke-virtual {v1, v2}, Lb0/D;->l(Lb0/C;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v5}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-static {v1, v3, v12}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v3, v1, Lb0/D;->h:I

    iget v5, v2, Lb0/C;->a:I

    invoke-static {v1, v5}, Lb0/D;->e(Lb0/D;I)I

    move-result v12

    iget v14, v2, Lb0/C;->b:I

    if-ne v3, v12, :cond_3a

    iget v3, v1, Lb0/D;->i:I

    invoke-static {v1, v14}, Lb0/D;->e(Lb0/D;I)I

    move-result v12

    if-ne v3, v12, :cond_3a

    move-object v5, v0

    :goto_29
    const/4 v0, 0x0

    goto/16 :goto_30

    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_2a
    if-ge v3, v5, :cond_3d

    const/4 v15, 0x1

    shl-int v18, v15, v3

    iget v15, v1, Lb0/D;->h:I

    and-int v15, v18, v15

    if-eqz v15, :cond_3c

    if-lez v12, :cond_3b

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    invoke-virtual {v2, v3}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_2b
    if-ge v5, v14, :cond_40

    const/16 v16, 0x1

    shl-int v18, v16, v5

    move/from16 v19, v14

    iget v14, v1, Lb0/D;->i:I

    and-int v14, v18, v14

    if-eqz v14, :cond_3f

    if-lez v12, :cond_3e

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    invoke-virtual {v2, v5}, Lb0/n;->c(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_3f
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v19

    goto :goto_2b

    :cond_40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v12, v7, v0, v6}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v15, v13, v1, v4}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_41
    move/from16 v24, v2

    move/from16 p1, v4

    move-object/from16 v4, v22

    move-object/from16 v13, v23

    iget-object v1, v0, La0/q;->G:La0/w0;

    iget-object v2, v0, La0/q;->N:Lb0/c;

    invoke-virtual {v3}, Lb0/b;->b()V

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lb0/b;->d(Z)V

    iget-object v12, v3, Lb0/b;->a:La0/q;

    iget-object v12, v12, La0/q;->F:La0/v0;

    iget v14, v12, La0/v0;->c:I

    if-lez v14, :cond_4c

    iget v14, v12, La0/v0;->i:I

    iget-object v15, v3, Lb0/b;->d:LB0/n;

    iget v0, v15, LB0/n;->b:I

    move-object/from16 v18, v2

    if-lez v0, :cond_42

    iget-object v2, v15, LB0/n;->a:[I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    aget v2, v2, v0

    goto :goto_2c

    :cond_42
    const/4 v2, -0x2

    :goto_2c
    if-eq v2, v14, :cond_4b

    iget-boolean v0, v3, Lb0/b;->c:Z

    if-nez v0, :cond_43

    iget-boolean v0, v3, Lb0/b;->e:Z

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lb0/b;->d(Z)V

    iget-object v0, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lb0/l;->c:Lb0/l;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0, v2}, Lb0/D;->k(Lb0/C;)V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lb0/b;->c:Z

    :cond_43
    if-lez v14, :cond_4b

    invoke-virtual {v12, v14}, La0/v0;->a(I)La0/c;

    move-result-object v0

    invoke-virtual {v15, v14}, LB0/n;->b(I)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lb0/b;->d(Z)V

    iget-object v12, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lb0/k;->c:Lb0/k;

    iget-object v12, v12, Lb0/a;->b:Lb0/D;

    invoke-virtual {v12, v14}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v12, v2, v0}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v0, v12, Lb0/D;->h:I

    iget v2, v14, Lb0/C;->a:I

    invoke-static {v12, v2}, Lb0/D;->e(Lb0/D;I)I

    move-result v15

    move-object/from16 v22, v1

    iget v1, v14, Lb0/C;->b:I

    if-ne v0, v15, :cond_44

    iget v0, v12, Lb0/D;->i:I

    invoke-static {v12, v1}, Lb0/D;->e(Lb0/D;I)I

    move-result v15

    if-ne v0, v15, :cond_44

    const/4 v0, 0x1

    iput-boolean v0, v3, Lb0/b;->c:Z

    goto/16 :goto_2f

    :cond_44
    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_2d
    if-ge v5, v2, :cond_47

    shl-int v18, v0, v5

    iget v0, v12, Lb0/D;->h:I

    and-int v0, v18, v0

    if-eqz v0, :cond_46

    if-lez v15, :cond_45

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    invoke-virtual {v14, v5}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_46
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x1

    goto :goto_2d

    :cond_47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2e
    if-ge v3, v1, :cond_4a

    const/16 v16, 0x1

    shl-int v18, v16, v3

    move/from16 v20, v1

    iget v1, v12, Lb0/D;->i:I

    and-int v1, v18, v1

    if-eqz v1, :cond_49

    if-lez v15, :cond_48

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    invoke-virtual {v14, v3}, Lb0/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_49
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v20

    goto :goto_2e

    :cond_4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v15, v7, v0, v6}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5, v13, v1, v4}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_4b
    move-object/from16 v22, v1

    goto :goto_2f

    :cond_4c
    move-object/from16 v22, v1

    move-object/from16 v18, v2

    :goto_2f
    invoke-virtual {v3}, Lb0/b;->c()V

    iget-object v0, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lb0/o;->c:Lb0/o;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0, v1}, Lb0/D;->l(Lb0/C;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v5}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    move-object/from16 v3, v22

    const/4 v2, 0x1

    invoke-static {v0, v2, v3}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    move-object/from16 v3, v18

    const/4 v2, 0x2

    invoke-static {v0, v2, v3}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v2, v0, Lb0/D;->h:I

    iget v3, v1, Lb0/C;->a:I

    invoke-static {v0, v3}, Lb0/D;->e(Lb0/D;I)I

    move-result v5

    iget v12, v1, Lb0/C;->b:I

    if-ne v2, v5, :cond_4e

    iget v2, v0, Lb0/D;->i:I

    invoke-static {v0, v12}, Lb0/D;->e(Lb0/D;I)I

    move-result v5

    if-ne v2, v5, :cond_4e

    new-instance v0, Lb0/c;

    invoke-direct {v0}, Lb0/c;-><init>()V

    move-object/from16 v5, p0

    iput-object v0, v5, La0/q;->N:Lb0/c;

    goto/16 :goto_29

    :goto_30
    iput-boolean v0, v5, La0/q;->O:Z

    iget-object v1, v5, La0/q;->c:La0/w0;

    iget v1, v1, La0/w0;->b:I

    if-nez v1, :cond_4d

    move/from16 v0, v24

    goto :goto_31

    :cond_4d
    move/from16 v2, p1

    invoke-virtual {v5, v2, v0}, La0/q;->X(II)V

    move/from16 v0, v24

    invoke-virtual {v5, v2, v0}, La0/q;->Y(II)V

    :goto_31
    move v2, v0

    goto/16 :goto_3e

    :cond_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_32
    if-ge v5, v3, :cond_51

    const/4 v15, 0x1

    shl-int v18, v15, v5

    iget v15, v0, Lb0/D;->h:I

    and-int v15, v18, v15

    if-eqz v15, :cond_50

    if-lez v14, :cond_4f

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    invoke-virtual {v1, v5}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_33
    if-ge v5, v12, :cond_54

    const/16 v16, 0x1

    shl-int v18, v16, v5

    move/from16 v19, v12

    iget v12, v0, Lb0/D;->i:I

    and-int v12, v18, v12

    if-eqz v12, :cond_53

    if-lez v14, :cond_52

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    invoke-virtual {v1, v5}, Lb0/o;->c(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_53
    add-int/lit8 v5, v5, 0x1

    move/from16 v12, v19

    goto :goto_33

    :cond_54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v14, v7, v2, v6}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v15, v13, v0, v4}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_55
    const/4 v0, 0x0

    const-string v1, "Unbalanced begin/end empty"

    invoke-static {v1}, La0/d;->N(Ljava/lang/String;)V

    throw v0

    :cond_56
    move/from16 v21, v1

    move-object v13, v5

    const/16 v18, -0x1

    move-object v5, v0

    if-eqz p1, :cond_57

    invoke-virtual {v3}, Lb0/b;->a()V

    :cond_57
    iget-object v0, v5, La0/q;->F:La0/v0;

    iget v1, v0, La0/v0;->m:I

    iget v0, v0, La0/v0;->l:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_6a

    if-lez v1, :cond_69

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lb0/b;->d(Z)V

    iget-object v0, v3, Lb0/b;->a:La0/q;

    iget-object v0, v0, La0/q;->F:La0/v0;

    iget v2, v0, La0/v0;->c:I

    if-lez v2, :cond_61

    iget v2, v0, La0/v0;->i:I

    iget-object v12, v3, Lb0/b;->d:LB0/n;

    iget v14, v12, LB0/n;->b:I

    if-lez v14, :cond_58

    iget-object v15, v12, LB0/n;->a:[I

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v14, v15, v14

    goto :goto_34

    :cond_58
    const/4 v14, -0x2

    :goto_34
    if-eq v14, v2, :cond_61

    iget-boolean v14, v3, Lb0/b;->c:Z

    if-nez v14, :cond_59

    iget-boolean v14, v3, Lb0/b;->e:Z

    if-eqz v14, :cond_59

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lb0/b;->d(Z)V

    iget-object v14, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lb0/l;->c:Lb0/l;

    iget-object v14, v14, Lb0/a;->b:Lb0/D;

    invoke-virtual {v14, v15}, Lb0/D;->k(Lb0/C;)V

    const/4 v14, 0x1

    iput-boolean v14, v3, Lb0/b;->c:Z

    :cond_59
    if-lez v2, :cond_61

    invoke-virtual {v0, v2}, La0/v0;->a(I)La0/c;

    move-result-object v0

    invoke-virtual {v12, v2}, LB0/n;->b(I)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lb0/b;->d(Z)V

    iget-object v12, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lb0/k;->c:Lb0/k;

    iget-object v12, v12, Lb0/a;->b:Lb0/D;

    invoke-virtual {v12, v14}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v12, v2, v0}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v0, v12, Lb0/D;->h:I

    iget v2, v14, Lb0/C;->a:I

    invoke-static {v12, v2}, Lb0/D;->e(Lb0/D;I)I

    move-result v15

    iget v5, v14, Lb0/C;->b:I

    if-ne v0, v15, :cond_5a

    iget v0, v12, Lb0/D;->i:I

    invoke-static {v12, v5}, Lb0/D;->e(Lb0/D;I)I

    move-result v15

    if-ne v0, v15, :cond_5a

    const/4 v0, 0x1

    iput-boolean v0, v3, Lb0/b;->c:Z

    goto :goto_37

    :cond_5a
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_35
    if-ge v3, v2, :cond_5d

    shl-int v18, v0, v3

    iget v0, v12, Lb0/D;->h:I

    and-int v0, v18, v0

    if-eqz v0, :cond_5c

    if-lez v15, :cond_5b

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    invoke-virtual {v14, v3}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x1

    goto :goto_35

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_36
    if-ge v2, v5, :cond_60

    const/16 v16, 0x1

    shl-int v18, v16, v2

    move/from16 v19, v5

    iget v5, v12, Lb0/D;->i:I

    and-int v5, v18, v5

    if-eqz v5, :cond_5f

    if-lez v15, :cond_5e

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    invoke-virtual {v14, v2}, Lb0/k;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v19

    goto :goto_36

    :cond_60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v15, v7, v0, v6}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3, v13, v1, v4}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_61
    :goto_37
    iget-object v0, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lb0/x;->c:Lb0/x;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0, v2}, Lb0/D;->l(Lb0/C;)V

    const/4 v5, 0x0

    invoke-static {v0, v5, v1}, LD/a;->n(Lb0/D;II)V

    iget v1, v0, Lb0/D;->h:I

    iget v5, v2, Lb0/C;->a:I

    invoke-static {v0, v5}, Lb0/D;->e(Lb0/D;I)I

    move-result v12

    iget v14, v2, Lb0/C;->b:I

    if-ne v1, v12, :cond_62

    iget v1, v0, Lb0/D;->i:I

    invoke-static {v0, v14}, Lb0/D;->e(Lb0/D;I)I

    move-result v12

    if-ne v1, v12, :cond_62

    goto :goto_3a

    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_38
    if-ge v3, v5, :cond_65

    const/4 v15, 0x1

    shl-int v18, v15, v3

    iget v15, v0, Lb0/D;->h:I

    and-int v15, v18, v15

    if-eqz v15, :cond_64

    if-lez v12, :cond_63

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    invoke-virtual {v2, v3}, Lb0/x;->b(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_39
    if-ge v5, v14, :cond_68

    const/16 v16, 0x1

    shl-int v18, v16, v5

    move/from16 v19, v14

    iget v14, v0, Lb0/D;->i:I

    and-int v14, v18, v14

    if-eqz v14, :cond_67

    if-lez v12, :cond_66

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_66
    invoke-virtual {v2, v5}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_67
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v19

    goto :goto_39

    :cond_68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v12, v7, v1, v6}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v15, v13, v0, v4}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6a
    :goto_3a
    iget-object v0, v3, Lb0/b;->a:La0/q;

    iget-object v0, v0, La0/q;->F:La0/v0;

    iget v0, v0, La0/v0;->i:I

    iget-object v1, v3, Lb0/b;->d:LB0/n;

    iget v2, v1, LB0/n;->b:I

    if-lez v2, :cond_6b

    iget-object v4, v1, LB0/n;->a:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    goto :goto_3b

    :cond_6b
    move/from16 v4, v18

    :goto_3b
    if-gt v4, v0, :cond_71

    if-lez v2, :cond_6c

    iget-object v4, v1, LB0/n;->a:[I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    aget v9, v4, v2

    goto :goto_3c

    :cond_6c
    move/from16 v9, v18

    :goto_3c
    if-ne v9, v0, :cond_6d

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lb0/b;->d(Z)V

    invoke-virtual {v1}, LB0/n;->a()I

    iget-object v0, v3, Lb0/b;->b:Lb0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lb0/i;->c:Lb0/i;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0, v1}, Lb0/D;->k(Lb0/C;)V

    :cond_6d
    move-object/from16 v5, p0

    iget-object v0, v5, La0/q;->F:La0/v0;

    iget v0, v0, La0/v0;->i:I

    invoke-virtual {v5, v0}, La0/q;->c0(I)I

    move-result v1

    move/from16 v6, v41

    if-eq v6, v1, :cond_6e

    invoke-virtual {v5, v0, v6}, La0/q;->Y(II)V

    :cond_6e
    if-eqz p1, :cond_6f

    const/4 v2, 0x1

    goto :goto_3d

    :cond_6f
    move v2, v6

    :goto_3d
    iget-object v0, v5, La0/q;->F:La0/v0;

    invoke-virtual {v0}, La0/v0;->d()V

    invoke-virtual {v3}, Lb0/b;->c()V

    :goto_3e
    iget-object v0, v5, La0/q;->h:La0/J0;

    iget-object v0, v0, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/d0;

    if-eqz v0, :cond_70

    if-nez v21, :cond_70

    iget v1, v0, La0/d0;->c:I

    add-int/2addr v1, v7

    iput v1, v0, La0/d0;->c:I

    :cond_70
    iput-object v0, v5, La0/q;->i:La0/d0;

    invoke-virtual/range {v28 .. v28}, LB0/n;->a()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v5, La0/q;->j:I

    invoke-virtual/range {v28 .. v28}, LB0/n;->a()I

    move-result v0

    iput v0, v5, La0/q;->l:I

    invoke-virtual/range {v28 .. v28}, LB0/n;->a()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v5, La0/q;->k:I

    return-void

    :cond_71
    const-string v0, "Missed recording an endGroup"

    invoke-static {v0}, La0/d;->t(Ljava/lang/String;)V

    const/4 v8, 0x0

    throw v8

    :cond_72
    move-object v5, v0

    move/from16 v6, v41

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v18, -0x1

    invoke-virtual/range {p0 .. p0}, La0/q;->D()V

    iget-object v9, v5, La0/q;->F:La0/v0;

    invoke-virtual {v9}, La0/v0;->l()I

    move-result v9

    invoke-virtual {v3, v1, v9}, Lb0/b;->e(II)V

    iget-object v9, v5, La0/q;->F:La0/v0;

    iget v9, v9, La0/v0;->g:I

    move-object/from16 v10, v27

    invoke-static {v10, v4, v9}, La0/d;->o(Ljava/util/ArrayList;II)V

    move-object v0, v5

    move/from16 v41, v6

    move-object/from16 v27, v10

    goto/16 :goto_1e
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La0/q;->p(Z)V

    invoke-virtual {p0}, La0/q;->v()La0/i0;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, La0/i0;->a:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, La0/i0;->a:I

    :cond_0
    return-void
.end method

.method public final r()La0/i0;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, La0/q;->D:La0/J0;

    iget-object v2, v1, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget-object v1, v1, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/i0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v1, La0/i0;->a:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, La0/i0;->a:I

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget v5, v0, La0/q;->A:I

    iget-object v6, v1, La0/i0;->f:LN/r;

    if-eqz v6, :cond_6

    iget v7, v1, La0/i0;->a:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_2

    goto :goto_4

    :cond_2
    iget-object v7, v6, LN/r;->b:[Ljava/lang/Object;

    iget-object v8, v6, LN/r;->c:[I

    iget-object v9, v6, LN/r;->a:[J

    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_6

    move v11, v2

    :goto_2
    aget-wide v12, v9, v11

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_5

    sub-int v14, v11, v10

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    move v3, v2

    :goto_3
    if-ge v3, v14, :cond_4

    const-wide/16 v17, 0xff

    and-long v17, v12, v17

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_3

    shl-int/lit8 v17, v11, 0x3

    add-int v17, v17, v3

    aget-object v18, v7, v17

    aget v4, v8, v17

    if-eq v4, v5, :cond_3

    new-instance v3, LS/e0;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v5, v6, v4}, LS/e0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    goto :goto_5

    :cond_3
    shr-long/2addr v12, v15

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    if-ne v14, v15, :cond_6

    :cond_5
    if-eq v11, v10, :cond_6

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_7

    iget-object v4, v0, La0/q;->L:Lb0/b;

    iget-object v4, v4, Lb0/b;->b:Lb0/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lb0/h;->c:Lb0/h;

    iget-object v4, v4, Lb0/a;->b:Lb0/D;

    invoke-virtual {v4, v5}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v4, v2, v3}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget-object v3, v0, La0/q;->g:La0/u;

    const/4 v6, 0x1

    invoke-static {v4, v6, v3}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v3, v4, Lb0/D;->h:I

    iget v6, v5, Lb0/C;->a:I

    invoke-static {v4, v6}, Lb0/D;->e(Lb0/D;I)I

    move-result v7

    iget v8, v5, Lb0/C;->b:I

    if-ne v3, v7, :cond_8

    iget v3, v4, Lb0/D;->i:I

    invoke-static {v4, v8}, Lb0/D;->e(Lb0/D;I)I

    move-result v7

    if-ne v3, v7, :cond_8

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    move v3, v1

    :goto_6
    const-string v7, ", "

    if-ge v1, v6, :cond_b

    const/4 v9, 0x1

    shl-int v10, v9, v1

    iget v9, v4, Lb0/D;->h:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_a

    if-lez v3, :cond_9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v5, v1}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v9, v2

    :goto_7
    if-ge v2, v8, :cond_e

    const/4 v10, 0x1

    shl-int v11, v10, v2

    iget v10, v4, Lb0/D;->i:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_d

    if-lez v3, :cond_c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v5, v2}, Lb0/h;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error while pushing "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Not all arguments were provided. Missing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " int arguments ("

    const-string v5, ") and "

    invoke-static {v1, v3, v4, v0, v5}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " object arguments ("

    const-string v3, ")."

    invoke-static {v1, v9, v0, v2, v3}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    throw v3

    :goto_8
    if-eqz v1, :cond_13

    iget v4, v1, La0/i0;->a:I

    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_f

    goto :goto_b

    :cond_f
    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    iget-boolean v4, v0, La0/q;->p:Z

    if-eqz v4, :cond_13

    :goto_9
    iget-object v3, v1, La0/i0;->c:La0/c;

    if-nez v3, :cond_12

    iget-boolean v3, v0, La0/q;->O:Z

    if-eqz v3, :cond_11

    iget-object v3, v0, La0/q;->H:La0/y0;

    iget v4, v3, La0/y0;->u:I

    invoke-virtual {v3, v4}, La0/y0;->b(I)La0/c;

    move-result-object v3

    goto :goto_a

    :cond_11
    iget-object v3, v0, La0/q;->F:La0/v0;

    iget v4, v3, La0/v0;->i:I

    invoke-virtual {v3, v4}, La0/v0;->a(I)La0/c;

    move-result-object v3

    :goto_a
    iput-object v3, v1, La0/i0;->c:La0/c;

    :cond_12
    iget v3, v1, La0/i0;->a:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v1, La0/i0;->a:I

    move-object v3, v1

    :cond_13
    :goto_b
    invoke-virtual {v0, v2}, La0/q;->p(Z)V

    return-object v3
.end method

.method public final s()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La0/q;->p(Z)V

    iget-object v1, p0, La0/q;->b:La0/s;

    invoke-virtual {v1}, La0/s;->b()V

    invoke-virtual {p0, v0}, La0/q;->p(Z)V

    iget-object v1, p0, La0/q;->L:Lb0/b;

    iget-boolean v2, v1, Lb0/b;->c:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lb0/b;->d(Z)V

    invoke-virtual {v1, v0}, Lb0/b;->d(Z)V

    iget-object v2, v1, Lb0/b;->b:Lb0/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lb0/i;->c:Lb0/i;

    iget-object v2, v2, Lb0/a;->b:Lb0/D;

    invoke-virtual {v2, v3}, Lb0/D;->k(Lb0/C;)V

    iput-boolean v0, v1, Lb0/b;->c:Z

    :cond_0
    invoke-virtual {v1}, Lb0/b;->b()V

    iget-object v1, v1, Lb0/b;->d:LB0/n;

    iget v1, v1, LB0/n;->b:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, La0/q;->h:La0/J0;

    iget-object v1, v1, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, La0/q;->h()V

    iget-object v1, p0, La0/q;->F:La0/v0;

    invoke-virtual {v1}, La0/v0;->c()V

    iget-object v1, p0, La0/q;->w:LB0/n;

    invoke-virtual {v1}, LB0/n;->a()I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, La0/q;->v:Z

    return-void

    :cond_3
    const-string p0, "Start/end imbalance"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p0, "Missed recording an endGroup()"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v3
.end method

.method public final t(ZLa0/d0;)V
    .locals 2

    iget-object v0, p0, La0/q;->i:La0/d0;

    iget-object v1, p0, La0/q;->h:La0/J0;

    iget-object v1, v1, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, La0/q;->i:La0/d0;

    iget p2, p0, La0/q;->k:I

    iget-object v0, p0, La0/q;->m:LB0/n;

    invoke-virtual {v0, p2}, LB0/n;->b(I)V

    iget p2, p0, La0/q;->l:I

    invoke-virtual {v0, p2}, LB0/n;->b(I)V

    iget p2, p0, La0/q;->j:I

    invoke-virtual {v0, p2}, LB0/n;->b(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput p2, p0, La0/q;->j:I

    :cond_0
    iput p2, p0, La0/q;->k:I

    iput p2, p0, La0/q;->l:I

    return-void
.end method

.method public final u()V
    .locals 2

    new-instance v0, La0/w0;

    invoke-direct {v0}, La0/w0;-><init>()V

    iget-boolean v1, p0, La0/q;->B:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, La0/w0;->i:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, La0/q;->b:La0/s;

    invoke-virtual {v1}, La0/s;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, LN/q;

    invoke-direct {v1}, LN/q;-><init>()V

    iput-object v1, v0, La0/w0;->j:LN/q;

    :cond_1
    iput-object v0, p0, La0/q;->G:La0/w0;

    invoke-virtual {v0}, La0/w0;->m()La0/y0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, La0/y0;->e(Z)V

    iput-object v0, p0, La0/q;->H:La0/y0;

    return-void
.end method

.method public final v()La0/i0;
    .locals 1

    iget v0, p0, La0/q;->z:I

    if-nez v0, :cond_0

    iget-object p0, p0, La0/q;->D:La0/J0;

    iget-object v0, p0, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, La0/J0;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->g(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/i0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final w()Z
    .locals 1

    invoke-virtual {p0}, La0/q;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, La0/q;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, La0/q;->v()La0/i0;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, La0/i0;->a:I

    and-int/lit8 p0, p0, 0x4

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

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, La0/q;->O:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, La0/q;->x:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, La0/q;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, La0/q;->v()La0/i0;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, La0/i0;->a:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final y(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, La0/q;->f:Lb0/a;

    iget-object p0, p0, La0/q;->L:Lb0/b;

    iget-object v1, p0, Lb0/b;->b:Lb0/a;

    :try_start_0
    iput-object v0, p0, Lb0/b;->b:Lb0/a;

    sget-object v2, Lb0/u;->c:Lb0/u;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0, v2}, Lb0/D;->k(Lb0/C;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    iget-object p1, p0, Lb0/b;->b:Lb0/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lb0/j;->c:Lb0/j;

    iget-object p1, p1, Lb0/a;->b:Lb0/D;

    invoke-virtual {p1, v0}, Lb0/D;->k(Lb0/C;)V

    iput v2, p0, Lb0/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lb0/b;->b:Lb0/a;

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldb/j;

    iget-object v0, p1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v0, La0/Y;

    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    check-cast p1, La0/Y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lb0/b;->b:Lb0/a;

    throw p1
.end method

.method public final z()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, La0/q;->O:Z

    sget-object v1, La0/l;->a:La0/V;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, La0/q;->q:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget-object v0, p0, La0/q;->F:La0/v0;

    invoke-virtual {v0}, La0/v0;->h()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, La0/q;->x:Z

    if-eqz p0, :cond_2

    instance-of p0, v0, La0/n;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    return-object v1
.end method
