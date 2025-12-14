.class public Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "contents_push_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;-><init>()V

    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;
    .locals 2

    new-instance v0, Lf1/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private putLong(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private remove(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setServerType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "server_type"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeServerType(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setServerType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getServerType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getNeedAgreement(Z)Z

    move-result p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->isUnsubscribeV1TopicsDone()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setServerType(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setNeedAgreement(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setUnsubscribeV1Topics(Z)V

    return-void
.end method

.method public getAndroidVersion()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "androidVersion"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "countryCode"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "deviceManufacturer"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "deviceModel"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "deviceType"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInternetRelease()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "internetRelease"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInternetVersion()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "internetVersion"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastSyncTopicsTimeHours()J
    .locals 3

    const-string v0, "last_sync_topics_time_hours"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "locale"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNeedAgreement(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "need_agreement"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOperatorCode()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "operatorCode"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "push_token"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPushTopics()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "push_topics"

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getPushType()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "push_type"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPushUserId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "push_id"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServerSyncRegisterState()Z
    .locals 2

    const-string v0, "server_sync_register_state"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getServerType()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "server_type"

    const-string v1, "prd"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "timeZone"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isIUIDUploaded()Z
    .locals 2

    const-string v0, "iuid_uploaded"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPushTopicSubs(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "topic_"

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSyncedPushTopicSubs(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "synced_topic_"

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isUnsubscribeV1TopicsDone()Z
    .locals 2

    const-string v0, "unsubscribe_v1_topics"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public removeUnusedPushTopic(Ljava/lang/String;)V
    .locals 1

    const-string v0, "topic_"

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->remove(Ljava/lang/String;)V

    const-string v0, "synced_topic_"

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public setAndroidVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "androidVersion"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "countryCode"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceManufacturer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "deviceManufacturer"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "deviceModel"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "deviceType"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIUIDUploaded(Z)V
    .locals 1

    const-string v0, "iuid_uploaded"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInternetRelease(Ljava/lang/String;)V
    .locals 1

    const-string v0, "internetRelease"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInternetVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "internetVersion"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastSyncTopicsTimeHours(J)V
    .locals 1

    const-string v0, "last_sync_topics_time_hours"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 1

    const-string v0, "locale"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNeedAgreement(Z)V
    .locals 1

    const-string v0, "need_agreement"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOperatorCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "operatorCode"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "push_token"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPushTopicSubs(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "topic_"

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPushTopics(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "push_topics"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "push_type"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPushUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "push_id"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setServerSyncRegisterState(Z)V
    .locals 1

    const-string v0, "server_sync_register_state"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSyncedPushTopicSubs(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "synced_topic_"

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "timeZone"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUnsubscribeV1Topics(Z)V
    .locals 1

    const-string v0, "unsubscribe_v1_topics"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
