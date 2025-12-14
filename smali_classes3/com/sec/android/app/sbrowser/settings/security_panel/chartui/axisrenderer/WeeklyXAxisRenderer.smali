.class public Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;
.super Lx4/i;
.source "SourceFile"


# instance fields
.field private mLabelBgRadius:F

.field private mLabelBgYOffset:I

.field private mLabelMargin:F

.field private mLabelPaint:Landroid/graphics/Paint;

.field mPositions:[F

.field private mSelectedInfoLoaded:Z

.field private mSelectedLabel:I

.field private mSelectedLabelBgPaint:Landroid/graphics/Paint;

.field private mSelectedLabelPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ly4/h;Lq4/o;Ly4/f;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lx4/i;-><init>(Ly4/h;Lq4/o;Ly4/f;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    const p3, 0x7f060863

    invoke-virtual {p4, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070c90

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    const v1, 0x7f060864

    invoke-virtual {p4, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c91

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelMargin:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

    const p2, 0x7f060862

    invoke-virtual {p4, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c8f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelBgRadius:F

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c92

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelBgYOffset:I

    return-void
.end method


# virtual methods
.method public drawLabels(Landroid/graphics/Canvas;FLy4/c;)V
    .locals 9

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lx4/i;->mXAxis:Lq4/o;

    iget v0, v0, Lq4/a;->l:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mPositions:[F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mPositions:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-object v3, v3, Lq4/a;->k:[F

    div-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lx4/a;->mTrans:Ly4/f;

    invoke-virtual {v1, v2}, Ly4/f;->d([F)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelMargin:F

    add-float/2addr p2, v1

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mPositions:[F

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget v5, v1, v0

    iget-object v1, p0, Lx4/h;->mViewPortHandler:Ly4/h;

    invoke-virtual {v1, v5}, Ly4/h;->a(F)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v5}, Ly4/h;->b(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v1}, Lq4/a;->d()Ls4/b;

    move-result-object v1

    iget-object v2, p0, Lx4/i;->mXAxis:Lq4/o;

    iget-object v3, v2, Lq4/a;->k:[F

    div-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    invoke-interface {v1, v3, v2}, Ls4/b;->getFormattedValue(FLq4/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lx4/i;->mXAxis:Lq4/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabel:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_2
    :goto_2
    float-to-int v1, p2

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelBgYOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mLabelBgRadius:F

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    :goto_3
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lx4/i;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLy4/c;F)V

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setSelectedLabel(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->mSelectedLabel:I

    return-void
.end method
