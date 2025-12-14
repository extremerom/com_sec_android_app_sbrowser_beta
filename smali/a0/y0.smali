.class public final La0/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La0/w0;

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/HashMap;

.field public f:LN/q;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:LB0/n;

.field public final q:LB0/n;

.field public final r:LB0/n;

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:LJ7/c;


# direct methods
.method public constructor <init>(La0/w0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/y0;->a:La0/w0;

    iget-object v0, p1, La0/w0;->a:[I

    iput-object v0, p0, La0/y0;->b:[I

    iget-object v1, p1, La0/w0;->c:[Ljava/lang/Object;

    iput-object v1, p0, La0/y0;->c:[Ljava/lang/Object;

    iget-object v2, p1, La0/w0;->h:Ljava/util/ArrayList;

    iput-object v2, p0, La0/y0;->d:Ljava/util/ArrayList;

    iget-object v2, p1, La0/w0;->i:Ljava/util/HashMap;

    iput-object v2, p0, La0/y0;->e:Ljava/util/HashMap;

    iget-object v2, p1, La0/w0;->j:LN/q;

    iput-object v2, p0, La0/y0;->f:LN/q;

    iget v2, p1, La0/w0;->b:I

    iput v2, p0, La0/y0;->g:I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    sub-int/2addr v0, v2

    iput v0, p0, La0/y0;->h:I

    iget p1, p1, La0/w0;->d:I

    iput p1, p0, La0/y0;->k:I

    array-length v0, v1

    sub-int/2addr v0, p1

    iput v0, p0, La0/y0;->l:I

    iput v2, p0, La0/y0;->m:I

    new-instance p1, LB0/n;

    invoke-direct {p1}, LB0/n;-><init>()V

    iput-object p1, p0, La0/y0;->p:LB0/n;

    new-instance p1, LB0/n;

    invoke-direct {p1}, LB0/n;-><init>()V

    iput-object p1, p0, La0/y0;->q:LB0/n;

    new-instance p1, LB0/n;

    invoke-direct {p1}, LB0/n;-><init>()V

    iput-object p1, p0, La0/y0;->r:LB0/n;

    iput v2, p0, La0/y0;->t:I

    const/4 p1, -0x1

    iput p1, p0, La0/y0;->u:I

    return-void
.end method

.method public static h(IIII)I
    .locals 0

    if-le p0, p1, :cond_0

    sub-int/2addr p3, p2

    sub-int/2addr p3, p0

    add-int/lit8 p3, p3, 0x1

    neg-int p0, p3

    :cond_0
    return p0
.end method


# virtual methods
.method public final A(II)Z
    .locals 8

    const/4 v0, 0x0

    if-lez p2, :cond_9

    iget-object v1, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, La0/y0;->u(I)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, La0/y0;->e:Ljava/util/HashMap;

    iget v2, p0, La0/y0;->h:I

    add-int v3, p1, p2

    invoke-virtual {p0}, La0/y0;->m()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v2, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, La0/d;->l(Ljava/util/ArrayList;II)I

    move-result v2

    iget-object v4, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    move v5, v0

    :goto_0
    if-ltz v2, :cond_4

    iget-object v6, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La0/c;

    invoke-virtual {p0, v6}, La0/y0;->c(La0/c;)I

    move-result v7

    if-lt v7, p1, :cond_4

    if-ge v7, v3, :cond_3

    const/high16 v4, -0x80000000

    iput v4, v6, La0/c;->a:I

    if-eqz v1, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La0/M;

    :cond_1
    if-nez v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    :cond_2
    move v4, v2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    if-ge v4, v5, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    iput p1, p0, La0/y0;->g:I

    iget v1, p0, La0/y0;->h:I

    add-int/2addr v1, p2

    iput v1, p0, La0/y0;->h:I

    iget v1, p0, La0/y0;->m:I

    if-le v1, p1, :cond_7

    sub-int/2addr v1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, La0/y0;->m:I

    :cond_7
    iget p1, p0, La0/y0;->t:I

    iget v1, p0, La0/y0;->g:I

    if-lt p1, v1, :cond_8

    sub-int/2addr p1, p2

    iput p1, p0, La0/y0;->t:I

    :cond_8
    iget p1, p0, La0/y0;->u:I

    if-ltz p1, :cond_9

    iget-object p2, p0, La0/y0;->b:[I

    invoke-virtual {p0, p1}, La0/y0;->p(I)I

    move-result v1

    invoke-static {v1, p2}, La0/d;->f(I[I)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1}, La0/y0;->K(I)V

    :cond_9
    return v0
.end method

.method public final B(III)V
    .locals 2

    if-lez p2, :cond_0

    iget v0, p0, La0/y0;->l:I

    add-int v1, p1, p2

    invoke-virtual {p0, v1, p3}, La0/y0;->v(II)V

    iput p1, p0, La0/y0;->k:I

    add-int/2addr v0, p2

    iput v0, p0, La0/y0;->l:I

    iget-object p3, p0, La0/y0;->c:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p3, p1, v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p3, p0, La0/y0;->j:I

    if-lt p3, p1, :cond_0

    sub-int/2addr p3, p2

    iput p3, p0, La0/y0;->j:I

    :cond_0
    return-void
.end method

.method public final C()V
    .locals 2

    iget v0, p0, La0/y0;->t:I

    iput v0, p0, La0/y0;->s:I

    iget-object v1, p0, La0/y0;->b:[I

    invoke-virtual {p0, v0}, La0/y0;->p(I)I

    move-result v0

    invoke-virtual {p0, v0, v1}, La0/y0;->f(I[I)I

    move-result v0

    iput v0, p0, La0/y0;->i:I

    return-void
.end method

.method public final D(I[I)I
    .locals 1

    invoke-virtual {p0}, La0/y0;->m()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, La0/y0;->c:[Ljava/lang/Object;

    array-length p1, p1

    iget p0, p0, La0/y0;->l:I

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, La0/d;->p(I[I)I

    move-result p1

    iget p2, p0, La0/y0;->l:I

    iget-object p0, p0, La0/y0;->c:[Ljava/lang/Object;

    array-length p0, p0

    if-gez p1, :cond_1

    sub-int/2addr p0, p2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    move p1, p0

    :cond_1
    :goto_0
    return p1
.end method

.method public final E(II)I
    .locals 3

    invoke-virtual {p0, p1}, La0/y0;->p(I)I

    move-result v0

    iget-object v1, p0, La0/y0;->b:[I

    invoke-virtual {p0, v0, v1}, La0/y0;->D(I[I)I

    move-result v0

    iget-object v1, p0, La0/y0;->b:[I

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, La0/y0;->p(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, La0/y0;->f(I[I)I

    move-result p0

    add-int v1, v0, p2

    if-lt v1, v0, :cond_0

    if-ge v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Write to an invalid slot index "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for group "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final F(I)La0/M;
    .locals 2

    iget-object v0, p0, La0/y0;->e:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, La0/y0;->I(I)La0/c;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, La0/M;

    :cond_0
    return-object v1
.end method

.method public final G()V
    .locals 2

    iget v0, p0, La0/y0;->n:I

    if-nez v0, :cond_0

    sget-object v0, La0/l;->a:La0/V;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0, v1}, La0/y0;->H(ILjava/lang/Object;Ljava/lang/Object;Z)V

    return-void

    :cond_0
    const-string p0, "Key must be supplied when inserting"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final H(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, La0/y0;->u:I

    iget v4, v0, La0/y0;->n:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iget-object v7, v0, La0/y0;->r:LB0/n;

    iget v8, v0, La0/y0;->o:I

    invoke-virtual {v7, v8}, LB0/n;->b(I)V

    sget-object v7, La0/l;->a:La0/V;

    if-eqz v4, :cond_b

    iget v4, v0, La0/y0;->s:I

    iget-object v8, v0, La0/y0;->b:[I

    invoke-virtual {v0, v4}, La0/y0;->p(I)I

    move-result v9

    invoke-virtual {v0, v9, v8}, La0/y0;->f(I[I)I

    move-result v8

    invoke-virtual {v0, v6}, La0/y0;->r(I)V

    iput v8, v0, La0/y0;->i:I

    iput v8, v0, La0/y0;->j:I

    invoke-virtual {v0, v4}, La0/y0;->p(I)I

    move-result v9

    if-eq v1, v7, :cond_1

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    if-nez p4, :cond_2

    if-eq v2, v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    iget v11, v0, La0/y0;->l:I

    iget v12, v0, La0/y0;->k:I

    iget-object v13, v0, La0/y0;->c:[Ljava/lang/Object;

    array-length v13, v13

    invoke-static {v8, v12, v11, v13}, La0/y0;->h(IIII)I

    move-result v8

    if-ltz v8, :cond_3

    iget v11, v0, La0/y0;->m:I

    if-ge v11, v4, :cond_3

    iget-object v11, v0, La0/y0;->c:[Ljava/lang/Object;

    array-length v11, v11

    iget v12, v0, La0/y0;->l:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v8

    add-int/2addr v11, v6

    neg-int v8, v11

    :cond_3
    iget-object v6, v0, La0/y0;->b:[I

    iget v11, v0, La0/y0;->u:I

    if-eqz p4, :cond_4

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_3

    :cond_4
    move v12, v5

    :goto_3
    if-eqz v10, :cond_5

    const/high16 v13, 0x20000000

    goto :goto_4

    :cond_5
    move v13, v5

    :goto_4
    if-eqz v7, :cond_6

    const/high16 v14, 0x10000000

    goto :goto_5

    :cond_6
    move v14, v5

    :goto_5
    mul-int/lit8 v9, v9, 0x5

    aput p1, v6, v9

    add-int/lit8 v15, v9, 0x1

    or-int/2addr v12, v13

    or-int/2addr v12, v14

    aput v12, v6, v15

    add-int/lit8 v12, v9, 0x2

    aput v11, v6, v12

    add-int/lit8 v11, v9, 0x3

    aput v5, v6, v11

    add-int/lit8 v9, v9, 0x4

    aput v8, v6, v9

    add-int v6, p4, v10

    add-int/2addr v6, v7

    if-lez v6, :cond_a

    invoke-virtual {v0, v6, v4}, La0/y0;->s(II)V

    iget-object v6, v0, La0/y0;->c:[Ljava/lang/Object;

    iget v8, v0, La0/y0;->i:I

    if-eqz p4, :cond_7

    add-int/lit8 v9, v8, 0x1

    aput-object v2, v6, v8

    move v8, v9

    :cond_7
    if-eqz v10, :cond_8

    add-int/lit8 v9, v8, 0x1

    aput-object v1, v6, v8

    move v8, v9

    :cond_8
    if-eqz v7, :cond_9

    add-int/lit8 v1, v8, 0x1

    aput-object v2, v6, v8

    move v8, v1

    :cond_9
    iput v8, v0, La0/y0;->i:I

    :cond_a
    iput v5, v0, La0/y0;->o:I

    add-int/lit8 v1, v4, 0x1

    iput v4, v0, La0/y0;->u:I

    iput v1, v0, La0/y0;->s:I

    if-ltz v3, :cond_e

    invoke-virtual {v0, v3}, La0/y0;->F(I)La0/M;

    goto :goto_7

    :cond_b
    iget-object v1, v0, La0/y0;->p:LB0/n;

    invoke-virtual {v1, v3}, LB0/n;->b(I)V

    invoke-virtual/range {p0 .. p0}, La0/y0;->m()I

    move-result v1

    iget v3, v0, La0/y0;->h:I

    sub-int/2addr v1, v3

    iget v3, v0, La0/y0;->t:I

    sub-int/2addr v1, v3

    iget-object v3, v0, La0/y0;->q:LB0/n;

    invoke-virtual {v3, v1}, LB0/n;->b(I)V

    iget v1, v0, La0/y0;->s:I

    invoke-virtual {v0, v1}, La0/y0;->p(I)I

    move-result v3

    invoke-static {v2, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz p4, :cond_c

    iget v4, v0, La0/y0;->s:I

    invoke-virtual {v0, v4, v2}, La0/y0;->L(ILjava/lang/Object;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v0, v2}, La0/y0;->J(Ljava/lang/Object;)V

    :cond_d
    :goto_6
    iget-object v2, v0, La0/y0;->b:[I

    invoke-virtual {v0, v3, v2}, La0/y0;->D(I[I)I

    move-result v2

    iput v2, v0, La0/y0;->i:I

    iget-object v2, v0, La0/y0;->b:[I

    iget v4, v0, La0/y0;->s:I

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, La0/y0;->p(I)I

    move-result v4

    invoke-virtual {v0, v4, v2}, La0/y0;->f(I[I)I

    move-result v2

    iput v2, v0, La0/y0;->j:I

    iget-object v2, v0, La0/y0;->b:[I

    invoke-static {v3, v2}, La0/d;->m(I[I)I

    move-result v2

    iput v2, v0, La0/y0;->o:I

    iput v1, v0, La0/y0;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, La0/y0;->s:I

    iget-object v2, v0, La0/y0;->b:[I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    add-int/2addr v1, v2

    :cond_e
    :goto_7
    iput v1, v0, La0/y0;->t:I

    return-void
.end method

.method public final I(I)La0/c;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, La0/y0;->n()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, La0/y0;->n()I

    move-result p0

    invoke-static {v1, p1, p0}, La0/d;->L(Ljava/util/ArrayList;II)I

    move-result p0

    if-ltz p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, La0/c;

    :cond_0
    return-object v0
.end method

.method public final J(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, La0/y0;->s:I

    invoke-virtual {p0, v0}, La0/y0;->p(I)I

    move-result v0

    iget-object v1, p0, La0/y0;->b:[I

    invoke-static {v0, v1}, La0/d;->i(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La0/y0;->c:[Ljava/lang/Object;

    iget-object v2, p0, La0/y0;->b:[I

    invoke-virtual {p0, v0, v2}, La0/y0;->f(I[I)I

    move-result v3

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    shr-int/lit8 v0, v0, 0x1d

    invoke-static {v0}, La0/d;->v(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, La0/y0;->g(I)I

    move-result p0

    aput-object p1, v1, p0

    return-void

    :cond_0
    const-string p0, "Updating the data of a group that was not created with a data slot"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final K(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, La0/y0;->w:LJ7/c;

    if-nez v0, :cond_0

    new-instance v0, LJ7/c;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LJ7/c;-><init>(I)V

    iput-object v0, p0, La0/y0;->w:LJ7/c;

    :cond_0
    invoke-virtual {v0, p1}, LJ7/c;->c(I)V

    :cond_1
    return-void
.end method

.method public final L(ILjava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, La0/y0;->p(I)I

    move-result v0

    iget-object v1, p0, La0/y0;->b:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v0, v1}, La0/d;->k(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, p0, La0/y0;->c:[Ljava/lang/Object;

    iget-object v1, p0, La0/y0;->b:[I

    invoke-virtual {p0, v0, v1}, La0/y0;->f(I[I)I

    move-result v0

    invoke-virtual {p0, v0}, La0/y0;->g(I)I

    move-result p0

    aput-object p2, p1, p0

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Updating the node of a group at "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " that was not created with as a node group"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget v2, p0, La0/y0;->n:I

    if-gtz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget v2, p0, La0/y0;->s:I

    add-int/2addr v2, p1

    iget p1, p0, La0/y0;->u:I

    if-lt v2, p1, :cond_3

    iget p1, p0, La0/y0;->t:I

    if-gt v2, p1, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    iput v2, p0, La0/y0;->s:I

    iget-object p1, p0, La0/y0;->b:[I

    invoke-virtual {p0, v2}, La0/y0;->p(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, La0/y0;->f(I[I)I

    move-result p1

    iput p1, p0, La0/y0;->i:I

    iput p1, p0, La0/y0;->j:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot seek outside the current group ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, La0/y0;->u:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, La0/y0;->t:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string p0, "Cannot call seek() while inserting"

    invoke-static {p0}, La0/d;->O(Ljava/lang/String;)V

    throw v3

    :cond_6
    const-string p0, "Cannot seek backwards"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v3
.end method

.method public final b(I)La0/c;
    .locals 4

    iget-object v0, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, La0/y0;->n()I

    move-result v1

    invoke-static {v0, p1, v1}, La0/d;->L(Ljava/util/ArrayList;II)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v2, La0/c;

    iget v3, p0, La0/y0;->g:I

    if-gt p1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La0/y0;->n()I

    move-result p0

    sub-int/2addr p0, p1

    neg-int p1, p0

    :goto_0
    invoke-direct {v2, p1}, La0/c;-><init>(I)V

    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    invoke-virtual {v0, p0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, La0/c;

    :goto_1
    return-object v2
.end method

.method public final c(La0/c;)I
    .locals 0

    iget p1, p1, La0/c;->a:I

    if-gez p1, :cond_0

    invoke-virtual {p0}, La0/y0;->n()I

    move-result p0

    add-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method public final d()V
    .locals 2

    iget v0, p0, La0/y0;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La0/y0;->n:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, La0/y0;->m()I

    move-result v0

    iget v1, p0, La0/y0;->h:I

    sub-int/2addr v0, v1

    iget v1, p0, La0/y0;->t:I

    sub-int/2addr v0, v1

    iget-object p0, p0, La0/y0;->q:LB0/n;

    invoke-virtual {p0, v0}, LB0/n;->b(I)V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, La0/y0;->v:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, La0/y0;->p:LB0/n;

    iget p1, p1, LB0/n;->b:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, La0/y0;->n()I

    move-result p1

    invoke-virtual {p0, p1}, La0/y0;->u(I)V

    iget-object p1, p0, La0/y0;->c:[Ljava/lang/Object;

    array-length p1, p1

    iget v1, p0, La0/y0;->l:I

    sub-int/2addr p1, v1

    iget v1, p0, La0/y0;->g:I

    invoke-virtual {p0, p1, v1}, La0/y0;->v(II)V

    iget p1, p0, La0/y0;->k:I

    iget v1, p0, La0/y0;->l:I

    add-int/2addr v1, p1

    iget-object v2, p0, La0/y0;->c:[Ljava/lang/Object;

    invoke-static {v2, p1, v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {p0}, La0/y0;->y()V

    :cond_0
    iget-object p1, p0, La0/y0;->b:[I

    iget v1, p0, La0/y0;->g:I

    iget-object v2, p0, La0/y0;->c:[Ljava/lang/Object;

    iget v3, p0, La0/y0;->k:I

    iget-object v4, p0, La0/y0;->d:Ljava/util/ArrayList;

    iget-object v5, p0, La0/y0;->e:Ljava/util/HashMap;

    iget-object v6, p0, La0/y0;->f:LN/q;

    iget-object p0, p0, La0/y0;->a:La0/w0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, p0, La0/w0;->f:Z

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, La0/w0;->f:Z

    iput-object p1, p0, La0/w0;->a:[I

    iput v1, p0, La0/w0;->b:I

    iput-object v2, p0, La0/w0;->c:[Ljava/lang/Object;

    iput v3, p0, La0/w0;->d:I

    iput-object v4, p0, La0/w0;->h:Ljava/util/ArrayList;

    iput-object v5, p0, La0/w0;->i:Ljava/util/HashMap;

    iput-object v6, p0, La0/w0;->j:LN/q;

    return-void

    :cond_1
    const-string p0, "Unexpected writer close()"

    invoke-static {p0}, La0/d;->N(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(I[I)I
    .locals 1

    invoke-virtual {p0}, La0/y0;->m()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, La0/y0;->c:[Ljava/lang/Object;

    array-length p1, p1

    iget p0, p0, La0/y0;->l:I

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, La0/d;->g(I[I)I

    move-result p1

    iget p2, p0, La0/y0;->l:I

    iget-object p0, p0, La0/y0;->c:[Ljava/lang/Object;

    array-length p0, p0

    if-gez p1, :cond_1

    sub-int/2addr p0, p2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    move p1, p0

    :cond_1
    :goto_0
    return p1
.end method

.method public final g(I)I
    .locals 1

    iget v0, p0, La0/y0;->k:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, La0/y0;->l:I

    add-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method public final i()V
    .locals 11

    iget v0, p0, La0/y0;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, La0/y0;->s:I

    iget v4, p0, La0/y0;->t:I

    iget v5, p0, La0/y0;->u:I

    invoke-virtual {p0, v5}, La0/y0;->p(I)I

    move-result v6

    iget v7, p0, La0/y0;->o:I

    sub-int v8, v3, v5

    iget-object v9, p0, La0/y0;->b:[I

    invoke-static {v6, v9}, La0/d;->k(I[I)Z

    move-result v9

    iget-object v10, p0, La0/y0;->r:LB0/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, La0/y0;->b:[I

    invoke-static {v6, v8, v0}, La0/d;->q(II[I)V

    iget-object v0, p0, La0/y0;->b:[I

    invoke-static {v6, v7, v0}, La0/d;->r(II[I)V

    invoke-virtual {v10}, LB0/n;->a()I

    move-result v0

    if-eqz v9, :cond_1

    move v7, v1

    :cond_1
    add-int/2addr v0, v7

    iput v0, p0, La0/y0;->o:I

    iget-object v0, p0, La0/y0;->b:[I

    invoke-virtual {p0, v5, v0}, La0/y0;->x(I[I)I

    move-result v0

    iput v0, p0, La0/y0;->u:I

    if-gez v0, :cond_2

    invoke-virtual {p0}, La0/y0;->n()I

    move-result v0

    goto :goto_1

    :cond_2
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, La0/y0;->p(I)I

    move-result v0

    :goto_1
    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, La0/y0;->b:[I

    invoke-virtual {p0, v0, v1}, La0/y0;->f(I[I)I

    move-result v2

    :goto_2
    iput v2, p0, La0/y0;->i:I

    iput v2, p0, La0/y0;->j:I

    goto/16 :goto_6

    :cond_4
    if-ne v3, v4, :cond_e

    iget-object v0, p0, La0/y0;->b:[I

    mul-int/lit8 v1, v6, 0x5

    add-int/lit8 v1, v1, 0x3

    aget v1, v0, v1

    invoke-static {v6, v0}, La0/d;->m(I[I)I

    move-result v0

    iget-object v3, p0, La0/y0;->b:[I

    invoke-static {v6, v8, v3}, La0/d;->q(II[I)V

    iget-object v3, p0, La0/y0;->b:[I

    invoke-static {v6, v7, v3}, La0/d;->r(II[I)V

    iget-object v3, p0, La0/y0;->p:LB0/n;

    invoke-virtual {v3}, LB0/n;->a()I

    move-result v3

    invoke-virtual {p0}, La0/y0;->m()I

    move-result v4

    iget v6, p0, La0/y0;->h:I

    sub-int/2addr v4, v6

    iget-object v6, p0, La0/y0;->q:LB0/n;

    invoke-virtual {v6}, LB0/n;->a()I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, p0, La0/y0;->t:I

    iput v3, p0, La0/y0;->u:I

    iget-object v4, p0, La0/y0;->b:[I

    invoke-virtual {p0, v5, v4}, La0/y0;->x(I[I)I

    move-result v4

    invoke-virtual {v10}, LB0/n;->a()I

    move-result v5

    iput v5, p0, La0/y0;->o:I

    if-ne v4, v3, :cond_6

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    sub-int v2, v7, v0

    :goto_3
    add-int/2addr v5, v2

    iput v5, p0, La0/y0;->o:I

    goto :goto_6

    :cond_6
    sub-int/2addr v8, v1

    if-eqz v9, :cond_7

    move v7, v2

    goto :goto_4

    :cond_7
    sub-int/2addr v7, v0

    :goto_4
    if-nez v8, :cond_8

    if-eqz v7, :cond_d

    :cond_8
    :goto_5
    if-eqz v4, :cond_d

    if-eq v4, v3, :cond_d

    if-nez v7, :cond_9

    if-eqz v8, :cond_d

    :cond_9
    invoke-virtual {p0, v4}, La0/y0;->p(I)I

    move-result v0

    if-eqz v8, :cond_a

    iget-object v1, p0, La0/y0;->b:[I

    mul-int/lit8 v5, v0, 0x5

    add-int/lit8 v5, v5, 0x3

    aget v5, v1, v5

    add-int/2addr v5, v8

    invoke-static {v0, v5, v1}, La0/d;->q(II[I)V

    :cond_a
    if-eqz v7, :cond_b

    iget-object v1, p0, La0/y0;->b:[I

    invoke-static {v0, v1}, La0/d;->m(I[I)I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v0, v5, v1}, La0/d;->r(II[I)V

    :cond_b
    iget-object v1, p0, La0/y0;->b:[I

    invoke-static {v0, v1}, La0/d;->k(I[I)Z

    move-result v0

    if-eqz v0, :cond_c

    move v7, v2

    :cond_c
    iget-object v0, p0, La0/y0;->b:[I

    invoke-virtual {p0, v4, v0}, La0/y0;->x(I[I)I

    move-result v4

    goto :goto_5

    :cond_d
    iget v0, p0, La0/y0;->o:I

    add-int/2addr v0, v7

    iput v0, p0, La0/y0;->o:I

    :goto_6
    return-void

    :cond_e
    const-string p0, "Expected to be at the end of a group"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j()V
    .locals 3

    iget v0, p0, La0/y0;->n:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La0/y0;->n:I

    if-nez v0, :cond_2

    iget-object v0, p0, La0/y0;->r:LB0/n;

    iget v0, v0, LB0/n;->b:I

    iget-object v1, p0, La0/y0;->p:LB0/n;

    iget v1, v1, LB0/n;->b:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, La0/y0;->m()I

    move-result v0

    iget v1, p0, La0/y0;->h:I

    sub-int/2addr v0, v1

    iget-object v1, p0, La0/y0;->q:LB0/n;

    invoke-virtual {v1}, LB0/n;->a()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, La0/y0;->t:I

    goto :goto_1

    :cond_1
    const-string p0, "startGroup/endGroup mismatch while inserting"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string p0, "Unbalanced begin/end insert"

    invoke-static {p0}, La0/d;->O(Ljava/lang/String;)V

    throw v2
.end method

.method public final k(I)V
    .locals 5

    iget v0, p0, La0/y0;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, La0/y0;->u:I

    if-eq v0, p1, :cond_3

    if-lt p1, v0, :cond_1

    iget v4, p0, La0/y0;->t:I

    if-ge p1, v4, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    iget v0, p0, La0/y0;->s:I

    iget v1, p0, La0/y0;->i:I

    iget v2, p0, La0/y0;->j:I

    iput p1, p0, La0/y0;->s:I

    invoke-virtual {p0}, La0/y0;->G()V

    iput v0, p0, La0/y0;->s:I

    iput v1, p0, La0/y0;->i:I

    iput v2, p0, La0/y0;->j:I

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Started group at "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be a subgroup of the group at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string p0, "Cannot call ensureStarted() while inserting"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v3
.end method

.method public final l(III)V
    .locals 2

    iget v0, p0, La0/y0;->g:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La0/y0;->n()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    neg-int p1, v0

    :goto_0
    if-ge p3, p2, :cond_1

    iget-object v0, p0, La0/y0;->b:[I

    invoke-virtual {p0, p3}, La0/y0;->p(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, La0/y0;->b:[I

    invoke-virtual {p0, p3}, La0/y0;->p(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    add-int/2addr v0, p3

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p3, v0, v1}, La0/y0;->l(III)V

    move p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m()I
    .locals 0

    iget-object p0, p0, La0/y0;->b:[I

    array-length p0, p0

    div-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public final n()I
    .locals 1

    invoke-virtual {p0}, La0/y0;->m()I

    move-result v0

    iget p0, p0, La0/y0;->h:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, La0/y0;->c:[Ljava/lang/Object;

    array-length v0, v0

    iget p0, p0, La0/y0;->l:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final p(I)I
    .locals 1

    iget v0, p0, La0/y0;->g:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, La0/y0;->h:I

    add-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method public final q(I)I
    .locals 1

    iget-object v0, p0, La0/y0;->b:[I

    invoke-virtual {p0, p1}, La0/y0;->p(I)I

    move-result p0

    invoke-static {p0, v0}, La0/d;->h(I[I)I

    move-result p0

    return p0
.end method

.method public final r(I)V
    .locals 11

    if-lez p1, :cond_5

    iget v0, p0, La0/y0;->s:I

    invoke-virtual {p0, v0}, La0/y0;->u(I)V

    iget v1, p0, La0/y0;->g:I

    iget v2, p0, La0/y0;->h:I

    iget-object v3, p0, La0/y0;->b:[I

    array-length v4, v3

    div-int/lit8 v4, v4, 0x5

    sub-int v5, v4, v2

    const/4 v6, 0x0

    if-ge v2, p1, :cond_0

    mul-int/lit8 v7, v4, 0x2

    add-int v8, v5, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x20

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int/lit8 v8, v7, 0x5

    new-array v8, v8, [I

    sub-int/2addr v7, v5

    add-int/2addr v2, v1

    add-int v9, v1, v7

    mul-int/lit8 v10, v1, 0x5

    invoke-static {v6, v6, v3, v8, v10}, Lfb/l;->j(II[I[II)V

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v4, v4, 0x5

    invoke-static {v9, v2, v3, v8, v4}, Lfb/l;->j(II[I[II)V

    iput-object v8, p0, La0/y0;->b:[I

    move v2, v7

    :cond_0
    iget v3, p0, La0/y0;->t:I

    if-lt v3, v1, :cond_1

    add-int/2addr v3, p1

    iput v3, p0, La0/y0;->t:I

    :cond_1
    add-int v3, v1, p1

    iput v3, p0, La0/y0;->g:I

    sub-int/2addr v2, p1

    iput v2, p0, La0/y0;->h:I

    if-lez v5, :cond_2

    add-int/2addr v0, p1

    iget-object v2, p0, La0/y0;->b:[I

    invoke-virtual {p0, v0}, La0/y0;->p(I)I

    move-result v0

    invoke-virtual {p0, v0, v2}, La0/y0;->f(I[I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v6

    :goto_0
    iget v2, p0, La0/y0;->m:I

    if-ge v2, v1, :cond_3

    goto :goto_1

    :cond_3
    iget v6, p0, La0/y0;->k:I

    :goto_1
    iget v2, p0, La0/y0;->l:I

    iget-object v4, p0, La0/y0;->c:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v0, v6, v2, v4}, La0/y0;->h(IIII)I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_4

    iget-object v4, p0, La0/y0;->b:[I

    mul-int/lit8 v5, v2, 0x5

    add-int/lit8 v5, v5, 0x4

    aput v0, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, La0/y0;->m:I

    if-lt v0, v1, :cond_5

    add-int/2addr v0, p1

    iput v0, p0, La0/y0;->m:I

    :cond_5
    return-void
.end method

.method public final s(II)V
    .locals 9

    if-lez p1, :cond_3

    iget v0, p0, La0/y0;->i:I

    invoke-virtual {p0, v0, p2}, La0/y0;->v(II)V

    iget p2, p0, La0/y0;->k:I

    iget v0, p0, La0/y0;->l:I

    if-ge v0, p1, :cond_1

    iget-object v1, p0, La0/y0;->c:[Ljava/lang/Object;

    array-length v2, v1

    sub-int v3, v2, v0

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v3, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_0

    const/4 v8, 0x0

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v4, v3

    add-int/2addr v0, p2

    add-int v3, p2, v4

    invoke-static {v6, v6, p2, v1, v5}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {v3, v0, v2, v1, v5}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-object v5, p0, La0/y0;->c:[Ljava/lang/Object;

    move v0, v4

    :cond_1
    iget v1, p0, La0/y0;->j:I

    if-lt v1, p2, :cond_2

    add-int/2addr v1, p1

    iput v1, p0, La0/y0;->j:I

    :cond_2
    add-int/2addr p2, p1

    iput p2, p0, La0/y0;->k:I

    sub-int/2addr v0, p1

    iput v0, p0, La0/y0;->l:I

    :cond_3
    return-void
.end method

.method public final t(La0/w0;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    iget v2, v0, La0/y0;->n:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    invoke-static {v2}, La0/d;->K(Z)V

    if-nez p2, :cond_1

    iget v2, v0, La0/y0;->s:I

    if-nez v2, :cond_1

    iget-object v2, v0, La0/y0;->a:La0/w0;

    iget v2, v2, La0/w0;->b:I

    if-nez v2, :cond_1

    iget-object v2, v1, La0/w0;->a:[I

    mul-int/lit8 v3, p2, 0x5

    add-int/lit8 v3, v3, 0x3

    aget v3, v2, v3

    iget v4, v1, La0/w0;->b:I

    if-ne v3, v4, :cond_1

    iget-object v3, v0, La0/y0;->b:[I

    iget-object v5, v0, La0/y0;->c:[Ljava/lang/Object;

    iget-object v6, v0, La0/y0;->d:Ljava/util/ArrayList;

    iget-object v8, v0, La0/y0;->e:Ljava/util/HashMap;

    iget-object v9, v0, La0/y0;->f:LN/q;

    iget-object v10, v1, La0/w0;->c:[Ljava/lang/Object;

    iget v11, v1, La0/w0;->d:I

    iget-object v12, v1, La0/w0;->i:Ljava/util/HashMap;

    iget-object v13, v1, La0/w0;->j:LN/q;

    iput-object v2, v0, La0/y0;->b:[I

    iput-object v10, v0, La0/y0;->c:[Ljava/lang/Object;

    iget-object v14, v1, La0/w0;->h:Ljava/util/ArrayList;

    iput-object v14, v0, La0/y0;->d:Ljava/util/ArrayList;

    iput v4, v0, La0/y0;->g:I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v2, v4

    iput v2, v0, La0/y0;->h:I

    iput v11, v0, La0/y0;->k:I

    array-length v2, v10

    sub-int/2addr v2, v11

    iput v2, v0, La0/y0;->l:I

    iput v4, v0, La0/y0;->m:I

    iput-object v12, v0, La0/y0;->e:Ljava/util/HashMap;

    iput-object v13, v0, La0/y0;->f:LN/q;

    iput-object v3, v1, La0/w0;->a:[I

    iput v7, v1, La0/w0;->b:I

    iput-object v5, v1, La0/w0;->c:[Ljava/lang/Object;

    iput v7, v1, La0/w0;->d:I

    iput-object v6, v1, La0/w0;->h:Ljava/util/ArrayList;

    iput-object v8, v1, La0/w0;->i:Ljava/util/HashMap;

    iput-object v9, v1, La0/w0;->j:LN/q;

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, La0/w0;->m()La0/y0;

    move-result-object v9

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v9

    move/from16 v2, p2

    move-object v3, p0

    :try_start_0
    invoke-static/range {v1 .. v6}, La0/d;->D(La0/y0;ILa0/y0;ZZZ)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9, v8}, La0/y0;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v9, v7}, La0/y0;->e(Z)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotWriter(current = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, La0/y0;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La0/y0;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La0/y0;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La0/y0;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, La0/y0;->g:I

    iget p0, p0, La0/y0;->h:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(I)V
    .locals 8

    iget v0, p0, La0/y0;->h:I

    iget v1, p0, La0/y0;->g:I

    if-eq v1, p1, :cond_a

    iget-object v2, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, La0/y0;->h:I

    invoke-virtual {p0}, La0/y0;->m()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, p1, :cond_0

    iget-object v2, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-static {v2, v1, v3}, La0/d;->l(Ljava/util/ArrayList;II)I

    move-result v2

    :goto_0
    iget-object v4, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La0/c;

    iget v5, v4, La0/c;->a:I

    if-gez v5, :cond_1

    add-int/2addr v5, v3

    if-ge v5, p1, :cond_1

    iput v5, v4, La0/c;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-static {v2, p1, v3}, La0/d;->l(Ljava/util/ArrayList;II)I

    move-result v2

    :goto_1
    iget-object v4, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, La0/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La0/c;

    iget v5, v4, La0/c;->a:I

    if-ltz v5, :cond_1

    sub-int v5, v3, v5

    neg-int v5, v5

    iput v5, v4, La0/c;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-lez v0, :cond_3

    iget-object v2, p0, La0/y0;->b:[I

    mul-int/lit8 v3, p1, 0x5

    mul-int/lit8 v4, v0, 0x5

    mul-int/lit8 v5, v1, 0x5

    if-ge p1, v1, :cond_2

    add-int/2addr v4, v3

    invoke-static {v4, v3, v2, v2, v5}, Lfb/l;->j(II[I[II)V

    goto :goto_2

    :cond_2
    add-int v6, v5, v4

    add-int/2addr v3, v4

    invoke-static {v5, v6, v2, v2, v3}, Lfb/l;->j(II[I[II)V

    :cond_3
    :goto_2
    if-ge p1, v1, :cond_4

    add-int v1, p1, v0

    :cond_4
    invoke-virtual {p0}, La0/y0;->m()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, La0/d;->K(Z)V

    :cond_6
    :goto_4
    if-ge v1, v2, :cond_a

    iget-object v3, p0, La0/y0;->b:[I

    mul-int/lit8 v4, v1, 0x5

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    const/4 v5, -0x2

    if-le v3, v5, :cond_7

    move v6, v3

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, La0/y0;->n()I

    move-result v6

    add-int/2addr v6, v3

    sub-int/2addr v6, v5

    :goto_5
    if-ge v6, p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, La0/y0;->n()I

    move-result v7

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    neg-int v6, v7

    :goto_6
    if-eq v6, v3, :cond_9

    iget-object v3, p0, La0/y0;->b:[I

    aput v6, v3, v4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_6

    add-int/2addr v1, v0

    goto :goto_4

    :cond_a
    iput p1, p0, La0/y0;->g:I

    return-void
.end method

.method public final v(II)V
    .locals 8

    iget v0, p0, La0/y0;->l:I

    iget v1, p0, La0/y0;->k:I

    iget v2, p0, La0/y0;->m:I

    if-eq v1, p1, :cond_1

    iget-object v3, p0, La0/y0;->c:[Ljava/lang/Object;

    if-ge p1, v1, :cond_0

    add-int v4, p1, v0

    invoke-static {v4, p1, v1, v3, v3}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    add-int v4, v1, v0

    add-int v5, p1, v0

    invoke-static {v1, v4, v5, v3, v3}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, La0/y0;->n()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-eq v2, p2, :cond_8

    iget-object v1, p0, La0/y0;->c:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    if-ge p2, v2, :cond_4

    invoke-virtual {p0, p2}, La0/y0;->p(I)I

    move-result v3

    invoke-virtual {p0, v2}, La0/y0;->p(I)I

    move-result v2

    iget v4, p0, La0/y0;->g:I

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_7

    iget-object v5, p0, La0/y0;->b:[I

    mul-int/lit8 v6, v3, 0x5

    add-int/lit8 v6, v6, 0x4

    aget v7, v5, v6

    if-ltz v7, :cond_3

    sub-int v7, v1, v7

    add-int/lit8 v7, v7, 0x1

    neg-int v7, v7

    aput v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    iget v5, p0, La0/y0;->h:I

    add-int/2addr v3, v5

    goto :goto_1

    :cond_3
    const-string p0, "Unexpected anchor value, expected a positive anchor"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0, v2}, La0/y0;->p(I)I

    move-result v2

    invoke-virtual {p0, p2}, La0/y0;->p(I)I

    move-result v3

    :cond_5
    :goto_2
    if-ge v2, v3, :cond_7

    iget-object v4, p0, La0/y0;->b:[I

    mul-int/lit8 v5, v2, 0x5

    add-int/lit8 v5, v5, 0x4

    aget v6, v4, v5

    if-gez v6, :cond_6

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    iget v4, p0, La0/y0;->g:I

    if-ne v2, v4, :cond_5

    iget v4, p0, La0/y0;->h:I

    add-int/2addr v2, v4

    goto :goto_2

    :cond_6
    const-string p0, "Unexpected anchor value, expected a negative anchor"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput p2, p0, La0/y0;->m:I

    :cond_8
    iput p1, p0, La0/y0;->k:I

    return-void
.end method

.method public final w(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, La0/y0;->p(I)I

    move-result p1

    iget-object v0, p0, La0/y0;->b:[I

    invoke-static {p1, v0}, La0/d;->k(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La0/y0;->c:[Ljava/lang/Object;

    iget-object v1, p0, La0/y0;->b:[I

    invoke-virtual {p0, p1, v1}, La0/y0;->f(I[I)I

    move-result p1

    invoke-virtual {p0, p1}, La0/y0;->g(I)I

    move-result p0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final x(I[I)I
    .locals 0

    invoke-virtual {p0, p1}, La0/y0;->p(I)I

    move-result p1

    invoke-static {p1, p2}, La0/d;->n(I[I)I

    move-result p1

    const/4 p2, -0x2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La0/y0;->n()I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p1, p0, 0x2

    :goto_0
    return p1
.end method

.method public final y()V
    .locals 8

    iget-object v0, p0, La0/y0;->w:LJ7/c;

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    iget-object v1, v0, LJ7/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, LJ7/c;->B()I

    move-result v1

    invoke-virtual {p0, v1}, La0/y0;->p(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, La0/y0;->q(I)I

    move-result v4

    add-int/2addr v4, v1

    :goto_1
    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    iget-object v6, p0, La0/y0;->b:[I

    invoke-virtual {p0, v3}, La0/y0;->p(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v7, v5

    aget v6, v6, v7

    const/high16 v7, 0xc000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    move v3, v5

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v3}, La0/y0;->q(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, La0/y0;->b:[I

    invoke-static {v2, v4}, La0/d;->f(I[I)Z

    move-result v4

    if-eq v4, v3, :cond_0

    iget-object v4, p0, La0/y0;->b:[I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v5

    if-eqz v3, :cond_3

    aget v3, v4, v2

    const/high16 v5, 0x4000000

    or-int/2addr v3, v5

    aput v3, v4, v2

    goto :goto_3

    :cond_3
    aget v3, v4, v2

    const v5, -0x4000001

    and-int/2addr v3, v5

    aput v3, v4, v2

    :goto_3
    invoke-virtual {p0, v1, v4}, La0/y0;->x(I[I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, LJ7/c;->c(I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final z()Z
    .locals 7

    iget v0, p0, La0/y0;->n:I

    if-nez v0, :cond_2

    iget v0, p0, La0/y0;->s:I

    iget v1, p0, La0/y0;->i:I

    iget-object v2, p0, La0/y0;->b:[I

    invoke-virtual {p0, v0}, La0/y0;->p(I)I

    move-result v3

    invoke-virtual {p0, v3, v2}, La0/y0;->f(I[I)I

    move-result v2

    iget v3, p0, La0/y0;->s:I

    invoke-virtual {p0, v3}, La0/y0;->p(I)I

    move-result v3

    iget v4, p0, La0/y0;->s:I

    iget-object v5, p0, La0/y0;->b:[I

    invoke-static {v3, v5}, La0/d;->h(I[I)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p0, La0/y0;->s:I

    iget-object v4, p0, La0/y0;->b:[I

    invoke-virtual {p0, v5}, La0/y0;->p(I)I

    move-result v5

    invoke-virtual {p0, v5, v4}, La0/y0;->f(I[I)I

    move-result v4

    iput v4, p0, La0/y0;->i:I

    iget-object v4, p0, La0/y0;->b:[I

    invoke-static {v3, v4}, La0/d;->k(I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, La0/y0;->b:[I

    invoke-static {v3, v4}, La0/d;->m(I[I)I

    move-result v3

    :goto_0
    iget v4, p0, La0/y0;->u:I

    invoke-virtual {p0, v4}, La0/y0;->F(I)La0/M;

    iget-object v4, p0, La0/y0;->w:LJ7/c;

    if-eqz v4, :cond_1

    :goto_1
    iget-object v5, v4, LJ7/c;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lt v5, v0, :cond_1

    invoke-virtual {v4}, LJ7/c;->B()I

    goto :goto_1

    :cond_1
    iget v4, p0, La0/y0;->s:I

    sub-int/2addr v4, v0

    invoke-virtual {p0, v0, v4}, La0/y0;->A(II)Z

    move-result v4

    iget v5, p0, La0/y0;->i:I

    sub-int/2addr v5, v2

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v2, v5, v6}, La0/y0;->B(III)V

    iput v0, p0, La0/y0;->s:I

    iput v1, p0, La0/y0;->i:I

    iget v0, p0, La0/y0;->o:I

    sub-int/2addr v0, v3

    iput v0, p0, La0/y0;->o:I

    return v4

    :cond_2
    const-string p0, "Cannot remove group while inserting"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
