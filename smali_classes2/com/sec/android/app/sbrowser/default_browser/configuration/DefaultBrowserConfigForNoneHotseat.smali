.class public Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserConfigForNoneHotseat;
.super Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoolingTime(Landroid/content/Context;)I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "coolingTimeDaysNoneHotseat"

    const/16 v1, 0x2a

    const-string v2, "SetAsDefaultBrowser"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDuration(Landroid/content/Context;)I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "durationDaysNoneHotseat"

    const/4 v1, 0x7

    const-string v2, "SetAsDefaultBrowser"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMaxShowCount(Landroid/content/Context;)I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "maxPopupCountNoneHotseat"

    const/4 v1, 0x3

    const-string v2, "SetAsDefaultBrowser"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
