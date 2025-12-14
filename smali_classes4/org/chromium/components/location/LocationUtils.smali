.class public Lorg/chromium/components/location/LocationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/location/LocationUtils$Factory;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sFactory:Lorg/chromium/components/location/LocationUtils$Factory;

.field private static sInstance:Lorg/chromium/components/location/LocationUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/location/LocationUtils;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/components/location/LocationUtils;->sInstance:Lorg/chromium/components/location/LocationUtils;

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/components/location/LocationUtils;->sFactory:Lorg/chromium/components/location/LocationUtils$Factory;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/location/LocationUtils;

    invoke-direct {v0}, Lorg/chromium/components/location/LocationUtils;-><init>()V

    sput-object v0, Lorg/chromium/components/location/LocationUtils;->sInstance:Lorg/chromium/components/location/LocationUtils;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/chromium/components/location/LocationUtils$Factory;->create()Lorg/chromium/components/location/LocationUtils;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/location/LocationUtils;->sInstance:Lorg/chromium/components/location/LocationUtils;

    :cond_1
    :goto_0
    sget-object v0, Lorg/chromium/components/location/LocationUtils;->sInstance:Lorg/chromium/components/location/LocationUtils;

    return-object v0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public canPromptToEnableSystemLocationSetting()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSystemLocationSettingsIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public hasAndroidFineLocationPermission()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0}, Lorg/chromium/components/location/LocationUtils;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasAndroidLocationPermission()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0}, Lorg/chromium/components/location/LocationUtils;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/components/location/LocationUtils;->hasAndroidFineLocationPermission()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSystemLocationSettingEnabled()Z
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public promptToEnableSystemLocationSetting(ILorg/chromium/ui/base/WindowAndroid;Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/chromium/ui/base/WindowAndroid;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
