.class public abstract Lorg/chromium/ui/display/DisplayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sUiScalingFactorForAutomotiveOverride:Ljava/lang/Float;

.field private static sUiScalingFactorForXrOverride:Ljava/lang/Float;


# direct methods
.method public static getCurrentSmallestScreenWidth(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getNonMultiDisplay(Landroid/content/Context;)Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    if-lt v1, v2, :cond_0

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getWindowContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getWindowContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-static {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-static {p0}, LT6/a;->h(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Lorg/chromium/ui/display/DisplayUtil;->pxToDp(Lorg/chromium/ui/display/DisplayAndroid;I)I

    move-result p0

    return p0

    :cond_1
    invoke-static {v0}, Lorg/chromium/ui/display/DisplayUtil;->getSmallestWidth(Lorg/chromium/ui/display/DisplayAndroid;)I

    move-result p0

    invoke-static {v0, p0}, Lorg/chromium/ui/display/DisplayUtil;->pxToDp(Lorg/chromium/ui/display/DisplayAndroid;I)I

    move-result p0

    return p0
.end method

.method public static getCurrentSmallestScreenWidthAllowingFallback(Landroid/content/Context;)I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lj9/a;->z(Landroid/content/Context;)Z

    move-result v0

    goto :goto_1

    :cond_0
    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/chromium/ui/display/DisplayUtil;->getCurrentSmallestScreenWidth(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_3
    invoke-static {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getNonMultiDisplay(Landroid/content/Context;)Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/ui/display/DisplayUtil;->getSmallestWidth(Lorg/chromium/ui/display/DisplayAndroid;)I

    move-result v0

    invoke-static {p0, v0}, Lorg/chromium/ui/display/DisplayUtil;->pxToDp(Lorg/chromium/ui/display/DisplayAndroid;I)I

    move-result p0

    return p0
.end method

.method public static getSmallestWidth(Lorg/chromium/ui/display/DisplayAndroid;)I
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayHeight()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static getTargetScalingFactorForAutomotive(Landroid/content/Context;)F
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lorg/chromium/ui/R$dimen;->automotive_ui_scale_factor:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static getUiDensityForAutomotive(Landroid/content/Context;I)I
    .locals 1

    sget-object v0, Lorg/chromium/ui/display/DisplayUtil;->sUiScalingFactorForAutomotiveOverride:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/chromium/ui/display/DisplayUtil;->getTargetScalingFactorForAutomotive(Landroid/content/Context;)F

    move-result p0

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x41a00000    # 20.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    mul-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static getUiDensityForXr(Landroid/content/Context;I)I
    .locals 1

    sget-object v0, Lorg/chromium/ui/display/DisplayUtil;->sUiScalingFactorForXrOverride:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/chromium/ui/display/DisplayUtil;->getUiScalingFactorForXrFromResource(Landroid/content/Context;)F

    move-result p0

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x41200000    # 10.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private static getUiScalingFactorForXrFromResource(Landroid/content/Context;)F
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lorg/chromium/ui/R$dimen;->xr_ui_scale_factor:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static pxToDp(Lorg/chromium/ui/display/DisplayAndroid;I)I
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDipScale()F

    move-result p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static scaleUpDisplayMetrics(ILandroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 2

    int-to-float v0, p0

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget p0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p0, v0

    iput p0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget p0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float/2addr p0, v0

    iput p0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    return-object p1
.end method

.method public static scaleUpDisplayMetricsForAutomotive(Landroid/content/Context;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 1

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p0, v0}, Lorg/chromium/ui/display/DisplayUtil;->getUiDensityForAutomotive(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0, p1}, Lorg/chromium/ui/display/DisplayUtil;->scaleUpDisplayMetrics(ILandroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static scaleUpDisplayMetricsForXr(Landroid/content/Context;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 1

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p0, v0}, Lorg/chromium/ui/display/DisplayUtil;->getUiDensityForXr(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0, p1}, Lorg/chromium/ui/display/DisplayUtil;->scaleUpDisplayMetrics(ILandroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method
