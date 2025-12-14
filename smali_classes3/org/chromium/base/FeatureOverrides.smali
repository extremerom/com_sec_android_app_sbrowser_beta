.class public Lorg/chromium/base/FeatureOverrides;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/FeatureOverrides$Builder;,
        Lorg/chromium/base/FeatureOverrides$TestValues;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static sTestFeatures:Lorg/chromium/base/FeatureOverrides$TestValues;


# direct methods
.method public static getTestValueForFeature(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lorg/chromium/base/FeatureOverrides;->sTestFeatures:Lorg/chromium/base/FeatureOverrides$TestValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/chromium/base/FeatureOverrides$TestValues;->getFeatureFlagOverride(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTestValueForFeatureStrict(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {p0}, Lorg/chromium/base/FeatureOverrides;->getTestValueForFeature(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/base/FeatureList;->getDisableNativeForTesting()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No test value configured for "

    const-string v2, " and native is not available to provide a default value. Use @EnableFeatures or @DisableFeatures to provide test values for the flag."

    invoke-static {v1, p0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getTestValueForFieldTrialParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/base/FeatureOverrides;->sTestFeatures:Lorg/chromium/base/FeatureOverrides$TestValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lorg/chromium/base/FeatureOverrides$TestValues;->getFieldTrialParamOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
