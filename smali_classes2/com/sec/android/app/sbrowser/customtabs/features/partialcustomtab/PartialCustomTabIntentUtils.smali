.class public Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static configureIntentForResizableCustomTab(Landroid/content/Context;Landroid/content/Intent;ZZ)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getInitialActivityHeightFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-static {p2, v0, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getInitialActivityHeight(ZIZ)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getInitialActivityWidthFromIntent(Landroid/content/Intent;)I

    move-result v1

    invoke-static {p2, v1, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getInitialActivityWidth(ZIZ)I

    move-result p2

    if-gtz v0, :cond_0

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const-class p2, Lcom/sec/android/app/sbrowser/customtabs/TranslucentCustomTabActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public static getActivityBreakPointFromIntent(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_BREAKPOINT_DP"

    const/16 v1, 0x348

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    return v1
.end method

.method public static getActivitySideSheetDecorationTypeFromIntent(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_DECORATION_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x2

    :cond_1
    return p0
.end method

.method public static getActivitySideSheetRoundedCornersPositionFromIntent(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public static getBackgroundInteractBehavior(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "androidx.browser.customtabs.extra.ENABLE_BACKGROUND_INTERACTION"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getContentScrollMayResizeTab(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SCROLL_CONTENT_RESIZE"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInitialActivityHeight(ZIZ)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public static getInitialActivityHeightFromIntent(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_HEIGHT_IN_PIXEL"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const-string v0, "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_HEIGHT_PX"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getInitialActivityWidth(ZIZ)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public static getInitialActivityWidthFromIntent(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_WIDTH_PX"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getToolbarCornerRadiusFromIntent(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070388

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-string v1, "androidx.browser.customtabs.extra.TOOLBAR_CORNER_RADIUS_IN_PIXEL"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    return v1

    :cond_0
    const-string v1, "androidx.browser.customtabs.extra.TOOLBAR_CORNER_RADIUS_DP"

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static hasBackgroundInteractBehavior(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "androidx.browser.customtabs.extra.ENABLE_BACKGROUND_INTERACTION"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasInitialActivityHeightPx(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_HEIGHT_IN_PIXEL"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_HEIGHT_PX"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static hasToolbarCornerRadiusDp(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "androidx.browser.customtabs.extra.TOOLBAR_CORNER_RADIUS_IN_PIXEL"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "androidx.browser.customtabs.extra.TOOLBAR_CORNER_RADIUS_DP"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
