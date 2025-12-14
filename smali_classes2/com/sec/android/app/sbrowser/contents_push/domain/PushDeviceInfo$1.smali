.class Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidVersion()Ljava/lang/String;
    .locals 0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ged"

    goto :goto_0

    :cond_0
    const-string p0, "samsung"

    :goto_0
    return-object p0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 0

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "tablet"

    goto :goto_0

    :cond_0
    const-string p0, "phone"

    :goto_0
    return-object p0
.end method

.method public getInternetRelease()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "beta"

    goto :goto_0

    :cond_0
    const-string p0, "stable"

    :goto_0
    return-object p0
.end method

.method public getInternetVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperatorCode()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SalesCodeUtil;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPushType()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
