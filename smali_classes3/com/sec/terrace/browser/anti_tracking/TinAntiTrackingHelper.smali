.class public Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$AutomaticStorageAccessState;,
        Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;
    }
.end annotation


# direct methods
.method public static getAutomaticStorageAccessState(Landroid/content/SharedPreferences;)I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "pref_anti_tracking_automatic_storage_access_state"

    const-string v1, "automatic_storage_access_state_disabled"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$AutomaticStorageAccessState;->DISABLED:Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$AutomaticStorageAccessState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "automatic_storage_access_state_first_party_interaction"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$AutomaticStorageAccessState;->FIRST_PARTY_INTERACTION:Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$AutomaticStorageAccessState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$AutomaticStorageAccessState;->OPENER_INTERACTION:Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$AutomaticStorageAccessState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public static isAntiTrackingDebugSettingsEnabled(Landroid/content/SharedPreferences;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "pref_enable_anti_tracking_debug_settings"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isServerBasedListEnabled(Landroid/content/SharedPreferences;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "pref_enable_server_based_allowlist_blocklist"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static onNativeInitializationSuccess()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$1;

    invoke-direct {v1}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$1;-><init>()V

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper;->isAntiTrackingDebugSettingsEnabled(Landroid/content/SharedPreferences;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;->setAntiTrackingDebugSettingsFlag(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper;->getAutomaticStorageAccessState(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;->setAutomaticStorageAccessStateValue(I)V

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper;->isServerBasedListEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;->enableServerBasedListUsage(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;->onNativeInitializationSuccess()V

    return-void
.end method
