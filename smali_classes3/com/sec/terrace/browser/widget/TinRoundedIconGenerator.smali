.class public Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TinRoundedIconGenerator"


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

    iput p1, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mIconWidthPx:I

    iput p2, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mIconHeightPx:I

    iput p3, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mCornerRadiusPx:I

    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mBackgroundRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

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

    iput p2, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mTextHeight:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float p1, p1

    iput p1, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mTextYOffset:F

    return-void
.end method

.method private getIconTextForUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    const-string p0, "internet"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "internet-native"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance p0, Ljava/net/URI;

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->TAG:Ljava/lang/String;

    const-string p2, "Unable to parse the URL for generating an icon: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object p0
.end method


# virtual methods
.method public generateIconForText(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    iget v0, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mIconWidthPx:I

    iget v1, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mIconHeightPx:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mCornerRadiusPx:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mIconWidthPx:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    iget v4, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mIconHeightPx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mTextHeight:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mTextHeight:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    iget v2, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mTextYOffset:F

    add-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p1, v3, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public generateIconForUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public generateIconForUrl(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->getIconTextForUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->generateIconForText(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
