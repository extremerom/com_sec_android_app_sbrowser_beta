.class Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;
.super Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BitmapTransformation;
.source "SourceFile"


# instance fields
.field private final mRadius:I

.field private final mSampling:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BitmapTransformation;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mRadius:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mSampling:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;

    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mRadius:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mRadius:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mSampling:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mSampling:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mRadius:I

    mul-int/lit16 v0, v0, 0x3e8

    const v1, -0x7e308fea

    add-int/2addr v0, v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mSampling:I

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlurTransformation(radius="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mSampling:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Landroid/content/Context;LT3/a;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LT3/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    iget p5, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mSampling:I

    div-int/2addr p1, p5

    div-int/2addr p4, p5

    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p2, p1, p4, p5}, LT3/a;->l(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BitmapTransformation;->setCanvasBitmapDensity(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mSampling:I

    int-to-float p5, p4

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p5, v0, p5

    int-to-float p4, p4

    div-float/2addr v0, p4

    invoke-virtual {p2, p5, v0}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    const/4 p5, 0x2

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p5, p5, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mRadius:I

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/FastBlur;->blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.sec.android.app.sbrowser.beta.1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurTransformation;->mSampling:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, LQ3/g;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
