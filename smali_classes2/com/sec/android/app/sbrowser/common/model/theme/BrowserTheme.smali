.class public Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBottomTextColor:I

.field private final mIndicatorColor:I

.field private mIsLightTheme:Z

.field private final mMoreTextColor:I

.field private final mProgressBarColor:I

.field private final mShadowColor:I

.field private final mThemeColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result v0

    const-string v1, "si__BrowserTheme"

    if-nez v0, :cond_0

    const-string v0, "Theme_Color, invalid color in constructor "

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    const/4 v6, 0x2

    aget v0, v0, v6

    const v7, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gtz v0, :cond_2

    const-string p1, "Theme_Color : black theme"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    const/high16 v0, -0x1000000

    if-ne p1, v0, :cond_1

    const/16 p1, 0xff

    const/16 v0, 0x25

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mThemeColor:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mThemeColor:I

    :goto_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mThemeColor:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mIndicatorColor:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mBottomTextColor:I

    const/4 p1, 0x0

    aput p1, v3, v8

    const p1, 0x3f666666    # 0.9f

    aput p1, v3, v6

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mProgressBarColor:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mMoreTextColor:I

    iget p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mThemeColor:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mShadowColor:I

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mIsLightTheme:Z

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->shouldUseLightForegroundOnBackground(I)Z

    move-result p1

    const v0, 0x3f19999a    # 0.6f

    if-eqz p1, :cond_3

    const-string p1, "Theme_Color : dark theme"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mThemeColor:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mIndicatorColor:I

    const/16 v1, 0xcd

    const/16 v2, 0xfa

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mProgressBarColor:I

    aget v3, v4, v6

    mul-float/2addr v3, v0

    aput v3, v4, v6

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mBottomTextColor:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mMoreTextColor:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mShadowColor:I

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mIsLightTheme:Z

    goto :goto_1

    :cond_3
    const-string p1, "Theme_Color : light theme"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mThemeColor:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mIndicatorColor:I

    aget v1, v3, v6

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    aput v1, v3, v6

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mProgressBarColor:I

    aget v1, v4, v6

    mul-float/2addr v1, v0

    aput v1, v4, v6

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mBottomTextColor:I

    aget v0, v5, v6

    mul-float/2addr v0, v2

    aput v0, v5, v6

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mMoreTextColor:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mShadowColor:I

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mIsLightTheme:Z

    :goto_1
    return-void
.end method

.method public static getContrastForColor(I)F
    .locals 11

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

.method public static isValidThemeColor(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldUseLightForegroundOnBackground(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getContrastForColor(I)F

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


# virtual methods
.method public getBottomTextColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mBottomTextColor:I

    return p0
.end method

.method public getIndicatorColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mIndicatorColor:I

    return p0
.end method

.method public getMoreTextColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mMoreTextColor:I

    return p0
.end method

.method public getThemeColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mThemeColor:I

    return p0
.end method

.method public isDarkTheme()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mIsLightTheme:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isLightTheme()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->mIsLightTheme:Z

    return p0
.end method
