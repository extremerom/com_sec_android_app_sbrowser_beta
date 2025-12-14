.class public Lorg/chromium/media/MaxAnticipatedResolutionEstimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static getNativeResolution()Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;
    .locals 5

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/media/DisplayCompat;->getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Lorg/chromium/media/DisplayCompat$ModeCompat;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/chromium/media/DisplayCompat$ModeCompat;->isNative()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;

    invoke-virtual {v3}, Lorg/chromium/media/DisplayCompat$ModeCompat;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {v3}, Lorg/chromium/media/DisplayCompat$ModeCompat;->getPhysicalHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;-><init>(II)V

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getScreenResolution(Landroid/media/MediaFormat;)Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;
    .locals 3

    invoke-static {}, Lorg/chromium/media/MaxAnticipatedResolutionEstimator;->getNativeResolution()Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;

    const-string v1, "width"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;-><init>(II)V

    :cond_0
    const-string v1, "mime"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "video/hevc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "video/av01"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, v0, Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;->mWidth:I

    const/16 v1, 0x780

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;->mWidth:I

    iget p0, v0, Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;->mHeight:I

    const/16 v1, 0x438

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;->mHeight:I

    :cond_1
    return-object v0
.end method
