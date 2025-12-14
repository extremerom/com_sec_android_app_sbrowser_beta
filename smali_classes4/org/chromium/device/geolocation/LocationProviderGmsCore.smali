.class public Lorg/chromium/device/geolocation/LocationProviderGmsCore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/geolocation/LocationProvider;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mClient:LL5/a;

.field private final mContext:Landroid/content/Context;

.field private mLocationCallback:LL5/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LocationProvider"

    const-string v1, "Google Play Services"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->mContext:Landroid/content/Context;

    sget v0, LL5/c;->a:I

    new-instance v0, LD5/d;

    sget-object v5, Lb5/c;->U:Lb5/b;

    sget-object v6, Lb5/i;->c:Lb5/i;

    const/4 v3, 0x0

    sget-object v4, LD5/d;->a:Lb5/g;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    iput-object v0, p0, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->mClient:LL5/a;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->lambda$start$0(Ljava/lang/Exception;)V

    return-void
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lorg/chromium/gms/ChromiumPlayServicesAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$start$0(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mClient.requestLocationUpdates() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationProvider"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to request location updates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/device/geolocation/LocationProviderAdapter;->newErrorAvailable(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public start(Z)V
    .locals 4

    const-string v0, "LocationProvider"

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->b()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x64

    invoke-virtual {v1, p1}, Lcom/google/android/gms/location/LocationRequest;->e(I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->d(J)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x66

    invoke-virtual {v1, p1}, Lcom/google/android/gms/location/LocationRequest;->e(I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->d(J)V

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->stop()V

    new-instance p1, Lorg/chromium/device/geolocation/LocationProviderGmsCore$1;

    invoke-direct {p1, p0}, Lorg/chromium/device/geolocation/LocationProviderGmsCore$1;-><init>(Lorg/chromium/device/geolocation/LocationProviderGmsCore;)V

    iput-object p1, p0, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->mLocationCallback:LL5/b;

    :try_start_0
    iget-object p0, p0, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->mClient:LL5/a;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v2

    check-cast p0, LD5/d;

    invoke-virtual {p0, v1, p1, v2}, LD5/d;->c(Lcom/google/android/gms/location/LocationRequest;LL5/b;Landroid/os/Looper;)LR5/h;

    move-result-object p0

    new-instance p1, Lf1/g;

    const/16 v1, 0x11

    invoke-direct {p1, v1}, Lf1/g;-><init>(I)V

    invoke-virtual {p0, p1}, LR5/h;->c(LR5/d;)LR5/p;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mClient.requestLocationUpdates() missing permissions "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to request location updates due to permissions: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/device/geolocation/LocationProviderAdapter;->newErrorAvailable(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mClient.requestLocationUpdates() "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to request location updates: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/device/geolocation/LocationProviderAdapter;->newErrorAvailable(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public stop()V
    .locals 4

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->mLocationCallback:LL5/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->mClient:LL5/a;

    check-cast v1, LD5/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, LL5/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Listener type must not be empty"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lc5/m;

    invoke-direct {v3, v0, v2}, Lc5/m;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x972

    invoke-virtual {v1, v3, v0}, Lb5/j;->doUnregisterEventListener(Lc5/m;I)LR5/h;

    move-result-object v0

    sget-object v1, LD5/c;->a:LD5/c;

    sget-object v2, LD5/b;->a:LD5/b;

    invoke-virtual {v0, v1, v2}, LR5/h;->g(Ljava/util/concurrent/Executor;LR5/a;)LR5/p;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->mLocationCallback:LL5/b;

    :cond_0
    return-void
.end method
