.class public Lcom/sec/android/app/sbrowser/quickaccess/graphics/ResizedMaskDrawable;
.super Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskShadow(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBackgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskShadow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f3851ec    # 0.72f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget-object v2, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskShadow:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskShadow:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget-object v3, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskShadow:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/4 v0, 0x1

    invoke-static {v2, v4, p0, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
