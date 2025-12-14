.class public Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;
.super Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;
.source "SourceFile"


# instance fields
.field private mChartBar:Landroid/graphics/Path;

.field private mChartBarOutline:Landroid/graphics/Path;

.field private mChartColors:[I

.field private mContext:Landroid/content/Context;

.field private mStackedDataSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu4/a;Lcom/github/mikephil/charting/animation/ChartAnimator;Ly4/h;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;-><init>(Landroid/content/Context;Lu4/a;Lcom/github/mikephil/charting/animation/ChartAnimator;Ly4/h;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mStackedDataSize:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartBar:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public drawDataSet(Landroid/graphics/Canvas;Lv4/a;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->drawDataSet(Landroid/graphics/Canvas;Lv4/a;I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    iget-object v3, v3, Lo4/a;->b:[F

    array-length v3, v3

    if-ge v2, v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    :goto_1
    iget v5, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mEntrySize:I

    if-ge v4, v5, :cond_0

    add-int v5, v2, v4

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    iget-object v6, v6, Lo4/a;->b:[F

    array-length v7, v6

    if-ge v5, v7, :cond_0

    aget v5, v6, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    iget-object v4, v4, Lo4/a;->b:[F

    aget v5, v4, v2

    add-int/lit8 v6, v2, 0x2

    aget v6, v4, v6

    add-int/lit8 v7, v2, 0x3

    aget v10, v4, v7

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v3, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mCorners:[F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v4, v6, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    iget-object v4, v4, Lo4/a;->b:[F

    aget v4, v4, v7

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    iget-object v5, v0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move v4, v2

    :goto_2
    iget v5, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mEntrySize:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_4

    add-int/lit8 v5, v4, 0x3

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    iget-object v6, v6, Lo4/a;->b:[F

    array-length v7, v6

    if-ge v5, v7, :cond_4

    iget-object v7, v0, Lx4/h;->mViewPortHandler:Ly4/h;

    add-int/lit8 v8, v4, 0x2

    aget v6, v6, v8

    invoke-virtual {v7, v6}, Ly4/h;->a(F)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    iget-object v6, v0, Lx4/h;->mViewPortHandler:Ly4/h;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    iget-object v7, v7, Lo4/a;->b:[F

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ly4/h;->b(F)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    iget-object v6, v0, Lx4/e;->mRenderPaint:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartColors:[I

    div-int/lit8 v9, v4, 0x4

    iget v11, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mStackedDataSize:I

    rem-int/2addr v9, v11

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartBar:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartBar:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    iget-object v6, v6, Lo4/a;->b:[F

    aget v12, v6, v4

    add-int/lit8 v7, v4, 0x1

    aget v13, v6, v7

    aget v14, v6, v8

    aget v15, v6, v5

    sget-object v16, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartBar:Landroid/graphics/Path;

    iget-object v6, v0, Lx4/e;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    :cond_4
    :goto_4
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/LinearGradient;

    add-float/2addr v3, v10

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v12, v3, v6

    iget v13, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mGradientStartColor:I

    iget v14, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mGradientEndColor:I

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v3, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mEntrySize:I

    add-int/2addr v2, v3

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public bridge synthetic drawValues(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->drawValues(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic setBarRadius(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->setBarRadius(F)V

    return-void
.end method

.method public setEntrySize()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mStackedDataSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mEntrySize:I

    return-void
.end method

.method public setStackedBarColors([I)V
    .locals 5

    array-length v0, p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mStackedDataSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartColors:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mStackedDataSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mChartColors:[I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mContext:Landroid/content/Context;

    rem-int v4, v1, v0

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStackedDataSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->mStackedDataSize:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->setEntrySize()V

    return-void
.end method
