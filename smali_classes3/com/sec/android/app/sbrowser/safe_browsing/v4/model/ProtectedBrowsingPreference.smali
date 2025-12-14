.class public Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "protected_browsing_preference"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    return-object v0
.end method


# virtual methods
.method public getDetectedCount()I
    .locals 2

    const-string v0, "protected_browsing_detected_count_daily"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getKidsModeDbEnabled()Z
    .locals 2

    const-string v0, "safer_browsing_kids_mode_db_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getLastRequestedLoggingTimestamp()J
    .locals 3

    const-string v0, "protected_browsing_logging_last_requested_timestamp"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSBBackOffRequestTry()I
    .locals 2

    const-string v0, "safer_browsing_back_off_request_try"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSBBackOffWaitingTime()J
    .locals 3

    const-string v0, "safer_browsing_back_off_waiting_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSBFindFullHashesMinimumWaitTillTimestamp()D
    .locals 3

    const-string v0, "safer_browsing_find_full_hashes_minimum_wait_till_timestamp"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSBGetThreatDescriptorsLastRequestedTimestamp()J
    .locals 3

    const-string v0, "safer_browsing_get_threat_descriptors_last_requested_timestamp"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSBUpdateThreatListsLastRequestedTimestamp()J
    .locals 3

    const-string v0, "safer_browsing_update_threat_lists_last_requested_timestamp"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSaferBrowsingDetectedCount()I
    .locals 2

    const-string v0, "safer_browsing_detected_count_daily"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public updateDetectedCount(I)V
    .locals 1

    const-string v0, "protected_browsing_detected_count_daily"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public updateKidsModeDbEnabled(Z)V
    .locals 1

    const-string v0, "safer_browsing_kids_mode_db_enabled"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateLastRequestedLoggingTimestamp(J)V
    .locals 1

    const-string v0, "protected_browsing_logging_last_requested_timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public updateSBBackOffRequestTry(I)V
    .locals 1

    const-string v0, "safer_browsing_back_off_request_try"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public updateSBBackOffWaitingTime(J)V
    .locals 1

    const-string v0, "safer_browsing_back_off_waiting_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public updateSBFindFullHashesMinimumWaitTillTimestamp(D)V
    .locals 1

    const-string v0, "safer_browsing_find_full_hashes_minimum_wait_till_timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public updateSBGetThreatDescriptorsLastRequestedTimestamp(J)V
    .locals 1

    const-string v0, "safer_browsing_get_threat_descriptors_last_requested_timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public updateSBUpdateThreatListsLastRequestedTimestamp(J)V
    .locals 1

    const-string v0, "safer_browsing_update_threat_lists_last_requested_timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public updateSaferBrowsingDetectedCount(I)V
    .locals 1

    const-string v0, "safer_browsing_detected_count_daily"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method
