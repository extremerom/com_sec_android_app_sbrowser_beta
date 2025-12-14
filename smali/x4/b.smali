.class public Lx4/b;
.super Lx4/d;
.source "SourceFile"


# instance fields
.field protected mBarBorderPaint:Landroid/graphics/Paint;

.field protected mBarBuffers:[Lo4/a;

.field protected mBarRect:Landroid/graphics/RectF;

.field private mBarShadowRectBuffer:Landroid/graphics/RectF;

.field protected mChart:Lu4/a;

.field protected mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lu4/a;Lcom/github/mikephil/charting/animation/ChartAnimator;Ly4/h;)V
    .locals 5

    invoke-direct {p0, p3}, Lx4/h;-><init>(Ly4/h;)V

    iput-object p2, p0, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lx4/e;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lx4/e;->mDrawPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lx4/e;->mValuePaint:Landroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lx4/e;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lx4/e;->mValuePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Ly4/g;->c(F)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lx4/e;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lx4/e;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lx4/e;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xbb

    const/16 v4, 0x73

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Lx4/c;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx4/d;->mXBounds:Lx4/c;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lx4/b;->mBarRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lx4/b;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iput-object p1, p0, Lx4/b;->mChart:Lu4/a;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lx4/e;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lx4/e;->mHighlightPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-static {p2, p2, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lx4/e;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 p2, 0x78

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lx4/b;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lx4/b;->mChart:Lu4/a;

    invoke-interface {v0}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lr4/d;->c()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lr4/d;->b(I)Lv4/c;

    move-result-object v2

    check-cast v2, Lv4/a;

    move-object v3, v2

    check-cast v3, Lr4/b;

    iget-boolean v3, v3, Lr4/b;->n:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2, v1}, Lx4/b;->drawDataSet(Landroid/graphics/Canvas;Lv4/a;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawDataSet(Landroid/graphics/Canvas;Lv4/a;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lx4/b;->mChart:Lu4/a;

    move-object v3, v1

    check-cast v3, Lr4/b;

    iget-object v4, v3, Lr4/b;->d:Lq4/p;

    check-cast v2, Lp4/c;

    invoke-virtual {v2, v4}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v2

    iget-object v4, v0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    move-object v5, v1

    check-cast v5, Lr4/b;

    iget v6, v5, Lr4/b;->w:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-static {v6}, Ly4/g;->c(F)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, v0, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v4

    iget-object v6, v0, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    iget-object v7, v0, Lx4/b;->mChart:Lu4/a;

    check-cast v7, Lcom/github/mikephil/charting/charts/BarChart;

    iget-boolean v7, v7, Lcom/github/mikephil/charting/charts/BarChart;->B0:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    iget-object v7, v0, Lx4/b;->mShadowPaint:Landroid/graphics/Paint;

    iget v5, v5, Lr4/b;->v:I

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lx4/b;->mChart:Lu4/a;

    invoke-interface {v5}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v5

    iget v5, v5, Lr4/a;->j:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object v7, v1

    check-cast v7, Lr4/b;

    iget-object v9, v7, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v10, v8

    :goto_0
    if-ge v10, v9, :cond_1

    iget-object v11, v7, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/github/mikephil/charting/data/Entry;

    check-cast v11, Lcom/github/mikephil/charting/data/BarEntry;

    iget v11, v11, Lcom/github/mikephil/charting/data/Entry;->c:F

    iget-object v12, v0, Lx4/b;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    sub-float v13, v11, v5

    iput v13, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v5

    iput v11, v12, Landroid/graphics/RectF;->right:F

    iget-object v11, v2, Ly4/f;->a:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v11, v2, Ly4/f;->c:Ly4/h;

    iget-object v11, v11, Ly4/h;->a:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v11, v2, Ly4/f;->b:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v11, v0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v12, v0, Lx4/b;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    invoke-virtual {v11, v12}, Ly4/h;->a(F)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v15, p1

    goto :goto_1

    :cond_0
    iget-object v11, v0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v12, v0, Lx4/b;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    invoke-virtual {v11, v12}, Ly4/h;->b(F)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    move-object/from16 v15, p1

    goto :goto_2

    :cond_2
    iget-object v11, v0, Lx4/b;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget-object v12, v0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v12, v12, Ly4/h;->b:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->top:F

    iput v13, v11, Landroid/graphics/RectF;->top:F

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    iput v12, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v12, v0, Lx4/b;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :goto_2
    iget-object v5, v0, Lx4/b;->mBarBuffers:[Lo4/a;

    aget-object v5, v5, p3

    iput v4, v5, Lo4/a;->c:F

    iput v6, v5, Lo4/a;->d:F

    iget-object v4, v0, Lx4/b;->mChart:Lu4/a;

    check-cast v4, Lp4/c;

    iget-object v6, v3, Lr4/b;->d:Lq4/p;

    invoke-virtual {v4, v6}, Lp4/c;->g(Lq4/p;)V

    iget-object v4, v0, Lx4/b;->mChart:Lu4/a;

    invoke-interface {v4}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v4

    iget v4, v4, Lr4/a;->j:F

    iput v4, v5, Lo4/a;->f:F

    invoke-virtual {v5, v1}, Lo4/a;->b(Lv4/a;)V

    iget-object v1, v5, Lo4/a;->b:[F

    invoke-virtual {v2, v1}, Ly4/f;->d([F)V

    iget-object v2, v3, Lr4/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v8

    :goto_3
    if-eqz v4, :cond_4

    iget-object v3, v0, Lx4/e;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    :goto_4
    array-length v3, v1

    if-ge v8, v3, :cond_8

    iget-object v3, v0, Lx4/h;->mViewPortHandler:Ly4/h;

    add-int/lit8 v5, v8, 0x2

    aget v6, v1, v5

    invoke-virtual {v3, v6}, Ly4/h;->a(F)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object v3, v0, Lx4/h;->mViewPortHandler:Ly4/h;

    aget v6, v1, v8

    invoke-virtual {v3, v6}, Ly4/h;->b(F)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    if-nez v4, :cond_7

    iget-object v3, v0, Lx4/e;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v6, v8, 0x4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_7
    aget v14, v1, v8

    add-int/lit8 v3, v8, 0x1

    aget v3, v1, v3

    aget v16, v1, v5

    add-int/lit8 v5, v8, 0x3

    aget v17, v1, v5

    iget-object v5, v0, Lx4/e;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move v15, v3

    move-object/from16 v18, v5

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v8, v8, 0x4

    move-object/from16 v15, p1

    goto :goto_4

    :cond_8
    :goto_6
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lt4/c;)V
    .locals 11

    iget-object v0, p0, Lx4/b;->mChart:Lu4/a;

    invoke-interface {v0}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v6

    array-length v7, p2

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_5

    aget-object v9, p2, v8

    iget v0, v9, Lt4/c;->e:I

    invoke-virtual {v6, v0}, Lr4/d;->b(I)Lv4/c;

    move-result-object v0

    check-cast v0, Lv4/a;

    if-eqz v0, :cond_4

    move-object v1, v0

    check-cast v1, Lr4/b;

    iget-boolean v2, v1, Lr4/b;->e:Z

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    move-object v2, v0

    check-cast v2, Lr4/b;

    sget-object v3, Lr4/e;->CLOSEST:Lr4/e;

    iget v4, v9, Lt4/c;->a:F

    iget v5, v9, Lt4/c;->b:F

    invoke-virtual {v2, v4, v5, v3}, Lr4/b;->b(FFLr4/e;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0, v2, v0}, Lx4/d;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lv4/b;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lx4/b;->mChart:Lu4/a;

    check-cast v3, Lp4/c;

    iget-object v1, v1, Lr4/b;->d:Lq4/p;

    invoke-virtual {v3, v1}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v5

    iget-object v1, p0, Lx4/e;->mHighlightPaint:Landroid/graphics/Paint;

    check-cast v0, Lr4/b;

    iget v3, v0, Lr4/b;->t:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lx4/e;->mHighlightPaint:Landroid/graphics/Paint;

    iget v0, v0, Lr4/b;->x:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, v9, Lt4/c;->f:I

    if-ltz v0, :cond_3

    iget-object v1, v2, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    if-eqz v1, :cond_3

    iget-object v1, p0, Lx4/b;->mChart:Lu4/a;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarChart;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/charts/BarChart;->z0:Z

    if-eqz v1, :cond_2

    iget v0, v2, Lcom/github/mikephil/charting/data/BarEntry;->g:F

    iget v1, v2, Lcom/github/mikephil/charting/data/BarEntry;->f:F

    neg-float v1, v1

    :goto_1
    move v3, v0

    move v4, v1

    goto :goto_2

    :cond_2
    iget-object v1, v2, Lcom/github/mikephil/charting/data/BarEntry;->e:[LP/d;

    aget-object v0, v1, v0

    iget v1, v0, LP/d;->a:F

    iget v0, v0, LP/d;->b:F

    move v4, v0

    move v3, v1

    goto :goto_2

    :cond_3
    iget v0, v2, Lcom/github/mikephil/charting/data/Entry;->a:F

    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget v1, v2, Lcom/github/mikephil/charting/data/Entry;->c:F

    iget v0, v6, Lr4/a;->j:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v0, v2

    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lx4/b;->prepareBarHighlight(FFFFLy4/f;)V

    iget-object v0, p0, Lx4/b;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v9, v0}, Lx4/b;->setHighlightDrawPos(Lt4/c;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lx4/b;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lx4/e;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 37

    move-object/from16 v9, p0

    iget-object v0, v9, Lx4/b;->mChart:Lu4/a;

    invoke-virtual {v9, v0}, Lx4/e;->isDrawingValuesAllowed(Lu4/c;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v9, Lx4/b;->mChart:Lu4/a;

    invoke-interface {v0}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v0

    iget-object v10, v0, Lr4/d;->i:Ljava/util/ArrayList;

    const/high16 v0, 0x40900000    # 4.5f

    invoke-static {v0}, Ly4/g;->c(F)F

    move-result v11

    iget-object v0, v9, Lx4/b;->mChart:Lu4/a;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-boolean v12, v0, Lcom/github/mikephil/charting/charts/BarChart;->A0:Z

    const/4 v14, 0x0

    :goto_0
    iget-object v0, v9, Lx4/b;->mChart:Lu4/a;

    invoke-interface {v0}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v0

    invoke-virtual {v0}, Lr4/d;->c()I

    move-result v0

    if-ge v14, v0, :cond_21

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lv4/a;

    invoke-virtual {v9, v15}, Lx4/d;->shouldDrawValues(Lv4/c;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v23, v10

    move/from16 v21, v11

    move/from16 v27, v12

    goto/16 :goto_17

    :cond_0
    invoke-virtual {v9, v15}, Lx4/e;->applyValueTextStyle(Lv4/c;)V

    iget-object v0, v9, Lx4/b;->mChart:Lu4/a;

    move-object v8, v15

    check-cast v8, Lr4/b;

    iget-object v1, v8, Lr4/b;->d:Lq4/p;

    check-cast v0, Lp4/c;

    invoke-virtual {v0, v1}, Lp4/c;->g(Lq4/p;)V

    iget-object v0, v9, Lx4/e;->mValuePaint:Landroid/graphics/Paint;

    const-string v1, "8"

    invoke-static {v1, v0}, Ly4/g;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    int-to-float v0, v0

    if-eqz v12, :cond_1

    neg-float v1, v11

    :goto_1
    move/from16 v16, v1

    goto :goto_2

    :cond_1
    add-float v1, v0, v11

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_2

    add-float/2addr v0, v11

    :goto_3
    move/from16 v17, v0

    goto :goto_4

    :cond_2
    neg-float v0, v11

    goto :goto_3

    :goto_4
    iget-object v0, v9, Lx4/b;->mBarBuffers:[Lo4/a;

    aget-object v7, v0, v14

    iget-object v0, v9, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v18

    sget-object v0, Ly4/c;->d:Ly4/e;

    invoke-virtual {v0}, Ly4/e;->b()Ly4/d;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ly4/c;

    iget-object v0, v8, Lr4/b;->l:Ly4/c;

    iget v1, v0, Ly4/c;->b:F

    iput v1, v6, Ly4/c;->b:F

    iget v0, v0, Ly4/c;->c:F

    iput v0, v6, Ly4/c;->c:F

    invoke-static {v1}, Ly4/g;->c(F)F

    move-result v0

    iput v0, v6, Ly4/c;->b:F

    iget v0, v6, Ly4/c;->c:F

    invoke-static {v0}, Ly4/g;->c(F)F

    move-result v0

    iput v0, v6, Ly4/c;->c:F

    move-object v0, v15

    check-cast v0, Lr4/b;

    iget v0, v0, Lr4/b;->u:I

    const/4 v5, 0x1

    if-le v0, v5, :cond_3

    move v0, v5

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    :goto_5
    const/high16 v19, 0x40000000    # 2.0f

    const/16 v20, 0x0

    if-nez v0, :cond_b

    const/4 v5, 0x0

    :goto_6
    int-to-float v0, v5

    iget-object v1, v7, Lo4/a;->b:[F

    array-length v1, v1

    int-to-float v1, v1

    iget-object v2, v9, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v2

    mul-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, v7, Lo4/a;->b:[F

    aget v1, v0, v5

    add-int/lit8 v2, v5, 0x2

    aget v2, v0, v2

    add-float/2addr v1, v2

    div-float v4, v1, v19

    iget-object v1, v9, Lx4/h;->mViewPortHandler:Ly4/h;

    invoke-virtual {v1, v4}, Ly4/h;->b(F)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move-object/from16 v23, v10

    move/from16 v21, v11

    move-object v10, v6

    goto/16 :goto_a

    :cond_5
    iget-object v1, v9, Lx4/h;->mViewPortHandler:Ly4/h;

    add-int/lit8 v2, v5, 0x1

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ly4/h;->c(F)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v9, Lx4/h;->mViewPortHandler:Ly4/h;

    invoke-virtual {v1, v4}, Ly4/h;->a(F)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    move/from16 v18, v5

    move-object v13, v7

    move-object/from16 v23, v10

    move/from16 v21, v11

    move-object v10, v6

    move-object v11, v8

    goto :goto_9

    :cond_7
    div-int/lit8 v1, v5, 0x4

    move-object v3, v15

    check-cast v3, Lr4/b;

    iget-object v3, v3, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    check-cast v3, Lcom/github/mikephil/charting/data/BarEntry;

    iget v13, v3, Lcom/github/mikephil/charting/data/Entry;->a:F

    move-object/from16 v18, v3

    iget-boolean v3, v8, Lr4/b;->j:Z

    if-eqz v3, :cond_6

    iget-object v3, v8, Lr4/b;->f:Ls4/c;

    if-nez v3, :cond_8

    sget-object v3, Ly4/g;->g:LO9/a;

    :cond_8
    cmpl-float v21, v13, v20

    if-ltz v21, :cond_9

    aget v0, v0, v2

    add-float v0, v0, v16

    :goto_7
    move/from16 v21, v0

    goto :goto_8

    :cond_9
    add-int/lit8 v2, v5, 0x3

    aget v0, v0, v2

    add-float v0, v0, v17

    goto :goto_7

    :goto_8
    iget-object v0, v8, Lr4/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v13

    move v13, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    move v5, v14

    move-object/from16 v23, v10

    move-object v10, v6

    move v6, v13

    move-object v13, v7

    move/from16 v7, v21

    move/from16 v21, v11

    move-object v11, v8

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lx4/e;->drawValue(Landroid/graphics/Canvas;Ls4/c;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    :goto_9
    add-int/lit8 v5, v18, 0x4

    move-object v6, v10

    move-object v8, v11

    move-object v7, v13

    move/from16 v11, v21

    move-object/from16 v10, v23

    goto/16 :goto_6

    :cond_a
    :goto_a
    move/from16 v27, v12

    goto/16 :goto_16

    :cond_b
    move-object v13, v7

    move-object/from16 v23, v10

    move/from16 v21, v11

    move-object v10, v6

    move-object v11, v8

    iget-object v0, v9, Lx4/b;->mChart:Lu4/a;

    check-cast v0, Lp4/c;

    iget-object v1, v11, Lr4/b;->d:Lq4/p;

    invoke-virtual {v0, v1}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v8

    const/4 v7, 0x0

    const/16 v22, 0x0

    :goto_b
    int-to-float v0, v7

    move-object v1, v15

    check-cast v1, Lr4/b;

    iget-object v2, v1, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v9, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    mul-float/2addr v3, v2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    iget-object v0, v1, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    move-object v6, v0

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v4, v6, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    iget-object v0, v13, Lo4/a;->b:[F

    aget v1, v0, v22

    add-int/lit8 v2, v22, 0x2

    aget v0, v0, v2

    add-float/2addr v1, v0

    div-float v3, v1, v19

    iget-object v0, v11, Lr4/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v24

    if-nez v4, :cond_12

    iget-object v0, v9, Lx4/h;->mViewPortHandler:Ly4/h;

    invoke-virtual {v0, v3}, Ly4/h;->b(F)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_a

    :cond_c
    iget-object v0, v9, Lx4/h;->mViewPortHandler:Ly4/h;

    add-int/lit8 v1, v22, 0x1

    iget-object v2, v13, Lo4/a;->b:[F

    aget v5, v2, v1

    invoke-virtual {v0, v5}, Ly4/h;->c(F)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v9, Lx4/h;->mViewPortHandler:Ly4/h;

    invoke-virtual {v0, v3}, Ly4/h;->a(F)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    move/from16 v28, v7

    move/from16 v27, v12

    move-object/from16 v26, v13

    const/16 v25, 0x1

    move-object v13, v8

    goto :goto_d

    :cond_e
    iget-boolean v0, v11, Lr4/b;->j:Z

    if-eqz v0, :cond_11

    iget-object v0, v11, Lr4/b;->f:Ls4/c;

    if-nez v0, :cond_f

    sget-object v0, Ly4/g;->g:LO9/a;

    :cond_f
    move-object v5, v0

    iget v0, v6, Lcom/github/mikephil/charting/data/Entry;->a:F

    aget v1, v2, v1

    cmpl-float v2, v0, v20

    if-ltz v2, :cond_10

    move/from16 v2, v16

    goto :goto_c

    :cond_10
    move/from16 v2, v17

    :goto_c
    add-float v26, v1, v2

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move v5, v3

    move/from16 v3, v27

    move/from16 v27, v12

    move-object v12, v4

    move-object v4, v6

    move v6, v5

    const/16 v25, 0x1

    move v5, v14

    move/from16 v28, v7

    move/from16 v7, v26

    move-object/from16 v26, v13

    move-object v13, v8

    move/from16 v8, v24

    invoke-virtual/range {v0 .. v8}, Lx4/e;->drawValue(Landroid/graphics/Canvas;Ls4/c;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto/16 :goto_14

    :cond_11
    move/from16 v28, v7

    move/from16 v27, v12

    move-object/from16 v26, v13

    const/16 v25, 0x1

    move-object v12, v4

    move-object v13, v8

    goto/16 :goto_14

    :goto_d
    move-object v8, v13

    move/from16 v5, v25

    move-object/from16 v13, v26

    move/from16 v12, v27

    move/from16 v7, v28

    goto/16 :goto_b

    :cond_12
    move/from16 v25, v5

    move/from16 v28, v7

    move/from16 v27, v12

    move-object/from16 v26, v13

    move-object v12, v4

    move-object v13, v8

    move v8, v3

    array-length v0, v12

    mul-int/lit8 v7, v0, 0x2

    new-array v5, v7, [F

    iget v0, v6, Lcom/github/mikephil/charting/data/BarEntry;->f:F

    neg-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v20

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_e
    if-ge v0, v7, :cond_16

    aget v2, v12, v1

    cmpl-float v3, v2, v20

    if-nez v3, :cond_14

    cmpl-float v4, v30, v20

    if-eqz v4, :cond_13

    cmpl-float v4, v29, v20

    if-nez v4, :cond_14

    :cond_13
    move/from16 v36, v29

    move/from16 v29, v2

    move/from16 v2, v36

    goto :goto_f

    :cond_14
    if-ltz v3, :cond_15

    add-float v30, v30, v2

    move/from16 v2, v29

    move/from16 v29, v30

    goto :goto_f

    :cond_15
    sub-float v2, v29, v2

    :goto_f
    add-int/lit8 v3, v0, 0x1

    mul-float v29, v29, v18

    aput v29, v5, v3

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    move/from16 v29, v2

    goto :goto_e

    :cond_16
    invoke-virtual {v13, v5}, Ly4/f;->d([F)V

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v7, :cond_1f

    div-int/lit8 v0, v4, 0x2

    aget v1, v12, v0

    cmpl-float v2, v1, v20

    if-nez v2, :cond_17

    cmpl-float v2, v29, v20

    if-nez v2, :cond_17

    cmpl-float v2, v30, v20

    if-gtz v2, :cond_18

    :cond_17
    cmpg-float v1, v1, v20

    if-gez v1, :cond_19

    :cond_18
    move/from16 v1, v25

    goto :goto_11

    :cond_19
    const/4 v1, 0x0

    :goto_11
    add-int/lit8 v2, v4, 0x1

    aget v2, v5, v2

    if-eqz v1, :cond_1a

    move/from16 v1, v17

    goto :goto_12

    :cond_1a
    move/from16 v1, v16

    :goto_12
    add-float v3, v2, v1

    iget-object v1, v9, Lx4/h;->mViewPortHandler:Ly4/h;

    invoke-virtual {v1, v8}, Ly4/h;->b(F)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_14

    :cond_1b
    iget-object v1, v9, Lx4/h;->mViewPortHandler:Ly4/h;

    invoke-virtual {v1, v3}, Ly4/h;->c(F)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v9, Lx4/h;->mViewPortHandler:Ly4/h;

    invoke-virtual {v1, v8}, Ly4/h;->a(F)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1c
    move/from16 v31, v4

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move/from16 v35, v7

    move/from16 v32, v8

    goto :goto_13

    :cond_1d
    iget-boolean v1, v11, Lr4/b;->j:Z

    if-eqz v1, :cond_1c

    iget-object v1, v11, Lr4/b;->f:Ls4/c;

    if-nez v1, :cond_1e

    sget-object v1, Ly4/g;->g:LO9/a;

    :cond_1e
    move-object v2, v1

    aget v31, v12, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v32, v3

    move/from16 v3, v31

    move/from16 v31, v4

    move-object v4, v6

    move-object/from16 v33, v5

    move v5, v14

    move-object/from16 v34, v6

    move v6, v8

    move/from16 v35, v7

    move/from16 v7, v32

    move/from16 v32, v8

    move/from16 v8, v24

    invoke-virtual/range {v0 .. v8}, Lx4/e;->drawValue(Landroid/graphics/Canvas;Ls4/c;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    :goto_13
    add-int/lit8 v4, v31, 0x2

    move/from16 v8, v32

    move-object/from16 v5, v33

    move-object/from16 v6, v34

    move/from16 v7, v35

    goto :goto_10

    :cond_1f
    :goto_14
    if-nez v12, :cond_20

    add-int/lit8 v22, v22, 0x4

    goto :goto_15

    :cond_20
    array-length v0, v12

    mul-int/lit8 v0, v0, 0x4

    add-int v0, v0, v22

    move/from16 v22, v0

    :goto_15
    add-int/lit8 v7, v28, 0x1

    move-object v8, v13

    move/from16 v5, v25

    move-object/from16 v13, v26

    move/from16 v12, v27

    goto/16 :goto_b

    :goto_16
    sget-object v0, Ly4/c;->d:Ly4/e;

    invoke-virtual {v0, v10}, Ly4/e;->c(Ly4/d;)V

    :goto_17
    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v21

    move-object/from16 v10, v23

    move/from16 v12, v27

    goto/16 :goto_0

    :cond_21
    return-void
.end method

.method public initBuffers()V
    .locals 9

    iget-object v0, p0, Lx4/b;->mChart:Lu4/a;

    invoke-interface {v0}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v0

    invoke-virtual {v0}, Lr4/d;->c()I

    move-result v1

    new-array v1, v1, [Lo4/a;

    iput-object v1, p0, Lx4/b;->mBarBuffers:[Lo4/a;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lx4/b;->mBarBuffers:[Lo4/a;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lr4/d;->b(I)Lv4/c;

    move-result-object v3

    check-cast v3, Lv4/a;

    iget-object v4, p0, Lx4/b;->mBarBuffers:[Lo4/a;

    new-instance v5, Lo4/a;

    move-object v6, v3

    check-cast v6, Lr4/b;

    iget-object v6, v6, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    check-cast v3, Lr4/b;

    iget v7, v3, Lr4/b;->u:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    goto :goto_1

    :cond_0
    move v7, v8

    :goto_1
    mul-int/2addr v6, v7

    invoke-virtual {v0}, Lr4/d;->c()I

    iget v3, v3, Lr4/b;->u:I

    if-le v3, v8, :cond_1

    goto :goto_2

    :cond_1
    move v8, v1

    :goto_2
    invoke-direct {v5, v6, v8}, Lo4/a;-><init>(IZ)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public prepareBarHighlight(FFFFLy4/f;)V
    .locals 1

    sub-float v0, p1, p4

    add-float/2addr p1, p4

    iget-object p4, p0, Lx4/b;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {p4, v0, p2, p1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lx4/b;->mBarRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result p0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p5, Ly4/f;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p5, Ly4/f;->c:Ly4/h;

    iget-object p0, p0, Ly4/h;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p5, Ly4/f;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public setHighlightDrawPos(Lt4/c;Landroid/graphics/RectF;)V
    .locals 0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
