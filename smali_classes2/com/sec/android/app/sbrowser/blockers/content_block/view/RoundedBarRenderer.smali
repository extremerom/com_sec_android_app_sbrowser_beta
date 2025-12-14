.class public Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;
.super Lx4/b;
.source "SourceFile"


# instance fields
.field private mBuffer:Lo4/a;

.field private mChartBar:Landroid/graphics/Path;

.field private mChartBarOutline:Landroid/graphics/Path;

.field private mGradientEnd:I

.field private mGradientStart:I

.field private mRadius:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu4/a;Lcom/github/mikephil/charting/animation/ChartAnimator;Ly4/h;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lx4/b;-><init>(Lu4/a;Lcom/github/mikephil/charting/animation/ChartAnimator;Ly4/h;)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mGradientStart:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mGradientEnd:I

    iput-object p2, p0, Lx4/b;->mChart:Lu4/a;

    iget-object p2, p0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    const p3, 0x7f060293

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mChartBar:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public drawDataSet(Landroid/graphics/Canvas;Lv4/a;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lx4/b;->mChart:Lu4/a;

    move-object v4, v2

    check-cast v4, Lr4/b;

    iget-object v5, v4, Lr4/b;->d:Lq4/p;

    check-cast v3, Lp4/c;

    invoke-virtual {v3, v5}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v3

    iget-object v5, v0, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    iget-object v6, v0, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lx4/b;->initBuffers()V

    iget-object v7, v0, Lx4/b;->mBarBuffers:[Lo4/a;

    aget-object v7, v7, p3

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    iput v5, v7, Lo4/a;->c:F

    iput v6, v7, Lo4/a;->d:F

    iget-object v5, v0, Lx4/b;->mChart:Lu4/a;

    check-cast v5, Lp4/c;

    iget-object v4, v4, Lr4/b;->d:Lq4/p;

    invoke-virtual {v5, v4}, Lp4/c;->g(Lq4/p;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    iget-object v5, v0, Lx4/b;->mChart:Lu4/a;

    invoke-interface {v5}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v5

    iget v5, v5, Lr4/a;->j:F

    iput v5, v4, Lo4/a;->f:F

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    invoke-virtual {v4, v2}, Lo4/a;->b(Lv4/a;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    iget-object v2, v2, Lo4/a;->b:[F

    invoke-virtual {v3, v2}, Ly4/f;->d([F)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    iget-object v3, v3, Lo4/a;->b:[F

    array-length v3, v3

    if-ge v2, v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    iget-object v3, v3, Lo4/a;->b:[F

    aget v5, v3, v2

    add-int/lit8 v11, v2, 0x1

    aget v6, v3, v11

    add-int/lit8 v12, v2, 0x2

    aget v7, v3, v12

    add-int/lit8 v13, v2, 0x3

    aget v8, v3, v13

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mRadius:[F

    sget-object v19, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v10, v19

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    iget-object v3, v3, Lo4/a;->b:[F

    aget v4, v3, v11

    aget v3, v3, v13

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    iget-object v4, v0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v3, v0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    iget-object v4, v4, Lo4/a;->b:[F

    aget v4, v4, v12

    invoke-virtual {v3, v4}, Ly4/h;->a(F)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    iget-object v4, v4, Lo4/a;->b:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ly4/h;->b(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/LinearGradient;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    iget-object v5, v5, Lo4/a;->b:[F

    aget v22, v5, v13

    aget v24, v5, v11

    iget v5, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mGradientStart:I

    iget v6, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mGradientEnd:I

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v4

    move/from16 v25, v5

    move/from16 v26, v6

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mChartBar:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mChartBar:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mBuffer:Lo4/a;

    iget-object v4, v4, Lo4/a;->b:[F

    aget v15, v4, v2

    aget v16, v4, v11

    aget v17, v4, v12

    aget v18, v4, v13

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mChartBar:Landroid/graphics/Path;

    iget-object v5, v0, Lx4/e;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mChartBar:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    iget-object p0, p0, Lx4/e;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBarGradientColors(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mGradientStart:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mGradientEnd:I

    return-void
.end method

.method public setBarRadius(F)V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x0

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/RoundedBarRenderer;->mRadius:[F

    return-void
.end method
