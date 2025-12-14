.class public Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;
    }
.end annotation


# instance fields
.field private final mAdBlockerDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;

.field private final mAdBlockerEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

.field private final mBlockBackwardRedirectionsEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

.field private final mBlockPopupsDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;

.field private final mBlockPopupsEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

.field private final mBlockRedirectionDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource;

.field private final mEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

.field private final mFeaturesActiveStateList:Landroidx/lifecycle/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/W;"
        }
    .end annotation
.end field

.field private final mSATDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;

.field private final mSatEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mSATDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mAdBlockerDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockPopupsDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockRedirectionDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiSupported()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v0, "quick_access_privacy_board"

    invoke-direct {p3, p2, v0, p4}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance p3, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingDefaultLevel(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "anti_tracking_level"

    invoke-direct {p3, p2, v1, v0}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mSatEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "block_unwanted_webpages"

    invoke-direct {v0, p2, v2, v1}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockBackwardRedirectionsEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "block_popups"

    invoke-direct {v1, p2, v3, v2}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockPopupsEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance v3, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    const-string v4, "enable_content_blocker"

    invoke-direct {v3, p2, v4, v2}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mAdBlockerEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance p2, Landroidx/lifecycle/W;

    invoke-direct {p2}, Landroidx/lifecycle/W;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mFeaturesActiveStateList:Landroidx/lifecycle/W;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/e;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/e;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;I)V

    invoke-virtual {p2, p3, v2}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/model/e;

    const/4 v2, 0x1

    invoke-direct {p3, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/e;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;I)V

    invoke-virtual {p2, v0, p3}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/model/e;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/e;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;I)V

    invoke-virtual {p2, v1, p3}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/model/e;

    const/4 v0, 0x3

    invoke-direct {p3, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/e;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;I)V

    invoke-virtual {p2, v3, p3}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    invoke-virtual {p1, p4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesEnabled()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockPopupsEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-direct {p0, p2, p3, p1, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->updateFeaturesActiveStateList(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->lambda$new$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method private static create()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;-><init>()V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource;)V

    return-object v0
.end method

.method public static synthetic d()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->create()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->lambda$new$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    return-object v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockBackwardRedirectionsEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockPopupsEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mAdBlockerEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->updateFeaturesActiveStateList(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mSatEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockPopupsEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mAdBlockerEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->updateFeaturesActiveStateList(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mSatEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockBackwardRedirectionsEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mAdBlockerEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->updateFeaturesActiveStateList(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mSatEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockBackwardRedirectionsEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockPopupsEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->updateFeaturesActiveStateList(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private updateFeaturesActiveStateList(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isPrivacyBoardEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mFeaturesActiveStateList:Landroidx/lifecycle/W;

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mFeaturesActiveStateList:Landroidx/lifecycle/W;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getAdBlockerCount(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mAdBlockerDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/f;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/f;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;->fetch(Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$Callback;)V

    return-void
.end method

.method public getBlockPopupsCount(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockPopupsDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/f;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/f;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;->fetch(Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;)V

    return-void
.end method

.method public getBlockRedirectionCount(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mBlockRedirectionDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/f;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/f;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource;->fetch(Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource$Callback;)V

    return-void
.end method

.method public getFeaturesActiveStateList()Landroidx/lifecycle/W;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/W;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mFeaturesActiveStateList:Landroidx/lifecycle/W;

    return-object p0
.end method

.method public getSatCount(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mSATDataSource:Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/f;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;->fetch(Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;)V

    return-void
.end method

.method public isEnabled()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->mEnabled:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    return-object p0
.end method
