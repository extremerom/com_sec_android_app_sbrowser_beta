.class public Lorg/chromium/content/browser/HostZoomMapImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/HostZoomMapImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sShouldAdjustForOSLevelForTesting:Z


# direct methods
.method public static synthetic a(F)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/HostZoomMapImpl;->lambda$setSystemFontScaleForTesting$0(F)V

    return-void
.end method

.method public static adjustZoomLevel(DF)D
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lorg/chromium/base/MathUtils;->areFloatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/HostZoomMapImpl;->shouldAdjustForOSLevel()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v0, p2

    const-wide v2, 0x3ff3333340000000L    # 1.2000000476837158

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/chromium/base/MathUtils;->roundTwoDecimalPlaces(D)D

    move-result-wide p0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static synthetic b(Z)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/HostZoomMapImpl;->lambda$setShouldAdjustForOSLevelForTesting$1(Z)V

    return-void
.end method

.method public static buildSiteZoomInfo(Ljava/lang/String;D)Lorg/chromium/content_public/browser/SiteZoomInfo;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/SiteZoomInfo;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content_public/browser/SiteZoomInfo;-><init>(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static getAdjustedZoomLevel(D)D
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content_public/browser/HostZoomMap;->getSystemFontScale()F

    move-result v0

    invoke-static {}, Lorg/chromium/content/browser/HostZoomMapImpl;->shouldAdjustForOSLevel()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    invoke-static {p0, p1, v0}, Lorg/chromium/content/browser/HostZoomMapImpl;->adjustZoomLevel(DF)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$setShouldAdjustForOSLevelForTesting$1(Z)V
    .locals 0

    sput-boolean p0, Lorg/chromium/content/browser/HostZoomMapImpl;->sShouldAdjustForOSLevelForTesting:Z

    return-void
.end method

.method private static synthetic lambda$setSystemFontScaleForTesting$0(F)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content_public/browser/HostZoomMap;->setSystemFontScale(F)V

    return-void
.end method

.method public static setShouldAdjustForOSLevelForTesting(Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNativeForTesting;
    .end annotation

    sget-boolean v0, Lorg/chromium/content/browser/HostZoomMapImpl;->sShouldAdjustForOSLevelForTesting:Z

    sput-boolean p0, Lorg/chromium/content/browser/HostZoomMapImpl;->sShouldAdjustForOSLevelForTesting:Z

    new-instance p0, Lorg/chromium/base/library_loader/a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/base/library_loader/a;-><init>(ZI)V

    invoke-static {p0}, Lorg/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setSystemFontScaleForTesting(F)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNativeForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/content_public/browser/HostZoomMap;->getSystemFontScale()F

    move-result v0

    invoke-static {p0}, Lorg/chromium/content_public/browser/HostZoomMap;->setSystemFontScale(F)V

    new-instance p0, Lorg/chromium/content/browser/i;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/i;-><init>(F)V

    invoke-static {p0}, Lorg/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static shouldAdjustForOSLevel()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/content/browser/HostZoomMapImpl;->sShouldAdjustForOSLevelForTesting:Z

    return v0
.end method
