.class public Lx4/i;
.super Lx4/a;
.source "SourceFile"


# instance fields
.field protected mGridClippingRect:Landroid/graphics/RectF;

.field protected mLimitLineClippingRect:Landroid/graphics/RectF;

.field private mLimitLinePath:Landroid/graphics/Path;

.field mLimitLineSegmentsBuffer:[F

.field protected mRenderGridLinesBuffer:[F

.field protected mRenderGridLinesPath:Landroid/graphics/Path;

.field protected mRenderLimitLinesBuffer:[F

.field protected mXAxis:Lq4/o;


# direct methods
.method public constructor <init>(Ly4/h;Lq4/o;Ly4/f;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lx4/a;-><init>(Ly4/h;Ly4/f;Lq4/a;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lx4/i;->mRenderGridLinesPath:Landroid/graphics/Path;

    const/4 p1, 0x2

    new-array p3, p1, [F

    iput-object p3, p0, Lx4/i;->mRenderGridLinesBuffer:[F

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lx4/i;->mGridClippingRect:Landroid/graphics/RectF;

    new-array p1, p1, [F

    iput-object p1, p0, Lx4/i;->mRenderLimitLinesBuffer:[F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lx4/i;->mLimitLineClippingRect:Landroid/graphics/RectF;

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lx4/i;->mLimitLineSegmentsBuffer:[F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lx4/i;->mLimitLinePath:Landroid/graphics/Path;

    iput-object p2, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-object p1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p0, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Ly4/g;->c(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public computeAxis(FFZ)V
    .locals 5

    iget-object v0, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v0, v0, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget v1, v0, Ly4/h;->i:F

    iget v2, v0, Ly4/h;->g:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lx4/a;->mTrans:Ly4/f;

    iget-object p2, v0, Ly4/h;->b:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ly4/b;->d:Ly4/e;

    invoke-virtual {v1}, Ly4/e;->b()Ly4/d;

    move-result-object v1

    check-cast v1, Ly4/b;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ly4/b;->b:D

    iput-wide v2, v1, Ly4/b;->c:D

    invoke-virtual {p1, v0, p2, v1}, Ly4/f;->b(FFLy4/b;)V

    iget-object p1, p0, Lx4/a;->mTrans:Ly4/f;

    iget-object p2, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object p2, p2, Ly4/h;->b:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ly4/b;->d:Ly4/e;

    invoke-virtual {v4}, Ly4/e;->b()Ly4/d;

    move-result-object v4

    check-cast v4, Ly4/b;

    iput-wide v2, v4, Ly4/b;->b:D

    iput-wide v2, v4, Ly4/b;->c:D

    invoke-virtual {p1, v0, p2, v4}, Ly4/f;->b(FFLy4/b;)V

    if-eqz p3, :cond_1

    iget-wide p1, v4, Ly4/b;->b:D

    double-to-float p1, p1

    iget-wide p2, v1, Ly4/b;->b:D

    :goto_0
    double-to-float p2, p2

    goto :goto_1

    :cond_1
    iget-wide p1, v1, Ly4/b;->b:D

    double-to-float p1, p1

    iget-wide p2, v4, Ly4/b;->b:D

    goto :goto_0

    :goto_1
    invoke-static {v1}, Ly4/b;->b(Ly4/b;)V

    invoke-static {v4}, Ly4/b;->b(Ly4/b;)V

    :cond_2
    :goto_2
    invoke-virtual {p0, p1, p2}, Lx4/i;->computeAxisValues(FF)V

    return-void
.end method

.method public computeAxisValues(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lx4/a;->computeAxisValues(FF)V

    invoke-virtual {p0}, Lx4/i;->computeSize()V

    return-void
.end method

.method public computeSize()V
    .locals 5

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v0}, Lq4/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v2, v2, Lq4/b;->d:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v0, v1}, Ly4/g;->b(Ljava/lang/String;Landroid/graphics/Paint;)Ly4/a;

    move-result-object v0

    iget v1, v0, Ly4/a;->b:F

    iget-object v2, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    const-string v3, "Q"

    invoke-static {v3, v2}, Ly4/g;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ly4/g;->d(FFF)Ly4/a;

    move-result-object v3

    iget-object v4, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v2, v3, Ly4/a;->b:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v1, v3, Ly4/a;->c:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lq4/o;->A:I

    sget-object p0, Ly4/a;->d:Ly4/e;

    invoke-virtual {p0, v3}, Ly4/e;->c(Ly4/d;)V

    sget-object p0, Ly4/a;->d:Ly4/e;

    invoke-virtual {p0, v0}, Ly4/e;->c(Ly4/d;)V

    return-void
.end method

.method public drawGridLine(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 0

    iget-object p3, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object p3, p3, Ly4/h;->b:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p3, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object p3, p3, Ly4/h;->b:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p0, p0, Lx4/a;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLy4/c;F)V
    .locals 7

    iget-object p0, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v0, Ly4/g;->i:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Ly4/g;->h:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/4 v4, 0x0

    sub-float v2, v4, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    add-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    cmpl-float v6, p6, v4

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    sub-float/2addr v2, v4

    mul-float v4, v1, v6

    sub-float/2addr v0, v4

    iget v4, p5, Ly4/c;->b:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    iget v4, p5, Ly4/c;->c:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v1, p6}, Ly4/g;->d(FFF)Ly4/a;

    move-result-object v1

    iget v3, v1, Ly4/a;->b:F

    iget v4, p5, Ly4/c;->b:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, v3

    sub-float/2addr p3, v4

    iget v3, v1, Ly4/a;->c:F

    iget p5, p5, Ly4/c;->c:F

    sub-float/2addr p5, v6

    mul-float/2addr p5, v3

    sub-float/2addr p4, p5

    sget-object p5, Ly4/a;->d:Ly4/e;

    invoke-virtual {p5, v1}, Ly4/e;->c(Ly4/d;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, p2, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    iget p6, p5, Ly4/c;->b:F

    cmpl-float p6, p6, v4

    if-nez p6, :cond_3

    iget p6, p5, Ly4/c;->c:F

    cmpl-float p6, p6, v4

    if-eqz p6, :cond_4

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p6

    int-to-float p6, p6

    iget v3, p5, Ly4/c;->b:F

    mul-float/2addr p6, v3

    sub-float/2addr v2, p6

    iget p5, p5, Ly4/c;->c:F

    mul-float/2addr v1, p5

    sub-float/2addr v0, v1

    :cond_4
    add-float/2addr v2, p3

    add-float/2addr v0, p4

    invoke-virtual {p1, p2, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public drawLabels(Landroid/graphics/Canvas;FLy4/c;)V
    .locals 10

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v0, v0, Lq4/a;->l:I

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-object v4, v4, Lq4/a;->k:[F

    div-int/lit8 v5, v3, 0x2

    aget v4, v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lx4/a;->mTrans:Ly4/f;

    invoke-virtual {v3, v1}, Ly4/f;->d([F)V

    :goto_1
    if-ge v2, v0, :cond_2

    aget v6, v1, v2

    iget-object v3, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    invoke-virtual {v3, v6}, Ly4/h;->a(F)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v6}, Ly4/h;->b(F)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v3}, Lq4/a;->d()Ls4/b;

    move-result-object v3

    iget-object v4, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-object v5, v4, Lq4/a;->k:[F

    div-int/lit8 v7, v2, 0x2

    aget v5, v5, v7

    invoke-interface {v3, v5, v4}, Ls4/b;->getFormattedValue(FLq4/a;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lx4/i;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLy4/c;F)V

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getGridClippingRect()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lx4/i;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v1, v1, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lx4/i;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lx4/a;->mAxis:Lq4/a;

    iget v1, v1, Lq4/a;->h:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p0, p0, Lx4/i;->mGridClippingRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-boolean v1, v0, Lq4/b;->a:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lq4/a;->r:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, v0, Lq4/b;->c:F

    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v2, v2, Lq4/b;->d:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v2, v2, Lq4/b;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Ly4/c;->b(FF)Ly4/c;

    move-result-object v2

    iget-object v3, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-object v4, v3, Lq4/o;->B:Lq4/n;

    sget-object v5, Lq4/n;->TOP:Lq4/n;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne v4, v5, :cond_1

    iput v7, v2, Ly4/c;->b:F

    iput v6, v2, Ly4/c;->c:F

    iget-object v1, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v1, v1, Ly4/h;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lx4/i;->drawLabels(Landroid/graphics/Canvas;FLy4/c;)V

    goto :goto_0

    :cond_1
    sget-object v5, Lq4/n;->TOP_INSIDE:Lq4/n;

    if-ne v4, v5, :cond_2

    iput v7, v2, Ly4/c;->b:F

    iput v6, v2, Ly4/c;->c:F

    iget-object v1, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v1, v1, Ly4/h;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iget v0, v3, Lq4/o;->A:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lx4/i;->drawLabels(Landroid/graphics/Canvas;FLy4/c;)V

    goto :goto_0

    :cond_2
    sget-object v5, Lq4/n;->BOTTOM:Lq4/n;

    if-ne v4, v5, :cond_3

    iput v7, v2, Ly4/c;->b:F

    iput v1, v2, Ly4/c;->c:F

    iget-object v1, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v1, v1, Ly4/h;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lx4/i;->drawLabels(Landroid/graphics/Canvas;FLy4/c;)V

    goto :goto_0

    :cond_3
    sget-object v5, Lq4/n;->BOTTOM_INSIDE:Lq4/n;

    if-ne v4, v5, :cond_4

    iput v7, v2, Ly4/c;->b:F

    iput v1, v2, Ly4/c;->c:F

    iget-object v1, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v1, v1, Ly4/h;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iget v0, v3, Lq4/o;->A:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lx4/i;->drawLabels(Landroid/graphics/Canvas;FLy4/c;)V

    goto :goto_0

    :cond_4
    iput v7, v2, Ly4/c;->b:F

    iput v6, v2, Ly4/c;->c:F

    iget-object v3, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v3, v3, Ly4/h;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    invoke-virtual {p0, p1, v3, v2}, Lx4/i;->drawLabels(Landroid/graphics/Canvas;FLy4/c;)V

    iput v7, v2, Ly4/c;->b:F

    iput v1, v2, Ly4/c;->c:F

    iget-object v1, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v1, v1, Ly4/h;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lx4/i;->drawLabels(Landroid/graphics/Canvas;FLy4/c;)V

    :goto_0
    sget-object p0, Ly4/c;->d:Ly4/e;

    invoke-virtual {p0, v2}, Ly4/e;->c(Ly4/d;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-boolean v1, v0, Lq4/a;->q:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lq4/b;->a:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lx4/a;->mAxisLinePaint:Landroid/graphics/Paint;

    iget v0, v0, Lq4/a;->i:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lx4/a;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v1, v1, Lq4/a;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lx4/a;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-object v0, v0, Lq4/o;->B:Lq4/n;

    sget-object v1, Lq4/n;->TOP:Lq4/n;

    if-eq v0, v1, :cond_1

    sget-object v1, Lq4/n;->TOP_INSIDE:Lq4/n;

    if-eq v0, v1, :cond_1

    sget-object v1, Lq4/n;->BOTH_SIDED:Lq4/n;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v0, v0, Ly4/h;->b:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lx4/a;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-object v0, v0, Lq4/o;->B:Lq4/n;

    sget-object v1, Lq4/n;->BOTTOM:Lq4/n;

    if-eq v0, v1, :cond_3

    sget-object v1, Lq4/n;->BOTTOM_INSIDE:Lq4/n;

    if-eq v0, v1, :cond_3

    sget-object v1, Lq4/n;->BOTH_SIDED:Lq4/n;

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v0, v0, Ly4/h;->b:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lx4/a;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public renderGridLines(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-boolean v1, v0, Lq4/a;->p:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lq4/b;->a:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lx4/i;->getGridClippingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lx4/i;->mRenderGridLinesBuffer:[F

    array-length v1, v1

    iget-object v2, p0, Lx4/a;->mAxis:Lq4/a;

    iget v2, v2, Lq4/a;->l:I

    mul-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v1, v1, Lq4/a;->l:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lx4/i;->mRenderGridLinesBuffer:[F

    :cond_1
    iget-object v1, p0, Lx4/i;->mRenderGridLinesBuffer:[F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-object v4, v4, Lq4/a;->k:[F

    div-int/lit8 v5, v3, 0x2

    aget v6, v4, v5

    aput v6, v1, v3

    add-int/lit8 v6, v3, 0x1

    aget v4, v4, v5

    aput v4, v1, v6

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lx4/a;->mTrans:Ly4/f;

    invoke-virtual {v3, v1}, Ly4/f;->d([F)V

    invoke-virtual {p0}, Lx4/i;->setupGridPaint()V

    iget-object v3, p0, Lx4/i;->mRenderGridLinesPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    aget v4, v1, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    invoke-virtual {p0, p1, v4, v5, v3}, Lx4/i;->drawGridLine(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object p1, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-object p1, p1, Lq4/a;->s:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lx4/i;->mRenderLimitLinesBuffer:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v2, 0x1

    aput v1, p0, v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public setupGridPaint()V
    .locals 2

    iget-object v0, p0, Lx4/a;->mGridPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v1, v1, Lq4/a;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lx4/a;->mGridPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v1, v1, Lq4/a;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lx4/a;->mGridPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method
