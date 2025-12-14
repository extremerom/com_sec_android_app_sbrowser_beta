.class public Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyYAxisRenderer;
.super Lx4/j;
.source "SourceFile"


# instance fields
.field private mLabelPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ly4/h;Lq4/r;Ly4/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lx4/j;-><init>(Ly4/h;Lq4/r;Ly4/f;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyYAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    const p2, 0x7f060864

    invoke-virtual {p4, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyYAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c90

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyYAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyYAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public drawYLabels(Landroid/graphics/Canvas;F[FF)V
    .locals 5

    iget-object v0, p0, Lx4/j;->mYAxis:Lq4/r;

    iget-boolean v1, v0, Lq4/r;->A:Z

    xor-int/lit8 v1, v1, 0x1

    iget-boolean v2, v0, Lq4/r;->B:Z

    if-eqz v2, :cond_0

    iget v0, v0, Lq4/a;->l:I

    goto :goto_0

    :cond_0
    iget v0, v0, Lq4/a;->l:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v2, p0, Lx4/a;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyYAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    :goto_1
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

    goto :goto_1

    :cond_1
    return-void
.end method
