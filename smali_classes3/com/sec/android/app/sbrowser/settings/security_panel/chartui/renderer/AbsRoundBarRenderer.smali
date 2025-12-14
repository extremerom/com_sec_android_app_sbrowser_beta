.class abstract Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;
.super Lx4/b;
.source "SourceFile"


# instance fields
.field mBuffer:Lo4/a;

.field mCorners:[F

.field mEntrySize:I

.field mGradientEndColor:I

.field mGradientStartColor:I

.field mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu4/a;Lcom/github/mikephil/charting/animation/ChartAnimator;Ly4/h;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lx4/b;-><init>(Lu4/a;Lcom/github/mikephil/charting/animation/ChartAnimator;Ly4/h;)V

    const/16 p3, 0x8

    new-array p3, p3, [F

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mCorners:[F

    const/4 p3, 0x4

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mEntrySize:I

    iput-object p2, p0, Lx4/b;->mChart:Lu4/a;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->setEntrySize()V

    iget-object p2, p0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    const p3, 0x7f060293

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    const p3, 0x3dcccccd    # 0.1f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lx4/b;->mBarBorderPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060098

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x19

    goto :goto_0

    :cond_0
    const/16 p2, 0x4d

    :goto_0
    invoke-static {p1, p2}, LX0/a;->e(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mGradientStartColor:I

    const/4 p2, 0x0

    invoke-static {p1, p2}, LX0/a;->e(II)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mGradientEndColor:I

    return-void
.end method


# virtual methods
.method public drawDataSet(Landroid/graphics/Canvas;Lv4/a;I)V
    .locals 4

    iget-object p1, p0, Lx4/b;->mChart:Lu4/a;

    move-object v0, p2

    check-cast v0, Lr4/b;

    iget-object v1, v0, Lr4/b;->d:Lq4/p;

    check-cast p1, Lp4/c;

    invoke-virtual {p1, v1}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object p1

    iget-object v1, p0, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v1

    iget-object v2, p0, Lx4/e;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v2

    invoke-virtual {p0}, Lx4/b;->initBuffers()V

    iget-object v3, p0, Lx4/b;->mBarBuffers:[Lo4/a;

    aget-object p3, v3, p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    iput v1, p3, Lo4/a;->c:F

    iput v2, p3, Lo4/a;->d:F

    iget-object v1, p0, Lx4/b;->mChart:Lu4/a;

    check-cast v1, Lp4/c;

    iget-object v0, v0, Lr4/b;->d:Lq4/p;

    invoke-virtual {v1, v0}, Lp4/c;->g(Lq4/p;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    iget-object v0, p0, Lx4/b;->mChart:Lu4/a;

    invoke-interface {v0}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v0

    iget v0, v0, Lr4/a;->j:F

    iput v0, p3, Lo4/a;->f:F

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    invoke-virtual {p3, p2}, Lo4/a;->b(Lv4/a;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mBuffer:Lo4/a;

    iget-object p0, p0, Lo4/a;->b:[F

    invoke-virtual {p1, p0}, Ly4/f;->d([F)V

    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lx4/b;->mChart:Lu4/a;

    invoke-interface {v0}, Lu4/a;->getBarData()Lr4/a;

    move-result-object v0

    iget-object v0, v0, Lr4/d;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/a;

    check-cast v0, Lr4/b;

    iget-boolean v0, v0, Lr4/b;->j:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lx4/b;->drawValues(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setBarRadius(F)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mRadius:F

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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/AbsRoundBarRenderer;->mCorners:[F

    return-void
.end method

.method public abstract setEntrySize()V
.end method
