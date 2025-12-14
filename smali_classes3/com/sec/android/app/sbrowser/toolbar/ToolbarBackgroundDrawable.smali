.class public Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mBoundsF:Landroid/graphics/RectF;

.field private mRoundedClipPath:Landroid/graphics/Path;

.field private final mRoundedCornerRadius:I

.field private final mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mBoundsF:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mRoundedClipPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0715cf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mRoundedCornerRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0715d1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0715d0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x7f060d58

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const p0, 0x7f060d56

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mBoundsF:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mRoundedClipPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mRoundedCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mRoundedClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mRoundedCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mBoundsF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mRoundedClipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;->mRoundedCornerRadius:I

    int-to-float v1, p0

    int-to-float p0, p0

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
