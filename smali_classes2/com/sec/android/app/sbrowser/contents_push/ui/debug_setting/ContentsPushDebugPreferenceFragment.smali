.class public Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lw2/n;


# instance fields
.field private mPrefPushToken:Landroidx/preference/Preference;

.field private mPrefPushTokenClickCount:I

.field private mPrefPushType:Landroidx/preference/Preference;

.field private mPrefPushUserId:Landroidx/preference/Preference;

.field private mPrefServerType:Landroidx/preference/ListPreference;

.field private mSendDummyPush:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw2/A;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushTokenClickCount:I

    return-void
.end method

.method private prepareContentsPushUpdatedHistory()Ljava/lang/String;
    .locals 5

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yy/MM/dd HH:mm:ss"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "st="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getServerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isTurnOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "&ready="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isContentsPushReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "&ty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getPushType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getPushToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "av="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getAndroidVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&mo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&oc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getOperatorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&dt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&iv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getInternetVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&cc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&lo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&ir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getInternetRelease()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&ma="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&tz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Updated : "

    const-string v3, "\nPushInfo : "

    const-string v4, "\nDeviceInfo : "

    invoke-static {v2, p0, v3, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removePreference(Landroidx/preference/Preference;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string v0, "contents_push_debug_setting_preference"

    invoke-virtual {p1, v0}, Lw2/F;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f140399

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180018

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string v0, "contents_push_server_type_list"

    invoke-virtual {p1, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefServerType:Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string v0, "contents_push_push_type"

    invoke-virtual {p1, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushType:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string v0, "contents_push_push_user_id"

    invoke-virtual {p1, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushUserId:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string v0, "contents_push_push_token"

    invoke-virtual {p1, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushToken:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string v0, "contents_push_send_dummy_push"

    invoke-virtual {p1, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mSendDummyPush:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getServerType()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefServerType:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefServerType:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefServerType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->prepareContentsPushUpdatedHistory()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->updateContentsPushUpdatedHistory(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isTurnOn()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushType:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushUserId:Landroidx/preference/Preference;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushToken:Landroidx/preference/Preference;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushToken:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mSendDummyPush:Landroidx/preference/Preference;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushType:Landroidx/preference/Preference;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->removePreference(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushUserId:Landroidx/preference/Preference;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->removePreference(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushToken:Landroidx/preference/Preference;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->removePreference(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mSendDummyPush:Landroidx/preference/Preference;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->removePreference(Landroidx/preference/Preference;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contents_push_server_type_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isTurnOn()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment$1;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->syncStateIfNeeded(ZLcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;->needTncAgreement()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->changeServerType(Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->prepareContentsPushUpdatedHistory()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->updateContentsPushUpdatedHistory(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 12

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contents_push_send_dummy_push"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;

    const-string v5, "verified_topic_id"

    const-string v3, "a0201801010101"

    const-string v4, "a0"

    const-string v6, "2 people who were fatally shot have been identified in Chicago mass"

    const-string v7, "https://news-stg.internet.apps.samsung.com/?news=https://samsung.tribunecontentagency.com/2021/03/14/2-people-who-were-fatally-shot-have-been-identified-in-chicago-mass-shooting-that-left-13-others-injured/?s_push&utm_medium=samsung_internet&utm_source=push"

    const-string v8, "https://r-stg.internet.apps.samsung.com/refer?url=https%3A%2F%2Fsamsung.tribunecontentagency.com%2Fwp-content%2Fuploads%2F2021%2F03%2Farticle-image-tns-top-news-1576-700x467.jpeg"

    const-string v9, "Chicago Tribune"

    const-string v10, "contents_push2"

    const-string v11, "BIG_PICTURE"

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;->handleMessageForDebug(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;)V

    goto :goto_0

    :cond_0
    const-string v0, "contents_push_push_token"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushTokenClickCount:I

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushTokenClickCount:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushTokenClickCount:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pushToken : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->mPrefPushToken:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentsPushDebugPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method
