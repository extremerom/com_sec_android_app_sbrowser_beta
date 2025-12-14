.class public Lx4/j;
.super Lx4/a;
.source "SourceFile"


# instance fields
.field protected mDrawZeroLinePath:Landroid/graphics/Path;

.field protected mGetTransformedPositionsBuffer:[F

.field protected mGridClippingRect:Landroid/graphics/RectF;

.field protected mLimitLineClippingRect:Landroid/graphics/RectF;

.field protected mRenderGridLinesPath:Landroid/graphics/Path;

.field protected mRenderLimitLines:Landroid/graphics/Path;

.field protected mRenderLimitLinesBuffer:[F

.field protected mYAxis:Lq4/r;

.field protected mZeroLineClippingRect:Landroid/graphics/RectF;

.field protected mZeroLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ly4/h;Lq4/r;Ly4/f;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lx4/a;-><init>(Ly4/h;Ly4/f;Lq4/a;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lx4/j;->mRenderGridLinesPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lx4/j;->mGridClippingRect:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p3, p1, [F

    iput-object p3, p0, Lx4/j;->mGetTransformedPositionsBuffer:[F

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lx4/j;->mDrawZeroLinePath:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lx4/j;->mZeroLineClippingRect:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lx4/j;->mRenderLimitLines:Landroid/graphics/Path;

    new-array p1, p1, [F

    iput-object p1, p0, Lx4/j;->mRenderLimitLinesBuffer:[F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lx4/j;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iput-object p2, p0, Lx4/j;->mYAxis:Lq4/r;

    iget-object p1, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Ly4/g;->c(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lx4/j;->mZeroLinePaint:Landroid/graphics/Paint;

    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lx4/j;->mZeroLinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lx4/j;->mZeroLinePaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public drawYLabels(Landroid/graphics/Canvas;F[FF)V
    .locals 5

    iget-object v0, p0, Lx4/j;->mYAxis:Lq4/r;

    iget-boolean v1, v0, Lq4/r;->A:Z

    xor-int/lit8 v1, v1, 0x1

    iget-boolean v2, v0, Lq4/r;->B:Z

    iget v0, v0, Lq4/a;->l:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lx4/j;->mYAxis:Lq4/r;

    invoke-virtual {v2, v1}, Lq4/a;->b(I)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p3, v3

    add-float/2addr v3, p4

    iget-object v4, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getGridClippingRect()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lx4/j;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v1, v1, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lx4/j;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lx4/a;->mAxis:Lq4/a;

    iget v1, v1, Lq4/a;->h:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p0, p0, Lx4/j;->mGridClippingRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getTransformedPositions()[F
    .locals 5

    iget-object v0, p0, Lx4/j;->mGetTransformedPositionsBuffer:[F

    array-length v0, v0

    iget-object v1, p0, Lx4/j;->mYAxis:Lq4/r;

    iget v1, v1, Lq4/a;->l:I

    mul-int/lit8 v2, v1, 0x2

    if-eq v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    iput-object v0, p0, Lx4/j;->mGetTransformedPositionsBuffer:[F

    :cond_0
    iget-object v0, p0, Lx4/j;->mGetTransformedPositionsBuffer:[F

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lx4/j;->mYAxis:Lq4/r;

    iget-object v3, v3, Lq4/a;->k:[F

    div-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lx4/a;->mTrans:Ly4/f;

    invoke-virtual {p0, v0}, Ly4/f;->d([F)V

    return-object v0
.end method

.method public linePath(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    iget-object v0, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v0, v0, Ly4/h;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-int/lit8 p2, p2, 0x1

    aget v1, p3, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p0, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object p0, p0, Ly4/h;->b:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    aget p2, p3, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lx4/j;->mYAxis:Lq4/r;

    iget-boolean v1, v0, Lq4/b;->a:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lq4/a;->r:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lx4/j;->getTransformedPositions()[F

    move-result-object v0

    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lx4/j;->mYAxis:Lq4/r;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lx4/j;->mYAxis:Lq4/r;

    iget v2, v2, Lq4/b;->d:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lx4/j;->mYAxis:Lq4/r;

    iget v2, v2, Lq4/b;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lx4/j;->mYAxis:Lq4/r;

    iget v1, v1, Lq4/b;->b:F

    iget-object v2, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    const-string v3, "A"

    invoke-static {v3, v2}, Ly4/g;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    iget-object v3, p0, Lx4/j;->mYAxis:Lq4/r;

    iget v4, v3, Lq4/b;->c:F

    add-float/2addr v2, v4

    iget-object v4, v3, Lq4/r;->F:Lq4/p;

    iget-object v3, v3, Lq4/r;->E:Lq4/q;

    sget-object v5, Lq4/p;->LEFT:Lq4/p;

    if-ne v4, v5, :cond_2

    sget-object v4, Lq4/q;->OUTSIDE_CHART:Lq4/q;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v3, v3, Ly4/h;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    :goto_0
    sub-float/2addr v3, v1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v3, v3, Ly4/h;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    :goto_1
    add-float/2addr v3, v1

    goto :goto_2

    :cond_2
    sget-object v4, Lq4/q;->OUTSIDE_CHART:Lq4/q;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v3, v3, Ly4/h;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v3, v3, Ly4/h;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :goto_2
    invoke-virtual {p0, p1, v3, v0, v2}, Lx4/j;->drawYLabels(Landroid/graphics/Canvas;F[FF)V

    :cond_4
    :goto_3
    return-void
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lx4/j;->mYAxis:Lq4/r;

    iget-boolean v1, v0, Lq4/b;->a:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lq4/a;->q:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lx4/a;->mAxisLinePaint:Landroid/graphics/Paint;

    iget v0, v0, Lq4/a;->i:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lx4/a;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lx4/j;->mYAxis:Lq4/r;

    iget v1, v1, Lq4/a;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lx4/j;->mYAxis:Lq4/r;

    iget-object v0, v0, Lq4/r;->F:Lq4/p;

    sget-object v1, Lq4/p;->LEFT:Lq4/p;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v0, v0, Ly4/h;->b:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lx4/a;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v0, v0, Ly4/h;->b:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lx4/a;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public renderGridLines(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lx4/j;->mYAxis:Lq4/r;

    iget-boolean v1, v0, Lq4/b;->a:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v0, Lq4/a;->p:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lx4/j;->getGridClippingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Lx4/j;->getTransformedPositions()[F

    move-result-object v1

    iget-object v2, p0, Lx4/a;->mGridPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lx4/j;->mYAxis:Lq4/r;

    iget v3, v3, Lq4/a;->g:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lx4/a;->mGridPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lx4/j;->mYAxis:Lq4/r;

    iget v3, v3, Lq4/a;->h:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lx4/a;->mGridPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lx4/j;->mYAxis:Lq4/r;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Lx4/j;->mRenderGridLinesPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v2, v3, v1}, Lx4/j;->linePath(Landroid/graphics/Path;I[F)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lx4/a;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object p0, p0, Lx4/j;->mYAxis:Lq4/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object p1, p0, Lx4/j;->mYAxis:Lq4/r;

    iget-object p1, p1, Lq4/a;->s:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx4/j;->mRenderLimitLinesBuffer:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object p0, p0, Lx4/j;->mRenderLimitLines:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
