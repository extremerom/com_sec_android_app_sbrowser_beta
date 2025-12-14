.class public Lorg/chromium/content_public/browser/HostZoomMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AVAILABLE_ZOOM_FACTORS:[D

.field public static final TEXT_SIZE_MULTIPLIER_RATIO:F = 1.2f

.field private static sSystemFontScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/content_public/browser/HostZoomMap;->AVAILABLE_ZOOM_FACTORS:[D

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/chromium/content_public/browser/HostZoomMap;->sSystemFontScale:F

    return-void

    :array_0
    .array-data 8
        -0x3ff199999999999aL    # -3.8
        -0x3ffe666666666666L    # -2.2
        -0x4006b851eb851eb8L    # -1.58
        -0x400c7ae147ae147bL    # -1.22
        -0x401d70a3d70a3d71L    # -0.58
        0x0
        0x3fe0a3d70a3d70a4L    # 0.52
        0x3ff3851eb851eb85L    # 1.22
        0x3ff8f5c28f5c28f6L    # 1.56
        0x4001c28f5c28f5c3L    # 2.22
        0x40088f5c28f5c28fL    # 3.07
        0x400e666666666666L    # 3.8
        0x40141eb851eb851fL    # 5.03
        0x40181eb851eb851fL    # 6.03
    .end array-data
.end method

.method public static getSystemFontScale()F
    .locals 1

    sget v0, Lorg/chromium/content_public/browser/HostZoomMap;->sSystemFontScale:F

    return v0
.end method

.method public static setShouldAdjustForOSLevelForTesting(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lorg/chromium/content/browser/HostZoomMapImpl;->setShouldAdjustForOSLevelForTesting(Z)V

    return-void
.end method

.method public static setSystemFontScale(F)V
    .locals 0

    sput p0, Lorg/chromium/content_public/browser/HostZoomMap;->sSystemFontScale:F

    return-void
.end method

.method public static setSystemFontScaleForTesting(F)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lorg/chromium/content/browser/HostZoomMapImpl;->setSystemFontScaleForTesting(F)V

    return-void
.end method
