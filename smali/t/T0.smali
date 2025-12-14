.class public final Lt/T0;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:Landroid/content/res/ColorStateList;

.field public c:I

.field public final d:Z

.field public e:I

.field public final f:Landroid/graphics/RectF;

.field public g:I

.field public final h:LZ2/f;

.field public final i:Lt/S0;

.field public final synthetic j:Landroidx/appcompat/widget/SeslProgressBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslProgressBar;ZLandroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lt/T0;->j:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lt/T0;->a:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Lt/T0;->c:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lt/T0;->f:Landroid/graphics/RectF;

    new-instance v0, LZ2/f;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LZ2/f;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lt/T0;->h:LZ2/f;

    new-instance v0, Lt/S0;

    invoke-direct {v0, p0}, Lt/S0;-><init>(Lt/T0;)V

    iput-object v0, p0, Lt/T0;->i:Lt/S0;

    iput-boolean p2, p0, Lt/T0;->d:Z

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p3, p0, Lt/T0;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iput p2, p0, Lt/T0;->g:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    iput p1, p0, Lt/T0;->e:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v6, p0, Lt/T0;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lt/T0;->j:Landroidx/appcompat/widget/SeslProgressBar;

    iget v1, v0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    iget v1, p0, Lt/T0;->c:I

    ushr-int/lit8 v2, v1, 0x7

    add-int/2addr v1, v2

    mul-int/2addr v1, v7

    ushr-int/lit8 v1, v1, 0x8

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lt/T0;->f:Landroid/graphics/RectF;

    iget v2, v0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, v0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, v0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v8, v0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    int-to-float v8, v8

    div-float/2addr v8, v3

    sub-float/2addr v5, v8

    iget v3, v0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    int-to-float v3, v3

    sub-float/2addr v5, v3

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget v2, v0, Landroidx/appcompat/widget/SeslProgressBar;->u:I

    iget v0, v0, Landroidx/appcompat/widget/SeslProgressBar;->s:I

    sub-int/2addr v2, v0

    if-lez v2, :cond_0

    iget v3, p0, Lt/T0;->e:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean p0, p0, Lt/T0;->d:Z

    if-eqz p0, :cond_1

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/high16 p0, 0x43b40000    # 360.0f

    mul-float v3, v0, p0

    const/4 v4, 0x0

    const/high16 v2, 0x43870000    # 270.0f

    move-object v0, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lt/T0;->h:LZ2/f;

    return-object p0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object p0, p0, Lt/T0;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/16 v0, 0xff

    if-ne p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, -0x3

    return p0
.end method

.method public final isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onStateChange([I)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lt/T0;->b:Landroid/content/res/ColorStateList;

    iget v2, p0, Lt/T0;->g:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v1, p0, Lt/T0;->g:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lt/T0;->g:I

    iget-object v1, p0, Lt/T0;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lt/T0;->c:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lt/T0;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lt/T0;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lt/T0;->g:I

    iget-object v0, p0, Lt/T0;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
