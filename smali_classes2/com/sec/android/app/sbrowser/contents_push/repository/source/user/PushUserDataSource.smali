.class public Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

.field private final mUserClient:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;

    new-instance v1, Lcom/google/firebase/messaging/z;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;-><init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mUserClient:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mUserClient:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;)Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->storeDeviceInfo(Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;)V

    return-void
.end method

.method private isPushDeviceInfoChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getPushType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getPushToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getAndroidVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInternetVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getInternetVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInternetRelease()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getInternetRelease()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getTimeZone()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method private storeDeviceInfo(Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setPushType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setPushToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setAndroidVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setDeviceModel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setDeviceType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setOperatorCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getInternetVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setInternetVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setCountryCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setLocale(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getInternetRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setInternetRelease(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setDeviceManufacturer(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getTimeZone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deregister(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "PushUserDataSource"

    const-string p1, "Failed to deregister. Invalid push user id"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setServerSyncRegisterState(Z)V

    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "push_user_id"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getServerType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server_type"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;-><init>()V

    :cond_1
    const-string v0, "from"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "push_id"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->getPushId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;->create()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;->build()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;

    move-result-object p1

    const v0, 0x18705

    invoke-static {v0, p1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;->create(ILcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setRequiredNetworkType(I)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setIsPersisted(Z)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setUpdateCurrent(Z)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->build()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskScheduler;->schedule(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;)Z

    return-void
.end method

.method public register(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mUserClient:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;-><init>()V

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;->register(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;)V

    return-void
.end method

.method public restore(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setServerSyncRegisterState(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    const-string v1, "invalid"

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->register(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V

    return-void
.end method

.method public updateDeviceInfoIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->isIUIDUploaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->isPushDeviceInfoChanged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PushUserDataSource"

    const-string v1, "Push device information is changed. Need to update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mUserClient:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->mPreference:Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushUserId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$3;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;->updateDeviceInfo(Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;)V

    return-void
.end method
