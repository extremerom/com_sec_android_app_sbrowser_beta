.class public Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RoundedIconGenerator"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundRect:Landroid/graphics/RectF;

.field private final mCornerRadiusPx:I

.field private final mIconHeightPx:I

.field private final mIconWidthPx:I

.field private final mTextHeight:F

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mTextYOffset:F


# direct methods
.method public constructor <init>(IIIIF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mIconWidthPx:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mIconHeightPx:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mCornerRadiusPx:I

    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mBackgroundRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p3, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mTextHeight:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mTextYOffset:F

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIII)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int v3, p2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float p3, p4

    mul-float/2addr p2, p3

    float-to-int v4, p2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p6

    mul-float v6, p1, p2

    move-object v1, p0

    move v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;-><init>(IIIIF)V

    return-void
.end method

.method private static getIconTextForUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse the URL for generating an icon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method


# virtual methods
.method public generateIconForText(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mIconWidthPx:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mIconHeightPx:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mCornerRadiusPx:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mIconWidthPx:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    iget v4, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mIconHeightPx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mTextHeight:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mTextHeight:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mTextYOffset:F

    add-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p1, v3, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public generateIconForUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->getIconTextForUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->generateIconForText(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
