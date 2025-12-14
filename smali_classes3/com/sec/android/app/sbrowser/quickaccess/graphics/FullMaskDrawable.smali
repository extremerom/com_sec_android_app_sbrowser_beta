.class public Lcom/sec/android/app/sbrowser/quickaccess/graphics/FullMaskDrawable;
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
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private updateScaleMatrix()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v0

    int-to-float v2, v2

    div-float v4, v0, v2

    int-to-float v1, v1

    int-to-float v3, v3

    div-float v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p0, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskShadow(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/FullMaskDrawable;->updateScaleMatrix()V

    return-void
.end method
