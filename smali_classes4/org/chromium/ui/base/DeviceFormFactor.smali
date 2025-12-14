.class public Lorg/chromium/ui/base/DeviceFormFactor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final DESKTOP:Ljava/lang/String; = "Desktop"

.field public static final MINIMUM_TABLET_WIDTH_DP:I = 0x258

.field public static final PHONE:Ljava/lang/String; = "Phone"

.field public static final SCREEN_BUCKET_TABLET:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final TABLET:Ljava/lang/String; = "Tablet"

.field private static sIsTabletForTesting:Ljava/lang/Boolean;


# direct methods
.method private static detectScreenWidthBucket(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lorg/chromium/ui/R$integer;->min_screen_width_bucket:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private static detectScreenWidthBucket(Lorg/chromium/ui/base/WindowAndroid;)I
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lorg/chromium/ui/R$integer;->min_screen_width_bucket:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static isNonMultiDisplayContextOnTablet(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->detectScreenWidthBucket(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTablet()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTabletForTesting:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->detectScreenWidthBucket(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVst()Z
    .locals 1

    const-string v0, "android.software.xr.immersive"

    invoke-static {v0}, Lorg/chromium/base/PackageManagerUtils;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.software.xr.api.spatial"

    invoke-static {v0}, Lorg/chromium/base/PackageManagerUtils;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.software.xr.api.openxr"

    invoke-static {v0}, Lorg/chromium/base/PackageManagerUtils;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isWindowOnTablet(Lorg/chromium/ui/base/WindowAndroid;)Z
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->detectScreenWidthBucket(Lorg/chromium/ui/base/WindowAndroid;)I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
