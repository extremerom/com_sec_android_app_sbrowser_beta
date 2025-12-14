.class public Lorg/chromium/ui/util/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final INVALID_COLOR:J = 0x80000000L


# direct methods
.method private static getContrastForColor(I)F
    .locals 11
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    const v1, 0x3d20e411    # 0.03928f

    cmpg-float v3, v0, v1

    const-wide v4, 0x4003333340000000L    # 2.4000000953674316

    const v6, 0x3f870a3d    # 1.055f

    const v7, 0x3d6147ae    # 0.055f

    const v8, 0x414eb852    # 12.92f

    if-gez v3, :cond_0

    div-float/2addr v0, v8

    goto :goto_0

    :cond_0
    add-float/2addr v0, v7

    div-float/2addr v0, v6

    float-to-double v9, v0

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v0, v9

    :goto_0
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    div-float/2addr v2, v8

    goto :goto_1

    :cond_1
    add-float/2addr v2, v7

    div-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    :goto_1
    cmpg-float v1, p0, v1

    if-gez v1, :cond_2

    div-float/2addr p0, v8

    goto :goto_2

    :cond_2
    add-float/2addr p0, v7

    div-float/2addr p0, v6

    float-to-double v6, p0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float p0, v3

    :goto_2
    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    const v1, 0x3f371759    # 0.7152f

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    const v0, 0x3d93dd98    # 0.0722f

    mul-float/2addr p0, v0

    add-float/2addr p0, v2

    const v0, 0x3d4ccccd    # 0.05f

    add-float/2addr p0, v0

    const v0, 0x3f866666    # 1.05f

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public static getDarkenedColor(IF)I
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    aget v1, v0, p0

    mul-float/2addr v1, p1

    aput v1, v0, p0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public static getDarkenedColorForStatusBar(I)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const v0, 0x3f19999a    # 0.6f

    invoke-static {p0, v0}, Lorg/chromium/ui/util/ColorUtils;->getDarkenedColor(IF)I

    move-result p0

    return p0
.end method

.method public static inNightMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldUseLightForegroundOnBackground(I)Z
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p0}, Lorg/chromium/ui/util/ColorUtils;->getContrastForColor(I)F

    move-result p0

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
