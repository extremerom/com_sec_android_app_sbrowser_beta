.class public Lorg/chromium/ui/widget/OptimizedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mMatchParentChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public onMeasure(II)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v4, v7, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    iget-object v8, v0, Lorg/chromium/ui/widget/OptimizedFrameLayout;->mMatchParentChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v12, v3, :cond_6

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v18, v3

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    add-int v7, v8, v9

    move/from16 v18, v3

    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v3

    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v3

    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v1, v7, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    add-int v7, v10, v11

    iget v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v1

    iget v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v1

    iget v1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v2, v7, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {v6, v3, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v2

    iget v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v2

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v7

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v15, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    if-eqz v4, :cond_5

    iget v2, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_4

    iget v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v2, v7, :cond_5

    :cond_4
    iget-object v2, v0, Lorg/chromium/ui/widget/OptimizedFrameLayout;->mMatchParentChildren:Ljava/util/List;

    new-instance v5, Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;

    invoke-direct {v5, v6, v3, v1}, Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;-><init>(Landroid/view/View;II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    goto/16 :goto_2

    :cond_6
    add-int v1, v8, v9

    add-int/2addr v13, v1

    add-int v2, v10, v11

    add-int/2addr v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_7
    move/from16 v5, p1

    invoke-static {v4, v5, v15}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    shl-int/lit8 v6, v15, 0x10

    move/from16 v7, p2

    invoke-static {v3, v7, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v3, v0, Lorg/chromium/ui/widget/OptimizedFrameLayout;->mMatchParentChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_c

    iget-object v6, v0, Lorg/chromium/ui/widget/OptimizedFrameLayout;->mMatchParentChildren:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;

    iget-object v12, v6, Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v14, v8

    sub-int/2addr v14, v9

    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v14, v15

    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move/from16 v17, v1

    goto :goto_6

    :cond_8
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v1

    move/from16 v17, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v1

    invoke-static {v5, v15, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v14

    :goto_6
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v10

    sub-int/2addr v1, v11

    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v15

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v13

    const/4 v15, 0x0

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v16, v13

    goto :goto_7

    :cond_9
    const/high16 v16, 0x40000000    # 2.0f

    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v2

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v13

    invoke-static {v7, v15, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    :goto_7
    iget v13, v6, Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;->mWidthMeasureSpec:I

    if-ne v13, v14, :cond_a

    iget v6, v6, Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;->mHeightMeasureSpec:I

    if-eq v6, v1, :cond_b

    :cond_a
    invoke-virtual {v12, v14, v1}, Landroid/view/View;->measure(II)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v17

    goto :goto_5

    :cond_c
    iget-object v0, v0, Lorg/chromium/ui/widget/OptimizedFrameLayout;->mMatchParentChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
