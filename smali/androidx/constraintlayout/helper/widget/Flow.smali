.class public Landroidx/constraintlayout/helper/widget/Flow;
.super LP0/v;
.source "SourceFile"


# instance fields
.field public final j:LN0/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, LP0/e;->a:[I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, LP0/e;->g:Ljava/util/HashMap;

    iput-object p1, p0, LP0/e;->c:Landroid/content/Context;

    invoke-super {p0, p2}, LP0/v;->f(Landroid/util/AttributeSet;)V

    new-instance p1, LN0/k;

    invoke-direct {p1}, LN0/n;-><init>()V

    const/4 v1, 0x0

    iput v1, p1, LN0/k;->m0:I

    iput v1, p1, LN0/k;->n0:I

    iput v1, p1, LN0/k;->o0:I

    iput v1, p1, LN0/k;->p0:I

    iput v1, p1, LN0/k;->q0:I

    iput v1, p1, LN0/k;->r0:I

    iput-boolean v1, p1, LN0/k;->s0:Z

    iput v1, p1, LN0/k;->t0:I

    iput v1, p1, LN0/k;->u0:I

    new-instance v2, LO0/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p1, LN0/k;->v0:LO0/b;

    const/4 v2, 0x0

    iput-object v2, p1, LN0/k;->w0:LP0/i;

    const/4 v3, -0x1

    iput v3, p1, LN0/k;->x0:I

    iput v3, p1, LN0/k;->y0:I

    iput v3, p1, LN0/k;->z0:I

    iput v3, p1, LN0/k;->A0:I

    iput v3, p1, LN0/k;->B0:I

    iput v3, p1, LN0/k;->C0:I

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p1, LN0/k;->D0:F

    iput v4, p1, LN0/k;->E0:F

    iput v4, p1, LN0/k;->F0:F

    iput v4, p1, LN0/k;->G0:F

    iput v4, p1, LN0/k;->H0:F

    iput v4, p1, LN0/k;->I0:F

    iput v1, p1, LN0/k;->J0:I

    iput v1, p1, LN0/k;->K0:I

    const/4 v5, 0x2

    iput v5, p1, LN0/k;->L0:I

    iput v5, p1, LN0/k;->M0:I

    iput v1, p1, LN0/k;->N0:I

    iput v3, p1, LN0/k;->O0:I

    iput v1, p1, LN0/k;->P0:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p1, LN0/k;->Q0:Ljava/util/ArrayList;

    iput-object v2, p1, LN0/k;->R0:[LN0/h;

    iput-object v2, p1, LN0/k;->S0:[LN0/h;

    iput-object v2, p1, LN0/k;->T0:[I

    iput v1, p1, LN0/k;->V0:I

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    if-eqz p2, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, LP0/u;->b:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1a

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    if-nez v6, :cond_0

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->P0:I

    goto/16 :goto_1

    :cond_0
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, LN0/k;->m0:I

    iput v6, v7, LN0/k;->n0:I

    iput v6, v7, LN0/k;->o0:I

    iput v6, v7, LN0/k;->p0:I

    goto/16 :goto_1

    :cond_1
    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, LN0/k;->o0:I

    iput v6, v7, LN0/k;->q0:I

    iput v6, v7, LN0/k;->r0:I

    goto/16 :goto_1

    :cond_2
    const/16 v7, 0xc

    if-ne v6, v7, :cond_3

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, LN0/k;->p0:I

    goto/16 :goto_1

    :cond_3
    if-ne v6, v5, :cond_4

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, LN0/k;->q0:I

    goto/16 :goto_1

    :cond_4
    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, LN0/k;->m0:I

    goto/16 :goto_1

    :cond_5
    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, LN0/k;->r0:I

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, LN0/k;->n0:I

    goto/16 :goto_1

    :cond_7
    const/16 v7, 0x26

    if-ne v6, v7, :cond_8

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->N0:I

    goto/16 :goto_1

    :cond_8
    const/16 v7, 0x1c

    if-ne v6, v7, :cond_9

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->x0:I

    goto/16 :goto_1

    :cond_9
    const/16 v7, 0x25

    if-ne v6, v7, :cond_a

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->y0:I

    goto/16 :goto_1

    :cond_a
    const/16 v7, 0x16

    if-ne v6, v7, :cond_b

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->z0:I

    goto/16 :goto_1

    :cond_b
    const/16 v7, 0x1e

    if-ne v6, v7, :cond_c

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->B0:I

    goto/16 :goto_1

    :cond_c
    const/16 v7, 0x18

    if-ne v6, v7, :cond_d

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->A0:I

    goto/16 :goto_1

    :cond_d
    if-ne v6, v0, :cond_e

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->C0:I

    goto/16 :goto_1

    :cond_e
    const/16 v7, 0x1a

    if-ne v6, v7, :cond_f

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v7, LN0/k;->D0:F

    goto/16 :goto_1

    :cond_f
    const/16 v7, 0x15

    if-ne v6, v7, :cond_10

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v7, LN0/k;->F0:F

    goto/16 :goto_1

    :cond_10
    const/16 v7, 0x1d

    if-ne v6, v7, :cond_11

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v7, LN0/k;->H0:F

    goto/16 :goto_1

    :cond_11
    const/16 v7, 0x17

    if-ne v6, v7, :cond_12

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v7, LN0/k;->G0:F

    goto :goto_1

    :cond_12
    const/16 v7, 0x1f

    if-ne v6, v7, :cond_13

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v7, LN0/k;->I0:F

    goto :goto_1

    :cond_13
    const/16 v7, 0x23

    if-ne v6, v7, :cond_14

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v7, LN0/k;->E0:F

    goto :goto_1

    :cond_14
    const/16 v7, 0x19

    if-ne v6, v7, :cond_15

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->L0:I

    goto :goto_1

    :cond_15
    const/16 v7, 0x22

    if-ne v6, v7, :cond_16

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->M0:I

    goto :goto_1

    :cond_16
    const/16 v7, 0x1b

    if-ne v6, v7, :cond_17

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, LN0/k;->J0:I

    goto :goto_1

    :cond_17
    const/16 v7, 0x24

    if-ne v6, v7, :cond_18

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, LN0/k;->K0:I

    goto :goto_1

    :cond_18
    const/16 v7, 0x21

    if-ne v6, v7, :cond_19

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v7, LN0/k;->O0:I

    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1b
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput-object p1, p0, LP0/e;->d:LN0/n;

    invoke-virtual {p0}, LP0/e;->h()V

    return-void
.end method


# virtual methods
.method public final g(LN0/h;Z)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iget p1, p0, LN0/k;->o0:I

    if-gtz p1, :cond_0

    iget v0, p0, LN0/k;->p0:I

    if-lez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p0, LN0/k;->p0:I

    iput p2, p0, LN0/k;->q0:I

    iput p1, p0, LN0/k;->r0:I

    goto :goto_0

    :cond_1
    iput p1, p0, LN0/k;->q0:I

    iget p1, p0, LN0/k;->p0:I

    iput p1, p0, LN0/k;->r0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(LN0/k;II)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    const/4 v14, 0x0

    if-eqz v9, :cond_5e

    iget v1, v9, LN0/n;->l0:I

    const/4 v15, 0x1

    if-lez v1, :cond_7

    iget-object v1, v9, LN0/h;->O:LN0/h;

    if-eqz v1, :cond_0

    check-cast v1, LN0/i;

    iget-object v1, v1, LN0/i;->n0:LP0/i;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iput v14, v9, LN0/k;->t0:I

    iput v14, v9, LN0/k;->u0:I

    iput-boolean v14, v9, LN0/k;->s0:Z

    goto/16 :goto_33

    :cond_1
    move v3, v14

    :goto_1
    iget v4, v9, LN0/n;->l0:I

    if-ge v3, v4, :cond_7

    iget-object v4, v9, LN0/n;->k0:[LN0/h;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    instance-of v5, v4, LN0/m;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v14}, LN0/h;->j(I)LN0/g;

    move-result-object v5

    invoke-virtual {v4, v15}, LN0/h;->j(I)LN0/g;

    move-result-object v6

    sget-object v7, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v5, v7, :cond_4

    iget v8, v4, LN0/h;->l:I

    if-eq v8, v15, :cond_4

    if-ne v6, v7, :cond_4

    iget v8, v4, LN0/h;->m:I

    if-eq v8, v15, :cond_4

    goto :goto_2

    :cond_4
    if-ne v5, v7, :cond_5

    sget-object v5, LN0/g;->WRAP_CONTENT:LN0/g;

    :cond_5
    if-ne v6, v7, :cond_6

    sget-object v6, LN0/g;->WRAP_CONTENT:LN0/g;

    :cond_6
    iget-object v7, v9, LN0/k;->v0:LO0/b;

    iput-object v5, v7, LO0/b;->a:LN0/g;

    iput-object v6, v7, LO0/b;->b:LN0/g;

    invoke-virtual {v4}, LN0/h;->n()I

    move-result v5

    iput v5, v7, LO0/b;->c:I

    invoke-virtual {v4}, LN0/h;->k()I

    move-result v5

    iput v5, v7, LO0/b;->d:I

    invoke-virtual {v1, v4, v7}, LP0/i;->b(LN0/h;LO0/b;)V

    iget v5, v7, LO0/b;->e:I

    invoke-virtual {v4, v5}, LN0/h;->H(I)V

    iget v5, v7, LO0/b;->f:I

    invoke-virtual {v4, v5}, LN0/h;->E(I)V

    iget v5, v7, LO0/b;->g:I

    invoke-virtual {v4, v5}, LN0/h;->B(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    iget v8, v9, LN0/k;->q0:I

    iget v7, v9, LN0/k;->r0:I

    iget v6, v9, LN0/k;->m0:I

    iget v5, v9, LN0/k;->n0:I

    const/4 v1, 0x2

    new-array v4, v1, [I

    sub-int v3, v11, v8

    sub-int/2addr v3, v7

    iget v2, v9, LN0/k;->P0:I

    if-ne v2, v15, :cond_8

    sub-int v3, v13, v6

    sub-int/2addr v3, v5

    :cond_8
    const/4 v1, -0x1

    if-nez v2, :cond_a

    iget v2, v9, LN0/k;->x0:I

    if-ne v2, v1, :cond_9

    iput v14, v9, LN0/k;->x0:I

    :cond_9
    iget v2, v9, LN0/k;->y0:I

    if-ne v2, v1, :cond_c

    iput v14, v9, LN0/k;->y0:I

    goto :goto_3

    :cond_a
    iget v2, v9, LN0/k;->x0:I

    if-ne v2, v1, :cond_b

    iput v14, v9, LN0/k;->x0:I

    :cond_b
    iget v2, v9, LN0/k;->y0:I

    if-ne v2, v1, :cond_c

    iput v14, v9, LN0/k;->y0:I

    :cond_c
    :goto_3
    iget-object v1, v9, LN0/n;->k0:[LN0/h;

    move v2, v14

    move/from16 v16, v2

    :goto_4
    iget v14, v9, LN0/n;->l0:I

    const/16 v15, 0x8

    if-ge v2, v14, :cond_e

    iget-object v14, v9, LN0/n;->k0:[LN0/h;

    aget-object v14, v14, v2

    iget v14, v14, LN0/h;->b0:I

    if-ne v14, v15, :cond_d

    add-int/lit8 v16, v16, 0x1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    const/4 v15, 0x1

    goto :goto_4

    :cond_e
    if-lez v16, :cond_10

    sub-int v14, v14, v16

    new-array v1, v14, [LN0/h;

    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_5
    iget v15, v9, LN0/n;->l0:I

    if-ge v2, v15, :cond_10

    iget-object v15, v9, LN0/n;->k0:[LN0/h;

    aget-object v15, v15, v2

    move/from16 v17, v5

    iget v5, v15, LN0/h;->b0:I

    move/from16 v18, v6

    const/16 v6, 0x8

    if-eq v5, v6, :cond_f

    aput-object v15, v1, v14

    add-int/lit8 v14, v14, 0x1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v17

    move/from16 v6, v18

    goto :goto_5

    :cond_10
    move/from16 v17, v5

    move/from16 v18, v6

    move v15, v14

    move-object v14, v1

    iput-object v14, v9, LN0/k;->U0:[LN0/h;

    iput v15, v9, LN0/k;->V0:I

    iget v1, v9, LN0/k;->N0:I

    iget-object v6, v9, LN0/k;->Q0:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    const/4 v2, 0x1

    if-eq v1, v2, :cond_38

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    move-object/from16 v28, v4

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v31, v12

    move/from16 v27, v13

    move/from16 v29, v17

    move/from16 v30, v18

    :goto_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto/16 :goto_2e

    :cond_11
    iget v1, v9, LN0/k;->P0:I

    if-nez v1, :cond_17

    iget v2, v9, LN0/k;->O0:I

    if-gtz v2, :cond_16

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_7
    move/from16 v16, v7

    if-ge v2, v15, :cond_15

    if-lez v2, :cond_12

    iget v7, v9, LN0/k;->J0:I

    add-int/2addr v5, v7

    :cond_12
    aget-object v7, v14, v2

    if-nez v7, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v9, v7, v3}, LN0/k;->N(LN0/h;I)I

    move-result v7

    add-int/2addr v7, v5

    if-le v7, v3, :cond_14

    goto :goto_9

    :cond_14
    add-int/lit8 v6, v6, 0x1

    move v5, v7

    :goto_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v16

    goto :goto_7

    :cond_15
    :goto_9
    const/4 v2, 0x0

    goto :goto_d

    :cond_16
    move/from16 v16, v7

    move v6, v2

    goto :goto_9

    :cond_17
    move/from16 v16, v7

    iget v2, v9, LN0/k;->O0:I

    if-gtz v2, :cond_1c

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    if-ge v2, v15, :cond_1b

    if-lez v2, :cond_18

    iget v7, v9, LN0/k;->K0:I

    add-int/2addr v5, v7

    :cond_18
    aget-object v7, v14, v2

    if-nez v7, :cond_19

    goto :goto_b

    :cond_19
    invoke-virtual {v9, v7, v3}, LN0/k;->M(LN0/h;I)I

    move-result v7

    add-int/2addr v7, v5

    if-le v7, v3, :cond_1a

    goto :goto_c

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    move v5, v7

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    :goto_c
    move v2, v6

    :cond_1c
    const/4 v6, 0x0

    :goto_d
    iget-object v5, v9, LN0/k;->T0:[I

    if-nez v5, :cond_1d

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, v9, LN0/k;->T0:[I

    :cond_1d
    if-nez v2, :cond_1e

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1f

    :cond_1e
    if-nez v6, :cond_20

    if-nez v1, :cond_20

    :cond_1f
    const/4 v5, 0x1

    goto :goto_e

    :cond_20
    const/4 v5, 0x0

    :goto_e
    if-nez v5, :cond_37

    if-nez v1, :cond_21

    int-to-float v2, v15

    int-to-float v7, v6

    div-float/2addr v2, v7

    move/from16 v19, v8

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_f

    :cond_21
    move/from16 v19, v8

    int-to-float v6, v15

    int-to-float v7, v2

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    :goto_f
    iget-object v7, v9, LN0/k;->S0:[LN0/h;

    if-eqz v7, :cond_22

    array-length v8, v7

    if-ge v8, v6, :cond_23

    :cond_22
    const/4 v8, 0x0

    goto :goto_10

    :cond_23
    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    :goto_10
    new-array v7, v6, [LN0/h;

    iput-object v7, v9, LN0/k;->S0:[LN0/h;

    :goto_11
    iget-object v7, v9, LN0/k;->R0:[LN0/h;

    if-eqz v7, :cond_25

    array-length v8, v7

    if-ge v8, v2, :cond_24

    goto :goto_12

    :cond_24
    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_25
    :goto_12
    new-array v7, v2, [LN0/h;

    iput-object v7, v9, LN0/k;->R0:[LN0/h;

    :goto_13
    const/4 v7, 0x0

    :goto_14
    if-ge v7, v6, :cond_2e

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v2, :cond_2d

    mul-int v20, v8, v6

    add-int v20, v20, v7

    move/from16 p3, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_26

    mul-int v5, v7, v2

    add-int v20, v5, v8

    :cond_26
    move/from16 v5, v20

    array-length v0, v14

    if-lt v5, v0, :cond_27

    :goto_16
    move/from16 v27, v13

    goto :goto_17

    :cond_27
    aget-object v0, v14, v5

    if-nez v0, :cond_28

    goto :goto_16

    :cond_28
    invoke-virtual {v9, v0, v3}, LN0/k;->N(LN0/h;I)I

    move-result v5

    move/from16 v27, v13

    iget-object v13, v9, LN0/k;->S0:[LN0/h;

    aget-object v13, v13, v7

    if-eqz v13, :cond_29

    invoke-virtual {v13}, LN0/h;->n()I

    move-result v13

    if-ge v13, v5, :cond_2a

    :cond_29
    iget-object v5, v9, LN0/k;->S0:[LN0/h;

    aput-object v0, v5, v7

    :cond_2a
    invoke-virtual {v9, v0, v3}, LN0/k;->M(LN0/h;I)I

    move-result v5

    iget-object v13, v9, LN0/k;->R0:[LN0/h;

    aget-object v13, v13, v8

    if-eqz v13, :cond_2b

    invoke-virtual {v13}, LN0/h;->k()I

    move-result v13

    if-ge v13, v5, :cond_2c

    :cond_2b
    iget-object v5, v9, LN0/k;->R0:[LN0/h;

    aput-object v0, v5, v8

    :cond_2c
    :goto_17
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p3

    move/from16 v13, v27

    goto :goto_15

    :cond_2d
    move/from16 p3, v5

    move/from16 v27, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_14

    :cond_2e
    move/from16 p3, v5

    move/from16 v27, v13

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_18
    if-ge v0, v6, :cond_31

    iget-object v7, v9, LN0/k;->S0:[LN0/h;

    aget-object v7, v7, v0

    if-eqz v7, :cond_30

    if-lez v0, :cond_2f

    iget v8, v9, LN0/k;->J0:I

    add-int/2addr v5, v8

    :cond_2f
    invoke-virtual {v9, v7, v3}, LN0/k;->N(LN0/h;I)I

    move-result v7

    add-int/2addr v7, v5

    move v5, v7

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_31
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_19
    if-ge v0, v2, :cond_34

    iget-object v8, v9, LN0/k;->R0:[LN0/h;

    aget-object v8, v8, v0

    if-eqz v8, :cond_33

    if-lez v0, :cond_32

    iget v13, v9, LN0/k;->K0:I

    add-int/2addr v7, v13

    :cond_32
    invoke-virtual {v9, v8, v3}, LN0/k;->M(LN0/h;I)I

    move-result v8

    add-int/2addr v8, v7

    move v7, v8

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_34
    const/4 v0, 0x0

    aput v5, v4, v0

    const/4 v0, 0x1

    aput v7, v4, v0

    if-nez v1, :cond_36

    if-le v5, v3, :cond_35

    if-le v6, v0, :cond_35

    add-int/lit8 v6, v6, -0x1

    :goto_1a
    move/from16 v5, p3

    goto :goto_1b

    :cond_35
    move v5, v0

    goto :goto_1b

    :cond_36
    if-le v7, v3, :cond_35

    if-le v2, v0, :cond_35

    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :goto_1b
    move-object/from16 v0, p0

    move/from16 v8, v19

    move/from16 v13, v27

    goto/16 :goto_e

    :cond_37
    move/from16 v19, v8

    move/from16 v27, v13

    const/4 v0, 0x1

    iget-object v1, v9, LN0/k;->T0:[I

    const/4 v3, 0x0

    aput v6, v1, v3

    aput v2, v1, v0

    :goto_1c
    move-object/from16 v28, v4

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v31, v12

    move/from16 v32, v16

    move/from16 v29, v17

    move/from16 v30, v18

    move/from16 v33, v19

    goto/16 :goto_6

    :cond_38
    move/from16 v16, v7

    move/from16 v19, v8

    move/from16 v27, v13

    iget v0, v9, LN0/k;->P0:I

    if-nez v15, :cond_39

    goto :goto_1c

    :cond_39
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v13, LN0/j;

    iget-object v7, v9, LN0/h;->E:LN0/e;

    iget-object v8, v9, LN0/h;->F:LN0/e;

    iget-object v5, v9, LN0/h;->C:LN0/e;

    iget-object v2, v9, LN0/h;->D:LN0/e;

    move-object v1, v13

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    move/from16 p3, v3

    move v3, v0

    move-object/from16 v28, v4

    move-object v4, v5

    move/from16 v29, v17

    move-object/from16 v5, v20

    move/from16 v31, v12

    move/from16 v30, v18

    move-object v12, v6

    move-object v6, v7

    move/from16 v32, v16

    move-object v7, v8

    move/from16 v33, v19

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, LN0/j;-><init>(LN0/k;ILN0/e;LN0/e;LN0/e;LN0/e;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_42

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_1d
    if-ge v8, v15, :cond_40

    aget-object v7, v14, v8

    move/from16 v6, p3

    invoke-virtual {v9, v7, v6}, LN0/k;->N(LN0/h;I)I

    move-result v16

    iget-object v3, v7, LN0/h;->N:[LN0/g;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v3, v4, :cond_3a

    add-int/lit8 v1, v1, 0x1

    :cond_3a
    move/from16 v17, v1

    if-eq v2, v6, :cond_3b

    iget v1, v9, LN0/k;->J0:I

    add-int/2addr v1, v2

    add-int v1, v1, v16

    if-le v1, v6, :cond_3c

    :cond_3b
    iget-object v1, v13, LN0/j;->b:LN0/h;

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_1e

    :cond_3c
    const/4 v1, 0x0

    :goto_1e
    if-nez v1, :cond_3d

    if-lez v8, :cond_3d

    iget v3, v9, LN0/k;->O0:I

    if-lez v3, :cond_3d

    rem-int v3, v8, v3

    if-nez v3, :cond_3d

    const/4 v1, 0x1

    :cond_3d
    if-eqz v1, :cond_3f

    new-instance v13, LN0/j;

    iget-object v5, v9, LN0/h;->E:LN0/e;

    iget-object v4, v9, LN0/h;->F:LN0/e;

    iget-object v3, v9, LN0/h;->C:LN0/e;

    iget-object v2, v9, LN0/h;->D:LN0/e;

    move-object v1, v13

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move v3, v0

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    move/from16 p3, v6

    move-object/from16 v6, v19

    move/from16 v34, v11

    move-object v11, v7

    move-object/from16 v7, v20

    move/from16 v35, v10

    move v10, v8

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, LN0/j;-><init>(LN0/k;ILN0/e;LN0/e;LN0/e;LN0/e;I)V

    iput v10, v13, LN0/j;->n:I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    move/from16 v2, v16

    goto :goto_1f

    :cond_3f
    move/from16 p3, v6

    move/from16 v35, v10

    move/from16 v34, v11

    move-object v11, v7

    move v10, v8

    if-lez v10, :cond_3e

    iget v1, v9, LN0/k;->J0:I

    add-int v1, v1, v16

    add-int/2addr v1, v2

    move v2, v1

    :goto_1f
    invoke-virtual {v13, v11}, LN0/j;->a(LN0/h;)V

    add-int/lit8 v8, v10, 0x1

    move/from16 v1, v17

    move/from16 v11, v34

    move/from16 v10, v35

    goto/16 :goto_1d

    :cond_40
    move/from16 v35, v10

    move/from16 v34, v11

    :cond_41
    move/from16 v36, p3

    goto/16 :goto_23

    :cond_42
    move/from16 v35, v10

    move/from16 v34, v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_20
    if-ge v10, v15, :cond_41

    aget-object v11, v14, v10

    move/from16 v8, p3

    invoke-virtual {v9, v11, v8}, LN0/k;->M(LN0/h;I)I

    move-result v16

    iget-object v3, v11, LN0/h;->N:[LN0/g;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v3, v4, :cond_43

    add-int/lit8 v1, v1, 0x1

    :cond_43
    move/from16 v17, v1

    if-eq v2, v8, :cond_44

    iget v1, v9, LN0/k;->K0:I

    add-int/2addr v1, v2

    add-int v1, v1, v16

    if-le v1, v8, :cond_45

    :cond_44
    iget-object v1, v13, LN0/j;->b:LN0/h;

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    goto :goto_21

    :cond_45
    const/4 v1, 0x0

    :goto_21
    if-nez v1, :cond_46

    if-lez v10, :cond_46

    iget v3, v9, LN0/k;->O0:I

    if-lez v3, :cond_46

    rem-int v3, v10, v3

    if-nez v3, :cond_46

    const/4 v1, 0x1

    :cond_46
    if-eqz v1, :cond_48

    new-instance v13, LN0/j;

    iget-object v6, v9, LN0/h;->E:LN0/e;

    iget-object v7, v9, LN0/h;->F:LN0/e;

    iget-object v4, v9, LN0/h;->C:LN0/e;

    iget-object v5, v9, LN0/h;->D:LN0/e;

    move-object v1, v13

    move-object/from16 v2, p1

    move v3, v0

    move/from16 v36, v8

    invoke-direct/range {v1 .. v8}, LN0/j;-><init>(LN0/k;ILN0/e;LN0/e;LN0/e;LN0/e;I)V

    iput v10, v13, LN0/j;->n:I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    move/from16 v2, v16

    goto :goto_22

    :cond_48
    move/from16 v36, v8

    if-lez v10, :cond_47

    iget v1, v9, LN0/k;->K0:I

    add-int v1, v1, v16

    add-int/2addr v1, v2

    move v2, v1

    :goto_22
    invoke-virtual {v13, v11}, LN0/j;->a(LN0/h;)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v17

    move/from16 p3, v36

    goto :goto_20

    :goto_23
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v9, LN0/k;->q0:I

    iget v4, v9, LN0/k;->m0:I

    iget v5, v9, LN0/k;->r0:I

    iget v6, v9, LN0/k;->n0:I

    iget-object v7, v9, LN0/h;->N:[LN0/g;

    const/4 v8, 0x0

    aget-object v10, v7, v8

    sget-object v8, LN0/g;->WRAP_CONTENT:LN0/g;

    if-eq v10, v8, :cond_4a

    const/4 v10, 0x1

    aget-object v7, v7, v10

    if-ne v7, v8, :cond_49

    goto :goto_24

    :cond_49
    const/4 v7, 0x0

    goto :goto_25

    :cond_4a
    :goto_24
    const/4 v7, 0x1

    :goto_25
    if-lez v1, :cond_4c

    if-eqz v7, :cond_4c

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v2, :cond_4c

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LN0/j;

    if-nez v0, :cond_4b

    invoke-virtual {v7}, LN0/j;->d()I

    move-result v8

    sub-int v8, v36, v8

    invoke-virtual {v7, v8}, LN0/j;->e(I)V

    goto :goto_27

    :cond_4b
    invoke-virtual {v7}, LN0/j;->c()I

    move-result v8

    sub-int v8, v36, v8

    invoke-virtual {v7, v8}, LN0/j;->e(I)V

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_4c
    iget-object v1, v9, LN0/h;->F:LN0/e;

    iget-object v7, v9, LN0/h;->E:LN0/e;

    iget-object v8, v9, LN0/h;->C:LN0/e;

    iget-object v10, v9, LN0/h;->D:LN0/e;

    move-object v15, v1

    move-object/from16 v37, v7

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_28
    if-ge v11, v2, :cond_52

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p2, v1

    move-object/from16 v1, v16

    check-cast v1, LN0/j;

    if-nez v0, :cond_4f

    add-int/lit8 v6, v2, -0x1

    if-ge v11, v6, :cond_4d

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LN0/j;

    iget-object v6, v6, LN0/j;->b:LN0/h;

    iget-object v6, v6, LN0/h;->D:LN0/e;

    move-object v15, v6

    move-object/from16 p3, v7

    const/4 v6, 0x0

    goto :goto_29

    :cond_4d
    iget v6, v9, LN0/k;->n0:I

    move-object/from16 v15, p2

    move-object/from16 p3, v7

    :goto_29
    iget-object v7, v1, LN0/j;->b:LN0/h;

    iget-object v7, v7, LN0/h;->F:LN0/e;

    move-object/from16 v16, v1

    move/from16 v17, v0

    move-object/from16 v18, v8

    move-object/from16 v19, v10

    move-object/from16 v20, v37

    move-object/from16 v21, v15

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v36

    invoke-virtual/range {v16 .. v26}, LN0/j;->f(ILN0/e;LN0/e;LN0/e;LN0/e;IIIII)V

    invoke-virtual {v1}, LN0/j;->d()I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1}, LN0/j;->c()I

    move-result v1

    add-int/2addr v1, v14

    if-lez v11, :cond_4e

    iget v10, v9, LN0/k;->K0:I

    add-int/2addr v1, v10

    :cond_4e
    move v14, v1

    move v13, v4

    move-object v10, v7

    const/4 v4, 0x0

    goto :goto_2b

    :cond_4f
    move-object/from16 p3, v7

    add-int/lit8 v5, v2, -0x1

    if-ge v11, v5, :cond_50

    add-int/lit8 v5, v11, 0x1

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LN0/j;

    iget-object v5, v5, LN0/j;->b:LN0/h;

    iget-object v5, v5, LN0/h;->C:LN0/e;

    move-object/from16 v37, v5

    const/4 v5, 0x0

    goto :goto_2a

    :cond_50
    iget v5, v9, LN0/k;->r0:I

    move-object/from16 v37, p3

    :goto_2a
    iget-object v7, v1, LN0/j;->b:LN0/h;

    iget-object v7, v7, LN0/h;->E:LN0/e;

    move-object/from16 v16, v1

    move/from16 v17, v0

    move-object/from16 v18, v8

    move-object/from16 v19, v10

    move-object/from16 v20, v37

    move-object/from16 v21, v15

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v36

    invoke-virtual/range {v16 .. v26}, LN0/j;->f(ILN0/e;LN0/e;LN0/e;LN0/e;IIIII)V

    invoke-virtual {v1}, LN0/j;->d()I

    move-result v3

    add-int/2addr v3, v13

    invoke-virtual {v1}, LN0/j;->c()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v11, :cond_51

    iget v8, v9, LN0/k;->J0:I

    add-int/2addr v3, v8

    :cond_51
    move v14, v1

    move v13, v3

    move-object v8, v7

    const/4 v3, 0x0

    :goto_2b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    goto/16 :goto_28

    :cond_52
    const/4 v1, 0x0

    aput v13, v28, v1

    const/4 v0, 0x1

    aput v14, v28, v0

    goto/16 :goto_6

    :cond_53
    move/from16 v36, v3

    move-object/from16 v28, v4

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v31, v12

    move/from16 v27, v13

    move/from16 v29, v17

    move/from16 v30, v18

    move-object v12, v6

    iget v0, v9, LN0/k;->P0:I

    if-nez v15, :cond_54

    goto/16 :goto_6

    :cond_54
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_55

    new-instance v10, LN0/j;

    iget-object v6, v9, LN0/h;->E:LN0/e;

    iget-object v7, v9, LN0/h;->F:LN0/e;

    iget-object v4, v9, LN0/h;->C:LN0/e;

    iget-object v5, v9, LN0/h;->D:LN0/e;

    move-object v1, v10

    move-object/from16 v2, p1

    move v3, v0

    move/from16 v8, v36

    invoke-direct/range {v1 .. v8}, LN0/j;-><init>(LN0/k;ILN0/e;LN0/e;LN0/e;LN0/e;I)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_55
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, LN0/j;

    iput v1, v10, LN0/j;->c:I

    const/4 v2, 0x0

    iput-object v2, v10, LN0/j;->b:LN0/h;

    iput v1, v10, LN0/j;->l:I

    iput v1, v10, LN0/j;->m:I

    iput v1, v10, LN0/j;->n:I

    iput v1, v10, LN0/j;->o:I

    iput v1, v10, LN0/j;->p:I

    iget v1, v9, LN0/k;->q0:I

    iget v2, v9, LN0/k;->m0:I

    iget v3, v9, LN0/k;->r0:I

    iget v4, v9, LN0/k;->n0:I

    iget-object v5, v9, LN0/h;->C:LN0/e;

    iget-object v6, v9, LN0/h;->D:LN0/e;

    iget-object v7, v9, LN0/h;->E:LN0/e;

    iget-object v8, v9, LN0/h;->F:LN0/e;

    move-object/from16 v16, v10

    move/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v36

    invoke-virtual/range {v16 .. v26}, LN0/j;->f(ILN0/e;LN0/e;LN0/e;LN0/e;IIIII)V

    :goto_2c
    const/4 v0, 0x0

    :goto_2d
    if-ge v0, v15, :cond_56

    aget-object v1, v14, v0

    invoke-virtual {v10, v1}, LN0/j;->a(LN0/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_56
    invoke-virtual {v10}, LN0/j;->d()I

    move-result v0

    const/4 v1, 0x0

    aput v0, v28, v1

    invoke-virtual {v10}, LN0/j;->c()I

    move-result v0

    const/4 v2, 0x1

    aput v0, v28, v2

    :goto_2e
    aget v0, v28, v1

    add-int v0, v0, v33

    add-int v0, v0, v32

    aget v1, v28, v2

    add-int v1, v1, v30

    add-int v1, v1, v29

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v5, v35

    if-ne v5, v4, :cond_57

    move/from16 v0, v31

    move/from16 v11, v34

    goto :goto_30

    :cond_57
    if-ne v5, v3, :cond_58

    move/from16 v6, v34

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_2f
    move/from16 v0, v31

    goto :goto_30

    :cond_58
    if-nez v5, :cond_59

    move v11, v0

    goto :goto_2f

    :cond_59
    move/from16 v0, v31

    const/4 v11, 0x0

    :goto_30
    if-ne v0, v4, :cond_5a

    move/from16 v13, v27

    goto :goto_31

    :cond_5a
    if-ne v0, v3, :cond_5b

    move/from16 v3, v27

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_31

    :cond_5b
    if-nez v0, :cond_5c

    move v13, v1

    goto :goto_31

    :cond_5c
    const/4 v13, 0x0

    :goto_31
    iput v11, v9, LN0/k;->t0:I

    iput v13, v9, LN0/k;->u0:I

    invoke-virtual {v9, v11}, LN0/h;->H(I)V

    invoke-virtual {v9, v13}, LN0/h;->E(I)V

    iget v0, v9, LN0/n;->l0:I

    if-lez v0, :cond_5d

    move v14, v2

    goto :goto_32

    :cond_5d
    const/4 v14, 0x0

    :goto_32
    iput-boolean v14, v9, LN0/k;->s0:Z

    :goto_33
    iget v0, v9, LN0/k;->t0:I

    iget v1, v9, LN0/k;->u0:I

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_34

    :cond_5e
    move-object v2, v0

    move v0, v14

    invoke-virtual {v2, v0, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_34
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->i(LN0/k;II)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->F0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->z0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->G0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->A0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->L0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->D0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->J0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->x0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->O0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->P0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->m0:I

    iput p1, v0, LN0/k;->n0:I

    iput p1, v0, LN0/k;->o0:I

    iput p1, v0, LN0/k;->p0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->n0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->q0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->r0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->m0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->M0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->E0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->K0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->y0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:LN0/k;

    iput p1, v0, LN0/k;->N0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
