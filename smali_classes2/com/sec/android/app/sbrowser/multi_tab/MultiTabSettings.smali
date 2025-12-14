.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getViewType()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->supportCardViewType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->isCardViewType()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mode_list"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getMultiTabMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCardViewType()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getMultiTabMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode_card"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGridViewType()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getMultiTabMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode_grid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isListViewType()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getMultiTabMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode_list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setViewType(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setMultiTabMode(Ljava/lang/String;)V

    return-void
.end method

.method public static supportCardViewType()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->supportCardViewType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/TabManagerGlobalConfigUtils;->supportCardViewType()Z

    move-result v0

    return v0
.end method
