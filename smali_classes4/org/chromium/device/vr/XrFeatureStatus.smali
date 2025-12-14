.class public Lorg/chromium/device/vr/XrFeatureStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static isXrDevice()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "android.software.xr.immersive"

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
