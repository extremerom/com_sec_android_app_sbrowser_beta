.class public final Lorg/chromium/components/search_engines/SearchEnginesFeatureUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public static clayBlockingDialogDefaultBrowserPromoSuppressedMillis()I
    .locals 2

    const-string v0, "default_browser_promo_suppressed_millis"

    const v1, 0x5265c00

    invoke-static {v0, v1}, Lorg/chromium/components/search_engines/SearchEnginesFeatureUtils;->clayBlockingFeatureParamAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static clayBlockingDialogTimeoutMillis()I
    .locals 2

    const-string v0, "dialog_timeout_millis"

    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/chromium/components/search_engines/SearchEnginesFeatureUtils;->clayBlockingFeatureParamAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static clayBlockingEnableVerboseLogging()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static clayBlockingFeatureParamAsBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/components/search_engines/SearchEnginesFeatureMap;->getInstance()Lorg/chromium/components/search_engines/SearchEnginesFeatureMap;

    move-result-object v0

    const-string v1, "ClayBlocking"

    invoke-virtual {v0, v1, p0, p1}, Lorg/chromium/base/FeatureMap;->getFieldTrialParamByFeatureAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static clayBlockingFeatureParamAsInt(Ljava/lang/String;I)I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/components/search_engines/SearchEnginesFeatureMap;->getInstance()Lorg/chromium/components/search_engines/SearchEnginesFeatureMap;

    move-result-object v0

    const-string v1, "ClayBlocking"

    invoke-virtual {v0, v1, p0, p1}, Lorg/chromium/base/FeatureMap;->getFieldTrialParamByFeatureAsInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static clayBlockingIsDarkLaunch()Z
    .locals 2

    const-string v0, "is_dark_launch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/components/search_engines/SearchEnginesFeatureUtils;->clayBlockingFeatureParamAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
