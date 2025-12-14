.class public final Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 (2\u00020\u0001:\u0001(B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0019\u0010\u001c\u001a\u00020\u00042\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ#\u0010\u001f\u001a\u00020\u00042\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008$\u0010#R\u0016\u0010%\u001a\u00020!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0016\u0010&\u001a\u00020!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008&\u0010#R\u0016\u0010\'\u001a\u00020!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\'\u0010#\u00a8\u0006)"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;",
        "Lw2/A;",
        "<init>",
        "()V",
        "Ldb/r;",
        "initPreference",
        "updateBackOffModeStatus",
        "updateConfigurationStatus",
        "updateThreatDescriptorsStatus",
        "updateThreatListStatus",
        "updateMaxUpdateEntriesStatus",
        "updateMaxDatabaseEntriesStatus",
        "updateMinimumWaitDurationStatus",
        "",
        "minWaitTillTimeMillis",
        "",
        "generateSummary",
        "(D)Ljava/lang/String;",
        "",
        "lastUpdatedTime",
        "updatePeriod",
        "(JJ)Ljava/lang/String;",
        "millis",
        "formatDuration",
        "(J)Ljava/lang/String;",
        "formatDate",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "rootKey",
        "onCreatePreferences",
        "(Landroid/os/Bundle;Ljava/lang/String;)V",
        "Landroidx/preference/Preference;",
        "threatDescriptorsPreference",
        "Landroidx/preference/Preference;",
        "threatListPreference",
        "maxUpdateEntriesPreference",
        "maxDatabaseEntriesPreference",
        "minimumWaitDurationPreference",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final BACK_OFF_REQUEST_TRY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BACK_OFF_WAITING_TIME:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private maxDatabaseEntriesPreference:Landroidx/preference/Preference;

.field private maxUpdateEntriesPreference:Landroidx/preference/Preference;

.field private minimumWaitDurationPreference:Landroidx/preference/Preference;

.field private threatDescriptorsPreference:Landroidx/preference/Preference;

.field private threatListPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->Companion:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->$stable:I

    const-string v0, "pref_safer_browsing_debug_back_off_waiting_time"

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->BACK_OFF_WAITING_TIME:Ljava/lang/String;

    const-string v0, "pref_safer_browsing_debug_back_off_request_try"

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->BACK_OFF_REQUEST_TRY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method private final formatDate(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const-string p0, "N/A"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private final formatDuration(J)Ljava/lang/String;
    .locals 2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p0

    const-wide/16 v0, 0x3c

    cmp-long p2, p0, v0

    if-gez p2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    :cond_0
    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "formatElapsedTime(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final generateSummary(D)Ljava/lang/String;
    .locals 5

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, p1, v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->nowTimeMillis()J

    move-result-wide v3

    sub-long/2addr p1, v3

    invoke-static {p1, p2, v1, v2}, LG5/d3;->b(JJ)J

    move-result-wide v1

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Remaining : "

    invoke-static {p1, p0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final generateSummary(JJ)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr p1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr p1, v3

    invoke-static {p1, p2, v1, v2}, LG5/d3;->b(JJ)J

    move-result-wide v1

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p4}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Remaining : "

    const-string p3, ", (Period : "

    const-string p4, ")"

    invoke-static {p2, p1, p3, p0, p4}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final initPreference()V
    .locals 2

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_safer_browsing_config_threat_descriptors"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->threatDescriptorsPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_safer_browsing_config_threat_list"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->threatListPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_safer_browsing_config_max_update_entries"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->maxUpdateEntriesPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_safer_browsing_config_max_database_entries"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->maxDatabaseEntriesPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_safer_browsing_config_minimum_wait_duration"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->minimumWaitDurationPreference:Landroidx/preference/Preference;

    return-void
.end method

.method private final updateBackOffModeStatus()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->BACK_OFF_WAITING_TIME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSBBackOffWaitingTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->BACK_OFF_REQUEST_TRY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSBBackOffRequestTry()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private final updateConfigurationStatus()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->updateThreatDescriptorsStatus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->updateThreatListStatus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->updateMaxUpdateEntriesStatus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->updateMaxDatabaseEntriesStatus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->updateMinimumWaitDurationStatus()V

    return-void
.end method

.method private final updateMaxDatabaseEntriesStatus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->maxDatabaseEntriesPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "getApplicationContext(...)"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getMaxDatabaseEntries(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "maxDatabaseEntriesPreference"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateMaxUpdateEntriesStatus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->maxUpdateEntriesPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "getApplicationContext(...)"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getMaxUpdateEntries(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "maxUpdateEntriesPreference"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateMinimumWaitDurationStatus()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSBFindFullHashesMinimumWaitTillTimestamp()D

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->minimumWaitDurationPreference:Landroidx/preference/Preference;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->generateSummary(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "minimumWaitDurationPreference"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateThreatDescriptorsStatus()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getThreatListGetUpdateSecPeriod(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSBGetThreatDescriptorsLastRequestedTimestamp()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->threatDescriptorsPreference:Landroidx/preference/Preference;

    if-eqz v4, :cond_0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->generateSummary(JJ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "threatDescriptorsPreference"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateThreatListStatus()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getThreatListFetchUpdateSecPeriod(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSBUpdateThreatListsLastRequestedTimestamp()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->threatListPreference:Landroidx/preference/Preference;

    if-eqz v4, :cond_0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->generateSummary(JJ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "threatListPreference"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f140d97

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    const p1, 0x7f180068

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->initPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->updateConfigurationStatus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugConfigurationPreferenceFragment;->updateBackOffModeStatus()V

    return-void
.end method
