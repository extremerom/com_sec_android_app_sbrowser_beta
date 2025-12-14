.class public Lorg/chromium/ui/base/TouchDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method private static availablePointerAndHoverTypes()[I
    .locals 12
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_8

    aget v7, v0, v3

    :try_start_0
    invoke-static {v7}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v7}, Landroid/view/InputDevice;->getSources()I

    move-result v7

    const/16 v8, 0x2002

    invoke-static {v7, v8}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v9

    const v10, 0x10004

    const v11, 0x100008

    if-nez v9, :cond_2

    const/16 v9, 0x4002

    invoke-static {v7, v9}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v7, v11}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v7, v10}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    move v6, v2

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    or-int/lit8 v4, v4, 0x4

    :cond_3
    const/16 v9, 0x1002

    invoke-static {v7, v9}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "ReportAllAvailablePointerTypes"

    invoke-static {v9}, Lorg/chromium/ui/base/UiAndroidFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v6, :cond_5

    :cond_4
    or-int/lit8 v4, v4, 0x2

    :cond_5
    invoke-static {v7, v8}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v7, v11}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v7, v10}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const/4 v5, 0x2

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-nez v4, :cond_9

    move v4, v6

    :cond_9
    if-nez v5, :cond_a

    move v5, v6

    :cond_a
    filled-new-array {v4, v5}, [I

    move-result-object v0

    return-object v0
.end method

.method private static hasSource(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static maxTouchPoints()I
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch.jazzhand"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
