.class public Lorg/chromium/device/geolocation/LocationProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sProviderImpl:Lorg/chromium/device/geolocation/LocationProvider;

.field private static sUseGmsCoreLocationProvider:Z


# direct methods
.method public static create()Lorg/chromium/device/geolocation/LocationProvider;
    .locals 2

    sget-object v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->sProviderImpl:Lorg/chromium/device/geolocation/LocationProvider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-boolean v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->sUseGmsCoreLocationProvider:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/chromium/device/geolocation/LocationProviderGmsCore;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/device/geolocation/LocationProviderGmsCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->sProviderImpl:Lorg/chromium/device/geolocation/LocationProvider;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/chromium/device/geolocation/LocationProviderAndroid;

    invoke-direct {v0}, Lorg/chromium/device/geolocation/LocationProviderAndroid;-><init>()V

    sput-object v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->sProviderImpl:Lorg/chromium/device/geolocation/LocationProvider;

    :goto_0
    sget-object v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->sProviderImpl:Lorg/chromium/device/geolocation/LocationProvider;

    return-object v0
.end method

.method public static setLocationProviderImpl(Lorg/chromium/device/geolocation/LocationProvider;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lorg/chromium/device/geolocation/LocationProviderFactory;->sProviderImpl:Lorg/chromium/device/geolocation/LocationProvider;

    return-void
.end method

.method public static useGmsCoreLocationProvider()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->sUseGmsCoreLocationProvider:Z

    return-void
.end method
