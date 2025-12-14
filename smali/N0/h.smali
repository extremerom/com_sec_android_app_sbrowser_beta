.class public LN0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public final C:LN0/e;

.field public final D:LN0/e;

.field public final E:LN0/e;

.field public final F:LN0/e;

.field public final G:LN0/e;

.field public final H:LN0/e;

.field public final I:LN0/e;

.field public final J:LN0/e;

.field public final K:[LN0/e;

.field public final L:Ljava/util/ArrayList;

.field public final M:[Z

.field public final N:[LN0/g;

.field public O:LN0/h;

.field public P:I

.field public Q:I

.field public R:F

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:F

.field public Z:F

.field public a:Z

.field public a0:Landroid/view/View;

.field public b:LO0/c;

.field public b0:I

.field public c:LO0/c;

.field public c0:Ljava/lang/String;

.field public d:LO0/m;

.field public d0:I

.field public e:LO0/p;

.field public e0:I

.field public final f:[Z

.field public final f0:[F

.field public g:Z

.field public final g0:[LN0/h;

.field public h:Z

.field public final h0:[LN0/h;

.field public i:Z

.field public i0:I

.field public j:I

.field public j0:I

.field public k:I

.field public l:I

.field public m:I

.field public final n:[I

.field public o:I

.field public p:I

.field public q:F

.field public r:I

.field public s:I

.field public t:F

.field public u:I

.field public v:F

.field public final w:[I

.field public x:F

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, LN0/h;->a:Z

    const/4 v2, 0x0

    iput-object v2, v0, LN0/h;->d:LO0/m;

    iput-object v2, v0, LN0/h;->e:LO0/p;

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v5, v4, [Z

    fill-array-data v5, :array_0

    iput-object v5, v0, LN0/h;->f:[Z

    iput-boolean v3, v0, LN0/h;->g:Z

    iput-boolean v1, v0, LN0/h;->h:Z

    iput-boolean v1, v0, LN0/h;->i:Z

    const/4 v3, -0x1

    iput v3, v0, LN0/h;->j:I

    iput v3, v0, LN0/h;->k:I

    iput v1, v0, LN0/h;->l:I

    iput v1, v0, LN0/h;->m:I

    new-array v5, v4, [I

    iput-object v5, v0, LN0/h;->n:[I

    iput v1, v0, LN0/h;->o:I

    iput v1, v0, LN0/h;->p:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, LN0/h;->q:F

    iput v1, v0, LN0/h;->r:I

    iput v1, v0, LN0/h;->s:I

    iput v5, v0, LN0/h;->t:F

    iput v3, v0, LN0/h;->u:I

    iput v5, v0, LN0/h;->v:F

    const v5, 0x7fffffff

    filled-new-array {v5, v5}, [I

    move-result-object v5

    iput-object v5, v0, LN0/h;->w:[I

    const/4 v5, 0x0

    iput v5, v0, LN0/h;->x:F

    iput-boolean v1, v0, LN0/h;->y:Z

    iput-boolean v1, v0, LN0/h;->z:Z

    iput v1, v0, LN0/h;->A:I

    iput v1, v0, LN0/h;->B:I

    new-instance v12, LN0/e;

    sget-object v6, LN0/d;->LEFT:LN0/d;

    invoke-direct {v12, v0, v6}, LN0/e;-><init>(LN0/h;LN0/d;)V

    iput-object v12, v0, LN0/h;->C:LN0/e;

    new-instance v13, LN0/e;

    sget-object v6, LN0/d;->TOP:LN0/d;

    invoke-direct {v13, v0, v6}, LN0/e;-><init>(LN0/h;LN0/d;)V

    iput-object v13, v0, LN0/h;->D:LN0/e;

    new-instance v14, LN0/e;

    sget-object v6, LN0/d;->RIGHT:LN0/d;

    invoke-direct {v14, v0, v6}, LN0/e;-><init>(LN0/h;LN0/d;)V

    iput-object v14, v0, LN0/h;->E:LN0/e;

    new-instance v15, LN0/e;

    sget-object v6, LN0/d;->BOTTOM:LN0/d;

    invoke-direct {v15, v0, v6}, LN0/e;-><init>(LN0/h;LN0/d;)V

    iput-object v15, v0, LN0/h;->F:LN0/e;

    new-instance v11, LN0/e;

    sget-object v6, LN0/d;->BASELINE:LN0/d;

    invoke-direct {v11, v0, v6}, LN0/e;-><init>(LN0/h;LN0/d;)V

    iput-object v11, v0, LN0/h;->G:LN0/e;

    new-instance v10, LN0/e;

    sget-object v6, LN0/d;->CENTER_X:LN0/d;

    invoke-direct {v10, v0, v6}, LN0/e;-><init>(LN0/h;LN0/d;)V

    iput-object v10, v0, LN0/h;->H:LN0/e;

    new-instance v9, LN0/e;

    sget-object v6, LN0/d;->CENTER_Y:LN0/d;

    invoke-direct {v9, v0, v6}, LN0/e;-><init>(LN0/h;LN0/d;)V

    iput-object v9, v0, LN0/h;->I:LN0/e;

    new-instance v8, LN0/e;

    sget-object v6, LN0/d;->CENTER:LN0/d;

    invoke-direct {v8, v0, v6}, LN0/e;-><init>(LN0/h;LN0/d;)V

    iput-object v8, v0, LN0/h;->J:LN0/e;

    move-object v6, v12

    move-object v7, v14

    move-object/from16 v16, v8

    move-object v8, v13

    move-object/from16 v17, v9

    move-object v9, v15

    move-object/from16 v18, v10

    move-object v10, v11

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    filled-new-array/range {v6 .. v11}, [LN0/e;

    move-result-object v6

    iput-object v6, v0, LN0/h;->K:[LN0/e;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, LN0/h;->L:Ljava/util/ArrayList;

    new-array v7, v4, [Z

    iput-object v7, v0, LN0/h;->M:[Z

    sget-object v7, LN0/g;->FIXED:LN0/g;

    filled-new-array {v7, v7}, [LN0/g;

    move-result-object v7

    iput-object v7, v0, LN0/h;->N:[LN0/g;

    iput-object v2, v0, LN0/h;->O:LN0/h;

    iput v1, v0, LN0/h;->P:I

    iput v1, v0, LN0/h;->Q:I

    iput v5, v0, LN0/h;->R:F

    iput v3, v0, LN0/h;->S:I

    iput v1, v0, LN0/h;->T:I

    iput v1, v0, LN0/h;->U:I

    iput v1, v0, LN0/h;->V:I

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v0, LN0/h;->Y:F

    iput v5, v0, LN0/h;->Z:F

    iput v1, v0, LN0/h;->b0:I

    iput-object v2, v0, LN0/h;->c0:Ljava/lang/String;

    iput v1, v0, LN0/h;->d0:I

    iput v1, v0, LN0/h;->e0:I

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    iput-object v1, v0, LN0/h;->f0:[F

    filled-new-array {v2, v2}, [LN0/h;

    move-result-object v1

    iput-object v1, v0, LN0/h;->g0:[LN0/h;

    filled-new-array {v2, v2}, [LN0/h;

    move-result-object v1

    iput-object v1, v0, LN0/h;->h0:[LN0/h;

    iput v3, v0, LN0/h;->i0:I

    iput v3, v0, LN0/h;->j0:I

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A(Lo3/t;)V
    .locals 0

    iget-object p1, p0, LN0/h;->C:LN0/e;

    invoke-virtual {p1}, LN0/e;->k()V

    iget-object p1, p0, LN0/h;->D:LN0/e;

    invoke-virtual {p1}, LN0/e;->k()V

    iget-object p1, p0, LN0/h;->E:LN0/e;

    invoke-virtual {p1}, LN0/e;->k()V

    iget-object p1, p0, LN0/h;->F:LN0/e;

    invoke-virtual {p1}, LN0/e;->k()V

    iget-object p1, p0, LN0/h;->G:LN0/e;

    invoke-virtual {p1}, LN0/e;->k()V

    iget-object p1, p0, LN0/h;->J:LN0/e;

    invoke-virtual {p1}, LN0/e;->k()V

    iget-object p1, p0, LN0/h;->H:LN0/e;

    invoke-virtual {p1}, LN0/e;->k()V

    iget-object p0, p0, LN0/h;->I:LN0/e;

    invoke-virtual {p0}, LN0/e;->k()V

    return-void
.end method

.method public final B(I)V
    .locals 0

    iput p1, p0, LN0/h;->V:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LN0/h;->y:Z

    return-void
.end method

.method public final C(II)V
    .locals 1

    iget-object v0, p0, LN0/h;->C:LN0/e;

    invoke-virtual {v0, p1}, LN0/e;->l(I)V

    iget-object v0, p0, LN0/h;->E:LN0/e;

    invoke-virtual {v0, p2}, LN0/e;->l(I)V

    iput p1, p0, LN0/h;->T:I

    sub-int/2addr p2, p1

    iput p2, p0, LN0/h;->P:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LN0/h;->h:Z

    return-void
.end method

.method public final D(II)V
    .locals 1

    iget-object v0, p0, LN0/h;->D:LN0/e;

    invoke-virtual {v0, p1}, LN0/e;->l(I)V

    iget-object v0, p0, LN0/h;->F:LN0/e;

    invoke-virtual {v0, p2}, LN0/e;->l(I)V

    iput p1, p0, LN0/h;->U:I

    sub-int/2addr p2, p1

    iput p2, p0, LN0/h;->Q:I

    iget-boolean p2, p0, LN0/h;->y:Z

    if-eqz p2, :cond_0

    iget p2, p0, LN0/h;->V:I

    add-int/2addr p1, p2

    iget-object p2, p0, LN0/h;->G:LN0/e;

    invoke-virtual {p2, p1}, LN0/e;->l(I)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LN0/h;->i:Z

    return-void
.end method

.method public final E(I)V
    .locals 1

    iput p1, p0, LN0/h;->Q:I

    iget v0, p0, LN0/h;->X:I

    if-ge p1, v0, :cond_0

    iput v0, p0, LN0/h;->Q:I

    :cond_0
    return-void
.end method

.method public final F(LN0/g;)V
    .locals 1

    iget-object p0, p0, LN0/h;->N:[LN0/g;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method

.method public final G(LN0/g;)V
    .locals 1

    iget-object p0, p0, LN0/h;->N:[LN0/g;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    return-void
.end method

.method public final H(I)V
    .locals 1

    iput p1, p0, LN0/h;->P:I

    iget v0, p0, LN0/h;->W:I

    if-ge p1, v0, :cond_0

    iput v0, p0, LN0/h;->P:I

    :cond_0
    return-void
.end method

.method public I(ZZ)V
    .locals 7

    iget-object v0, p0, LN0/h;->d:LO0/m;

    iget-boolean v1, v0, LO0/t;->g:Z

    and-int/2addr p1, v1

    iget-object v1, p0, LN0/h;->e:LO0/p;

    iget-boolean v2, v1, LO0/t;->g:Z

    and-int/2addr p2, v2

    iget-object v2, v0, LO0/t;->h:LO0/g;

    iget v2, v2, LO0/g;->g:I

    iget-object v3, v1, LO0/t;->h:LO0/g;

    iget v3, v3, LO0/g;->g:I

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget v0, v0, LO0/g;->g:I

    iget-object v1, v1, LO0/t;->i:LO0/g;

    iget v1, v1, LO0/g;->g:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_1
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    if-eqz p1, :cond_2

    iput v2, p0, LN0/h;->T:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, LN0/h;->U:I

    :cond_3
    iget v2, p0, LN0/h;->b0:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iput v6, p0, LN0/h;->P:I

    iput v6, p0, LN0/h;->Q:I

    return-void

    :cond_4
    iget-object v2, p0, LN0/h;->N:[LN0/g;

    if-eqz p1, :cond_6

    aget-object p1, v2, v6

    sget-object v3, LN0/g;->FIXED:LN0/g;

    if-ne p1, v3, :cond_5

    iget p1, p0, LN0/h;->P:I

    if-ge v0, p1, :cond_5

    move v0, p1

    :cond_5
    iput v0, p0, LN0/h;->P:I

    iget p1, p0, LN0/h;->W:I

    if-ge v0, p1, :cond_6

    iput p1, p0, LN0/h;->P:I

    :cond_6
    if-eqz p2, :cond_8

    const/4 p1, 0x1

    aget-object p1, v2, p1

    sget-object p2, LN0/g;->FIXED:LN0/g;

    if-ne p1, p2, :cond_7

    iget p1, p0, LN0/h;->Q:I

    if-ge v1, p1, :cond_7

    move v1, p1

    :cond_7
    iput v1, p0, LN0/h;->Q:I

    iget p1, p0, LN0/h;->X:I

    if-ge v1, p1, :cond_8

    iput p1, p0, LN0/h;->Q:I

    :cond_8
    return-void
.end method

.method public J(LM0/c;Z)V
    .locals 6

    iget-object v0, p0, LN0/h;->C:LN0/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LM0/c;->n(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, LN0/h;->D:LN0/e;

    invoke-static {v0}, LM0/c;->n(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, LN0/h;->E:LN0/e;

    invoke-static {v1}, LM0/c;->n(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, LN0/h;->F:LN0/e;

    invoke-static {v2}, LM0/c;->n(Ljava/lang/Object;)I

    move-result v2

    if-eqz p2, :cond_0

    iget-object v3, p0, LN0/h;->d:LO0/m;

    if-eqz v3, :cond_0

    iget-object v4, v3, LO0/t;->h:LO0/g;

    iget-boolean v5, v4, LO0/g;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, LO0/t;->i:LO0/g;

    iget-boolean v5, v3, LO0/g;->j:Z

    if-eqz v5, :cond_0

    iget p1, v4, LO0/g;->g:I

    iget v1, v3, LO0/g;->g:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, LN0/h;->e:LO0/p;

    if-eqz p2, :cond_1

    iget-object v3, p2, LO0/t;->h:LO0/g;

    iget-boolean v4, v3, LO0/g;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, LO0/t;->i:LO0/g;

    iget-boolean v4, p2, LO0/g;->j:Z

    if-eqz v4, :cond_1

    iget v0, v3, LO0/g;->g:I

    iget v2, p2, LO0/g;->g:I

    :cond_1
    sub-int p2, v1, p1

    sub-int v3, v2, v0

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_2

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_2

    if-eq v0, p2, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    move p1, v4

    move v0, p1

    move v1, v0

    move v2, v1

    :cond_3
    sub-int/2addr v1, p1

    sub-int/2addr v2, v0

    iput p1, p0, LN0/h;->T:I

    iput v0, p0, LN0/h;->U:I

    iget p1, p0, LN0/h;->b0:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    iput v4, p0, LN0/h;->P:I

    iput v4, p0, LN0/h;->Q:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, LN0/h;->N:[LN0/g;

    aget-object p2, p1, v4

    sget-object v0, LN0/g;->FIXED:LN0/g;

    if-ne p2, v0, :cond_5

    iget p2, p0, LN0/h;->P:I

    if-ge v1, p2, :cond_5

    move v1, p2

    :cond_5
    const/4 p2, 0x1

    aget-object p1, p1, p2

    if-ne p1, v0, :cond_6

    iget p1, p0, LN0/h;->Q:I

    if-ge v2, p1, :cond_6

    move v2, p1

    :cond_6
    iput v1, p0, LN0/h;->P:I

    iput v2, p0, LN0/h;->Q:I

    iget p1, p0, LN0/h;->X:I

    if-ge v2, p1, :cond_7

    iput p1, p0, LN0/h;->Q:I

    :cond_7
    iget p1, p0, LN0/h;->W:I

    if-ge v1, p1, :cond_8

    iput p1, p0, LN0/h;->P:I

    :cond_8
    :goto_0
    return-void
.end method

.method public final a(LN0/i;LM0/c;Ljava/util/HashSet;IZ)V
    .locals 7

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p0}, LN0/o;->b(LN0/i;LM0/c;LN0/h;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, LN0/i;->Q(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, LN0/h;->b(LM0/c;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p5, p0, LN0/h;->C:LN0/e;

    iget-object p5, p5, LN0/e;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/e;

    iget-object v1, v0, LN0/e;->d:LN0/h;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, LN0/h;->a(LN0/i;LM0/c;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, LN0/h;->E:LN0/e;

    iget-object p0, p0, LN0/e;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, LN0/e;

    iget-object v0, p5, LN0/e;->d:LN0/h;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, LN0/h;->a(LN0/i;LM0/c;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p5, p0, LN0/h;->D:LN0/e;

    iget-object p5, p5, LN0/e;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/e;

    iget-object v1, v0, LN0/e;->d:LN0/h;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, LN0/h;->a(LN0/i;LM0/c;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p5, p0, LN0/h;->F:LN0/e;

    iget-object p5, p5, LN0/e;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/e;

    iget-object v1, v0, LN0/e;->d:LN0/h;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, LN0/h;->a(LN0/i;LM0/c;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, LN0/h;->G:LN0/e;

    iget-object p0, p0, LN0/e;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, LN0/e;

    iget-object v0, p5, LN0/e;->d:LN0/h;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, LN0/h;->a(LN0/i;LM0/c;Ljava/util/HashSet;IZ)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public b(LM0/c;Z)V
    .locals 63

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, LN0/h;->C:LN0/e;

    invoke-virtual {v14, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v13

    iget-object v1, v15, LN0/h;->E:LN0/e;

    invoke-virtual {v14, v1}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v12

    iget-object v2, v15, LN0/h;->D:LN0/e;

    invoke-virtual {v14, v2}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v9

    iget-object v8, v15, LN0/h;->F:LN0/e;

    invoke-virtual {v14, v8}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v7

    iget-object v6, v15, LN0/h;->G:LN0/e;

    invoke-virtual {v14, v6}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v5

    iget-object v3, v15, LN0/h;->O:LN0/h;

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v3, LN0/h;->N:[LN0/g;

    aget-object v10, v3, v11

    sget-object v11, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v10, v11, :cond_0

    move v10, v4

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    aget-object v3, v3, v4

    if-ne v3, v11, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move/from16 v28, v3

    move/from16 v29, v10

    goto :goto_2

    :cond_2
    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_2
    iget v3, v15, LN0/h;->b0:I

    iget-object v10, v15, LN0/h;->M:[Z

    const/16 v11, 0x8

    if-ne v3, v11, :cond_6

    iget-object v3, v15, LN0/h;->L:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v11, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v3

    move-object/from16 v3, v19

    check-cast v3, LN0/e;

    iget-object v3, v3, LN0/e;->a:Ljava/util/HashSet;

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_5

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v20

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    aget-boolean v4, v10, v3

    if-nez v4, :cond_6

    const/4 v3, 0x1

    aget-boolean v4, v10, v3

    if-nez v4, :cond_6

    return-void

    :cond_6
    :goto_5
    iget-boolean v3, v15, LN0/h;->h:Z

    if-nez v3, :cond_7

    iget-boolean v4, v15, LN0/h;->i:Z

    if-eqz v4, :cond_e

    :cond_7
    if-eqz v3, :cond_9

    iget v3, v15, LN0/h;->T:I

    invoke-virtual {v14, v13, v3}, LM0/c;->d(LM0/i;I)V

    iget v3, v15, LN0/h;->T:I

    iget v4, v15, LN0/h;->P:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v12, v3}, LM0/c;->d(LM0/i;I)V

    if-eqz v29, :cond_9

    iget-object v3, v15, LN0/h;->O:LN0/h;

    if-eqz v3, :cond_9

    check-cast v3, LN0/i;

    invoke-virtual {v3, v0}, LN0/i;->M(LN0/e;)V

    iget-object v4, v3, LN0/i;->C0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, LN0/e;->d()I

    move-result v4

    iget-object v11, v3, LN0/i;->C0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LN0/e;

    invoke-virtual {v11}, LN0/e;->d()I

    move-result v11

    if-le v4, v11, :cond_9

    :cond_8
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, LN0/i;->C0:Ljava/lang/ref/WeakReference;

    :cond_9
    iget-boolean v3, v15, LN0/h;->i:Z

    if-eqz v3, :cond_d

    iget v3, v15, LN0/h;->U:I

    invoke-virtual {v14, v9, v3}, LM0/c;->d(LM0/i;I)V

    iget v3, v15, LN0/h;->U:I

    iget v4, v15, LN0/h;->Q:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v7, v3}, LM0/c;->d(LM0/i;I)V

    iget-object v3, v6, LN0/e;->a:Ljava/util/HashSet;

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_b

    iget v3, v15, LN0/h;->U:I

    iget v4, v15, LN0/h;->V:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v5, v3}, LM0/c;->d(LM0/i;I)V

    :cond_b
    :goto_6
    if-eqz v28, :cond_d

    iget-object v3, v15, LN0/h;->O:LN0/h;

    if-eqz v3, :cond_d

    check-cast v3, LN0/i;

    invoke-virtual {v3, v2}, LN0/i;->M(LN0/e;)V

    iget-object v4, v3, LN0/i;->B0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v8}, LN0/e;->d()I

    move-result v4

    iget-object v11, v3, LN0/i;->B0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LN0/e;

    invoke-virtual {v11}, LN0/e;->d()I

    move-result v11

    if-le v4, v11, :cond_d

    :cond_c
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, LN0/i;->B0:Ljava/lang/ref/WeakReference;

    :cond_d
    iget-boolean v3, v15, LN0/h;->h:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v15, LN0/h;->i:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    iput-boolean v3, v15, LN0/h;->h:Z

    iput-boolean v3, v15, LN0/h;->i:Z

    return-void

    :cond_e
    iget-object v4, v15, LN0/h;->f:[Z

    if-eqz p2, :cond_12

    iget-object v3, v15, LN0/h;->d:LO0/m;

    if-eqz v3, :cond_12

    iget-object v11, v15, LN0/h;->e:LO0/p;

    if-eqz v11, :cond_12

    move-object/from16 v19, v6

    iget-object v6, v3, LO0/t;->h:LO0/g;

    move-object/from16 v20, v10

    iget-boolean v10, v6, LO0/g;->j:Z

    if-eqz v10, :cond_11

    iget-object v3, v3, LO0/t;->i:LO0/g;

    iget-boolean v3, v3, LO0/g;->j:Z

    if-eqz v3, :cond_11

    iget-object v3, v11, LO0/t;->h:LO0/g;

    iget-boolean v3, v3, LO0/g;->j:Z

    if-eqz v3, :cond_11

    iget-object v3, v11, LO0/t;->i:LO0/g;

    iget-boolean v3, v3, LO0/g;->j:Z

    if-eqz v3, :cond_11

    iget v0, v6, LO0/g;->g:I

    invoke-virtual {v14, v13, v0}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v15, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget v0, v0, LO0/g;->g:I

    invoke-virtual {v14, v12, v0}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v15, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->h:LO0/g;

    iget v0, v0, LO0/g;->g:I

    invoke-virtual {v14, v9, v0}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v15, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget v0, v0, LO0/g;->g:I

    invoke-virtual {v14, v7, v0}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v15, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/p;->k:LO0/g;

    iget v0, v0, LO0/g;->g:I

    invoke-virtual {v14, v5, v0}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v15, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_10

    if-eqz v29, :cond_f

    const/4 v0, 0x0

    aget-boolean v1, v4, v0

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, LN0/h;->t()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v15, LN0/h;->O:LN0/h;

    iget-object v1, v1, LN0/h;->E:LN0/e;

    invoke-virtual {v14, v1}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v14, v1, v12, v0, v2}, LM0/c;->f(LM0/i;LM0/i;II)V

    :cond_f
    if-eqz v28, :cond_10

    const/4 v0, 0x1

    aget-boolean v0, v4, v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, LN0/h;->u()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v15, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->F:LN0/e;

    invoke-virtual {v14, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {v14, v0, v7, v3, v1}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v15, LN0/h;->h:Z

    iput-boolean v3, v15, LN0/h;->i:Z

    return-void

    :cond_11
    :goto_8
    const/4 v3, 0x0

    goto :goto_9

    :cond_12
    move-object/from16 v19, v6

    move-object/from16 v20, v10

    goto :goto_8

    :goto_9
    iget-object v6, v15, LN0/h;->O:LN0/h;

    if-eqz v6, :cond_16

    invoke-virtual {v15, v3}, LN0/h;->s(I)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v15, LN0/h;->O:LN0/h;

    check-cast v6, LN0/i;

    invoke-virtual {v6, v15, v3}, LN0/i;->K(LN0/h;I)V

    const/4 v3, 0x1

    :goto_a
    const/4 v6, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual/range {p0 .. p0}, LN0/h;->t()Z

    move-result v3

    goto :goto_a

    :goto_b
    invoke-virtual {v15, v6}, LN0/h;->s(I)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, v15, LN0/h;->O:LN0/h;

    check-cast v10, LN0/i;

    invoke-virtual {v10, v15, v6}, LN0/i;->K(LN0/h;I)V

    const/4 v6, 0x1

    goto :goto_c

    :cond_14
    invoke-virtual/range {p0 .. p0}, LN0/h;->u()Z

    move-result v6

    :goto_c
    if-nez v3, :cond_15

    if-eqz v29, :cond_15

    iget v10, v15, LN0/h;->b0:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_15

    iget-object v10, v0, LN0/e;->f:LN0/e;

    if-nez v10, :cond_15

    iget-object v10, v1, LN0/e;->f:LN0/e;

    if-nez v10, :cond_15

    iget-object v10, v15, LN0/h;->O:LN0/h;

    iget-object v10, v10, LN0/h;->E:LN0/e;

    invoke-virtual {v14, v10}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v10

    move/from16 v21, v3

    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-virtual {v14, v10, v12, v3, v11}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_d

    :cond_15
    move/from16 v21, v3

    :goto_d
    move/from16 v30, v6

    move/from16 v31, v21

    goto :goto_e

    :cond_16
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_e
    iget v3, v15, LN0/h;->P:I

    iget v6, v15, LN0/h;->W:I

    if-ge v3, v6, :cond_17

    goto :goto_f

    :cond_17
    move v6, v3

    :goto_f
    iget v10, v15, LN0/h;->Q:I

    iget v11, v15, LN0/h;->X:I

    move-object/from16 v21, v9

    if-ge v10, v11, :cond_18

    goto :goto_10

    :cond_18
    move v11, v10

    :goto_10
    iget-object v9, v15, LN0/h;->N:[LN0/g;

    move-object/from16 v22, v5

    const/16 v16, 0x0

    aget-object v5, v9, v16

    move-object/from16 v23, v7

    sget-object v7, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    move/from16 v25, v6

    const/16 v18, 0x1

    if-eq v5, v7, :cond_19

    const/16 v24, 0x1

    goto :goto_11

    :cond_19
    const/16 v24, 0x0

    :goto_11
    aget-object v6, v9, v18

    move/from16 v27, v11

    if-eq v6, v7, :cond_1a

    const/16 v26, 0x1

    goto :goto_12

    :cond_1a
    const/16 v26, 0x0

    :goto_12
    iget v11, v15, LN0/h;->S:I

    iput v11, v15, LN0/h;->u:I

    move-object/from16 v32, v4

    iget v4, v15, LN0/h;->R:F

    iput v4, v15, LN0/h;->v:F

    move-object/from16 v33, v12

    iget v12, v15, LN0/h;->l:I

    move-object/from16 v34, v13

    iget v13, v15, LN0/h;->m:I

    const/16 v35, 0x0

    cmpl-float v35, v4, v35

    if-lez v35, :cond_2e

    iget v14, v15, LN0/h;->b0:I

    move-object/from16 v37, v9

    const/16 v9, 0x8

    if-eq v14, v9, :cond_2d

    const/4 v9, 0x3

    if-ne v5, v7, :cond_1b

    if-nez v12, :cond_1b

    move v12, v9

    :cond_1b
    if-ne v6, v7, :cond_1c

    if-nez v13, :cond_1c

    move v13, v9

    :cond_1c
    if-ne v5, v7, :cond_28

    if-ne v6, v7, :cond_28

    if-ne v12, v9, :cond_28

    if-ne v13, v9, :cond_28

    const/4 v14, -0x1

    if-ne v11, v14, :cond_1e

    if-eqz v24, :cond_1d

    if-nez v26, :cond_1d

    const/4 v3, 0x0

    iput v3, v15, LN0/h;->u:I

    goto :goto_13

    :cond_1d
    if-nez v24, :cond_1e

    if-eqz v26, :cond_1e

    const/4 v3, 0x1

    iput v3, v15, LN0/h;->u:I

    if-ne v11, v14, :cond_1e

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v14, v3, v4

    iput v14, v15, LN0/h;->v:F

    :cond_1e
    :goto_13
    iget v3, v15, LN0/h;->u:I

    if-nez v3, :cond_20

    invoke-virtual {v2}, LN0/e;->h()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v8}, LN0/e;->h()Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    const/4 v3, 0x1

    goto :goto_14

    :cond_20
    const/4 v3, 0x1

    goto :goto_15

    :goto_14
    iput v3, v15, LN0/h;->u:I

    goto :goto_16

    :goto_15
    iget v4, v15, LN0/h;->u:I

    if-ne v4, v3, :cond_22

    invoke-virtual {v0}, LN0/e;->h()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v1}, LN0/e;->h()Z

    move-result v3

    if-nez v3, :cond_22

    :cond_21
    const/4 v3, 0x0

    iput v3, v15, LN0/h;->u:I

    :cond_22
    :goto_16
    iget v3, v15, LN0/h;->u:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_25

    invoke-virtual {v2}, LN0/e;->h()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v8}, LN0/e;->h()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0}, LN0/e;->h()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v1}, LN0/e;->h()Z

    move-result v3

    if-nez v3, :cond_25

    :cond_23
    invoke-virtual {v2}, LN0/e;->h()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v8}, LN0/e;->h()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    iput v2, v15, LN0/h;->u:I

    goto :goto_17

    :cond_24
    invoke-virtual {v0}, LN0/e;->h()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v1}, LN0/e;->h()Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, v15, LN0/h;->v:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v0

    iput v14, v15, LN0/h;->v:F

    const/4 v0, 0x1

    iput v0, v15, LN0/h;->u:I

    :cond_25
    :goto_17
    iget v0, v15, LN0/h;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    iget v0, v15, LN0/h;->o:I

    if-lez v0, :cond_26

    iget v1, v15, LN0/h;->r:I

    if-nez v1, :cond_26

    const/4 v1, 0x0

    iput v1, v15, LN0/h;->u:I

    goto :goto_18

    :cond_26
    if-nez v0, :cond_27

    iget v0, v15, LN0/h;->r:I

    if-lez v0, :cond_27

    iget v0, v15, LN0/h;->v:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v0

    iput v14, v15, LN0/h;->v:F

    const/4 v0, 0x1

    iput v0, v15, LN0/h;->u:I

    :cond_27
    :goto_18
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_28
    const/4 v0, 0x4

    if-ne v5, v7, :cond_2a

    if-ne v12, v9, :cond_2a

    const/4 v1, 0x0

    iput v1, v15, LN0/h;->u:I

    int-to-float v1, v10

    mul-float/2addr v4, v1

    float-to-int v1, v4

    if-eq v6, v7, :cond_29

    move/from16 v40, v0

    move v6, v1

    move/from16 v39, v13

    move/from16 v38, v27

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_19
    const/16 v36, 0x0

    goto :goto_1f

    :cond_29
    move v6, v1

    move/from16 v40, v12

    move/from16 v39, v13

    move/from16 v38, v27

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1a
    const/16 v36, 0x1

    goto :goto_1f

    :cond_2a
    if-ne v6, v7, :cond_27

    if-ne v13, v9, :cond_27

    const/4 v1, 0x1

    iput v1, v15, LN0/h;->u:I

    const/4 v1, -0x1

    if-ne v11, v1, :cond_2b

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v4

    iput v14, v15, LN0/h;->v:F

    goto :goto_1b

    :cond_2b
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1b
    iget v2, v15, LN0/h;->v:F

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v11, v2

    if-eq v5, v7, :cond_2c

    move/from16 v39, v0

    move/from16 v38, v11

    move/from16 v40, v12

    move/from16 v6, v25

    goto :goto_19

    :cond_2c
    move/from16 v38, v11

    move/from16 v40, v12

    move/from16 v39, v13

    move/from16 v6, v25

    goto :goto_1a

    :goto_1c
    move/from16 v40, v12

    move/from16 v39, v13

    move/from16 v6, v25

    move/from16 v38, v27

    goto :goto_1a

    :cond_2d
    :goto_1d
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1e

    :cond_2e
    move-object/from16 v37, v9

    goto :goto_1d

    :goto_1e
    move/from16 v40, v12

    move/from16 v39, v13

    move/from16 v6, v25

    move/from16 v38, v27

    goto :goto_19

    :goto_1f
    iget-object v0, v15, LN0/h;->n:[I

    const/4 v2, 0x0

    aput v40, v0, v2

    const/4 v2, 0x1

    aput v39, v0, v2

    if-eqz v36, :cond_30

    iget v0, v15, LN0/h;->u:I

    const/4 v2, -0x1

    if-eqz v0, :cond_2f

    if-ne v0, v2, :cond_31

    :cond_2f
    const/16 v27, 0x1

    goto :goto_20

    :cond_30
    const/4 v2, -0x1

    :cond_31
    const/16 v27, 0x0

    :goto_20
    if-eqz v36, :cond_33

    iget v0, v15, LN0/h;->u:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_32

    if-ne v0, v2, :cond_33

    :cond_32
    const/4 v0, 0x0

    const/16 v35, 0x1

    goto :goto_21

    :cond_33
    const/4 v0, 0x0

    const/16 v35, 0x0

    :goto_21
    aget-object v2, v37, v0

    sget-object v14, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v2, v14, :cond_34

    instance-of v0, v15, LN0/i;

    if-eqz v0, :cond_34

    const/4 v9, 0x1

    goto :goto_22

    :cond_34
    const/4 v9, 0x0

    :goto_22
    if-eqz v9, :cond_35

    const/4 v13, 0x0

    goto :goto_23

    :cond_35
    move v13, v6

    :goto_23
    iget-object v12, v15, LN0/h;->J:LN0/e;

    invoke-virtual {v12}, LN0/e;->h()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/lit8 v41, v0, 0x1

    const/4 v0, 0x0

    aget-boolean v42, v20, v0

    aget-boolean v43, v20, v2

    iget v0, v15, LN0/h;->j:I

    iget-object v6, v15, LN0/h;->w:[I

    const/4 v5, 0x2

    const/16 v44, 0x0

    if-eq v0, v5, :cond_3a

    iget-boolean v0, v15, LN0/h;->h:Z

    if-nez v0, :cond_3a

    if-eqz p2, :cond_36

    iget-object v0, v15, LN0/h;->d:LO0/m;

    if-eqz v0, :cond_36

    iget-object v2, v0, LO0/t;->h:LO0/g;

    iget-boolean v3, v2, LO0/g;->j:Z

    if-eqz v3, :cond_36

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget-boolean v0, v0, LO0/g;->j:Z

    if-nez v0, :cond_37

    :cond_36
    move-object/from16 v4, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    const/16 v11, 0x8

    goto/16 :goto_24

    :cond_37
    if-eqz p2, :cond_39

    iget v0, v2, LO0/g;->g:I

    move-object/from16 v4, p1

    move-object/from16 v3, v34

    invoke-virtual {v4, v3, v0}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v15, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget v0, v0, LO0/g;->g:I

    move-object/from16 v2, v33

    invoke-virtual {v4, v2, v0}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v15, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_38

    if-eqz v29, :cond_38

    const/4 v0, 0x0

    aget-boolean v9, v32, v0

    if-eqz v9, :cond_38

    invoke-virtual/range {p0 .. p0}, LN0/h;->t()Z

    move-result v9

    if-nez v9, :cond_38

    iget-object v9, v15, LN0/h;->O:LN0/h;

    iget-object v9, v9, LN0/h;->E:LN0/e;

    invoke-virtual {v4, v9}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v9

    const/16 v11, 0x8

    invoke-virtual {v4, v9, v2, v0, v11}, LM0/c;->f(LM0/i;LM0/i;II)V

    :cond_38
    move-object/from16 v58, v2

    move-object/from16 v59, v3

    move-object/from16 v53, v6

    move-object/from16 v55, v7

    move-object/from16 v56, v8

    move-object/from16 v34, v12

    move-object/from16 v60, v14

    move-object/from16 v52, v19

    move-object/from16 v57, v21

    move-object/from16 v51, v22

    move-object/from16 v54, v23

    move-object/from16 v33, v37

    goto/16 :goto_29

    :cond_39
    move-object/from16 v4, p1

    :cond_3a
    move-object/from16 v53, v6

    move-object/from16 v55, v7

    move-object/from16 v56, v8

    move-object/from16 v60, v14

    move-object/from16 v52, v19

    move-object/from16 v57, v21

    move-object/from16 v51, v22

    move-object/from16 v54, v23

    move-object/from16 v58, v33

    move-object/from16 v59, v34

    move-object/from16 v33, v37

    move-object/from16 v34, v12

    goto/16 :goto_29

    :goto_24
    iget-object v0, v15, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_3b

    iget-object v0, v0, LN0/h;->E:LN0/e;

    invoke-virtual {v4, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_25

    :cond_3b
    move-object/from16 v17, v44

    :goto_25
    iget-object v0, v15, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_3c

    iget-object v0, v0, LN0/h;->C:LN0/e;

    invoke-virtual {v4, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    move-object/from16 v16, v0

    :goto_26
    const/4 v0, 0x0

    goto :goto_27

    :cond_3c
    move-object/from16 v16, v44

    goto :goto_26

    :goto_27
    aget-boolean v20, v32, v0

    aget-object v33, v37, v0

    iget v10, v15, LN0/h;->T:I

    move-object/from16 v34, v2

    iget v2, v15, LN0/h;->W:I

    aget v45, v6, v0

    move/from16 v46, v2

    iget v2, v15, LN0/h;->Y:F

    const/16 v18, 0x1

    aget-object v0, v37, v18

    if-ne v0, v7, :cond_3d

    move/from16 v48, v18

    goto :goto_28

    :cond_3d
    const/16 v48, 0x0

    :goto_28
    iget v0, v15, LN0/h;->o:I

    move/from16 v24, v0

    iget v0, v15, LN0/h;->p:I

    move/from16 v25, v0

    iget v0, v15, LN0/h;->q:F

    move/from16 v26, v0

    iget-object v0, v15, LN0/h;->C:LN0/e;

    move/from16 v49, v10

    move-object v10, v0

    iget-object v0, v15, LN0/h;->E:LN0/e;

    move-object v11, v0

    const/4 v0, 0x1

    move/from16 v47, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v50, v3

    move/from16 v3, v29

    move/from16 v4, v28

    move-object/from16 v51, v22

    move/from16 v5, v20

    move-object/from16 v53, v6

    move-object/from16 v52, v19

    move-object/from16 v6, v16

    move-object/from16 v55, v7

    move-object/from16 v54, v23

    move-object/from16 v7, v17

    move-object/from16 v56, v8

    move-object/from16 v8, v33

    move-object/from16 v57, v21

    move-object/from16 v33, v37

    move-object/from16 v58, v34

    move-object/from16 v34, v12

    move/from16 v12, v49

    move-object/from16 v59, v50

    move-object/from16 v60, v14

    move/from16 v14, v46

    move/from16 v15, v45

    move/from16 v16, v47

    move/from16 v17, v27

    move/from16 v18, v48

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v42

    move/from16 v22, v40

    move/from16 v23, v39

    move/from16 v27, v41

    invoke-virtual/range {v0 .. v27}, LN0/h;->d(LM0/c;ZZZZLM0/i;LM0/i;LN0/g;ZLN0/e;LN0/e;IIIIFZZZZZIIIIFZ)V

    :goto_29
    if-eqz p2, :cond_41

    move-object/from16 v15, p0

    iget-object v0, v15, LN0/h;->e:LO0/p;

    if-eqz v0, :cond_40

    iget-object v1, v0, LO0/t;->h:LO0/g;

    iget-boolean v2, v1, LO0/g;->j:Z

    if-eqz v2, :cond_40

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget-boolean v0, v0, LO0/g;->j:Z

    if-eqz v0, :cond_40

    iget v0, v1, LO0/g;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v57

    invoke-virtual {v14, v13, v0}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v15, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget v0, v0, LO0/g;->g:I

    move-object/from16 v12, v54

    invoke-virtual {v14, v12, v0}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v15, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/p;->k:LO0/g;

    iget v0, v0, LO0/g;->g:I

    move-object/from16 v1, v51

    invoke-virtual {v14, v1, v0}, LM0/c;->d(LM0/i;I)V

    iget-object v0, v15, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_3f

    if-nez v30, :cond_3f

    if-eqz v28, :cond_3f

    const/4 v9, 0x1

    aget-boolean v2, v32, v9

    if-eqz v2, :cond_3e

    iget-object v0, v0, LN0/h;->F:LN0/e;

    invoke-virtual {v14, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v8, 0x0

    invoke-virtual {v14, v0, v12, v8, v2}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_2a

    :cond_3e
    const/16 v2, 0x8

    const/4 v8, 0x0

    goto :goto_2a

    :cond_3f
    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_2a
    move v4, v8

    goto :goto_2c

    :cond_40
    move-object/from16 v14, p1

    move-object/from16 v1, v51

    move-object/from16 v12, v54

    move-object/from16 v13, v57

    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_2b

    :cond_41
    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v51

    move-object/from16 v12, v54

    move-object/from16 v13, v57

    :goto_2b
    move v4, v9

    :goto_2c
    iget v0, v15, LN0/h;->k:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_42

    move v11, v8

    goto :goto_2d

    :cond_42
    move v11, v4

    :goto_2d
    if-eqz v11, :cond_4d

    iget-boolean v0, v15, LN0/h;->i:Z

    if-nez v0, :cond_4d

    aget-object v0, v33, v9

    move-object/from16 v3, v60

    if-ne v0, v3, :cond_43

    instance-of v0, v15, LN0/i;

    if-eqz v0, :cond_43

    move/from16 v16, v9

    goto :goto_2e

    :cond_43
    move/from16 v16, v8

    :goto_2e
    if-eqz v16, :cond_44

    move/from16 v38, v8

    :cond_44
    iget-object v0, v15, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_45

    iget-object v0, v0, LN0/h;->F:LN0/e;

    invoke-virtual {v14, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    move-object v7, v0

    goto :goto_2f

    :cond_45
    move-object/from16 v7, v44

    :goto_2f
    iget-object v0, v15, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_46

    iget-object v0, v0, LN0/h;->D:LN0/e;

    invoke-virtual {v14, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    move-object v6, v0

    goto :goto_30

    :cond_46
    move-object/from16 v6, v44

    :goto_30
    iget v0, v15, LN0/h;->V:I

    if-gtz v0, :cond_47

    iget v3, v15, LN0/h;->b0:I

    if-ne v3, v2, :cond_4b

    :cond_47
    move-object/from16 v3, v52

    iget-object v4, v3, LN0/e;->f:LN0/e;

    if-eqz v4, :cond_49

    invoke-virtual {v14, v1, v13, v0, v2}, LM0/c;->e(LM0/i;LM0/i;II)V

    iget-object v0, v3, LN0/e;->f:LN0/e;

    invoke-virtual {v14, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    invoke-virtual {v14, v1, v0, v8, v2}, LM0/c;->e(LM0/i;LM0/i;II)V

    if-eqz v28, :cond_48

    move-object/from16 v0, v56

    invoke-virtual {v14, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v14, v7, v0, v8, v1}, LM0/c;->f(LM0/i;LM0/i;II)V

    :cond_48
    move/from16 v27, v8

    goto :goto_32

    :cond_49
    iget v3, v15, LN0/h;->b0:I

    if-ne v3, v2, :cond_4a

    invoke-virtual {v14, v1, v13, v8, v2}, LM0/c;->e(LM0/i;LM0/i;II)V

    goto :goto_31

    :cond_4a
    invoke-virtual {v14, v1, v13, v0, v2}, LM0/c;->e(LM0/i;LM0/i;II)V

    :cond_4b
    :goto_31
    move/from16 v27, v41

    :goto_32
    aget-boolean v5, v32, v9

    aget-object v17, v33, v9

    iget v4, v15, LN0/h;->U:I

    iget v3, v15, LN0/h;->X:I

    aget v18, v53, v9

    iget v1, v15, LN0/h;->Z:F

    aget-object v0, v33, v8

    move-object/from16 v2, v55

    if-ne v0, v2, :cond_4c

    move/from16 v19, v9

    goto :goto_33

    :cond_4c
    move/from16 v19, v8

    :goto_33
    iget v0, v15, LN0/h;->r:I

    move/from16 v24, v0

    iget v0, v15, LN0/h;->s:I

    move/from16 v25, v0

    iget v0, v15, LN0/h;->t:F

    move/from16 v26, v0

    iget-object v10, v15, LN0/h;->D:LN0/e;

    iget-object v11, v15, LN0/h;->F:LN0/e;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move/from16 v21, v3

    move/from16 v3, v28

    move/from16 v22, v4

    move/from16 v4, v29

    move-object/from16 v8, v17

    move/from16 v9, v16

    move-object/from16 v61, v12

    move/from16 v12, v22

    move-object/from16 v62, v13

    move/from16 v13, v38

    move/from16 v14, v21

    move/from16 v15, v18

    move/from16 v16, v20

    move/from16 v17, v35

    move/from16 v18, v19

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v43

    move/from16 v22, v39

    move/from16 v23, v40

    invoke-virtual/range {v0 .. v27}, LN0/h;->d(LM0/c;ZZZZLM0/i;LM0/i;LN0/g;ZLN0/e;LN0/e;IIIIFZZZZZIIIIFZ)V

    goto :goto_34

    :cond_4d
    move-object/from16 v61, v12

    move-object/from16 v62, v13

    :goto_34
    move-object/from16 v0, p0

    if-eqz v36, :cond_4f

    iget v1, v0, LN0/h;->u:I

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4e

    iget v1, v0, LN0/h;->v:F

    invoke-virtual/range {p1 .. p1}, LM0/c;->l()LM0/b;

    move-result-object v3

    iget-object v4, v3, LM0/b;->d:LM0/a;

    move-object/from16 v5, v61

    invoke-virtual {v4, v5, v2}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v3, LM0/b;->d:LM0/a;

    move-object/from16 v4, v62

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v6}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v3, LM0/b;->d:LM0/a;

    move-object/from16 v7, v58

    invoke-virtual {v2, v7, v1}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v3, LM0/b;->d:LM0/a;

    neg-float v1, v1

    move-object/from16 v8, v59

    invoke-virtual {v2, v8, v1}, LM0/a;->g(LM0/i;F)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v3}, LM0/c;->c(LM0/b;)V

    goto :goto_35

    :cond_4e
    move-object/from16 v1, p1

    move-object/from16 v7, v58

    move-object/from16 v8, v59

    move-object/from16 v5, v61

    move-object/from16 v4, v62

    const/high16 v6, 0x3f800000    # 1.0f

    iget v3, v0, LN0/h;->v:F

    invoke-virtual/range {p1 .. p1}, LM0/c;->l()LM0/b;

    move-result-object v9

    iget-object v10, v9, LM0/b;->d:LM0/a;

    invoke-virtual {v10, v7, v2}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v9, LM0/b;->d:LM0/a;

    invoke-virtual {v2, v8, v6}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v9, LM0/b;->d:LM0/a;

    invoke-virtual {v2, v5, v3}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v9, LM0/b;->d:LM0/a;

    neg-float v3, v3

    invoke-virtual {v2, v4, v3}, LM0/a;->g(LM0/i;F)V

    invoke-virtual {v1, v9}, LM0/c;->c(LM0/b;)V

    goto :goto_35

    :cond_4f
    move-object/from16 v1, p1

    :goto_35
    invoke-virtual/range {v34 .. v34}, LN0/e;->h()Z

    move-result v2

    if-eqz v2, :cond_50

    move-object/from16 v2, v34

    iget-object v3, v2, LN0/e;->f:LN0/e;

    iget-object v3, v3, LN0/e;->d:LN0/h;

    iget v4, v0, LN0/h;->x:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, LN0/e;->e()I

    move-result v2

    sget-object v5, LN0/d;->LEFT:LN0/d;

    invoke-virtual {v0, v5}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v6

    invoke-virtual {v1, v6}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v6

    sget-object v7, LN0/d;->TOP:LN0/d;

    invoke-virtual {v0, v7}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v8

    invoke-virtual {v1, v8}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v8

    sget-object v9, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {v0, v9}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v10

    invoke-virtual {v1, v10}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v10

    sget-object v11, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {v0, v11}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v12

    invoke-virtual {v1, v12}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v12

    invoke-virtual {v3, v5}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v5

    invoke-virtual {v1, v5}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v5

    invoke-virtual {v3, v7}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v7

    invoke-virtual {v1, v7}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v7

    invoke-virtual {v3, v9}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v9

    invoke-virtual {v1, v9}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v9

    invoke-virtual {v3, v11}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v3

    invoke-virtual {v1, v3}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, LM0/c;->l()LM0/b;

    move-result-object v11

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-object v4, v9

    move-object/from16 p2, v10

    int-to-double v9, v2

    move-object/from16 v17, v4

    move-object v2, v5

    mul-double v4, v15, v9

    double-to-float v4, v4

    iget-object v5, v11, LM0/b;->d:LM0/a;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7, v15}, LM0/a;->g(LM0/i;F)V

    iget-object v5, v11, LM0/b;->d:LM0/a;

    invoke-virtual {v5, v3, v15}, LM0/a;->g(LM0/i;F)V

    iget-object v3, v11, LM0/b;->d:LM0/a;

    const/high16 v5, -0x41000000    # -0.5f

    invoke-virtual {v3, v8, v5}, LM0/a;->g(LM0/i;F)V

    iget-object v3, v11, LM0/b;->d:LM0/a;

    invoke-virtual {v3, v12, v5}, LM0/a;->g(LM0/i;F)V

    neg-float v3, v4

    iput v3, v11, LM0/b;->b:F

    invoke-virtual {v1, v11}, LM0/c;->c(LM0/b;)V

    invoke-virtual/range {p1 .. p1}, LM0/c;->l()LM0/b;

    move-result-object v3

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    double-to-float v4, v7

    iget-object v7, v3, LM0/b;->d:LM0/a;

    invoke-virtual {v7, v2, v15}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v3, LM0/b;->d:LM0/a;

    move-object/from16 v7, v17

    invoke-virtual {v2, v7, v15}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v3, LM0/b;->d:LM0/a;

    invoke-virtual {v2, v6, v5}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v3, LM0/b;->d:LM0/a;

    move-object/from16 v6, p2

    invoke-virtual {v2, v6, v5}, LM0/a;->g(LM0/i;F)V

    neg-float v2, v4

    iput v2, v3, LM0/b;->b:F

    invoke-virtual {v1, v3}, LM0/c;->c(LM0/b;)V

    :cond_50
    const/4 v1, 0x0

    iput-boolean v1, v0, LN0/h;->h:Z

    iput-boolean v1, v0, LN0/h;->i:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget p0, p0, LN0/h;->b0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(LM0/c;ZZZZLM0/i;LM0/i;LN0/g;ZLN0/e;LN0/e;IIIIFZZZZZIIIIFZ)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    move/from16 v5, p26

    invoke-virtual {v10, v13}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v9

    invoke-virtual {v10, v14}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v8

    iget-object v6, v13, LN0/e;->f:LN0/e;

    invoke-virtual {v10, v6}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v7

    iget-object v6, v14, LN0/e;->f:LN0/e;

    invoke-virtual {v10, v6}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v6

    invoke-virtual/range {p10 .. p10}, LN0/e;->h()Z

    move-result v16

    invoke-virtual/range {p11 .. p11}, LN0/e;->h()Z

    move-result v17

    iget-object v12, v0, LN0/h;->J:LN0/e;

    invoke-virtual {v12}, LN0/e;->h()Z

    move-result v12

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v2, v18

    if-eqz p17, :cond_2

    const/16 v19, 0x3

    goto :goto_1

    :cond_2
    move/from16 v19, p22

    :goto_1
    sget-object v18, LN0/f;->b:[I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v14, v18, v20

    const/4 v11, 0x1

    if-eq v14, v11, :cond_3

    const/4 v11, 0x2

    if-eq v14, v11, :cond_3

    const/4 v11, 0x3

    if-eq v14, v11, :cond_3

    const/4 v11, 0x4

    if-eq v14, v11, :cond_5

    :cond_3
    move/from16 v14, v19

    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    :cond_5
    move/from16 v14, v19

    if-eq v14, v11, :cond_4

    const/16 v18, 0x1

    :goto_2
    iget v11, v0, LN0/h;->b0:I

    move-object/from16 v22, v6

    const/16 v6, 0x8

    if-ne v11, v6, :cond_6

    const/4 v11, 0x0

    const/16 v18, 0x0

    goto :goto_3

    :cond_6
    move/from16 v11, p13

    :goto_3
    if-eqz p27, :cond_9

    if-nez v16, :cond_8

    if-nez v17, :cond_8

    if-nez v12, :cond_8

    move/from16 v6, p12

    invoke-virtual {v10, v9, v6}, LM0/c;->d(LM0/i;I)V

    :cond_7
    move/from16 v24, v12

    const/16 v12, 0x8

    goto :goto_4

    :cond_8
    if-eqz v16, :cond_7

    if-nez v17, :cond_7

    invoke-virtual/range {p10 .. p10}, LN0/e;->e()I

    move-result v6

    move/from16 v24, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v6, v12}, LM0/c;->e(LM0/i;LM0/i;II)V

    goto :goto_4

    :cond_9
    move/from16 v24, v12

    move v12, v6

    :goto_4
    if-nez v18, :cond_d

    if-eqz p9, :cond_b

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v10, v8, v9, v6, v5}, LM0/c;->e(LM0/i;LM0/i;II)V

    if-lez v15, :cond_a

    invoke-virtual {v10, v8, v9, v15, v12}, LM0/c;->f(LM0/i;LM0/i;II)V

    :cond_a
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_c

    invoke-virtual {v10, v8, v9, v1, v12}, LM0/c;->g(LM0/i;LM0/i;II)V

    goto :goto_5

    :cond_b
    const/4 v5, 0x3

    invoke-virtual {v10, v8, v9, v11, v12}, LM0/c;->e(LM0/i;LM0/i;II)V

    :cond_c
    :goto_5
    move/from16 v11, p5

    move/from16 v25, v2

    move v12, v3

    goto/16 :goto_a

    :cond_d
    const/4 v1, 0x3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_10

    if-nez p17, :cond_10

    const/4 v6, 0x1

    if-eq v14, v6, :cond_e

    if-nez v14, :cond_10

    :cond_e
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v4, :cond_f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_f
    const/16 v6, 0x8

    invoke-virtual {v10, v8, v9, v5, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    move/from16 v11, p5

    move/from16 v25, v2

    :goto_6
    move v12, v3

    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_10
    const/4 v6, -0x2

    if-ne v3, v6, :cond_11

    move v3, v11

    :cond_11
    if-ne v4, v6, :cond_12

    move v4, v11

    :cond_12
    if-lez v11, :cond_13

    const/4 v6, 0x1

    if-eq v14, v6, :cond_13

    const/4 v11, 0x0

    :cond_13
    const/16 v6, 0x8

    if-lez v3, :cond_14

    invoke-virtual {v10, v8, v9, v3, v6}, LM0/c;->f(LM0/i;LM0/i;II)V

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_14
    const/4 v12, 0x1

    if-lez v4, :cond_16

    if-eqz p3, :cond_15

    if-ne v14, v12, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v10, v8, v9, v4, v6}, LM0/c;->g(LM0/i;LM0/i;II)V

    :goto_7
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_16
    if-ne v14, v12, :cond_19

    if-eqz p3, :cond_17

    invoke-virtual {v10, v8, v9, v11, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    goto :goto_5

    :cond_17
    if-eqz p19, :cond_18

    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v11, v5}, LM0/c;->e(LM0/i;LM0/i;II)V

    invoke-virtual {v10, v8, v9, v11, v6}, LM0/c;->g(LM0/i;LM0/i;II)V

    goto :goto_5

    :cond_18
    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v11, v5}, LM0/c;->e(LM0/i;LM0/i;II)V

    invoke-virtual {v10, v8, v9, v11, v6}, LM0/c;->g(LM0/i;LM0/i;II)V

    goto :goto_5

    :cond_19
    const/4 v6, 0x2

    if-ne v14, v6, :cond_1c

    sget-object v6, LN0/d;->TOP:LN0/d;

    iget-object v11, v13, LN0/e;->e:LN0/d;

    if-eq v11, v6, :cond_1b

    sget-object v1, LN0/d;->BOTTOM:LN0/d;

    if-ne v11, v1, :cond_1a

    goto :goto_8

    :cond_1a
    iget-object v1, v0, LN0/h;->O:LN0/h;

    sget-object v6, LN0/d;->LEFT:LN0/d;

    invoke-virtual {v1, v6}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v1

    invoke-virtual {v10, v1}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v1

    iget-object v6, v0, LN0/h;->O:LN0/h;

    sget-object v11, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {v6, v11}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v6

    invoke-virtual {v10, v6}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v6

    goto :goto_9

    :cond_1b
    :goto_8
    iget-object v1, v0, LN0/h;->O:LN0/h;

    invoke-virtual {v1, v6}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v1

    invoke-virtual {v10, v1}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v1

    iget-object v6, v0, LN0/h;->O:LN0/h;

    sget-object v11, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {v6, v11}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v6

    invoke-virtual {v10, v6}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v6

    :goto_9
    invoke-virtual/range {p1 .. p1}, LM0/c;->l()LM0/b;

    move-result-object v11

    iget-object v12, v11, LM0/b;->d:LM0/a;

    move/from16 v25, v2

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v12, v8, v2}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v11, LM0/b;->d:LM0/a;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v2, v9, v12}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v11, LM0/b;->d:LM0/a;

    invoke-virtual {v2, v6, v5}, LM0/a;->g(LM0/i;F)V

    iget-object v2, v11, LM0/b;->d:LM0/a;

    neg-float v5, v5

    invoke-virtual {v2, v1, v5}, LM0/a;->g(LM0/i;F)V

    invoke-virtual {v10, v11}, LM0/c;->c(LM0/b;)V

    move/from16 v11, p5

    goto/16 :goto_6

    :cond_1c
    move/from16 v25, v2

    move v12, v3

    const/4 v11, 0x1

    :goto_a
    if-eqz p27, :cond_54

    if-eqz p19, :cond_1d

    move-object/from16 v2, p6

    move-object/from16 v6, p7

    move-object v5, v8

    move-object v4, v9

    move/from16 p5, v11

    move/from16 v1, v25

    const/16 v3, 0x8

    const/4 v7, 0x2

    const/16 v31, 0x1

    goto/16 :goto_2a

    :cond_1d
    if-nez v16, :cond_1e

    if-nez v17, :cond_1e

    if-nez v24, :cond_1e

    :goto_b
    move-object/from16 v15, p11

    move-object v5, v8

    move/from16 p5, v11

    move-object/from16 v1, v22

    :goto_c
    const/4 v0, 0x5

    goto/16 :goto_27

    :cond_1e
    if-eqz v16, :cond_1f

    if-nez v17, :cond_1f

    goto :goto_b

    :cond_1f
    if-nez v16, :cond_21

    if-eqz v17, :cond_21

    invoke-virtual/range {p11 .. p11}, LN0/e;->e()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v6, v22

    const/16 v1, 0x8

    invoke-virtual {v10, v8, v6, v0, v1}, LM0/c;->e(LM0/i;LM0/i;II)V

    if-eqz p3, :cond_20

    move-object/from16 v5, p6

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {v10, v9, v5, v0, v1}, LM0/c;->f(LM0/i;LM0/i;II)V

    move-object/from16 v15, p11

    move v0, v1

    move-object v1, v6

    move-object v5, v8

    move/from16 p5, v11

    goto/16 :goto_27

    :cond_20
    move-object/from16 v15, p11

    move-object v1, v6

    move-object v5, v8

    move/from16 p5, v11

    goto :goto_c

    :cond_21
    move-object/from16 v5, p6

    move-object/from16 v6, v22

    const/4 v3, 0x1

    if-eqz v16, :cond_20

    if-eqz v17, :cond_20

    iget-object v1, v13, LN0/e;->f:LN0/e;

    iget-object v2, v1, LN0/e;->d:LN0/h;

    move-object/from16 v1, p11

    iget-object v3, v1, LN0/e;->f:LN0/e;

    iget-object v3, v3, LN0/e;->d:LN0/h;

    iget-object v13, v0, LN0/h;->O:LN0/h;

    const/16 v16, 0x6

    if-eqz v18, :cond_33

    if-nez v14, :cond_26

    if-nez v4, :cond_23

    if-nez v12, :cond_23

    iget-boolean v4, v7, LM0/i;->f:Z

    if-eqz v4, :cond_22

    iget-boolean v4, v6, LM0/i;->f:Z

    if-eqz v4, :cond_22

    invoke-virtual/range {p10 .. p10}, LN0/e;->e()I

    move-result v0

    const/16 v4, 0x8

    invoke-virtual {v10, v9, v7, v0, v4}, LM0/c;->e(LM0/i;LM0/i;II)V

    invoke-virtual/range {p11 .. p11}, LN0/e;->e()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v10, v8, v6, v0, v4}, LM0/c;->e(LM0/i;LM0/i;II)V

    return-void

    :cond_22
    const/16 v4, 0x8

    move/from16 v23, v4

    move/from16 v24, v23

    const/16 v17, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    goto :goto_d

    :cond_23
    const/16 v4, 0x8

    const/16 v17, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x5

    const/16 v24, 0x5

    :goto_d
    instance-of v4, v2, LN0/a;

    if-nez v4, :cond_25

    instance-of v4, v3, LN0/a;

    if-eqz v4, :cond_24

    goto :goto_f

    :cond_24
    move/from16 v25, v16

    move/from16 v27, v23

    move/from16 v26, v24

    const/4 v4, 0x5

    const/4 v15, 0x1

    move/from16 v23, v17

    move/from16 v24, v21

    const/16 v17, 0x8

    move/from16 v21, v14

    :goto_e
    move-object/from16 v14, p7

    goto/16 :goto_18

    :cond_25
    :goto_f
    move/from16 v25, v16

    move/from16 v24, v21

    move/from16 v27, v23

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v26, 0x4

    move/from16 v21, v14

    move/from16 v23, v17

    const/16 v17, 0x8

    goto :goto_e

    :cond_26
    const/4 v15, 0x1

    const/16 v17, 0x8

    if-ne v14, v15, :cond_27

    move/from16 v21, v14

    move/from16 v25, v16

    move/from16 v27, v17

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v26, 0x4

    goto :goto_e

    :cond_27
    const/4 v15, 0x3

    if-ne v14, v15, :cond_32

    iget v15, v0, LN0/h;->u:I

    move/from16 v21, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_2a

    if-eqz p20, :cond_29

    move-object/from16 v14, p7

    move/from16 v27, v17

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    if-eqz p3, :cond_28

    const/16 v25, 0x5

    :goto_10
    const/16 v26, 0x5

    goto/16 :goto_18

    :cond_28
    const/16 v25, 0x4

    goto :goto_10

    :cond_29
    move-object/from16 v14, p7

    move/from16 v25, v17

    move/from16 v27, v25

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    goto :goto_10

    :cond_2a
    if-eqz p17, :cond_2d

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2c

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2b

    goto :goto_11

    :cond_2b
    move/from16 v4, v17

    const/4 v14, 0x5

    goto :goto_12

    :cond_2c
    const/4 v15, 0x1

    :goto_11
    const/4 v4, 0x5

    const/4 v14, 0x4

    :goto_12
    move/from16 v27, v4

    move/from16 v26, v14

    move/from16 v22, v15

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v16

    const/4 v4, 0x5

    goto :goto_e

    :cond_2d
    const/4 v15, 0x1

    if-lez v4, :cond_2e

    move-object/from16 v14, p7

    move/from16 v22, v15

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v16

    const/4 v4, 0x5

    const/16 v26, 0x5

    :goto_13
    const/16 v27, 0x5

    goto/16 :goto_18

    :cond_2e
    if-nez v4, :cond_31

    if-nez v12, :cond_31

    if-nez p20, :cond_2f

    move-object/from16 v14, p7

    move/from16 v22, v15

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v16

    move/from16 v26, v17

    const/4 v4, 0x5

    goto :goto_13

    :cond_2f
    if-eq v2, v13, :cond_30

    if-eq v3, v13, :cond_30

    const/4 v4, 0x4

    goto :goto_14

    :cond_30
    const/4 v4, 0x5

    :goto_14
    move-object/from16 v14, p7

    move/from16 v27, v4

    move/from16 v22, v15

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v16

    const/4 v4, 0x5

    :goto_15
    const/16 v26, 0x4

    goto/16 :goto_18

    :cond_31
    move-object/from16 v14, p7

    move/from16 v22, v15

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v16

    const/4 v4, 0x5

    :goto_16
    const/16 v26, 0x4

    goto :goto_13

    :cond_32
    move/from16 v21, v14

    const/4 v15, 0x1

    move-object/from16 v14, p7

    move/from16 v25, v16

    const/4 v4, 0x5

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    goto :goto_16

    :cond_33
    move/from16 v21, v14

    const/4 v15, 0x1

    const/16 v17, 0x8

    iget-boolean v4, v7, LM0/i;->f:Z

    if-eqz v4, :cond_36

    iget-boolean v4, v6, LM0/i;->f:Z

    if-eqz v4, :cond_36

    invoke-virtual/range {p10 .. p10}, LN0/e;->e()I

    move-result v0

    invoke-virtual/range {p11 .. p11}, LN0/e;->e()I

    move-result v2

    const/16 v3, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v0

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v2

    move/from16 p25, v3

    invoke-virtual/range {p17 .. p25}, LM0/c;->b(LM0/i;LM0/i;IFLM0/i;LM0/i;II)V

    if-eqz p3, :cond_35

    if-eqz v11, :cond_35

    iget-object v0, v1, LN0/e;->f:LN0/e;

    if-eqz v0, :cond_34

    invoke-virtual/range {p11 .. p11}, LN0/e;->e()I

    move-result v11

    move-object/from16 v14, p7

    goto :goto_17

    :cond_34
    move-object/from16 v14, p7

    const/4 v11, 0x0

    :goto_17
    if-eq v6, v14, :cond_35

    const/4 v4, 0x5

    invoke-virtual {v10, v14, v8, v11, v4}, LM0/c;->f(LM0/i;LM0/i;II)V

    :cond_35
    return-void

    :cond_36
    move-object/from16 v14, p7

    const/4 v4, 0x5

    move/from16 v27, v4

    move/from16 v22, v15

    move/from16 v23, v22

    move/from16 v25, v16

    const/16 v24, 0x0

    goto :goto_15

    :goto_18
    if-eqz v22, :cond_37

    if-ne v7, v6, :cond_37

    if-eq v2, v13, :cond_37

    const/16 v22, 0x0

    const/16 v28, 0x0

    goto :goto_19

    :cond_37
    move/from16 v28, v22

    move/from16 v22, v15

    :goto_19
    if-eqz v23, :cond_39

    if-nez v18, :cond_38

    if-nez p18, :cond_38

    if-nez p20, :cond_38

    if-ne v7, v5, :cond_38

    if-ne v6, v14, :cond_38

    move/from16 v25, v17

    move/from16 v27, v25

    const/16 v22, 0x0

    const/16 v23, 0x0

    goto :goto_1a

    :cond_38
    move/from16 v23, v22

    move/from16 v22, p3

    :goto_1a
    invoke-virtual/range {p10 .. p10}, LN0/e;->e()I

    move-result v29

    invoke-virtual/range {p11 .. p11}, LN0/e;->e()I

    move-result v30

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v9

    move/from16 p5, v11

    const/16 v31, 0x1

    move-object v11, v3

    move-object v3, v7

    move/from16 v32, v4

    move/from16 v4, v29

    move/from16 p8, v12

    move-object v12, v5

    move/from16 v5, p16

    move-object/from16 p2, v6

    move/from16 v12, v17

    move-object/from16 v33, v7

    move-object v7, v8

    move-object/from16 v34, v8

    move/from16 v8, v30

    move-object/from16 v35, v9

    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, LM0/c;->b(LM0/i;LM0/i;IFLM0/i;LM0/i;II)V

    goto :goto_1b

    :cond_39
    move-object v14, v2

    move-object/from16 p2, v6

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move/from16 p5, v11

    move/from16 p8, v12

    move/from16 v31, v15

    move/from16 v12, v17

    move-object v15, v1

    move-object v11, v3

    move/from16 v23, v22

    move/from16 v22, p3

    :goto_1b
    iget v0, v0, LN0/h;->b0:I

    if-ne v0, v12, :cond_3c

    iget-object v0, v15, LN0/e;->a:Ljava/util/HashSet;

    if-nez v0, :cond_3a

    goto :goto_1c

    :cond_3a
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3b

    goto :goto_1d

    :cond_3b
    :goto_1c
    return-void

    :cond_3c
    :goto_1d
    move-object/from16 v1, p2

    move-object/from16 v0, v33

    if-eqz v28, :cond_3f

    if-eqz v22, :cond_3e

    if-eq v0, v1, :cond_3e

    if-nez v18, :cond_3e

    instance-of v2, v14, LN0/a;

    if-nez v2, :cond_3d

    instance-of v2, v11, LN0/a;

    if-eqz v2, :cond_3e

    :cond_3d
    move/from16 v2, v16

    goto :goto_1e

    :cond_3e
    move/from16 v2, v27

    :goto_1e
    invoke-virtual/range {p10 .. p10}, LN0/e;->e()I

    move-result v3

    move-object/from16 v4, v35

    invoke-virtual {v10, v4, v0, v3, v2}, LM0/c;->f(LM0/i;LM0/i;II)V

    invoke-virtual/range {p11 .. p11}, LN0/e;->e()I

    move-result v3

    neg-int v3, v3

    move-object/from16 v5, v34

    invoke-virtual {v10, v5, v1, v3, v2}, LM0/c;->g(LM0/i;LM0/i;II)V

    move/from16 v27, v2

    goto :goto_1f

    :cond_3f
    move-object/from16 v5, v34

    move-object/from16 v4, v35

    :goto_1f
    if-eqz v22, :cond_40

    if-eqz p21, :cond_40

    instance-of v2, v14, LN0/a;

    if-nez v2, :cond_40

    instance-of v2, v11, LN0/a;

    if-nez v2, :cond_40

    move/from16 v2, v16

    move v3, v2

    move/from16 v23, v31

    goto :goto_20

    :cond_40
    move/from16 v2, v26

    move/from16 v3, v27

    :goto_20
    if-eqz v23, :cond_4c

    if-eqz v24, :cond_49

    if-eqz p20, :cond_41

    if-eqz p4, :cond_49

    :cond_41
    if-eq v14, v13, :cond_43

    if-ne v11, v13, :cond_42

    goto :goto_21

    :cond_42
    move v6, v2

    goto :goto_22

    :cond_43
    :goto_21
    move/from16 v6, v16

    :goto_22
    instance-of v7, v14, LN0/m;

    if-nez v7, :cond_44

    instance-of v7, v11, LN0/m;

    if-eqz v7, :cond_45

    :cond_44
    const/4 v6, 0x5

    :cond_45
    instance-of v7, v14, LN0/a;

    if-nez v7, :cond_46

    instance-of v7, v11, LN0/a;

    if-eqz v7, :cond_47

    :cond_46
    const/4 v6, 0x5

    :cond_47
    if-eqz p20, :cond_48

    const/4 v6, 0x5

    :cond_48
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_49
    if-eqz v22, :cond_4b

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p17, :cond_4b

    if-nez p20, :cond_4b

    if-eq v14, v13, :cond_4a

    if-ne v11, v13, :cond_4b

    :cond_4a
    const/4 v11, 0x4

    goto :goto_23

    :cond_4b
    move v11, v2

    :goto_23
    invoke-virtual/range {p10 .. p10}, LN0/e;->e()I

    move-result v2

    invoke-virtual {v10, v4, v0, v2, v11}, LM0/c;->e(LM0/i;LM0/i;II)V

    invoke-virtual/range {p11 .. p11}, LN0/e;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v5, v1, v2, v11}, LM0/c;->e(LM0/i;LM0/i;II)V

    :cond_4c
    if-eqz v22, :cond_4f

    move-object/from16 v2, p6

    move v3, v12

    if-ne v2, v0, :cond_4d

    invoke-virtual/range {p10 .. p10}, LN0/e;->e()I

    move-result v6

    goto :goto_24

    :cond_4d
    const/4 v6, 0x0

    :goto_24
    if-eq v0, v2, :cond_4e

    const/4 v0, 0x5

    invoke-virtual {v10, v4, v2, v6, v0}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_26

    :cond_4e
    :goto_25
    const/4 v0, 0x5

    goto :goto_26

    :cond_4f
    move v3, v12

    goto :goto_25

    :goto_26
    if-eqz v22, :cond_51

    if-eqz v18, :cond_51

    if-nez p14, :cond_51

    if-nez p8, :cond_51

    if-eqz v18, :cond_50

    move/from16 v14, v21

    const/4 v2, 0x3

    if-ne v14, v2, :cond_50

    const/4 v2, 0x0

    invoke-virtual {v10, v5, v4, v2, v3}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_28

    :cond_50
    const/4 v2, 0x0

    invoke-virtual {v10, v5, v4, v2, v0}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_28

    :goto_27
    move/from16 v22, p3

    :cond_51
    :goto_28
    if-eqz v22, :cond_53

    if-eqz p5, :cond_53

    iget-object v2, v15, LN0/e;->f:LN0/e;

    if-eqz v2, :cond_52

    invoke-virtual/range {p11 .. p11}, LN0/e;->e()I

    move-result v11

    move-object/from16 v6, p7

    goto :goto_29

    :cond_52
    move-object/from16 v6, p7

    const/4 v11, 0x0

    :goto_29
    if-eq v1, v6, :cond_53

    invoke-virtual {v10, v6, v5, v11, v0}, LM0/c;->f(LM0/i;LM0/i;II)V

    :cond_53
    return-void

    :cond_54
    move-object/from16 v2, p6

    move-object/from16 v6, p7

    move-object v5, v8

    move-object v4, v9

    move/from16 p5, v11

    move/from16 v1, v25

    const/16 v3, 0x8

    const/16 v31, 0x1

    const/4 v7, 0x2

    :goto_2a
    if-ge v1, v7, :cond_59

    if-eqz p3, :cond_59

    if-eqz p5, :cond_59

    const/4 v1, 0x0

    invoke-virtual {v10, v4, v2, v1, v3}, LM0/c;->f(LM0/i;LM0/i;II)V

    iget-object v0, v0, LN0/h;->G:LN0/e;

    if-nez p2, :cond_56

    iget-object v1, v0, LN0/e;->f:LN0/e;

    if-nez v1, :cond_55

    goto :goto_2b

    :cond_55
    const/4 v11, 0x0

    goto :goto_2c

    :cond_56
    :goto_2b
    move/from16 v11, v31

    :goto_2c
    if-nez p2, :cond_58

    iget-object v0, v0, LN0/e;->f:LN0/e;

    if-eqz v0, :cond_58

    iget-object v0, v0, LN0/e;->d:LN0/h;

    iget v1, v0, LN0/h;->R:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_57

    iget-object v0, v0, LN0/h;->N:[LN0/g;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v1, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v2, v1, :cond_57

    aget-object v0, v0, v31

    if-ne v0, v1, :cond_57

    move/from16 v11, v31

    goto :goto_2d

    :cond_57
    const/4 v11, 0x0

    :cond_58
    :goto_2d
    if-eqz v11, :cond_59

    const/4 v0, 0x0

    invoke-virtual {v10, v6, v5, v0, v3}, LM0/c;->f(LM0/i;LM0/i;II)V

    :cond_59
    return-void
.end method

.method public final e(LN0/d;LN0/h;LN0/d;I)V
    .locals 8

    sget-object v0, LN0/d;->CENTER:LN0/d;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    if-ne p3, v0, :cond_8

    sget-object p1, LN0/d;->LEFT:LN0/d;

    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p3

    sget-object p4, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {p0, p4}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    sget-object v3, LN0/d;->TOP:LN0/d;

    invoke-virtual {p0, v3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v4

    sget-object v5, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {p0, v5}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, LN0/e;->h()Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, LN0/e;->h()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p1, v1}, LN0/h;->e(LN0/d;LN0/h;LN0/d;I)V

    invoke-virtual {p0, p4, p2, p4, v1}, LN0/h;->e(LN0/d;LN0/h;LN0/d;I)V

    move p1, v7

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, LN0/e;->h()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, LN0/e;->h()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    move v7, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, p2, v3, v1}, LN0/h;->e(LN0/d;LN0/h;LN0/d;I)V

    invoke-virtual {p0, v5, p2, v5, v1}, LN0/h;->e(LN0/d;LN0/h;LN0/d;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {p0, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p2, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, LN0/e;->a(LN0/e;I)V

    goto/16 :goto_5

    :cond_6
    if-eqz p1, :cond_7

    sget-object p1, LN0/d;->CENTER_X:LN0/d;

    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p2, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, LN0/e;->a(LN0/e;I)V

    goto/16 :goto_5

    :cond_7
    if-eqz v7, :cond_1d

    sget-object p1, LN0/d;->CENTER_Y:LN0/d;

    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p2, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, LN0/e;->a(LN0/e;I)V

    goto/16 :goto_5

    :cond_8
    sget-object p1, LN0/d;->LEFT:LN0/d;

    if-eq p3, p1, :cond_b

    sget-object p4, LN0/d;->RIGHT:LN0/d;

    if-ne p3, p4, :cond_9

    goto :goto_2

    :cond_9
    sget-object p1, LN0/d;->TOP:LN0/d;

    if-eq p3, p1, :cond_a

    sget-object p4, LN0/d;->BOTTOM:LN0/d;

    if-ne p3, p4, :cond_1d

    :cond_a
    invoke-virtual {p0, p1, p2, p3, v1}, LN0/h;->e(LN0/d;LN0/h;LN0/d;I)V

    sget-object p1, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {p0, p1, p2, p3, v1}, LN0/h;->e(LN0/d;LN0/h;LN0/d;I)V

    invoke-virtual {p0, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p2, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, LN0/e;->a(LN0/e;I)V

    goto/16 :goto_5

    :cond_b
    :goto_2
    invoke-virtual {p0, p1, p2, p3, v1}, LN0/h;->e(LN0/d;LN0/h;LN0/d;I)V

    sget-object p1, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {p0, p1, p2, p3, v1}, LN0/h;->e(LN0/d;LN0/h;LN0/d;I)V

    invoke-virtual {p0, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p2, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, LN0/e;->a(LN0/e;I)V

    goto/16 :goto_5

    :cond_c
    sget-object v2, LN0/d;->CENTER_X:LN0/d;

    if-ne p1, v2, :cond_e

    sget-object v3, LN0/d;->LEFT:LN0/d;

    if-eq p3, v3, :cond_d

    sget-object v4, LN0/d;->RIGHT:LN0/d;

    if-ne p3, v4, :cond_e

    :cond_d
    invoke-virtual {p0, v3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p2, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p2

    sget-object p3, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {p0, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p3

    invoke-virtual {p1, p2, v1}, LN0/e;->a(LN0/e;I)V

    invoke-virtual {p3, p2, v1}, LN0/e;->a(LN0/e;I)V

    invoke-virtual {p0, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, LN0/e;->a(LN0/e;I)V

    goto/16 :goto_5

    :cond_e
    sget-object v3, LN0/d;->CENTER_Y:LN0/d;

    if-ne p1, v3, :cond_10

    sget-object v4, LN0/d;->TOP:LN0/d;

    if-eq p3, v4, :cond_f

    sget-object v5, LN0/d;->BOTTOM:LN0/d;

    if-ne p3, v5, :cond_10

    :cond_f
    invoke-virtual {p2, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p0, v4}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, LN0/e;->a(LN0/e;I)V

    sget-object p2, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {p0, p2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, LN0/e;->a(LN0/e;I)V

    invoke-virtual {p0, v3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, LN0/e;->a(LN0/e;I)V

    goto/16 :goto_5

    :cond_10
    if-ne p1, v2, :cond_11

    if-ne p3, v2, :cond_11

    sget-object p1, LN0/d;->LEFT:LN0/d;

    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p4

    invoke-virtual {p2, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, LN0/e;->a(LN0/e;I)V

    sget-object p1, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p4

    invoke-virtual {p2, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, LN0/e;->a(LN0/e;I)V

    invoke-virtual {p0, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p2, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, LN0/e;->a(LN0/e;I)V

    goto/16 :goto_5

    :cond_11
    if-ne p1, v3, :cond_12

    if-ne p3, v3, :cond_12

    sget-object p1, LN0/d;->TOP:LN0/d;

    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p4

    invoke-virtual {p2, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, LN0/e;->a(LN0/e;I)V

    sget-object p1, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p4

    invoke-virtual {p2, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, LN0/e;->a(LN0/e;I)V

    invoke-virtual {p0, v3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p2, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, LN0/e;->a(LN0/e;I)V

    goto/16 :goto_5

    :cond_12
    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v4

    invoke-virtual {p2, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p2

    invoke-virtual {v4, p2}, LN0/e;->i(LN0/e;)Z

    move-result p3

    if-eqz p3, :cond_1d

    sget-object p3, LN0/d;->BASELINE:LN0/d;

    if-ne p1, p3, :cond_15

    sget-object p1, LN0/d;->TOP:LN0/d;

    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    sget-object p3, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {p0, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, LN0/e;->j()V

    :cond_13
    if-eqz p0, :cond_14

    invoke-virtual {p0}, LN0/e;->j()V

    :cond_14
    move p4, v1

    goto :goto_4

    :cond_15
    sget-object v1, LN0/d;->TOP:LN0/d;

    if-eq p1, v1, :cond_19

    sget-object v1, LN0/d;->BOTTOM:LN0/d;

    if-ne p1, v1, :cond_16

    goto :goto_3

    :cond_16
    sget-object p3, LN0/d;->LEFT:LN0/d;

    if-eq p1, p3, :cond_17

    sget-object p3, LN0/d;->RIGHT:LN0/d;

    if-ne p1, p3, :cond_1c

    :cond_17
    invoke-virtual {p0, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p3

    iget-object v0, p3, LN0/e;->f:LN0/e;

    if-eq v0, p2, :cond_18

    invoke-virtual {p3}, LN0/e;->j()V

    :cond_18
    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p1}, LN0/e;->f()LN0/e;

    move-result-object p1

    invoke-virtual {p0, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p0}, LN0/e;->h()Z

    move-result p3

    if-eqz p3, :cond_1c

    invoke-virtual {p1}, LN0/e;->j()V

    invoke-virtual {p0}, LN0/e;->j()V

    goto :goto_4

    :cond_19
    :goto_3
    invoke-virtual {p0, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p3

    if-eqz p3, :cond_1a

    invoke-virtual {p3}, LN0/e;->j()V

    :cond_1a
    invoke-virtual {p0, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p3

    iget-object v0, p3, LN0/e;->f:LN0/e;

    if-eq v0, p2, :cond_1b

    invoke-virtual {p3}, LN0/e;->j()V

    :cond_1b
    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    invoke-virtual {p1}, LN0/e;->f()LN0/e;

    move-result-object p1

    invoke-virtual {p0, v3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p0}, LN0/e;->h()Z

    move-result p3

    if-eqz p3, :cond_1c

    invoke-virtual {p1}, LN0/e;->j()V

    invoke-virtual {p0}, LN0/e;->j()V

    :cond_1c
    :goto_4
    invoke-virtual {v4, p2, p4}, LN0/e;->a(LN0/e;I)V

    :cond_1d
    :goto_5
    return-void
.end method

.method public final f(LN0/e;LN0/e;I)V
    .locals 1

    iget-object v0, p1, LN0/e;->d:LN0/h;

    if-ne v0, p0, :cond_0

    iget-object v0, p2, LN0/e;->d:LN0/h;

    iget-object p1, p1, LN0/e;->e:LN0/d;

    iget-object p2, p2, LN0/e;->e:LN0/d;

    invoke-virtual {p0, p1, v0, p2, p3}, LN0/h;->e(LN0/d;LN0/h;LN0/d;I)V

    :cond_0
    return-void
.end method

.method public final g(LM0/c;)V
    .locals 1

    iget-object v0, p0, LN0/h;->C:LN0/e;

    invoke-virtual {p1, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    iget-object v0, p0, LN0/h;->D:LN0/e;

    invoke-virtual {p1, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    iget-object v0, p0, LN0/h;->E:LN0/e;

    invoke-virtual {p1, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    iget-object v0, p0, LN0/h;->F:LN0/e;

    invoke-virtual {p1, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    iget v0, p0, LN0/h;->V:I

    if-lez v0, :cond_0

    iget-object p0, p0, LN0/h;->G:LN0/e;

    invoke-virtual {p1, p0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, LN0/h;->d:LO0/m;

    if-nez v0, :cond_0

    new-instance v0, LO0/m;

    invoke-direct {v0, p0}, LO0/t;-><init>(LN0/h;)V

    iget-object v1, v0, LO0/t;->h:LO0/g;

    sget-object v2, LO0/f;->LEFT:LO0/f;

    iput-object v2, v1, LO0/g;->e:LO0/f;

    iget-object v1, v0, LO0/t;->i:LO0/g;

    sget-object v2, LO0/f;->RIGHT:LO0/f;

    iput-object v2, v1, LO0/g;->e:LO0/f;

    const/4 v1, 0x0

    iput v1, v0, LO0/t;->f:I

    iput-object v0, p0, LN0/h;->d:LO0/m;

    :cond_0
    iget-object v0, p0, LN0/h;->e:LO0/p;

    if-nez v0, :cond_1

    new-instance v0, LO0/p;

    invoke-direct {v0, p0}, LO0/t;-><init>(LN0/h;)V

    new-instance v1, LO0/g;

    invoke-direct {v1, v0}, LO0/g;-><init>(LO0/t;)V

    iput-object v1, v0, LO0/p;->k:LO0/g;

    const/4 v2, 0x0

    iput-object v2, v0, LO0/p;->l:LO0/a;

    iget-object v2, v0, LO0/t;->h:LO0/g;

    sget-object v3, LO0/f;->TOP:LO0/f;

    iput-object v3, v2, LO0/g;->e:LO0/f;

    iget-object v2, v0, LO0/t;->i:LO0/g;

    sget-object v3, LO0/f;->BOTTOM:LO0/f;

    iput-object v3, v2, LO0/g;->e:LO0/f;

    sget-object v2, LO0/f;->BASELINE:LO0/f;

    iput-object v2, v1, LO0/g;->e:LO0/f;

    const/4 v1, 0x1

    iput v1, v0, LO0/t;->f:I

    iput-object v0, p0, LN0/h;->e:LO0/p;

    :cond_1
    return-void
.end method

.method public i(LN0/d;)LN0/e;
    .locals 2

    sget-object v0, LN0/f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LN0/h;->I:LN0/e;

    return-object p0

    :pswitch_2
    iget-object p0, p0, LN0/h;->H:LN0/e;

    return-object p0

    :pswitch_3
    iget-object p0, p0, LN0/h;->J:LN0/e;

    return-object p0

    :pswitch_4
    iget-object p0, p0, LN0/h;->G:LN0/e;

    return-object p0

    :pswitch_5
    iget-object p0, p0, LN0/h;->F:LN0/e;

    return-object p0

    :pswitch_6
    iget-object p0, p0, LN0/h;->E:LN0/e;

    return-object p0

    :pswitch_7
    iget-object p0, p0, LN0/h;->D:LN0/e;

    return-object p0

    :pswitch_8
    iget-object p0, p0, LN0/h;->C:LN0/e;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final j(I)LN0/g;
    .locals 1

    iget-object p0, p0, LN0/h;->N:[LN0/g;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()I
    .locals 2

    iget v0, p0, LN0/h;->b0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, LN0/h;->Q:I

    return p0
.end method

.method public final l(I)LN0/h;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, LN0/h;->E:LN0/e;

    iget-object p1, p0, LN0/e;->f:LN0/e;

    if-eqz p1, :cond_1

    iget-object v0, p1, LN0/e;->f:LN0/e;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, LN0/e;->d:LN0/h;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, LN0/h;->F:LN0/e;

    iget-object p1, p0, LN0/e;->f:LN0/e;

    if-eqz p1, :cond_1

    iget-object v0, p1, LN0/e;->f:LN0/e;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, LN0/e;->d:LN0/h;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final m(I)LN0/h;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, LN0/h;->C:LN0/e;

    iget-object p1, p0, LN0/e;->f:LN0/e;

    if-eqz p1, :cond_1

    iget-object v0, p1, LN0/e;->f:LN0/e;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, LN0/e;->d:LN0/h;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, LN0/h;->D:LN0/e;

    iget-object p1, p0, LN0/e;->f:LN0/e;

    if-eqz p1, :cond_1

    iget-object v0, p1, LN0/e;->f:LN0/e;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, LN0/e;->d:LN0/h;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()I
    .locals 2

    iget v0, p0, LN0/h;->b0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, LN0/h;->P:I

    return p0
.end method

.method public final o()I
    .locals 2

    iget-object v0, p0, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_0

    instance-of v1, v0, LN0/i;

    if-eqz v1, :cond_0

    check-cast v0, LN0/i;

    iget v0, v0, LN0/i;->q0:I

    iget p0, p0, LN0/h;->T:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, LN0/h;->T:I

    return p0
.end method

.method public final p()I
    .locals 2

    iget-object v0, p0, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_0

    instance-of v1, v0, LN0/i;

    if-eqz v1, :cond_0

    check-cast v0, LN0/i;

    iget v0, v0, LN0/i;->r0:I

    iget p0, p0, LN0/h;->U:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, LN0/h;->U:I

    return p0
.end method

.method public final q(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, LN0/h;->C:LN0/e;

    iget-object p1, p1, LN0/e;->f:LN0/e;

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, LN0/h;->E:LN0/e;

    iget-object p0, p0, LN0/e;->f:LN0/e;

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, LN0/h;->D:LN0/e;

    iget-object p1, p1, LN0/e;->f:LN0/e;

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iget-object v3, p0, LN0/h;->F:LN0/e;

    iget-object v3, v3, LN0/e;->f:LN0/e;

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    add-int/2addr p1, v3

    iget-object p0, p0, LN0/h;->G:LN0/e;

    iget-object p0, p0, LN0/e;->f:LN0/e;

    if-eqz p0, :cond_6

    move p0, v2

    goto :goto_4

    :cond_6
    move p0, v1

    :goto_4
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public final r(LN0/d;LN0/h;LN0/d;II)V
    .locals 0

    invoke-virtual {p0, p1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p0

    invoke-virtual {p2, p3}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p4, p5, p2}, LN0/e;->b(LN0/e;IIZ)Z

    return-void
.end method

.method public final s(I)Z
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, LN0/h;->K:[LN0/e;

    aget-object v0, p0, p1

    iget-object v1, v0, LN0/e;->f:LN0/e;

    if-eqz v1, :cond_0

    iget-object v1, v1, LN0/e;->f:LN0/e;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    iget-object p1, p0, LN0/e;->f:LN0/e;

    if-eqz p1, :cond_0

    iget-object p1, p1, LN0/e;->f:LN0/e;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, LN0/h;->C:LN0/e;

    iget-object v1, v0, LN0/e;->f:LN0/e;

    if-eqz v1, :cond_0

    iget-object v1, v1, LN0/e;->f:LN0/e;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, LN0/h;->E:LN0/e;

    iget-object v0, p0, LN0/e;->f:LN0/e;

    if-eqz v0, :cond_2

    iget-object v0, v0, LN0/e;->f:LN0/e;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LN0/h;->c0:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LN0/h;->c0:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v0, v2, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LN0/h;->T:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LN0/h;->U:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LN0/h;->P:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LN0/h;->Q:I

    const-string v0, ")"

    invoke-static {v1, p0, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Z
    .locals 2

    iget-object v0, p0, LN0/h;->D:LN0/e;

    iget-object v1, v0, LN0/e;->f:LN0/e;

    if-eqz v1, :cond_0

    iget-object v1, v1, LN0/e;->f:LN0/e;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, LN0/h;->F:LN0/e;

    iget-object v0, p0, LN0/e;->f:LN0/e;

    if-eqz v0, :cond_2

    iget-object v0, v0, LN0/e;->f:LN0/e;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, LN0/h;->g:Z

    if-eqz v0, :cond_0

    iget p0, p0, LN0/h;->b0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, LN0/h;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LN0/h;->C:LN0/e;

    iget-boolean v0, v0, LN0/e;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, LN0/h;->E:LN0/e;

    iget-boolean p0, p0, LN0/e;->c:Z

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

.method public x()Z
    .locals 1

    iget-boolean v0, p0, LN0/h;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LN0/h;->D:LN0/e;

    iget-boolean v0, v0, LN0/e;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, LN0/h;->F:LN0/e;

    iget-boolean p0, p0, LN0/e;->c:Z

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

.method public y()V
    .locals 6

    iget-object v0, p0, LN0/h;->C:LN0/e;

    invoke-virtual {v0}, LN0/e;->j()V

    iget-object v0, p0, LN0/h;->D:LN0/e;

    invoke-virtual {v0}, LN0/e;->j()V

    iget-object v0, p0, LN0/h;->E:LN0/e;

    invoke-virtual {v0}, LN0/e;->j()V

    iget-object v0, p0, LN0/h;->F:LN0/e;

    invoke-virtual {v0}, LN0/e;->j()V

    iget-object v0, p0, LN0/h;->G:LN0/e;

    invoke-virtual {v0}, LN0/e;->j()V

    iget-object v0, p0, LN0/h;->H:LN0/e;

    invoke-virtual {v0}, LN0/e;->j()V

    iget-object v0, p0, LN0/h;->I:LN0/e;

    invoke-virtual {v0}, LN0/e;->j()V

    iget-object v0, p0, LN0/h;->J:LN0/e;

    invoke-virtual {v0}, LN0/e;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, LN0/h;->O:LN0/h;

    const/4 v1, 0x0

    iput v1, p0, LN0/h;->x:F

    const/4 v2, 0x0

    iput v2, p0, LN0/h;->P:I

    iput v2, p0, LN0/h;->Q:I

    iput v1, p0, LN0/h;->R:F

    const/4 v1, -0x1

    iput v1, p0, LN0/h;->S:I

    iput v2, p0, LN0/h;->T:I

    iput v2, p0, LN0/h;->U:I

    iput v2, p0, LN0/h;->V:I

    iput v2, p0, LN0/h;->W:I

    iput v2, p0, LN0/h;->X:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, LN0/h;->Y:F

    iput v3, p0, LN0/h;->Z:F

    sget-object v3, LN0/g;->FIXED:LN0/g;

    iget-object v4, p0, LN0/h;->N:[LN0/g;

    aput-object v3, v4, v2

    const/4 v5, 0x1

    aput-object v3, v4, v5

    iput-object v0, p0, LN0/h;->a0:Landroid/view/View;

    iput v2, p0, LN0/h;->b0:I

    iput v2, p0, LN0/h;->d0:I

    iput v2, p0, LN0/h;->e0:I

    iget-object v0, p0, LN0/h;->f0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v5

    iput v1, p0, LN0/h;->j:I

    iput v1, p0, LN0/h;->k:I

    iget-object v0, p0, LN0/h;->w:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v5

    iput v2, p0, LN0/h;->l:I

    iput v2, p0, LN0/h;->m:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LN0/h;->q:F

    iput v0, p0, LN0/h;->t:F

    iput v3, p0, LN0/h;->p:I

    iput v3, p0, LN0/h;->s:I

    iput v2, p0, LN0/h;->o:I

    iput v2, p0, LN0/h;->r:I

    iput v1, p0, LN0/h;->u:I

    iput v0, p0, LN0/h;->v:F

    iget-object v0, p0, LN0/h;->f:[Z

    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    iput-boolean v2, p0, LN0/h;->z:Z

    iget-object v0, p0, LN0/h;->M:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v5

    iput-boolean v5, p0, LN0/h;->g:Z

    return-void
.end method

.method public final z()V
    .locals 3

    iget-object v0, p0, LN0/h;->O:LN0/h;

    if-eqz v0, :cond_0

    instance-of v1, v0, LN0/i;

    if-eqz v1, :cond_0

    check-cast v0, LN0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, LN0/h;->L:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN0/e;

    invoke-virtual {v2}, LN0/e;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
