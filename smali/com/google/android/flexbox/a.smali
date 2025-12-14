.class public final Lcom/google/android/flexbox/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/flexbox/FlexboxLayoutManager;

.field public b:[Z

.field public c:[I

.field public d:[J

.field public e:[J


# direct methods
.method public constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;LS4/b;II)V
    .locals 0

    iput p4, p2, LS4/b;->i:I

    iget-object p0, p0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {p0, p2}, LS4/a;->onNewFlexLineAdded(LS4/b;)V

    iput p3, p2, LS4/b;->l:I

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(LS4/c;IIIIILjava/util/List;)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p6

    iget-object v4, v0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {v4}, LS4/a;->isMainAxisDirectionHorizontal()Z

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-nez p7, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, p1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p1

    move-object/from16 v8, p7

    :goto_0
    iput-object v8, v9, LS4/c;->a:Ljava/util/List;

    const/4 v10, -0x1

    if-ne v3, v10, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v4}, LS4/a;->getPaddingStart()I

    move-result v13

    goto :goto_2

    :cond_2
    invoke-interface {v4}, LS4/a;->getPaddingTop()I

    move-result v13

    :goto_2
    if-eqz v5, :cond_3

    invoke-interface {v4}, LS4/a;->getPaddingEnd()I

    move-result v14

    goto :goto_3

    :cond_3
    invoke-interface {v4}, LS4/a;->getPaddingBottom()I

    move-result v14

    :goto_3
    if-eqz v5, :cond_4

    invoke-interface {v4}, LS4/a;->getPaddingTop()I

    move-result v15

    goto :goto_4

    :cond_4
    invoke-interface {v4}, LS4/a;->getPaddingStart()I

    move-result v15

    :goto_4
    if-eqz v5, :cond_5

    invoke-interface {v4}, LS4/a;->getPaddingBottom()I

    move-result v16

    goto :goto_5

    :cond_5
    invoke-interface {v4}, LS4/a;->getPaddingEnd()I

    move-result v16

    :goto_5
    new-instance v11, LS4/b;

    invoke-direct {v11}, LS4/b;-><init>()V

    move/from16 v10, p5

    iput v10, v11, LS4/b;->k:I

    add-int/2addr v13, v14

    iput v13, v11, LS4/b;->a:I

    invoke-interface {v4}, LS4/a;->getFlexItemCount()I

    move-result v14

    const/high16 v17, -0x80000000

    move/from16 p5, v12

    move/from16 v18, v17

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v10, v14, :cond_30

    move/from16 v19, v3

    invoke-interface {v4, v10}, LS4/a;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    add-int/lit8 v3, v14, -0x1

    if-ne v10, v3, :cond_6

    iget v3, v11, LS4/b;->d:I

    move/from16 v20, v12

    iget v12, v11, LS4/b;->e:I

    sub-int/2addr v3, v12

    if-eqz v3, :cond_8

    invoke-virtual {v0, v8, v11, v10, v9}, Lcom/google/android/flexbox/a;->a(Ljava/util/List;LS4/b;II)V

    goto :goto_7

    :cond_6
    move/from16 v20, v12

    goto :goto_7

    :cond_7
    move/from16 v20, v12

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v2, 0x8

    if-ne v12, v2, :cond_9

    iget v2, v11, LS4/b;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v11, LS4/b;->e:I

    iget v12, v11, LS4/b;->d:I

    add-int/2addr v12, v3

    iput v12, v11, LS4/b;->d:I

    add-int/lit8 v3, v14, -0x1

    if-ne v10, v3, :cond_8

    sub-int/2addr v12, v2

    if-eqz v12, :cond_8

    invoke-virtual {v0, v8, v11, v10, v9}, Lcom/google/android/flexbox/a;->a(Ljava/util/List;LS4/b;II)V

    :cond_8
    :goto_7
    move/from16 v3, p6

    move/from16 v24, v6

    move/from16 v23, v7

    move-object v12, v8

    move/from16 v21, v14

    move/from16 v25, v15

    move/from16 v1, v19

    const/4 v6, -0x1

    const/4 v7, 0x1

    move/from16 v14, p4

    move/from16 v8, p5

    goto/16 :goto_23

    :cond_9
    instance-of v2, v3, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_e

    move-object v2, v3

    check-cast v2, Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    move/from16 v21, v14

    iget v14, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->i:I

    move-object/from16 v22, v8

    iget v8, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->j:I

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_a

    const/16 v23, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v23

    :goto_8
    if-nez v2, :cond_b

    const/4 v2, -0x1

    const/16 v24, 0x0

    goto :goto_9

    :cond_b
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    move/from16 v24, v2

    const/4 v2, -0x1

    :goto_9
    if-ne v14, v2, :cond_c

    move/from16 v14, v23

    :cond_c
    iput v14, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->i:I

    if-ne v8, v2, :cond_d

    move/from16 v8, v24

    :cond_d
    iput v8, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->j:I

    goto :goto_a

    :cond_e
    move-object/from16 v22, v8

    move/from16 v21, v14

    :goto_a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    move-object v8, v2

    check-cast v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v12, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    const/4 v14, 0x4

    if-ne v12, v14, :cond_f

    iget-object v12, v11, LS4/b;->j:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v5, :cond_10

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_b

    :cond_10
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_b
    iget v14, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->h:F

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v23, v14, v23

    if-eqz v23, :cond_11

    move/from16 v23, v12

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v6, v12, :cond_12

    int-to-float v12, v7

    mul-float/2addr v12, v14

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    goto :goto_c

    :cond_11
    move/from16 v23, v12

    :cond_12
    move/from16 v12, v23

    :goto_c
    if-eqz v5, :cond_13

    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v13

    move/from16 v23, v7

    move-object v7, v2

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v14

    invoke-interface {v4, v1, v7, v12}, LS4/a;->getChildWidthMeasureSpec(III)I

    move-result v7

    add-int v12, v15, v16

    move-object v14, v2

    check-cast v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v12

    move-object v12, v2

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    add-int/2addr v12, v9

    move-object v14, v2

    check-cast v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v24, v6

    move/from16 v6, p3

    invoke-interface {v4, v6, v12, v14}, LS4/a;->getChildHeightMeasureSpec(III)I

    move-result v12

    invoke-virtual {v3, v7, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v3, v10, v7, v12}, Lcom/google/android/flexbox/a;->r(Landroid/view/View;III)V

    move/from16 v25, v15

    goto :goto_d

    :cond_13
    move/from16 v24, v6

    move/from16 v23, v7

    move/from16 v6, p3

    add-int v7, v15, v16

    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v7

    move-object v7, v2

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v14

    add-int/2addr v7, v9

    move-object v14, v2

    check-cast v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v4, v6, v7, v14}, LS4/a;->getChildWidthMeasureSpec(III)I

    move-result v7

    move-object v14, v2

    check-cast v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v13

    move/from16 v25, v15

    move-object v15, v2

    check-cast v15, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v14

    invoke-interface {v4, v1, v15, v12}, LS4/a;->getChildHeightMeasureSpec(III)I

    move-result v12

    invoke-virtual {v3, v7, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v3, v10, v7, v12}, Lcom/google/android/flexbox/a;->r(Landroid/view/View;III)V

    move v7, v12

    :goto_d
    invoke-interface {v4, v10, v3}, LS4/a;->updateViewCache(ILandroid/view/View;)V

    invoke-virtual {v0, v10, v3}, Lcom/google/android/flexbox/a;->c(ILandroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    move/from16 v14, v20

    invoke-static {v14, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    iget v14, v11, LS4/b;->a:I

    if-eqz v5, :cond_14

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    goto :goto_e

    :cond_14
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    :goto_e
    if-eqz v5, :cond_15

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_f

    :cond_15
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_f
    add-int/2addr v1, v15

    if-eqz v5, :cond_16

    move-object v15, v2

    check-cast v15, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_10

    :cond_16
    move-object v15, v2

    check-cast v15, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_10
    add-int/2addr v15, v1

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, LS4/a;->getFlexWrap()I

    move-result v20

    if-nez v20, :cond_17

    move-object/from16 v26, v2

    move/from16 v20, v12

    :goto_11
    move/from16 v1, v19

    move-object/from16 v12, v22

    move/from16 v2, v23

    :goto_12
    const/4 v7, 0x1

    goto/16 :goto_17

    :cond_17
    move/from16 v20, v12

    iget-boolean v12, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->m:Z

    if-eqz v12, :cond_18

    move-object/from16 v26, v2

    move/from16 v2, v23

    goto :goto_13

    :cond_18
    if-nez v24, :cond_19

    move-object/from16 v26, v2

    goto :goto_11

    :cond_19
    invoke-interface {v4}, LS4/a;->getMaxLine()I

    move-result v12

    move-object/from16 v26, v2

    const/4 v2, -0x1

    if-eq v12, v2, :cond_1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-gt v12, v1, :cond_1a

    goto :goto_11

    :cond_1a
    move/from16 v1, v19

    invoke-interface {v4, v3, v10, v1}, LS4/a;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result v2

    if-lez v2, :cond_1b

    add-int/2addr v15, v2

    :cond_1b
    add-int/2addr v14, v15

    move/from16 v2, v23

    if-ge v2, v14, :cond_20

    :goto_13
    iget v1, v11, LS4/b;->d:I

    iget v12, v11, LS4/b;->e:I

    sub-int/2addr v1, v12

    if-lez v1, :cond_1d

    if-lez v10, :cond_1c

    add-int/lit8 v1, v10, -0x1

    move-object/from16 v12, v22

    goto :goto_14

    :cond_1c
    move-object/from16 v12, v22

    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v0, v12, v11, v1, v9}, Lcom/google/android/flexbox/a;->a(Ljava/util/List;LS4/b;II)V

    iget v1, v11, LS4/b;->c:I

    add-int/2addr v9, v1

    goto :goto_15

    :cond_1d
    move-object/from16 v12, v22

    :goto_15
    if-eqz v5, :cond_1e

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v1, v11, :cond_1f

    invoke-interface {v4}, LS4/a;->getPaddingTop()I

    move-result v1

    invoke-interface {v4}, LS4/a;->getPaddingBottom()I

    move-result v11

    add-int/2addr v11, v1

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v1

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v1

    add-int/2addr v11, v9

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-interface {v4, v6, v11, v1}, LS4/a;->getChildHeightMeasureSpec(III)I

    move-result v1

    invoke-virtual {v3, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v10, v3}, Lcom/google/android/flexbox/a;->c(ILandroid/view/View;)V

    goto :goto_16

    :cond_1e
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v1, v11, :cond_1f

    invoke-interface {v4}, LS4/a;->getPaddingLeft()I

    move-result v1

    invoke-interface {v4}, LS4/a;->getPaddingRight()I

    move-result v11

    add-int/2addr v11, v1

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v1

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v1

    add-int/2addr v11, v9

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v4, v6, v11, v1}, LS4/a;->getChildWidthMeasureSpec(III)I

    move-result v1

    invoke-virtual {v3, v1, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v10, v3}, Lcom/google/android/flexbox/a;->c(ILandroid/view/View;)V

    :cond_1f
    :goto_16
    new-instance v11, LS4/b;

    invoke-direct {v11}, LS4/b;-><init>()V

    const/4 v7, 0x1

    iput v7, v11, LS4/b;->d:I

    iput v13, v11, LS4/b;->a:I

    iput v10, v11, LS4/b;->k:I

    move/from16 v7, v17

    const/4 v1, 0x0

    goto :goto_18

    :cond_20
    move-object/from16 v12, v22

    goto/16 :goto_12

    :goto_17
    iget v14, v11, LS4/b;->d:I

    add-int/2addr v14, v7

    iput v14, v11, LS4/b;->d:I

    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v18

    :goto_18
    iget-boolean v14, v11, LS4/b;->m:Z

    iget v15, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:F

    const/16 v18, 0x0

    cmpl-float v15, v15, v18

    if-eqz v15, :cond_21

    const/4 v15, 0x1

    goto :goto_19

    :cond_21
    const/4 v15, 0x0

    :goto_19
    or-int/2addr v14, v15

    iput-boolean v14, v11, LS4/b;->m:Z

    iget-boolean v14, v11, LS4/b;->n:Z

    iget v15, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->f:F

    cmpl-float v18, v15, v18

    if-eqz v18, :cond_22

    const/16 v18, 0x1

    goto :goto_1a

    :cond_22
    const/16 v18, 0x0

    :goto_1a
    or-int v14, v14, v18

    iput-boolean v14, v11, LS4/b;->n:Z

    iget-object v14, v0, Lcom/google/android/flexbox/a;->c:[I

    if-eqz v14, :cond_23

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    aput v18, v14, v10

    :cond_23
    iget v14, v11, LS4/b;->a:I

    if-eqz v5, :cond_24

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    goto :goto_1b

    :cond_24
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    :goto_1b
    if-eqz v5, :cond_25

    move/from16 v23, v2

    move-object/from16 v2, v26

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1c

    :cond_25
    move/from16 v23, v2

    move-object/from16 v2, v26

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1c
    add-int v2, v2, v18

    if-eqz v5, :cond_26

    move-object/from16 v6, v26

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1d

    :cond_26
    move-object/from16 v6, v26

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1d
    add-int/2addr v6, v2

    add-int/2addr v6, v14

    iput v6, v11, LS4/b;->a:I

    iget v2, v11, LS4/b;->f:F

    iget v6, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:F

    add-float/2addr v2, v6

    iput v2, v11, LS4/b;->f:F

    iget v2, v11, LS4/b;->g:F

    add-float/2addr v2, v15

    iput v2, v11, LS4/b;->g:F

    invoke-interface {v4, v3, v10, v1, v11}, LS4/a;->onNewFlexItemAdded(Landroid/view/View;IILS4/b;)V

    if-eqz v5, :cond_27

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_1e

    :cond_27
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_1e
    if-eqz v5, :cond_28

    move-object/from16 v6, v26

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1f

    :cond_28
    move-object/from16 v6, v26

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1f
    add-int/2addr v6, v2

    if-eqz v5, :cond_29

    move-object/from16 v2, v26

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_20

    :cond_29
    move-object/from16 v2, v26

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_20
    add-int/2addr v2, v6

    invoke-interface {v4, v3}, LS4/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v6, v11, LS4/b;->c:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v11, LS4/b;->c:I

    if-eqz v5, :cond_2b

    invoke-interface {v4}, LS4/a;->getFlexWrap()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2a

    iget v6, v11, LS4/b;->h:I

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v3

    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v11, LS4/b;->h:I

    goto :goto_21

    :cond_2a
    iget v6, v11, LS4/b;->h:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v3

    sub-int/2addr v7, v3

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v11, LS4/b;->h:I

    :cond_2b
    :goto_21
    add-int/lit8 v14, v21, -0x1

    if-ne v10, v14, :cond_2c

    iget v3, v11, LS4/b;->d:I

    iget v6, v11, LS4/b;->e:I

    sub-int/2addr v3, v6

    if-eqz v3, :cond_2c

    invoke-virtual {v0, v12, v11, v10, v9}, Lcom/google/android/flexbox/a;->a(Ljava/util/List;LS4/b;II)V

    iget v3, v11, LS4/b;->c:I

    add-int/2addr v9, v3

    :cond_2c
    move/from16 v3, p6

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2d

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2d

    const/4 v7, 0x1

    invoke-static {v7, v12}, LV0/c;->g(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LS4/b;

    iget v8, v8, LS4/b;->l:I

    if-lt v8, v3, :cond_2e

    if-lt v10, v3, :cond_2e

    if-nez p5, :cond_2e

    iget v8, v11, LS4/b;->c:I

    neg-int v8, v8

    move/from16 v14, p4

    move v9, v8

    move v8, v7

    goto :goto_22

    :cond_2d
    const/4 v7, 0x1

    :cond_2e
    move/from16 v14, p4

    move/from16 v8, p5

    :goto_22
    if-le v9, v14, :cond_2f

    if-eqz v8, :cond_2f

    goto :goto_24

    :cond_2f
    move/from16 v18, v2

    :goto_23
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p3

    move v3, v1

    move/from16 p5, v8

    move-object v8, v12

    move/from16 v12, v20

    move/from16 v14, v21

    move/from16 v7, v23

    move/from16 v6, v24

    move/from16 v15, v25

    move/from16 v1, p2

    goto/16 :goto_6

    :cond_30
    :goto_24
    return-void
.end method

.method public final c(ILandroid/view/View;)V
    .locals 6

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->i:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    :goto_0
    move v1, v3

    move v3, v4

    goto :goto_1

    :cond_0
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->k:I

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->j:I

    if-ge v2, v5, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->l:I

    if-le v2, v0, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/google/android/flexbox/a;->r(Landroid/view/View;III)V

    iget-object p0, p0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {p0, p1, p2}, LS4/a;->updateViewCache(ILandroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final d(ILjava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/flexbox/a;->c:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_1
    iget-object p2, p0, Lcom/google/android/flexbox/a;->c:[I

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_2
    invoke-static {p2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/flexbox/a;->d:[J

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    const-wide/16 v0, 0x0

    if-le p1, p2, :cond_3

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1

    :cond_3
    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/Arrays;->fill([JIIJ)V

    :goto_1
    return-void
.end method

.method public final e(III)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {v0}, LS4/a;->getFlexItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/a;->b:[Z

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/a;->b:[Z

    goto :goto_0

    :cond_0
    array-length v5, v2

    if-ge v5, v1, :cond_1

    array-length v2, v2

    mul-int/2addr v2, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/a;->b:[Z

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_0
    invoke-interface {v0}, LS4/a;->getFlexItemCount()I

    move-result v1

    if-lt p3, v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, LS4/a;->getFlexDirection()I

    move-result v1

    invoke-interface {v0}, LS4/a;->getFlexDirection()I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_6

    const/4 v6, 0x1

    if-eq v2, v6, :cond_6

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid flex direction: "

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ne v1, v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v0}, LS4/a;->getLargestMainSize()I

    move-result v2

    :goto_2
    invoke-interface {v0}, LS4/a;->getPaddingTop()I

    move-result v1

    invoke-interface {v0}, LS4/a;->getPaddingBottom()I

    move-result v4

    :goto_3
    add-int/2addr v4, v1

    goto :goto_5

    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-interface {v0}, LS4/a;->getLargestMainSize()I

    move-result v4

    if-ne v1, v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    :goto_4
    invoke-interface {v0}, LS4/a;->getPaddingLeft()I

    move-result v1

    invoke-interface {v0}, LS4/a;->getPaddingRight()I

    move-result v4

    goto :goto_3

    :goto_5
    iget-object v1, p0, Lcom/google/android/flexbox/a;->c:[I

    if-eqz v1, :cond_8

    aget v3, v1, p3

    :cond_8
    invoke-interface {v0}, LS4/a;->getFlexLinesInternal()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge v3, v0, :cond_b

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, LS4/b;

    iget v1, v8, LS4/b;->a:I

    if-ge v1, v2, :cond_9

    iget-boolean v5, v8, LS4/b;->m:Z

    if-eqz v5, :cond_9

    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v9, v2

    move v10, v4

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/flexbox/a;->i(IILS4/b;IIZ)V

    goto :goto_7

    :cond_9
    if-le v1, v2, :cond_a

    iget-boolean v1, v8, LS4/b;->n:Z

    if-eqz v1, :cond_a

    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v9, v2

    move v10, v4

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/flexbox/a;->n(IILS4/b;IIZ)V

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/a;->c:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/flexbox/a;->c:[I

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/a;->c:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/a;->c:[I

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/a;->d:[J

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/a;->d:[J

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/a;->d:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/a;->d:[J

    :cond_1
    :goto_0
    return-void
.end method

.method public final h(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/a;->e:[J

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/a;->e:[J

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/a;->e:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/a;->e:[J

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(IILS4/b;IIZ)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget v1, v3, LS4/b;->f:F

    const/4 v2, 0x0

    cmpg-float v5, v1, v2

    if-lez v5, :cond_16

    iget v5, v3, LS4/b;->a:I

    if-ge v4, v5, :cond_0

    goto/16 :goto_f

    :cond_0
    sub-int v6, v4, v5

    int-to-float v6, v6

    div-float/2addr v6, v1

    iget v1, v3, LS4/b;->b:I

    add-int v1, p5, v1

    iput v1, v3, LS4/b;->a:I

    if-nez p6, :cond_1

    const/high16 v1, -0x80000000

    iput v1, v3, LS4/b;->c:I

    :cond_1
    const/4 v1, 0x0

    move v7, v1

    move v8, v7

    move v9, v2

    :goto_0
    iget v10, v3, LS4/b;->d:I

    if-ge v1, v10, :cond_15

    iget v10, v3, LS4/b;->k:I

    add-int/2addr v10, v1

    iget-object v11, v0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {v11, v10}, LS4/a;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3

    :cond_2
    move/from16 v16, v2

    move/from16 v23, v5

    move v14, v6

    move/from16 v19, v7

    move/from16 v2, p1

    move/from16 v6, p2

    move v5, v1

    goto/16 :goto_d

    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v11}, LS4/a;->getFlexDirection()I

    move-result v14

    const/4 v15, 0x1

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const/16 v19, 0x20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    if-eqz v14, :cond_4

    if-ne v14, v15, :cond_5

    :cond_4
    move/from16 v2, p1

    move/from16 v23, v5

    move v5, v1

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget-object v2, v0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz v2, :cond_6

    aget-wide v22, v2, v10

    move v2, v5

    shr-long v4, v22, v19

    long-to-int v14, v4

    goto :goto_1

    :cond_6
    move v2, v5

    :goto_1
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz v5, :cond_7

    aget-wide v4, v5, v10

    long-to-int v4, v4

    :cond_7
    iget-object v5, v0, Lcom/google/android/flexbox/a;->b:[Z

    aget-boolean v5, v5, v10

    if-nez v5, :cond_c

    move-object v5, v13

    check-cast v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:F

    const/16 v16, 0x0

    cmpl-float v19, v15, v16

    if-lez v19, :cond_c

    int-to-float v4, v14

    mul-float/2addr v15, v6

    add-float/2addr v15, v4

    iget v4, v3, LS4/b;->d:I

    const/4 v14, 0x1

    sub-int/2addr v4, v14

    if-ne v1, v4, :cond_8

    add-float/2addr v15, v9

    const/4 v9, 0x0

    :cond_8
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v14, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->l:I

    if-le v4, v14, :cond_9

    iget-object v4, v0, Lcom/google/android/flexbox/a;->b:[Z

    const/4 v7, 0x1

    aput-boolean v7, v4, v10

    iget v4, v3, LS4/b;->f:F

    iget v5, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:F

    sub-float/2addr v4, v5

    iput v4, v3, LS4/b;->f:F

    move v5, v1

    move/from16 v23, v2

    move v4, v14

    const/4 v7, 0x1

    goto :goto_3

    :cond_9
    int-to-float v5, v4

    sub-float/2addr v15, v5

    add-float/2addr v15, v9

    move v5, v1

    move/from16 v23, v2

    float-to-double v1, v15

    cmpl-double v9, v1, v20

    if-lez v9, :cond_a

    add-int/lit8 v4, v4, 0x1

    sub-double v1, v1, v20

    :goto_2
    double-to-float v1, v1

    move v9, v1

    goto :goto_3

    :cond_a
    cmpg-double v9, v1, v17

    if-gez v9, :cond_b

    add-int/lit8 v4, v4, -0x1

    add-double v1, v1, v20

    goto :goto_2

    :cond_b
    move v9, v15

    :goto_3
    iget v1, v3, LS4/b;->i:I

    move/from16 v2, p1

    invoke-virtual {v0, v2, v13, v1}, Lcom/google/android/flexbox/a;->k(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v12, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v0, v12, v10, v1, v4}, Lcom/google/android/flexbox/a;->r(Landroid/view/View;III)V

    invoke-interface {v11, v10, v12}, LS4/a;->updateViewCache(ILandroid/view/View;)V

    move v4, v14

    move v14, v15

    goto :goto_4

    :cond_c
    move v5, v1

    move/from16 v23, v2

    move/from16 v2, p1

    :goto_4
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v1

    invoke-interface {v11, v12}, LS4/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, v3, LS4/b;->a:I

    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v8

    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v8

    add-int/2addr v14, v4

    iput v14, v3, LS4/b;->a:I

    move v14, v6

    const/16 v16, 0x0

    move/from16 v6, p2

    goto/16 :goto_c

    :goto_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v4, v0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz v4, :cond_d

    aget-wide v14, v4, v10

    long-to-int v1, v14

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v14, v0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz v14, :cond_e

    aget-wide v14, v14, v10

    shr-long v14, v14, v19

    long-to-int v4, v14

    :cond_e
    iget-object v14, v0, Lcom/google/android/flexbox/a;->b:[Z

    aget-boolean v14, v14, v10

    if-nez v14, :cond_14

    move-object v14, v13

    check-cast v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:F

    const/16 v16, 0x0

    cmpl-float v19, v15, v16

    if-lez v19, :cond_13

    int-to-float v1, v1

    mul-float/2addr v15, v6

    add-float/2addr v15, v1

    iget v1, v3, LS4/b;->d:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    if-ne v5, v1, :cond_f

    add-float/2addr v15, v9

    move/from16 v9, v16

    :cond_f
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->k:I

    if-le v1, v4, :cond_10

    iget-object v1, v0, Lcom/google/android/flexbox/a;->b:[Z

    const/4 v7, 0x1

    aput-boolean v7, v1, v10

    iget v1, v3, LS4/b;->f:F

    iget v14, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:F

    sub-float/2addr v1, v14

    iput v1, v3, LS4/b;->f:F

    move v1, v4

    move v14, v6

    goto :goto_8

    :cond_10
    int-to-float v4, v1

    sub-float/2addr v15, v4

    add-float/2addr v15, v9

    move v14, v6

    move/from16 v19, v7

    float-to-double v6, v15

    cmpl-double v4, v6, v20

    if-lez v4, :cond_11

    add-int/lit8 v1, v1, 0x1

    sub-double v6, v6, v20

    :goto_6
    double-to-float v4, v6

    move v9, v4

    :goto_7
    move/from16 v7, v19

    goto :goto_8

    :cond_11
    cmpg-double v4, v6, v17

    if-gez v4, :cond_12

    add-int/lit8 v1, v1, -0x1

    add-double v6, v6, v20

    goto :goto_6

    :cond_12
    move v9, v15

    goto :goto_7

    :goto_8
    iget v4, v3, LS4/b;->i:I

    move/from16 v6, p2

    invoke-virtual {v0, v6, v13, v4}, Lcom/google/android/flexbox/a;->j(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v12, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual {v0, v12, v10, v1, v4}, Lcom/google/android/flexbox/a;->r(Landroid/view/View;III)V

    invoke-interface {v11, v10, v12}, LS4/a;->updateViewCache(ILandroid/view/View;)V

    move v1, v15

    move/from16 v4, v17

    goto :goto_b

    :cond_13
    move v14, v6

    move/from16 v19, v7

    :goto_9
    move/from16 v6, p2

    goto :goto_a

    :cond_14
    move v14, v6

    move/from16 v19, v7

    const/16 v16, 0x0

    goto :goto_9

    :goto_a
    move/from16 v7, v19

    :goto_b
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v10

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v10

    invoke-interface {v11, v12}, LS4/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v8, v3, LS4/b;->a:I

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v10

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v10

    add-int/2addr v1, v8

    iput v1, v3, LS4/b;->a:I

    move v1, v4

    :goto_c
    iget v4, v3, LS4/b;->c:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, LS4/b;->c:I

    move v8, v1

    goto :goto_e

    :goto_d
    move/from16 v7, v19

    :goto_e
    add-int/lit8 v1, v5, 0x1

    move/from16 v4, p4

    move v6, v14

    move/from16 v2, v16

    move/from16 v5, v23

    goto/16 :goto_0

    :cond_15
    move/from16 v2, p1

    move/from16 v6, p2

    move/from16 v23, v5

    move/from16 v19, v7

    if-eqz v19, :cond_16

    iget v1, v3, LS4/b;->a:I

    move/from16 v4, v23

    if-eq v4, v1, :cond_16

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/a;->i(IILS4/b;IIZ)V

    :cond_16
    :goto_f
    return-void
.end method

.method public final j(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 2

    iget-object p0, p0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {p0}, LS4/a;->getPaddingTop()I

    move-result v0

    invoke-interface {p0}, LS4/a;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    check-cast p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    add-int/2addr v1, p3

    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-interface {p0, p1, v1, p3}, LS4/a;->getChildHeightMeasureSpec(III)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->l:I

    if-le p1, p3, :cond_0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->j:I

    if-ge p1, p2, :cond_1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public final k(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 2

    iget-object p0, p0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {p0}, LS4/a;->getPaddingLeft()I

    move-result v0

    invoke-interface {p0}, LS4/a;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    check-cast p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    add-int/2addr v1, p3

    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {p0, p1, v1, p3}, LS4/a;->getChildWidthMeasureSpec(III)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->k:I

    if-le p1, p3, :cond_0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->i:I

    if-ge p1, p2, :cond_1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public final l(Landroid/view/View;LS4/b;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    iget-object p0, p0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {p0}, LS4/a;->getAlignItems()I

    move-result v1

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move v1, v2

    :cond_0
    iget v2, p2, LS4/b;->c:I

    const/4 v3, 0x2

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p2, 0x4

    if-eq v1, p2, :cond_7

    goto/16 :goto_0

    :cond_1
    invoke-interface {p0}, LS4/a;->getFlexWrap()I

    move-result p0

    if-eq p0, v3, :cond_2

    iget p0, p2, LS4/b;->h:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p2

    sub-int/2addr p0, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p4, p0

    add-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_2
    iget p0, p2, LS4/b;->h:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p2

    add-int/2addr p2, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p4, p0

    sub-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v2, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, p2

    div-int/2addr v2, v3

    invoke-interface {p0}, LS4/a;->getFlexWrap()I

    move-result p0

    if-eq p0, v3, :cond_4

    add-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_5
    invoke-interface {p0}, LS4/a;->getFlexWrap()I

    move-result p0

    if-eq p0, v3, :cond_6

    add-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int p0, p4, p0

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p0, p2

    sub-int/2addr p4, p2

    invoke-virtual {p1, p3, p0, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_6
    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p2

    sub-int/2addr p6, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p6

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p0, p5, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_7
    invoke-interface {p0}, LS4/a;->getFlexWrap()I

    move-result p0

    if-eq p0, v3, :cond_8

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p4, p0

    add-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_8
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p4, p0

    sub-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public final m(Landroid/view/View;LS4/b;ZIIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    iget-object p0, p0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {p0}, LS4/a;->getAlignItems()I

    move-result p0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move p0, v1

    :cond_0
    iget p2, p2, LS4/b;->c:I

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_5

    const/4 p2, 0x4

    if-eq p0, p2, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/2addr v0, v1

    if-nez p3, :cond_2

    add-int/2addr p4, v0

    add-int/2addr p6, v0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    sub-int/2addr p4, v0

    sub-int/2addr p6, v0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p4, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, p0

    add-int/2addr p6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p6, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p6, p0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p4

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, p3

    sub-int/2addr p6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p6

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p0, p5, p2, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p0

    add-int/2addr p6, p0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_6
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, p0

    sub-int/2addr p6, p0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public final n(IILS4/b;IIZ)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget v1, v3, LS4/b;->a:I

    iget v2, v3, LS4/b;->g:F

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-lez v6, :cond_16

    if-le v4, v1, :cond_0

    goto/16 :goto_b

    :cond_0
    sub-int v6, v1, v4

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget v2, v3, LS4/b;->b:I

    add-int v2, p5, v2

    iput v2, v3, LS4/b;->a:I

    if-nez p6, :cond_1

    const/high16 v2, -0x80000000

    iput v2, v3, LS4/b;->c:I

    :cond_1
    const/4 v2, 0x0

    move v7, v2

    move v8, v7

    move v9, v5

    :goto_0
    iget v10, v3, LS4/b;->d:I

    if-ge v2, v10, :cond_15

    iget v10, v3, LS4/b;->k:I

    add-int/2addr v10, v2

    iget-object v11, v0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {v11, v10}, LS4/a;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3

    :cond_2
    move/from16 v14, p2

    move v4, v2

    move/from16 v16, v5

    move v5, v1

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v11}, LS4/a;->getFlexDirection()I

    move-result v14

    const/4 v15, 0x1

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const/16 v21, 0x20

    const/high16 v22, 0x3f800000    # 1.0f

    if-eqz v14, :cond_4

    if-ne v14, v15, :cond_5

    :cond_4
    move v5, v1

    move v15, v2

    move/from16 v2, p1

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget-object v5, v0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz v5, :cond_6

    aget-wide v23, v5, v10

    shr-long v4, v23, v21

    long-to-int v14, v4

    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz v5, :cond_7

    aget-wide v4, v5, v10

    long-to-int v4, v4

    :cond_7
    iget-object v5, v0, Lcom/google/android/flexbox/a;->b:[Z

    aget-boolean v5, v5, v10

    if-nez v5, :cond_c

    move-object v5, v13

    check-cast v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->f:F

    const/16 v16, 0x0

    cmpl-float v21, v15, v16

    if-lez v21, :cond_c

    int-to-float v4, v14

    mul-float v14, v6, v15

    sub-float/2addr v4, v14

    iget v14, v3, LS4/b;->d:I

    const/16 v21, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ne v2, v14, :cond_8

    add-float/2addr v4, v9

    const/4 v9, 0x0

    :cond_8
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v5, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->j:I

    if-ge v14, v5, :cond_9

    iget-object v4, v0, Lcom/google/android/flexbox/a;->b:[Z

    aput-boolean v21, v4, v10

    iget v4, v3, LS4/b;->g:F

    sub-float/2addr v4, v15

    iput v4, v3, LS4/b;->g:F

    move v15, v2

    move v14, v5

    const/4 v7, 0x1

    move v5, v1

    goto :goto_2

    :cond_9
    int-to-float v5, v14

    sub-float/2addr v4, v5

    add-float/2addr v4, v9

    move v5, v1

    move v15, v2

    float-to-double v1, v4

    cmpl-double v9, v1, v19

    if-lez v9, :cond_b

    add-int/lit8 v14, v14, 0x1

    sub-float v4, v4, v22

    :cond_a
    :goto_1
    move v9, v4

    goto :goto_2

    :cond_b
    cmpg-double v1, v1, v17

    if-gez v1, :cond_a

    add-int/lit8 v14, v14, -0x1

    add-float v4, v4, v22

    goto :goto_1

    :goto_2
    iget v1, v3, LS4/b;->i:I

    move/from16 v2, p1

    invoke-virtual {v0, v2, v13, v1}, Lcom/google/android/flexbox/a;->k(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v14, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v12, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual {v0, v12, v10, v1, v4}, Lcom/google/android/flexbox/a;->r(Landroid/view/View;III)V

    invoke-interface {v11, v10, v12}, LS4/a;->updateViewCache(ILandroid/view/View;)V

    move v4, v14

    move/from16 v14, v17

    goto :goto_3

    :cond_c
    move v5, v1

    move v15, v2

    move/from16 v2, p1

    :goto_3
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v1

    invoke-interface {v11, v12}, LS4/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, v3, LS4/b;->a:I

    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v8

    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v8

    add-int/2addr v14, v4

    iput v14, v3, LS4/b;->a:I

    move/from16 v14, p2

    move v4, v15

    const/16 v16, 0x0

    goto/16 :goto_9

    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v4, v0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz v4, :cond_d

    aget-wide v1, v4, v10

    long-to-int v1, v1

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v4, v0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz v4, :cond_e

    aget-wide v24, v4, v10

    move v4, v15

    shr-long v14, v24, v21

    long-to-int v2, v14

    goto :goto_5

    :cond_e
    move v4, v15

    :goto_5
    iget-object v14, v0, Lcom/google/android/flexbox/a;->b:[Z

    aget-boolean v14, v14, v10

    if-nez v14, :cond_14

    move-object v14, v13

    check-cast v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->f:F

    const/16 v16, 0x0

    cmpl-float v21, v15, v16

    if-lez v21, :cond_13

    int-to-float v1, v1

    mul-float v2, v6, v15

    sub-float/2addr v1, v2

    iget v2, v3, LS4/b;->d:I

    const/16 v21, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ne v4, v2, :cond_f

    add-float/2addr v1, v9

    move/from16 v9, v16

    :cond_f
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v14, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->i:I

    if-ge v2, v14, :cond_10

    iget-object v1, v0, Lcom/google/android/flexbox/a;->b:[Z

    aput-boolean v21, v1, v10

    iget v1, v3, LS4/b;->g:F

    sub-float/2addr v1, v15

    iput v1, v3, LS4/b;->g:F

    move v2, v14

    move/from16 v7, v21

    goto :goto_7

    :cond_10
    int-to-float v14, v2

    sub-float/2addr v1, v14

    add-float/2addr v1, v9

    float-to-double v14, v1

    cmpl-double v9, v14, v19

    if-lez v9, :cond_12

    add-int/lit8 v2, v2, 0x1

    sub-float v1, v1, v22

    :cond_11
    :goto_6
    move v9, v1

    goto :goto_7

    :cond_12
    cmpg-double v9, v14, v17

    if-gez v9, :cond_11

    add-int/lit8 v2, v2, -0x1

    add-float v1, v1, v22

    goto :goto_6

    :goto_7
    iget v1, v3, LS4/b;->i:I

    move/from16 v14, p2

    invoke-virtual {v0, v14, v13, v1}, Lcom/google/android/flexbox/a;->j(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v12, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual {v0, v12, v10, v2, v1}, Lcom/google/android/flexbox/a;->r(Landroid/view/View;III)V

    invoke-interface {v11, v10, v12}, LS4/a;->updateViewCache(ILandroid/view/View;)V

    move v1, v15

    move/from16 v2, v17

    goto :goto_8

    :cond_13
    move/from16 v14, p2

    goto :goto_8

    :cond_14
    move/from16 v14, p2

    const/16 v16, 0x0

    :goto_8
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v10

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v10

    invoke-interface {v11, v12}, LS4/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v8, v3, LS4/b;->a:I

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v10

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v10

    add-int/2addr v1, v8

    iput v1, v3, LS4/b;->a:I

    move v1, v2

    :goto_9
    iget v2, v3, LS4/b;->c:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, LS4/b;->c:I

    move v8, v1

    :goto_a
    add-int/lit8 v2, v4, 0x1

    move/from16 v4, p4

    move v1, v5

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_15
    move/from16 v14, p2

    move v5, v1

    if-eqz v7, :cond_16

    iget v1, v3, LS4/b;->a:I

    if-eq v5, v1, :cond_16

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/a;->n(IILS4/b;IIZ)V

    :cond_16
    :goto_b
    return-void
.end method

.method public final o(IILandroid/view/View;)V
    .locals 4

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {v1, p3}, LS4/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p1, v2

    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->i:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->k:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz v0, :cond_0

    aget-wide v2, v0, p2

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p3, p1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/google/android/flexbox/a;->r(Landroid/view/View;III)V

    invoke-interface {v1, p2, p3}, LS4/a;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method

.method public final p(IILandroid/view/View;)V
    .locals 4

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {v1, p3}, LS4/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p1, v2

    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->j:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->l:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz v0, :cond_0

    aget-wide v2, v0, p2

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p3, p2, v0, p1}, Lcom/google/android/flexbox/a;->r(Landroid/view/View;III)V

    invoke-interface {v1, p2, p3}, LS4/a;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method

.method public final q(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/flexbox/a;->a:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-interface {v2}, LS4/a;->getFlexItemCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, LS4/a;->getFlexDirection()I

    move-result v3

    invoke-interface {v2}, LS4/a;->getAlignItems()I

    move-result v4

    const/4 v5, 0x1

    const-string v6, "Invalid flex direction: "

    const/4 v9, 0x4

    if-ne v4, v9, :cond_a

    iget-object v4, v0, Lcom/google/android/flexbox/a;->c:[I

    if-eqz v4, :cond_1

    aget v1, v4, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, LS4/a;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    :goto_1
    if-ge v1, v11, :cond_f

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LS4/b;

    iget v13, v12, LS4/b;->d:I

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_9

    iget v15, v12, LS4/b;->k:I

    add-int/2addr v15, v14

    invoke-interface {v2}, LS4/a;->getFlexItemCount()I

    move-result v10

    if-lt v14, v10, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {v2, v15}, LS4/a;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/google/android/flexbox/FlexItem;

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v7, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    if-eq v7, v9, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_7

    if-eq v3, v5, :cond_7

    const/4 v7, 0x2

    if-eq v3, v7, :cond_6

    const/4 v7, 0x3

    if-ne v3, v7, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    iget v7, v12, LS4/b;->c:I

    invoke-virtual {v0, v7, v15, v10}, Lcom/google/android/flexbox/a;->o(IILandroid/view/View;)V

    goto :goto_4

    :cond_7
    iget v7, v12, LS4/b;->c:I

    invoke-virtual {v0, v7, v15, v10}, Lcom/google/android/flexbox/a;->p(IILandroid/view/View;)V

    :cond_8
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    invoke-interface {v2}, LS4/a;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LS4/b;

    iget-object v7, v4, LS4/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v2, v9}, LS4/a;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v3, :cond_e

    if-eq v3, v5, :cond_e

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v3, v10, :cond_d

    if-ne v3, v11, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_6
    iget v12, v4, LS4/b;->c:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v12, v8, v9}, Lcom/google/android/flexbox/a;->o(IILandroid/view/View;)V

    goto :goto_5

    :cond_e
    const/4 v10, 0x2

    const/4 v11, 0x3

    iget v12, v4, LS4/b;->c:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v12, v8, v9}, Lcom/google/android/flexbox/a;->p(IILandroid/view/View;)V

    goto :goto_5

    :cond_f
    return-void
.end method

.method public final r(Landroid/view/View;III)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/flexbox/a;->d:[J

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_0

    int-to-long v4, p4

    shl-long/2addr v4, v3

    int-to-long p3, p3

    and-long/2addr p3, v1

    or-long/2addr p3, v4

    aput-wide p3, v0, p2

    :cond_0
    iget-object p0, p0, Lcom/google/android/flexbox/a;->e:[J

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-long v4, p1

    shl-long v3, v4, v3

    int-to-long p3, p3

    and-long/2addr p3, v1

    or-long/2addr p3, v3

    aput-wide p3, p0, p2

    :cond_1
    return-void
.end method
