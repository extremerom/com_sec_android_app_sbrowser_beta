.class public final LP0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP0/i;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, LP0/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static a(III)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p0, v2, :cond_2

    const/high16 p0, -0x80000000

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p2, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(LN0/h;LO0/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v3, v1, LN0/h;->b0:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iput v5, v2, LO0/b;->e:I

    iput v5, v2, LO0/b;->f:I

    iput v5, v2, LO0/b;->g:I

    return-void

    :cond_1
    iget-object v3, v1, LN0/h;->O:LN0/h;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, v2, LO0/b;->a:LN0/g;

    iget-object v4, v2, LO0/b;->b:LN0/g;

    iget v6, v2, LO0/b;->c:I

    iget v7, v2, LO0/b;->d:I

    iget v8, v0, LP0/i;->b:I

    iget v9, v0, LP0/i;->c:I

    add-int/2addr v8, v9

    iget v9, v0, LP0/i;->d:I

    iget-object v10, v1, LN0/h;->a0:Landroid/view/View;

    sget-object v11, LP0/f;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v11, v12

    iget-object v13, v1, LN0/h;->E:LN0/e;

    iget-object v14, v1, LN0/h;->C:LN0/e;

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v12, v5, :cond_b

    if-eq v12, v15, :cond_a

    const/4 v6, 0x3

    if-eq v12, v6, :cond_9

    const/4 v6, 0x4

    if-eq v12, v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    iget v6, v0, LP0/i;->f:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v9, v1, LN0/h;->l:I

    if-ne v9, v5, :cond_4

    move v9, v5

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    iget v12, v2, LO0/b;->j:I

    if-eq v12, v5, :cond_5

    if-ne v12, v15, :cond_c

    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v13

    if-ne v12, v13, :cond_6

    move v12, v5

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    :goto_1
    iget v13, v2, LO0/b;->j:I

    if-eq v13, v15, :cond_8

    if-eqz v9, :cond_8

    if-eqz v9, :cond_7

    if-nez v12, :cond_8

    :cond_7
    invoke-virtual/range {p1 .. p1}, LN0/h;->w()Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_8
    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_2

    :cond_9
    iget v6, v0, LP0/i;->f:I

    iget v12, v14, LN0/e;->g:I

    iget v13, v13, LN0/e;->g:I

    add-int/2addr v12, v13

    add-int/2addr v12, v9

    const/4 v9, -0x1

    invoke-static {v6, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_2

    :cond_a
    iget v6, v0, LP0/i;->f:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_2

    :cond_b
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_c
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v11, v9

    if-eq v9, v5, :cond_15

    if-eq v9, v15, :cond_14

    const/4 v7, 0x3

    if-eq v9, v7, :cond_13

    const/4 v7, 0x4

    if-eq v9, v7, :cond_d

    const/4 v7, 0x0

    goto :goto_5

    :cond_d
    iget v7, v0, LP0/i;->g:I

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget v8, v1, LN0/h;->m:I

    if-ne v8, v5, :cond_e

    move v8, v5

    goto :goto_3

    :cond_e
    const/4 v8, 0x0

    :goto_3
    iget v9, v2, LO0/b;->j:I

    if-eq v9, v5, :cond_f

    if-ne v9, v15, :cond_16

    :cond_f
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v11

    if-ne v9, v11, :cond_10

    move v9, v5

    goto :goto_4

    :cond_10
    const/4 v9, 0x0

    :goto_4
    iget v11, v2, LO0/b;->j:I

    if-eq v11, v15, :cond_12

    if-eqz v8, :cond_12

    if-eqz v8, :cond_11

    if-nez v9, :cond_12

    :cond_11
    invoke-virtual/range {p1 .. p1}, LN0/h;->x()Z

    move-result v8

    if-eqz v8, :cond_16

    :cond_12
    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_5

    :cond_13
    iget v7, v0, LP0/i;->g:I

    iget-object v9, v1, LN0/h;->D:LN0/e;

    iget v9, v9, LN0/e;->g:I

    iget-object v11, v1, LN0/h;->F:LN0/e;

    iget v11, v11, LN0/e;->g:I

    add-int/2addr v9, v11

    add-int/2addr v9, v8

    const/4 v8, -0x1

    invoke-static {v7, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_5

    :cond_14
    iget v7, v0, LP0/i;->g:I

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_5

    :cond_15
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_16
    :goto_5
    iget-object v8, v1, LN0/h;->O:LN0/h;

    check-cast v8, LN0/i;

    iget-object v0, v0, LP0/i;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_17

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v9

    const/16 v11, 0x100

    invoke-static {v9, v11}, LN0/o;->c(II)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v11

    if-ne v9, v11, :cond_17

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, LN0/h;->n()I

    move-result v11

    if-ge v9, v11, :cond_17

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v11

    if-ne v9, v11, :cond_17

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8}, LN0/h;->k()I

    move-result v8

    if-ge v9, v8, :cond_17

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v8

    iget v9, v1, LN0/h;->V:I

    if-ne v8, v9, :cond_17

    invoke-virtual/range {p1 .. p1}, LN0/h;->v()Z

    move-result v8

    if-nez v8, :cond_17

    iget v8, v1, LN0/h;->A:I

    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v9

    invoke-static {v8, v6, v9}, LP0/i;->a(III)Z

    move-result v8

    if-eqz v8, :cond_17

    iget v8, v1, LN0/h;->B:I

    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v9

    invoke-static {v8, v7, v9}, LP0/i;->a(III)Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v0

    iput v0, v2, LO0/b;->e:I

    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v0

    iput v0, v2, LO0/b;->f:I

    iget v0, v1, LN0/h;->V:I

    iput v0, v2, LO0/b;->g:I

    return-void

    :cond_17
    sget-object v8, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v3, v8, :cond_18

    move v9, v5

    goto :goto_6

    :cond_18
    const/4 v9, 0x0

    :goto_6
    if-ne v4, v8, :cond_19

    move v8, v5

    goto :goto_7

    :cond_19
    const/4 v8, 0x0

    :goto_7
    sget-object v11, LN0/g;->MATCH_PARENT:LN0/g;

    if-eq v4, v11, :cond_1b

    sget-object v12, LN0/g;->FIXED:LN0/g;

    if-ne v4, v12, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v4, 0x0

    goto :goto_9

    :cond_1b
    :goto_8
    move v4, v5

    :goto_9
    if-eq v3, v11, :cond_1d

    sget-object v11, LN0/g;->FIXED:LN0/g;

    if-ne v3, v11, :cond_1c

    goto :goto_a

    :cond_1c
    const/4 v3, 0x0

    goto :goto_b

    :cond_1d
    :goto_a
    move v3, v5

    :goto_b
    const/4 v11, 0x0

    if-eqz v9, :cond_1e

    iget v12, v1, LN0/h;->R:F

    cmpl-float v12, v12, v11

    if-lez v12, :cond_1e

    move v12, v5

    goto :goto_c

    :cond_1e
    const/4 v12, 0x0

    :goto_c
    if-eqz v8, :cond_1f

    iget v13, v1, LN0/h;->R:F

    cmpl-float v11, v13, v11

    if-lez v11, :cond_1f

    move v11, v5

    goto :goto_d

    :cond_1f
    const/4 v11, 0x0

    :goto_d
    if-nez v10, :cond_20

    return-void

    :cond_20
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, LP0/h;

    iget v14, v2, LO0/b;->j:I

    if-eq v14, v5, :cond_22

    if-eq v14, v15, :cond_22

    if-eqz v9, :cond_22

    iget v9, v1, LN0/h;->l:I

    if-nez v9, :cond_22

    if-eqz v8, :cond_22

    iget v8, v1, LN0/h;->m:I

    if-eqz v8, :cond_21

    goto :goto_e

    :cond_21
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_15

    :cond_22
    :goto_e
    instance-of v8, v10, LP0/v;

    if-eqz v8, :cond_23

    instance-of v8, v1, LN0/k;

    if-eqz v8, :cond_23

    move-object v8, v1

    check-cast v8, LN0/k;

    move-object v9, v10

    check-cast v9, LP0/v;

    invoke-virtual {v9, v8, v6, v7}, LP0/v;->i(LN0/k;II)V

    goto :goto_f

    :cond_23
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    :goto_f
    iput v6, v1, LN0/h;->A:I

    iput v7, v1, LN0/h;->B:I

    const/4 v8, 0x0

    iput-boolean v8, v1, LN0/h;->g:Z

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v14

    iget v15, v1, LN0/h;->o:I

    if-lez v15, :cond_24

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_10

    :cond_24
    move v15, v8

    :goto_10
    iget v5, v1, LN0/h;->p:I

    if-lez v5, :cond_25

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_25
    iget v5, v1, LN0/h;->r:I

    if-lez v5, :cond_26

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v16, v6

    goto :goto_11

    :cond_26
    move/from16 v16, v6

    move v5, v9

    :goto_11
    iget v6, v1, LN0/h;->s:I

    if-lez v6, :cond_27

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_27
    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v0

    const/4 v6, 0x1

    invoke-static {v0, v6}, LN0/o;->c(II)Z

    move-result v0

    if-nez v0, :cond_29

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v12, :cond_28

    if-eqz v4, :cond_28

    iget v3, v1, LN0/h;->R:F

    int-to-float v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v15, v0

    goto :goto_12

    :cond_28
    if-eqz v11, :cond_29

    if-eqz v3, :cond_29

    iget v3, v1, LN0/h;->R:F

    int-to-float v4, v15

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v5, v0

    :cond_29
    :goto_12
    if-ne v8, v15, :cond_2b

    if-eq v9, v5, :cond_2a

    goto :goto_13

    :cond_2a
    move v3, v5

    const/4 v0, -0x1

    const/4 v8, 0x0

    goto :goto_15

    :cond_2b
    :goto_13
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v8, v15, :cond_2c

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_14

    :cond_2c
    move/from16 v6, v16

    :goto_14
    if-eq v9, v5, :cond_2d

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_2d
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    iput v6, v1, LN0/h;->A:I

    iput v7, v1, LN0/h;->B:I

    const/4 v8, 0x0

    iput-boolean v8, v1, LN0/h;->g:Z

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v4

    move v15, v0

    move v14, v4

    const/4 v0, -0x1

    :goto_15
    if-eq v14, v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_16

    :cond_2e
    move v0, v8

    :goto_16
    iget v4, v2, LO0/b;->c:I

    if-ne v15, v4, :cond_30

    iget v4, v2, LO0/b;->d:I

    if-eq v3, v4, :cond_2f

    goto :goto_17

    :cond_2f
    move v5, v8

    goto :goto_18

    :cond_30
    :goto_17
    const/4 v5, 0x1

    :goto_18
    iput-boolean v5, v2, LO0/b;->i:Z

    iget-boolean v4, v13, LP0/h;->X:Z

    if-eqz v4, :cond_31

    const/4 v6, 0x1

    goto :goto_19

    :cond_31
    move v6, v0

    :goto_19
    if-eqz v6, :cond_32

    const/4 v0, -0x1

    if-eq v14, v0, :cond_32

    iget v0, v1, LN0/h;->V:I

    if-eq v0, v14, :cond_32

    const/4 v0, 0x1

    iput-boolean v0, v2, LO0/b;->i:Z

    :cond_32
    iput v15, v2, LO0/b;->e:I

    iput v3, v2, LO0/b;->f:I

    iput-boolean v6, v2, LO0/b;->h:Z

    iput v14, v2, LO0/b;->g:I

    return-void
.end method
