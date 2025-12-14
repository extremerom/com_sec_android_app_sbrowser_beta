.class public final LN0/i;
.super LN0/h;
.source "SourceFile"


# instance fields
.field public A0:Ljava/lang/ref/WeakReference;

.field public B0:Ljava/lang/ref/WeakReference;

.field public C0:Ljava/lang/ref/WeakReference;

.field public final D0:LO0/b;

.field public k0:Ljava/util/ArrayList;

.field public final l0:Lo3/t;

.field public final m0:LO0/e;

.field public n0:LP0/i;

.field public o0:Z

.field public final p0:LM0/c;

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:I

.field public u0:[LN0/b;

.field public v0:[LN0/b;

.field public w0:I

.field public x0:Z

.field public y0:Z

.field public z0:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, LN0/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LN0/i;->k0:Ljava/util/ArrayList;

    new-instance v0, Lo3/t;

    invoke-direct {v0, p0}, Lo3/t;-><init>(LN0/i;)V

    iput-object v0, p0, LN0/i;->l0:Lo3/t;

    new-instance v0, LO0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, LO0/e;->b:Z

    iput-boolean v1, v0, LO0/e;->c:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO0/e;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, LO0/e;->f:LP0/i;

    new-instance v2, LO0/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, LO0/e;->g:LO0/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, LO0/e;->h:Ljava/util/ArrayList;

    iput-object p0, v0, LO0/e;->a:LN0/i;

    iput-object p0, v0, LO0/e;->d:LN0/i;

    iput-object v0, p0, LN0/i;->m0:LO0/e;

    iput-object v1, p0, LN0/i;->n0:LP0/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, LN0/i;->o0:Z

    new-instance v2, LM0/c;

    invoke-direct {v2}, LM0/c;-><init>()V

    iput-object v2, p0, LN0/i;->p0:LM0/c;

    iput v0, p0, LN0/i;->s0:I

    iput v0, p0, LN0/i;->t0:I

    const/4 v2, 0x4

    new-array v3, v2, [LN0/b;

    iput-object v3, p0, LN0/i;->u0:[LN0/b;

    new-array v2, v2, [LN0/b;

    iput-object v2, p0, LN0/i;->v0:[LN0/b;

    const/16 v2, 0x101

    iput v2, p0, LN0/i;->w0:I

    iput-boolean v0, p0, LN0/i;->x0:Z

    iput-boolean v0, p0, LN0/i;->y0:Z

    iput-object v1, p0, LN0/i;->z0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, LN0/i;->A0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, LN0/i;->B0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, LN0/i;->C0:Ljava/lang/ref/WeakReference;

    new-instance v0, LO0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LN0/i;->D0:LO0/b;

    return-void
.end method

.method public static P(LN0/h;LP0/i;LO0/b;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN0/h;->N:[LN0/g;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p2, LO0/b;->a:LN0/g;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, p2, LO0/b;->b:LN0/g;

    invoke-virtual {p0}, LN0/h;->n()I

    move-result v0

    iput v0, p2, LO0/b;->c:I

    invoke-virtual {p0}, LN0/h;->k()I

    move-result v0

    iput v0, p2, LO0/b;->d:I

    iput-boolean v1, p2, LO0/b;->i:Z

    iput v1, p2, LO0/b;->j:I

    iget-object v0, p2, LO0/b;->a:LN0/g;

    sget-object v3, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v4, p2, LO0/b;->b:LN0/g;

    if-ne v4, v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget v5, p0, LN0/h;->R:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v3, :cond_4

    iget v6, p0, LN0/h;->R:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, LN0/h;->q(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, LN0/h;->l:I

    if-nez v6, :cond_6

    if-nez v5, :cond_6

    sget-object v0, LN0/g;->WRAP_CONTENT:LN0/g;

    iput-object v0, p2, LO0/b;->a:LN0/g;

    if-eqz v3, :cond_5

    iget v0, p0, LN0/h;->m:I

    if-nez v0, :cond_5

    sget-object v0, LN0/g;->FIXED:LN0/g;

    iput-object v0, p2, LO0/b;->a:LN0/g;

    :cond_5
    move v0, v1

    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {p0, v2}, LN0/h;->q(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, LN0/h;->m:I

    if-nez v6, :cond_8

    if-nez v4, :cond_8

    sget-object v3, LN0/g;->WRAP_CONTENT:LN0/g;

    iput-object v3, p2, LO0/b;->b:LN0/g;

    if-eqz v0, :cond_7

    iget v3, p0, LN0/h;->l:I

    if-nez v3, :cond_7

    sget-object v3, LN0/g;->FIXED:LN0/g;

    iput-object v3, p2, LO0/b;->b:LN0/g;

    :cond_7
    move v3, v1

    :cond_8
    invoke-virtual {p0}, LN0/h;->w()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v0, LN0/g;->FIXED:LN0/g;

    iput-object v0, p2, LO0/b;->a:LN0/g;

    move v0, v1

    :cond_9
    invoke-virtual {p0}, LN0/h;->x()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v3, LN0/g;->FIXED:LN0/g;

    iput-object v3, p2, LO0/b;->b:LN0/g;

    move v3, v1

    :cond_a
    iget-object v6, p0, LN0/h;->n:[I

    const/4 v7, -0x1

    const/4 v8, 0x4

    if-eqz v5, :cond_f

    aget v5, v6, v1

    if-ne v5, v8, :cond_b

    sget-object v3, LN0/g;->FIXED:LN0/g;

    iput-object v3, p2, LO0/b;->a:LN0/g;

    goto :goto_6

    :cond_b
    if-nez v3, :cond_f

    iget-object v3, p2, LO0/b;->b:LN0/g;

    sget-object v5, LN0/g;->FIXED:LN0/g;

    if-ne v3, v5, :cond_c

    iget v3, p2, LO0/b;->d:I

    goto :goto_4

    :cond_c
    sget-object v3, LN0/g;->WRAP_CONTENT:LN0/g;

    iput-object v3, p2, LO0/b;->a:LN0/g;

    invoke-virtual {p1, p0, p2}, LP0/i;->b(LN0/h;LO0/b;)V

    iget v3, p2, LO0/b;->f:I

    :goto_4
    iput-object v5, p2, LO0/b;->a:LN0/g;

    iget v5, p0, LN0/h;->S:I

    if-eqz v5, :cond_e

    if-ne v5, v7, :cond_d

    goto :goto_5

    :cond_d
    iget v5, p0, LN0/h;->R:F

    int-to-float v3, v3

    div-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p2, LO0/b;->c:I

    goto :goto_6

    :cond_e
    :goto_5
    iget v5, p0, LN0/h;->R:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p2, LO0/b;->c:I

    :cond_f
    :goto_6
    if-eqz v4, :cond_14

    aget v2, v6, v2

    if-ne v2, v8, :cond_10

    sget-object v0, LN0/g;->FIXED:LN0/g;

    iput-object v0, p2, LO0/b;->b:LN0/g;

    goto :goto_9

    :cond_10
    if-nez v0, :cond_14

    iget-object v0, p2, LO0/b;->a:LN0/g;

    sget-object v2, LN0/g;->FIXED:LN0/g;

    if-ne v0, v2, :cond_11

    iget v0, p2, LO0/b;->c:I

    goto :goto_7

    :cond_11
    sget-object v0, LN0/g;->WRAP_CONTENT:LN0/g;

    iput-object v0, p2, LO0/b;->b:LN0/g;

    invoke-virtual {p1, p0, p2}, LP0/i;->b(LN0/h;LO0/b;)V

    iget v0, p2, LO0/b;->e:I

    :goto_7
    iput-object v2, p2, LO0/b;->b:LN0/g;

    iget v2, p0, LN0/h;->S:I

    if-eqz v2, :cond_13

    if-ne v2, v7, :cond_12

    goto :goto_8

    :cond_12
    int-to-float v0, v0

    iget v2, p0, LN0/h;->R:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, LO0/b;->d:I

    goto :goto_9

    :cond_13
    :goto_8
    int-to-float v0, v0

    iget v2, p0, LN0/h;->R:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, LO0/b;->d:I

    :cond_14
    :goto_9
    invoke-virtual {p1, p0, p2}, LP0/i;->b(LN0/h;LO0/b;)V

    iget p1, p2, LO0/b;->e:I

    invoke-virtual {p0, p1}, LN0/h;->H(I)V

    iget p1, p2, LO0/b;->f:I

    invoke-virtual {p0, p1}, LN0/h;->E(I)V

    iget-boolean p1, p2, LO0/b;->h:Z

    iput-boolean p1, p0, LN0/h;->y:Z

    iget p1, p2, LO0/b;->g:I

    invoke-virtual {p0, p1}, LN0/h;->B(I)V

    iput v1, p2, LO0/b;->j:I

    return-void
.end method


# virtual methods
.method public final A(Lo3/t;)V
    .locals 3

    invoke-super {p0, p1}, LN0/h;->A(Lo3/t;)V

    iget-object v0, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN0/h;

    invoke-virtual {v2, p1}, LN0/h;->A(Lo3/t;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, LN0/h;->I(ZZ)V

    iget-object v0, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN0/h;

    invoke-virtual {v2, p1, p2}, LN0/h;->I(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final K(LN0/h;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget p2, p0, LN0/i;->s0:I

    add-int/2addr p2, v0

    iget-object v1, p0, LN0/i;->v0:[LN0/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [LN0/b;

    iput-object p2, p0, LN0/i;->v0:[LN0/b;

    :cond_0
    iget-object p2, p0, LN0/i;->v0:[LN0/b;

    iget v1, p0, LN0/i;->s0:I

    new-instance v2, LN0/b;

    iget-boolean v3, p0, LN0/i;->o0:Z

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v3}, LN0/b;-><init>(LN0/h;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, LN0/i;->s0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    iget p2, p0, LN0/i;->t0:I

    add-int/2addr p2, v0

    iget-object v1, p0, LN0/i;->u0:[LN0/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [LN0/b;

    iput-object p2, p0, LN0/i;->u0:[LN0/b;

    :cond_2
    iget-object p2, p0, LN0/i;->u0:[LN0/b;

    iget v1, p0, LN0/i;->t0:I

    new-instance v2, LN0/b;

    iget-boolean v3, p0, LN0/i;->o0:Z

    invoke-direct {v2, p1, v0, v3}, LN0/b;-><init>(LN0/h;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, LN0/i;->t0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final L(LM0/c;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, LN0/i;->Q(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, LN0/h;->b(LM0/c;Z)V

    iget-object v1, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LN0/h;

    iget-object v7, v6, LN0/h;->M:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, LN0/a;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_7

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    iget-object v4, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/h;

    instance-of v6, v4, LN0/a;

    if-eqz v6, :cond_6

    check-cast v4, LN0/a;

    move v6, v2

    :goto_2
    iget v7, v4, LN0/n;->l0:I

    if-ge v6, v7, :cond_6

    iget-object v7, v4, LN0/n;->k0:[LN0/h;

    aget-object v7, v7, v6

    iget v8, v4, LN0/a;->m0:I

    if-eqz v8, :cond_4

    if-ne v8, v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    :cond_3
    iget-object v7, v7, LN0/h;->M:[Z

    aput-boolean v5, v7, v5

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v7, v7, LN0/h;->M:[Z

    aput-boolean v5, v7, v2

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_a

    iget-object v4, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/h;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v4, LN0/k;

    if-nez v6, :cond_8

    instance-of v6, v4, LN0/m;

    if-eqz v6, :cond_9

    :cond_8
    invoke-virtual {v4, p1, v0}, LN0/h;->b(LM0/c;Z)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    sget-boolean v3, LM0/c;->p:Z

    if-eqz v3, :cond_f

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_6
    if-ge v4, v1, :cond_d

    iget-object v6, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LN0/h;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, LN0/k;

    if-nez v7, :cond_c

    instance-of v7, v6, LN0/m;

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, p0, LN0/h;->N:[LN0/g;

    aget-object v1, v1, v2

    sget-object v4, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v1, v4, :cond_e

    move v10, v2

    goto :goto_8

    :cond_e
    move v10, v5

    :goto_8
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, LN0/h;->a(LN0/i;LM0/c;Ljava/util/HashSet;IZ)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/h;

    invoke-static {p0, p1, v3}, LN0/o;->b(LN0/i;LM0/c;LN0/h;)V

    invoke-virtual {v3, p1, v0}, LN0/h;->b(LM0/c;Z)V

    goto :goto_9

    :cond_f
    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_16

    iget-object v4, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/h;

    instance-of v6, v4, LN0/i;

    if-eqz v6, :cond_13

    iget-object v6, v4, LN0/h;->N:[LN0/g;

    aget-object v7, v6, v2

    aget-object v6, v6, v5

    sget-object v8, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v7, v8, :cond_10

    sget-object v9, LN0/g;->FIXED:LN0/g;

    invoke-virtual {v4, v9}, LN0/h;->F(LN0/g;)V

    :cond_10
    if-ne v6, v8, :cond_11

    sget-object v9, LN0/g;->FIXED:LN0/g;

    invoke-virtual {v4, v9}, LN0/h;->G(LN0/g;)V

    :cond_11
    invoke-virtual {v4, p1, v0}, LN0/h;->b(LM0/c;Z)V

    if-ne v7, v8, :cond_12

    invoke-virtual {v4, v7}, LN0/h;->F(LN0/g;)V

    :cond_12
    if-ne v6, v8, :cond_15

    invoke-virtual {v4, v6}, LN0/h;->G(LN0/g;)V

    goto :goto_b

    :cond_13
    invoke-static {p0, p1, v4}, LN0/o;->b(LN0/i;LM0/c;LN0/h;)V

    instance-of v6, v4, LN0/k;

    if-nez v6, :cond_15

    instance-of v6, v4, LN0/m;

    if-eqz v6, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {v4, p1, v0}, LN0/h;->b(LM0/c;Z)V

    :cond_15
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_16
    iget v0, p0, LN0/i;->s0:I

    const/4 v1, 0x0

    if-lez v0, :cond_17

    invoke-static {p0, p1, v1, v2}, LN0/o;->a(LN0/i;LM0/c;Ljava/util/ArrayList;I)V

    :cond_17
    iget v0, p0, LN0/i;->t0:I

    if-lez v0, :cond_18

    invoke-static {p0, p1, v1, v5}, LN0/o;->a(LN0/i;LM0/c;Ljava/util/ArrayList;I)V

    :cond_18
    return-void
.end method

.method public final M(LN0/e;)V
    .locals 2

    iget-object v0, p0, LN0/i;->z0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LN0/e;->d()I

    move-result v0

    iget-object v1, p0, LN0/i;->z0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/e;

    invoke-virtual {v1}, LN0/e;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LN0/i;->z0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public final N(IZ)Z
    .locals 11

    iget-object p0, p0, LN0/i;->m0:LO0/e;

    iget-object v0, p0, LO0/e;->a:LN0/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN0/h;->j(I)LN0/g;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LN0/h;->j(I)LN0/g;

    move-result-object v4

    invoke-virtual {v0}, LN0/h;->o()I

    move-result v5

    invoke-virtual {v0}, LN0/h;->p()I

    move-result v6

    iget-object v7, p0, LO0/e;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    sget-object v8, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v2, v8, :cond_0

    if-ne v4, v8, :cond_4

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LO0/t;

    iget v10, v9, LO0/t;->f:I

    if-ne v10, p1, :cond_1

    invoke-virtual {v9}, LO0/t;->k()Z

    move-result v9

    if-nez v9, :cond_1

    move p2, v1

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    sget-object p2, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v2, p2, :cond_4

    sget-object p2, LN0/g;->FIXED:LN0/g;

    invoke-virtual {v0, p2}, LN0/h;->F(LN0/g;)V

    invoke-virtual {p0, v0, v1}, LO0/e;->d(LN0/i;I)I

    move-result p2

    invoke-virtual {v0, p2}, LN0/h;->H(I)V

    iget-object p2, v0, LN0/h;->d:LO0/m;

    iget-object p2, p2, LO0/t;->e:LO0/h;

    invoke-virtual {v0}, LN0/h;->n()I

    move-result v8

    invoke-virtual {p2, v8}, LO0/h;->d(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    sget-object p2, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v4, p2, :cond_4

    sget-object p2, LN0/g;->FIXED:LN0/g;

    invoke-virtual {v0, p2}, LN0/h;->G(LN0/g;)V

    invoke-virtual {p0, v0, v3}, LO0/e;->d(LN0/i;I)I

    move-result p2

    invoke-virtual {v0, p2}, LN0/h;->E(I)V

    iget-object p2, v0, LN0/h;->e:LO0/p;

    iget-object p2, p2, LO0/t;->e:LO0/h;

    invoke-virtual {v0}, LN0/h;->k()I

    move-result v8

    invoke-virtual {p2, v8}, LO0/h;->d(I)V

    :cond_4
    :goto_0
    iget-object p2, v0, LN0/h;->N:[LN0/g;

    if-nez p1, :cond_6

    aget-object p2, p2, v1

    sget-object v6, LN0/g;->FIXED:LN0/g;

    if-eq p2, v6, :cond_5

    sget-object v6, LN0/g;->MATCH_PARENT:LN0/g;

    if-ne p2, v6, :cond_7

    :cond_5
    invoke-virtual {v0}, LN0/h;->n()I

    move-result p2

    add-int/2addr p2, v5

    iget-object v6, v0, LN0/h;->d:LO0/m;

    iget-object v6, v6, LO0/t;->i:LO0/g;

    invoke-virtual {v6, p2}, LO0/g;->d(I)V

    iget-object v6, v0, LN0/h;->d:LO0/m;

    iget-object v6, v6, LO0/t;->e:LO0/h;

    sub-int/2addr p2, v5

    invoke-virtual {v6, p2}, LO0/h;->d(I)V

    :goto_1
    move p2, v3

    goto :goto_3

    :cond_6
    aget-object p2, p2, v3

    sget-object v5, LN0/g;->FIXED:LN0/g;

    if-eq p2, v5, :cond_8

    sget-object v5, LN0/g;->MATCH_PARENT:LN0/g;

    if-ne p2, v5, :cond_7

    goto :goto_2

    :cond_7
    move p2, v1

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v0}, LN0/h;->k()I

    move-result p2

    add-int/2addr p2, v6

    iget-object v5, v0, LN0/h;->e:LO0/p;

    iget-object v5, v5, LO0/t;->i:LO0/g;

    invoke-virtual {v5, p2}, LO0/g;->d(I)V

    iget-object v5, v0, LN0/h;->e:LO0/p;

    iget-object v5, v5, LO0/t;->e:LO0/h;

    sub-int/2addr p2, v6

    invoke-virtual {v5, p2}, LO0/h;->d(I)V

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, LO0/e;->g()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO0/t;

    iget v6, v5, LO0/t;->f:I

    if-eq v6, p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v5, LO0/t;->b:LN0/h;

    if-ne v6, v0, :cond_a

    iget-boolean v6, v5, LO0/t;->g:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, LO0/t;->e()V

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO0/t;

    iget v6, v5, LO0/t;->f:I

    if-eq v6, p1, :cond_d

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    iget-object v6, v5, LO0/t;->b:LN0/h;

    if-ne v6, v0, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, v5, LO0/t;->h:LO0/g;

    iget-boolean v6, v6, LO0/g;->j:Z

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    iget-object v6, v5, LO0/t;->i:LO0/g;

    iget-boolean v6, v6, LO0/g;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    instance-of v6, v5, LO0/c;

    if-nez v6, :cond_c

    iget-object v5, v5, LO0/t;->e:LO0/h;

    iget-boolean v5, v5, LO0/g;->j:Z

    if-nez v5, :cond_c

    goto :goto_6

    :cond_11
    move v1, v3

    :goto_6
    invoke-virtual {v0, v2}, LN0/h;->F(LN0/g;)V

    invoke-virtual {v0, v4}, LN0/h;->G(LN0/g;)V

    return v1
.end method

.method public final O()V
    .locals 28

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, LN0/h;->T:I

    iput v2, v1, LN0/h;->U:I

    iput-boolean v2, v1, LN0/i;->x0:Z

    iput-boolean v2, v1, LN0/i;->y0:Z

    iget-object v0, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, LN0/h;->n()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, LN0/h;->k()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, LN0/h;->N:[LN0/g;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    aget-object v8, v5, v2

    iget v9, v1, LN0/i;->w0:I

    invoke-static {v9, v6}, LN0/o;->c(II)Z

    move-result v9

    iget-object v10, v1, LN0/h;->D:LN0/e;

    iget-object v11, v1, LN0/h;->C:LN0/e;

    if-eqz v9, :cond_1e

    iget-object v9, v1, LN0/i;->n0:LP0/i;

    aget-object v12, v5, v2

    aget-object v13, v5, v6

    iput-boolean v2, v1, LN0/h;->h:Z

    iput-boolean v2, v1, LN0/h;->i:Z

    iget-object v14, v1, LN0/h;->L:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v6, v2

    :goto_0
    if-ge v6, v15, :cond_0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    check-cast v14, LN0/e;

    iput-boolean v2, v14, LN0/e;->c:Z

    iput v2, v14, LN0/e;->b:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v14, v18

    goto :goto_0

    :cond_0
    iget-object v6, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v15, v2

    :goto_1
    if-ge v15, v14, :cond_2

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, LN0/h;

    iput-boolean v2, v4, LN0/h;->h:Z

    iput-boolean v2, v4, LN0/h;->i:Z

    iget-object v4, v4, LN0/h;->L:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v19, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v2

    move-object/from16 v2, v20

    check-cast v2, LN0/e;

    move-object/from16 v20, v4

    const/4 v4, 0x0

    iput-boolean v4, v2, LN0/e;->c:Z

    iput v4, v2, LN0/e;->b:I

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v20

    move/from16 v2, v21

    goto :goto_2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v18

    move/from16 v0, v19

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move/from16 v19, v0

    move/from16 v18, v4

    iget-boolean v0, v1, LN0/i;->o0:Z

    sget-object v2, LN0/g;->FIXED:LN0/g;

    if-ne v12, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, LN0/h;->n()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, LN0/h;->C(II)V

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, LN0/e;->l(I)V

    iput v4, v1, LN0/h;->T:I

    :goto_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v4, v14, :cond_9

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    check-cast v15, LN0/h;

    move-object/from16 v21, v11

    instance-of v11, v15, LN0/m;

    if-eqz v11, :cond_7

    check-cast v15, LN0/m;

    iget v11, v15, LN0/m;->o0:I

    move-object/from16 v22, v5

    const/4 v5, 0x1

    if-ne v11, v5, :cond_8

    iget v2, v15, LN0/m;->l0:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    invoke-virtual {v15, v2}, LN0/m;->K(I)V

    goto :goto_5

    :cond_4
    iget v2, v15, LN0/m;->m0:I

    if-eq v2, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, LN0/h;->w()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, LN0/h;->n()I

    move-result v2

    iget v5, v15, LN0/m;->m0:I

    sub-int/2addr v2, v5

    invoke-virtual {v15, v2}, LN0/m;->K(I)V

    goto :goto_5

    :cond_5
    invoke-virtual/range {p0 .. p0}, LN0/h;->w()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v15, LN0/m;->k0:F

    invoke-virtual/range {p0 .. p0}, LN0/h;->n()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v15, v2}, LN0/m;->K(I)V

    :cond_6
    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v22, v5

    instance-of v5, v15, LN0/a;

    if-eqz v5, :cond_8

    check-cast v15, LN0/a;

    invoke-virtual {v15}, LN0/a;->N()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v12, 0x1

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v11, v21

    move-object/from16 v5, v22

    goto :goto_4

    :cond_9
    move-object/from16 v22, v5

    move-object/from16 v21, v11

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v14, :cond_b

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/h;

    instance-of v5, v4, LN0/m;

    if-eqz v5, :cond_a

    check-cast v4, LN0/m;

    iget v5, v4, LN0/m;->o0:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_a

    invoke-static {v4, v9, v0}, LO0/i;->c(LN0/h;LP0/i;Z)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    invoke-static {v1, v9, v0}, LO0/i;->c(LN0/h;LP0/i;Z)V

    if-eqz v12, :cond_d

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v14, :cond_d

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/h;

    instance-of v5, v4, LN0/a;

    if-eqz v5, :cond_c

    check-cast v4, LN0/a;

    invoke-virtual {v4}, LN0/a;->N()I

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, LN0/a;->M()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v4, v9, v0}, LO0/i;->c(LN0/h;LP0/i;Z)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    sget-object v2, LN0/g;->FIXED:LN0/g;

    if-ne v13, v2, :cond_e

    invoke-virtual/range {p0 .. p0}, LN0/h;->k()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, LN0/h;->D(II)V

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, LN0/e;->l(I)V

    iput v4, v1, LN0/h;->U:I

    :goto_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v4, v14, :cond_15

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LN0/h;

    instance-of v12, v11, LN0/m;

    if-eqz v12, :cond_13

    check-cast v11, LN0/m;

    iget v12, v11, LN0/m;->o0:I

    if-nez v12, :cond_12

    iget v5, v11, LN0/m;->l0:I

    const/4 v12, -0x1

    if-eq v5, v12, :cond_10

    invoke-virtual {v11, v5}, LN0/m;->K(I)V

    :cond_f
    :goto_b
    const/high16 v13, 0x3f000000    # 0.5f

    goto :goto_c

    :cond_10
    iget v5, v11, LN0/m;->m0:I

    if-eq v5, v12, :cond_11

    invoke-virtual/range {p0 .. p0}, LN0/h;->x()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual/range {p0 .. p0}, LN0/h;->k()I

    move-result v5

    iget v13, v11, LN0/m;->m0:I

    sub-int/2addr v5, v13

    invoke-virtual {v11, v5}, LN0/m;->K(I)V

    goto :goto_b

    :cond_11
    invoke-virtual/range {p0 .. p0}, LN0/h;->x()Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, v11, LN0/m;->k0:F

    invoke-virtual/range {p0 .. p0}, LN0/h;->k()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v5, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v5, v13

    float-to-int v5, v5

    invoke-virtual {v11, v5}, LN0/m;->K(I)V

    :goto_c
    const/4 v5, 0x1

    goto :goto_d

    :cond_12
    const/4 v12, -0x1

    const/high16 v13, 0x3f000000    # 0.5f

    goto :goto_d

    :cond_13
    const/4 v12, -0x1

    const/high16 v13, 0x3f000000    # 0.5f

    instance-of v15, v11, LN0/a;

    if-eqz v15, :cond_14

    check-cast v11, LN0/a;

    invoke-virtual {v11}, LN0/a;->N()I

    move-result v11

    const/4 v15, 0x1

    if-ne v11, v15, :cond_14

    const/4 v2, 0x1

    :cond_14
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_15
    if-eqz v5, :cond_17

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v14, :cond_17

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LN0/h;

    instance-of v11, v5, LN0/m;

    if-eqz v11, :cond_16

    check-cast v5, LN0/m;

    iget v11, v5, LN0/m;->o0:I

    if-nez v11, :cond_16

    invoke-static {v5, v9}, LO0/i;->i(LN0/h;LP0/i;)V

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_17
    invoke-static {v1, v9}, LO0/i;->i(LN0/h;LP0/i;)V

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v14, :cond_19

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/h;

    instance-of v5, v4, LN0/a;

    if-eqz v5, :cond_18

    check-cast v4, LN0/a;

    invoke-virtual {v4}, LN0/a;->N()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_18

    invoke-virtual {v4}, LN0/a;->M()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v4, v9}, LO0/i;->i(LN0/h;LP0/i;)V

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v14, :cond_1b

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/h;

    invoke-virtual {v4}, LN0/h;->v()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v4}, LO0/i;->a(LN0/h;)Z

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v5, LO0/i;->a:LO0/b;

    invoke-static {v4, v9, v5}, LN0/i;->P(LN0/h;LP0/i;LO0/b;)V

    invoke-static {v4, v9, v0}, LO0/i;->c(LN0/h;LP0/i;Z)V

    invoke-static {v4, v9}, LO0/i;->i(LN0/h;LP0/i;)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1b
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v3, :cond_1f

    iget-object v2, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN0/h;

    invoke-virtual {v2}, LN0/h;->v()Z

    move-result v4

    if-eqz v4, :cond_1d

    instance-of v4, v2, LN0/m;

    if-nez v4, :cond_1d

    instance-of v4, v2, LN0/a;

    if-nez v4, :cond_1d

    instance-of v4, v2, LN0/k;

    if-nez v4, :cond_1d

    iget-boolean v4, v2, LN0/h;->z:Z

    if-nez v4, :cond_1d

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, LN0/h;->j(I)LN0/g;

    move-result-object v5

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, LN0/h;->j(I)LN0/g;

    move-result-object v6

    sget-object v9, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v5, v9, :cond_1c

    iget v5, v2, LN0/h;->l:I

    if-eq v5, v4, :cond_1c

    if-ne v6, v9, :cond_1c

    iget v5, v2, LN0/h;->m:I

    if-eq v5, v4, :cond_1c

    goto :goto_12

    :cond_1c
    new-instance v4, LO0/b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, v1, LN0/i;->n0:LP0/i;

    invoke-static {v2, v5, v4}, LN0/i;->P(LN0/h;LP0/i;LO0/b;)V

    :cond_1d
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1e
    move/from16 v19, v0

    move/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v21, v11

    :cond_1f
    iget-object v2, v1, LN0/i;->p0:LM0/c;

    const/4 v5, 0x2

    if-le v3, v5, :cond_20

    sget-object v0, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v8, v0, :cond_21

    if-ne v7, v0, :cond_20

    goto :goto_13

    :cond_20
    move/from16 v24, v3

    move-object v5, v7

    move-object/from16 v23, v10

    move/from16 v6, v18

    move/from16 v4, v19

    move-object v7, v2

    move-object v2, v8

    goto/16 :goto_35

    :cond_21
    :goto_13
    iget v0, v1, LN0/i;->w0:I

    const/16 v6, 0x400

    invoke-static {v0, v6}, LN0/o;->c(II)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v1, LN0/i;->n0:LP0/i;

    iget-object v6, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_14
    if-ge v11, v9, :cond_24

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LN0/h;

    const/4 v13, 0x0

    aget-object v14, v22, v13

    const/4 v15, 0x1

    aget-object v5, v22, v15

    iget-object v4, v12, LN0/h;->N:[LN0/g;

    move-object/from16 v23, v10

    aget-object v10, v4, v13

    aget-object v4, v4, v15

    invoke-static {v14, v5, v10, v4}, LO0/i;->h(LN0/g;LN0/g;LN0/g;LN0/g;)Z

    move-result v4

    if-nez v4, :cond_22

    :goto_15
    move/from16 v24, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object v7, v2

    goto/16 :goto_2e

    :cond_22
    instance-of v4, v12, LN0/k;

    if-eqz v4, :cond_23

    goto :goto_15

    :cond_23
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v23

    const/4 v5, 0x2

    goto :goto_14

    :cond_24
    move-object/from16 v23, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_16
    if-ge v4, v9, :cond_35

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LN0/h;

    move/from16 v24, v3

    const/16 v17, 0x0

    aget-object v3, v22, v17

    move-object/from16 v25, v7

    const/16 v16, 0x1

    aget-object v7, v22, v16

    move-object/from16 v26, v8

    iget-object v8, v15, LN0/h;->N:[LN0/g;

    move-object/from16 v27, v2

    aget-object v2, v8, v17

    aget-object v8, v8, v16

    invoke-static {v3, v7, v2, v8}, LO0/i;->h(LN0/g;LN0/g;LN0/g;LN0/g;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v1, LN0/i;->D0:LO0/b;

    invoke-static {v15, v0, v2}, LN0/i;->P(LN0/h;LP0/i;LO0/b;)V

    :cond_25
    instance-of v2, v15, LN0/m;

    if-eqz v2, :cond_29

    move-object v3, v15

    check-cast v3, LN0/m;

    iget v7, v3, LN0/m;->o0:I

    if-nez v7, :cond_27

    if-nez v11, :cond_26

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget v7, v3, LN0/m;->o0:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_29

    if-nez v5, :cond_28

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_28
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    instance-of v3, v15, LN0/n;

    if-eqz v3, :cond_30

    instance-of v3, v15, LN0/a;

    if-eqz v3, :cond_2d

    move-object v3, v15

    check-cast v3, LN0/a;

    invoke-virtual {v3}, LN0/a;->N()I

    move-result v7

    if-nez v7, :cond_2b

    if-nez v10, :cond_2a

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-virtual {v3}, LN0/a;->N()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_30

    if-nez v12, :cond_2c

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    move-object v3, v15

    check-cast v3, LN0/n;

    if-nez v10, :cond_2e

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_2f

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_17
    iget-object v3, v15, LN0/h;->C:LN0/e;

    iget-object v3, v3, LN0/e;->f:LN0/e;

    if-nez v3, :cond_32

    iget-object v3, v15, LN0/h;->E:LN0/e;

    iget-object v3, v3, LN0/e;->f:LN0/e;

    if-nez v3, :cond_32

    if-nez v2, :cond_32

    instance-of v3, v15, LN0/a;

    if-nez v3, :cond_32

    if-nez v13, :cond_31

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v3, v15, LN0/h;->D:LN0/e;

    iget-object v3, v3, LN0/e;->f:LN0/e;

    if-nez v3, :cond_34

    iget-object v3, v15, LN0/h;->F:LN0/e;

    iget-object v3, v3, LN0/e;->f:LN0/e;

    if-nez v3, :cond_34

    iget-object v3, v15, LN0/h;->G:LN0/e;

    iget-object v3, v3, LN0/e;->f:LN0/e;

    if-nez v3, :cond_34

    if-nez v2, :cond_34

    instance-of v2, v15, LN0/a;

    if-nez v2, :cond_34

    if-nez v14, :cond_33

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_33
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v2, v27

    goto/16 :goto_16

    :cond_35
    move-object/from16 v27, v2

    move/from16 v24, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/m;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_18

    :cond_36
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v10, :cond_37

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/n;

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    move-result-object v7

    invoke-virtual {v3, v4, v7, v0}, LN0/n;->K(ILO0/q;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, LO0/q;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_19

    :cond_37
    sget-object v2, LN0/d;->LEFT:LN0/d;

    invoke-virtual {v1, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    iget-object v2, v2, LN0/e;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/e;

    iget-object v3, v3, LN0/e;->d:LN0/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_1a

    :cond_38
    sget-object v2, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {v1, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    iget-object v2, v2, LN0/e;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/e;

    iget-object v3, v3, LN0/e;->d:LN0/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_1b

    :cond_39
    sget-object v2, LN0/d;->CENTER:LN0/d;

    invoke-virtual {v1, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    iget-object v2, v2, LN0/e;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/e;

    iget-object v3, v3, LN0/e;->d:LN0/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_1c

    :cond_3a
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v13, :cond_3b

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/h;

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_1d

    :cond_3b
    if-eqz v11, :cond_3c

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/m;

    const/4 v4, 0x1

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_1e

    :cond_3c
    const/4 v4, 0x1

    if-eqz v12, :cond_3d

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/n;

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    move-result-object v7

    invoke-virtual {v3, v4, v7, v0}, LN0/n;->K(ILO0/q;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, LO0/q;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_1f

    :cond_3d
    sget-object v2, LN0/d;->TOP:LN0/d;

    invoke-virtual {v1, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    iget-object v2, v2, LN0/e;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/e;

    iget-object v3, v3, LN0/e;->d:LN0/h;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_20

    :cond_3e
    sget-object v2, LN0/d;->BASELINE:LN0/d;

    invoke-virtual {v1, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    iget-object v2, v2, LN0/e;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/e;

    iget-object v3, v3, LN0/e;->d:LN0/h;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_21

    :cond_3f
    sget-object v2, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {v1, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    iget-object v2, v2, LN0/e;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/e;

    iget-object v3, v3, LN0/e;->d:LN0/h;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_22

    :cond_40
    sget-object v2, LN0/d;->CENTER:LN0/d;

    invoke-virtual {v1, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    iget-object v2, v2, LN0/e;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/e;

    iget-object v3, v3, LN0/e;->d:LN0/h;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_23

    :cond_41
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v14, :cond_42

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/h;

    invoke-static {v3, v4, v0, v5}, LO0/i;->b(LN0/h;ILjava/util/ArrayList;LO0/q;)LO0/q;

    goto :goto_24

    :cond_42
    const/4 v2, 0x0

    :goto_25
    if-ge v2, v9, :cond_48

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/h;

    iget-object v4, v3, LN0/h;->N:[LN0/g;

    const/4 v5, 0x0

    aget-object v7, v4, v5

    sget-object v5, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v7, v5, :cond_47

    const/4 v7, 0x1

    aget-object v4, v4, v7

    if-ne v4, v5, :cond_47

    iget v4, v3, LN0/h;->i0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v5, :cond_44

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LO0/q;

    iget v10, v8, LO0/q;->b:I

    if-ne v4, v10, :cond_43

    goto :goto_27

    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_44
    const/4 v8, 0x0

    :goto_27
    iget v3, v3, LN0/h;->j0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v4, :cond_46

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LO0/q;

    iget v10, v7, LO0/q;->b:I

    if-ne v3, v10, :cond_45

    goto :goto_29

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_46
    const/4 v7, 0x0

    :goto_29
    if-eqz v8, :cond_47

    if-eqz v7, :cond_47

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v7}, LO0/q;->c(ILO0/q;)V

    const/4 v3, 0x2

    iput v3, v7, LO0/q;->c:I

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_49

    move-object/from16 v7, v27

    goto/16 :goto_2e

    :cond_49
    const/4 v2, 0x0

    aget-object v3, v22, v2

    sget-object v2, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v3, v2, :cond_4d

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO0/q;

    iget v6, v5, LO0/q;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4a

    goto :goto_2a

    :cond_4a
    move-object/from16 v7, v27

    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, LO0/q;->b(LM0/c;I)I

    move-result v8

    if-le v8, v3, :cond_4b

    move-object v4, v5

    move v3, v8

    :cond_4b
    move-object/from16 v27, v7

    goto :goto_2a

    :cond_4c
    move-object/from16 v7, v27

    if-eqz v4, :cond_4e

    sget-object v2, LN0/g;->FIXED:LN0/g;

    invoke-virtual {v1, v2}, LN0/h;->F(LN0/g;)V

    invoke-virtual {v1, v3}, LN0/h;->H(I)V

    const/4 v2, 0x1

    goto :goto_2b

    :cond_4d
    move-object/from16 v7, v27

    :cond_4e
    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_2b
    aget-object v3, v22, v2

    sget-object v2, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v3, v2, :cond_52

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4f
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO0/q;

    iget v6, v5, LO0/q;->c:I

    if-nez v6, :cond_50

    goto :goto_2c

    :cond_50
    const/4 v6, 0x1

    invoke-virtual {v5, v7, v6}, LO0/q;->b(LM0/c;I)I

    move-result v8

    if-le v8, v2, :cond_4f

    move-object v3, v5

    move v2, v8

    goto :goto_2c

    :cond_51
    if-eqz v3, :cond_52

    sget-object v0, LN0/g;->FIXED:LN0/g;

    invoke-virtual {v1, v0}, LN0/h;->G(LN0/g;)V

    invoke-virtual {v1, v2}, LN0/h;->E(I)V

    goto :goto_2d

    :cond_52
    const/4 v3, 0x0

    :goto_2d
    if-nez v4, :cond_54

    if-eqz v3, :cond_53

    goto :goto_2f

    :cond_53
    :goto_2e
    move/from16 v6, v18

    move/from16 v4, v19

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    goto :goto_35

    :cond_54
    :goto_2f
    sget-object v0, LN0/g;->WRAP_CONTENT:LN0/g;

    move-object/from16 v2, v26

    if-ne v2, v0, :cond_56

    invoke-virtual/range {p0 .. p0}, LN0/h;->n()I

    move-result v3

    move/from16 v4, v19

    if-ge v4, v3, :cond_55

    if-lez v4, :cond_55

    invoke-virtual {v1, v4}, LN0/h;->H(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, LN0/i;->x0:Z

    goto :goto_31

    :cond_55
    invoke-virtual/range {p0 .. p0}, LN0/h;->n()I

    move-result v3

    :goto_30
    move-object/from16 v5, v25

    goto :goto_32

    :cond_56
    move/from16 v4, v19

    :goto_31
    move v3, v4

    goto :goto_30

    :goto_32
    if-ne v5, v0, :cond_58

    invoke-virtual/range {p0 .. p0}, LN0/h;->k()I

    move-result v0

    move/from16 v6, v18

    if-ge v6, v0, :cond_57

    if-lez v6, :cond_57

    invoke-virtual {v1, v6}, LN0/h;->E(I)V

    const/4 v4, 0x1

    iput-boolean v4, v1, LN0/i;->y0:Z

    goto :goto_33

    :cond_57
    invoke-virtual/range {p0 .. p0}, LN0/h;->k()I

    move-result v4

    goto :goto_34

    :cond_58
    move/from16 v6, v18

    :goto_33
    move v4, v6

    :goto_34
    const/4 v0, 0x1

    goto :goto_36

    :goto_35
    move v3, v4

    move v4, v6

    const/4 v0, 0x0

    :goto_36
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, LN0/i;->Q(I)Z

    move-result v8

    if-nez v8, :cond_5a

    const/16 v8, 0x80

    invoke-virtual {v1, v8}, LN0/i;->Q(I)Z

    move-result v8

    if-eqz v8, :cond_59

    goto :goto_37

    :cond_59
    const/4 v8, 0x0

    goto :goto_38

    :cond_5a
    :goto_37
    const/4 v8, 0x1

    :goto_38
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    iput-boolean v9, v7, LM0/c;->g:Z

    iget v10, v1, LN0/i;->w0:I

    if-eqz v10, :cond_5b

    if-eqz v8, :cond_5b

    const/4 v8, 0x1

    iput-boolean v8, v7, LM0/c;->g:Z

    goto :goto_39

    :cond_5b
    const/4 v8, 0x1

    :goto_39
    iget-object v10, v1, LN0/i;->k0:Ljava/util/ArrayList;

    aget-object v11, v22, v9

    sget-object v12, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v11, v12, :cond_5d

    aget-object v11, v22, v8

    if-ne v11, v12, :cond_5c

    goto :goto_3a

    :cond_5c
    move v8, v9

    goto :goto_3b

    :cond_5d
    :goto_3a
    const/4 v8, 0x1

    :goto_3b
    iput v9, v1, LN0/i;->s0:I

    iput v9, v1, LN0/i;->t0:I

    move/from16 v11, v24

    const/4 v9, 0x0

    :goto_3c
    if-ge v9, v11, :cond_5f

    iget-object v12, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LN0/h;

    instance-of v13, v12, LN0/i;

    if-eqz v13, :cond_5e

    check-cast v12, LN0/i;

    invoke-virtual {v12}, LN0/i;->O()V

    :cond_5e
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    :cond_5f
    invoke-virtual {v1, v6}, LN0/i;->Q(I)Z

    move-result v9

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_3d
    if-eqz v13, :cond_6f

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    invoke-virtual {v7}, LM0/c;->t()V

    const/4 v14, 0x0

    iput v14, v1, LN0/i;->s0:I

    iput v14, v1, LN0/i;->t0:I

    invoke-virtual {v1, v7}, LN0/h;->g(LM0/c;)V

    const/4 v0, 0x0

    :goto_3e
    if-ge v0, v11, :cond_60

    iget-object v14, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LN0/h;

    invoke-virtual {v14, v7}, LN0/h;->g(LM0/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :catch_0
    move-exception v0

    move/from16 v24, v12

    const/4 v6, 0x0

    goto/16 :goto_44

    :cond_60
    invoke-virtual {v1, v7}, LN0/i;->L(LM0/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, LN0/i;->z0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, v1, LN0/i;->z0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v14, v23

    :try_start_2
    invoke-virtual {v7, v14}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v6

    iget-object v13, v1, LN0/i;->p0:LM0/c;

    invoke-virtual {v13, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v24, v12

    move-object/from16 v23, v14

    const/4 v12, 0x5

    const/4 v14, 0x0

    :try_start_3
    invoke-virtual {v13, v0, v6, v14, v12}, LM0/c;->f(LM0/i;LM0/i;II)V

    const/4 v6, 0x0

    iput-object v6, v1, LN0/i;->z0:Ljava/lang/ref/WeakReference;

    goto :goto_41

    :catch_1
    move-exception v0

    :goto_3f
    const/4 v6, 0x0

    :goto_40
    const/4 v13, 0x1

    goto/16 :goto_44

    :catch_2
    move-exception v0

    move/from16 v24, v12

    move-object/from16 v23, v14

    goto :goto_3f

    :catch_3
    move-exception v0

    move/from16 v24, v12

    goto :goto_3f

    :cond_61
    move/from16 v24, v12

    :goto_41
    iget-object v0, v1, LN0/i;->B0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v1, LN0/i;->B0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/e;

    iget-object v6, v1, LN0/h;->F:LN0/e;

    invoke-virtual {v7, v6}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v6

    iget-object v12, v1, LN0/i;->p0:LM0/c;

    invoke-virtual {v12, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-virtual {v12, v6, v0, v13, v14}, LM0/c;->f(LM0/i;LM0/i;II)V

    const/4 v6, 0x0

    iput-object v6, v1, LN0/i;->B0:Ljava/lang/ref/WeakReference;

    :cond_62
    iget-object v0, v1, LN0/i;->A0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, LN0/i;->A0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/e;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v6, v21

    :try_start_4
    invoke-virtual {v7, v6}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v12

    iget-object v13, v1, LN0/i;->p0:LM0/c;

    invoke-virtual {v13, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v21, v6

    const/4 v6, 0x5

    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v13, v0, v12, v14, v6}, LM0/c;->f(LM0/i;LM0/i;II)V

    const/4 v6, 0x0

    iput-object v6, v1, LN0/i;->A0:Ljava/lang/ref/WeakReference;

    goto :goto_42

    :catch_4
    move-exception v0

    move-object/from16 v21, v6

    goto :goto_3f

    :cond_63
    :goto_42
    iget-object v0, v1, LN0/i;->C0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, LN0/i;->C0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/e;

    iget-object v6, v1, LN0/h;->E:LN0/e;

    invoke-virtual {v7, v6}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v12, v1, LN0/i;->p0:LM0/c;

    invoke-virtual {v12, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-virtual {v12, v6, v0, v13, v14}, LM0/c;->f(LM0/i;LM0/i;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v6, 0x0

    :try_start_7
    iput-object v6, v1, LN0/i;->C0:Ljava/lang/ref/WeakReference;

    goto :goto_43

    :catch_5
    move-exception v0

    goto/16 :goto_40

    :catch_6
    move-exception v0

    goto/16 :goto_3f

    :cond_64
    const/4 v6, 0x0

    :goto_43
    invoke-virtual {v7}, LM0/c;->p()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v13, 0x1

    goto :goto_45

    :goto_44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v6, "EXCEPTION : "

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_45
    sget-object v0, LN0/o;->a:[Z

    if-eqz v13, :cond_65

    const/4 v6, 0x0

    const/4 v12, 0x2

    aput-boolean v6, v0, v12

    const/16 v6, 0x40

    invoke-virtual {v1, v6}, LN0/i;->Q(I)Z

    move-result v12

    invoke-virtual {v1, v7, v12}, LN0/h;->J(LM0/c;Z)V

    iget-object v13, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_46
    if-ge v14, v13, :cond_66

    iget-object v6, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LN0/h;

    invoke-virtual {v6, v7, v12}, LN0/h;->J(LM0/c;Z)V

    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0x40

    goto :goto_46

    :cond_65
    invoke-virtual {v1, v7, v9}, LN0/h;->J(LM0/c;Z)V

    const/4 v6, 0x0

    :goto_47
    if-ge v6, v11, :cond_66

    iget-object v12, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LN0/h;

    invoke-virtual {v12, v7, v9}, LN0/h;->J(LM0/c;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_66
    if-eqz v8, :cond_69

    const/16 v6, 0x8

    if-ge v15, v6, :cond_69

    const/4 v6, 0x2

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_48
    if-ge v0, v11, :cond_67

    iget-object v14, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LN0/h;

    iget v6, v14, LN0/h;->T:I

    invoke-virtual {v14}, LN0/h;->n()I

    move-result v19

    add-int v6, v19, v6

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v6, v14, LN0/h;->U:I

    invoke-virtual {v14}, LN0/h;->k()I

    move-result v14

    add-int/2addr v14, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x2

    goto :goto_48

    :cond_67
    iget v0, v1, LN0/h;->W:I

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v1, LN0/h;->X:I

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v12, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v2, v12, :cond_68

    invoke-virtual/range {p0 .. p0}, LN0/h;->n()I

    move-result v13

    if-ge v13, v0, :cond_68

    invoke-virtual {v1, v0}, LN0/h;->H(I)V

    const/4 v13, 0x0

    aput-object v12, v22, v13

    const/4 v0, 0x1

    const/16 v24, 0x1

    goto :goto_49

    :cond_68
    const/4 v0, 0x0

    :goto_49
    if-ne v5, v12, :cond_6a

    invoke-virtual/range {p0 .. p0}, LN0/h;->k()I

    move-result v13

    if-ge v13, v6, :cond_6a

    invoke-virtual {v1, v6}, LN0/h;->E(I)V

    const/4 v6, 0x1

    aput-object v12, v22, v6

    const/4 v0, 0x1

    const/16 v24, 0x1

    goto :goto_4a

    :cond_69
    const/4 v0, 0x0

    :cond_6a
    :goto_4a
    iget v6, v1, LN0/h;->W:I

    invoke-virtual/range {p0 .. p0}, LN0/h;->n()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, LN0/h;->n()I

    move-result v12

    if-le v6, v12, :cond_6b

    invoke-virtual {v1, v6}, LN0/h;->H(I)V

    sget-object v0, LN0/g;->FIXED:LN0/g;

    const/4 v6, 0x0

    aput-object v0, v22, v6

    const/4 v0, 0x1

    const/16 v24, 0x1

    :cond_6b
    iget v6, v1, LN0/h;->X:I

    invoke-virtual/range {p0 .. p0}, LN0/h;->k()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, LN0/h;->k()I

    move-result v12

    if-le v6, v12, :cond_6c

    invoke-virtual {v1, v6}, LN0/h;->E(I)V

    sget-object v0, LN0/g;->FIXED:LN0/g;

    const/4 v6, 0x1

    aput-object v0, v22, v6

    move v0, v6

    move/from16 v24, v0

    goto :goto_4b

    :cond_6c
    const/4 v6, 0x1

    :goto_4b
    if-nez v24, :cond_6e

    const/4 v12, 0x0

    aget-object v13, v22, v12

    sget-object v14, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v13, v14, :cond_6d

    if-lez v3, :cond_6d

    invoke-virtual/range {p0 .. p0}, LN0/h;->n()I

    move-result v13

    if-le v13, v3, :cond_6d

    iput-boolean v6, v1, LN0/i;->x0:Z

    sget-object v0, LN0/g;->FIXED:LN0/g;

    aput-object v0, v22, v12

    invoke-virtual {v1, v3}, LN0/h;->H(I)V

    move v0, v6

    move/from16 v24, v0

    :cond_6d
    aget-object v12, v22, v6

    if-ne v12, v14, :cond_6e

    if-lez v4, :cond_6e

    invoke-virtual/range {p0 .. p0}, LN0/h;->k()I

    move-result v12

    if-le v12, v4, :cond_6e

    iput-boolean v6, v1, LN0/i;->y0:Z

    sget-object v0, LN0/g;->FIXED:LN0/g;

    aput-object v0, v22, v6

    invoke-virtual {v1, v4}, LN0/h;->E(I)V

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_4c

    :cond_6e
    move v13, v0

    move/from16 v12, v24

    :goto_4c
    move v0, v15

    const/16 v6, 0x40

    goto/16 :goto_3d

    :cond_6f
    move/from16 v24, v12

    iput-object v10, v1, LN0/i;->k0:Ljava/util/ArrayList;

    if-eqz v24, :cond_70

    const/4 v3, 0x0

    aput-object v2, v22, v3

    const/4 v2, 0x1

    aput-object v5, v22, v2

    :cond_70
    iget-object v0, v7, LM0/c;->l:Lo3/t;

    invoke-virtual {v1, v0}, LN0/i;->A(Lo3/t;)V

    return-void
.end method

.method public final Q(I)Z
    .locals 0

    iget p0, p0, LN0/i;->w0:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, LN0/i;->p0:LM0/c;

    invoke-virtual {v0}, LM0/c;->t()V

    const/4 v0, 0x0

    iput v0, p0, LN0/i;->q0:I

    iput v0, p0, LN0/i;->r0:I

    iget-object v0, p0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, LN0/h;->y()V

    return-void
.end method
