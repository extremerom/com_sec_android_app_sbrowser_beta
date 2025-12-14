.class public Lorg/chromium/components/location/LocationSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/location/LocationSettings$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method private static canPromptForAndroidLocationPermission(Lorg/chromium/ui/base/WindowAndroid;)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static canPromptToEnableSystemLocationSetting()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/location/LocationUtils;->getInstance()Lorg/chromium/components/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/location/LocationUtils;->canPromptToEnableSystemLocationSetting()Z

    move-result v0

    return v0
.end method

.method private static hasAndroidFineLocationPermission()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/location/LocationUtils;->getInstance()Lorg/chromium/components/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/location/LocationUtils;->hasAndroidFineLocationPermission()Z

    move-result v0

    return v0
.end method

.method private static hasAndroidLocationPermission()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/location/LocationUtils;->getInstance()Lorg/chromium/components/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/location/LocationUtils;->hasAndroidLocationPermission()Z

    move-result v0

    return v0
.end method

.method private static isSystemLocationSettingEnabled()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/location/LocationUtils;->getInstance()Lorg/chromium/components/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/location/LocationUtils;->isSystemLocationSettingEnabled()Z

    move-result v0

    return v0
.end method

.method private static promptToEnableSystemLocationSetting(ILorg/chromium/ui/base/WindowAndroid;J)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/location/LocationUtils;->getInstance()Lorg/chromium/components/location/LocationUtils;

    move-result-object v0

    new-instance v1, Lorg/chromium/components/location/LocationSettings$1;

    invoke-direct {v1, p2, p3}, Lorg/chromium/components/location/LocationSettings$1;-><init>(J)V

    invoke-virtual {v0, p0, p1, v1}, Lorg/chromium/components/location/LocationUtils;->promptToEnableSystemLocationSetting(ILorg/chromium/ui/base/WindowAndroid;Lorg/chromium/base/Callback;)V

    return-void
.end method
