.class Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;


# instance fields
.field private final mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->lambda$getPrivacyBoardStatus$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void
.end method

.method private createPrivacyBoardStatus(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;->getTotal()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;Z)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setFeatureType(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setFeatureEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->getBlockBackwardWeekMessage(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setCount(I)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;Z)V

    return-object p0
.end method

.method private isEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getPrivacyBoardStatus$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->createPrivacyBoardStatus(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;->onResponse(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void
.end method


# virtual methods
.method public getPrivacyBoardStatus(ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setFeatureEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setFeatureType(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->getBlockBackwardDisabledMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setMessage(Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;Z)V

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;->onResponse(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;I)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getBlockRedirectionCount(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;)V

    return-void
.end method

.method public getTurnedOnBoardStatus(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockUnwantedWebpages(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setFeatureType(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setFeatureEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->getBlockBackwardTurnedOnMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setMessage(Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;Z)V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;->onResponse(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
