.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

.field private mCurrentStateIndex:I

.field private mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mIsTurnOnClicked:Z

.field private final mPrivacyBoardStatus:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;

.field private final mStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;",
            ">;"
        }
    .end annotation
.end field

.field private mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

.field private mUnAvailableStateCount:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mUnAvailableStateCount:I

    new-instance v1, Landroidx/lifecycle/X;

    invoke-direct {v1}, Landroidx/lifecycle/S;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mPrivacyBoardStatus:Landroidx/lifecycle/X;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SmartAntiTrackingState;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SmartAntiTrackingState;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockPopupsState;

    invoke-direct {v3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockPopupsState;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;

    invoke-direct {v4, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object v2, p1, v0

    const/4 v0, 0x2

    aput-object v3, p1, v0

    const/4 v0, 0x3

    aput-object v4, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mStates:Ljava/util/List;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardInitialState;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardInitialState;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->setInitialIndex()V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->lambda$updatePrivacyBoardCurrentState$1(ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->lambda$updatePrivacyBoardCurrentState$0(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->lambda$onClickTurnOn$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->lambda$onFallbackState$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->updatePrivacyBoardForSettingsChanged(Z)V

    return-void
.end method

.method private goToNextState()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentStateIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentStateIndex:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mStates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    return-void
.end method

.method private synthetic lambda$onClickTurnOn$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mPrivacyBoardStatus:Landroidx/lifecycle/X;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->getStatus()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mPrivacyBoardStatus:Landroidx/lifecycle/X;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;->onClickTurnOn(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isPrivacySettingsReset()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivacySettingsReset(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFallbackState$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updatePrivacyBoardCurrentState - state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->getStatus()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyBoardStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->getStatus()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setPrivacyBoardLastShownState(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mPrivacyBoardStatus:Landroidx/lifecycle/X;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->getStatus()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$updatePrivacyBoardCurrentState$0(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->updatePrivacyBoard(Z)V

    return-void
.end method

.method private synthetic lambda$updatePrivacyBoardCurrentState$1(ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updatePrivacyBoardCurrentState - state : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->getStatus()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrivacyBoardStateManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->getStatus()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setPrivacyBoardLastShownState(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mPrivacyBoardStatus:Landroidx/lifecycle/X;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->getStatus()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mUnAvailableStateCount:I

    return-void

    :cond_0
    iget p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mUnAvailableStateCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mUnAvailableStateCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->onFallbackState(Z)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onFallbackState(Z)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardFallbackState;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardFallbackState;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentStateIndex:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mUnAvailableStateCount:I

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;->getPrivacyBoardStatus(ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;)V

    return-void
.end method

.method private setInitialIndex()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getPrivacyBoardLastShownState()I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentStateIndex:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;->getType()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentStateIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentStateIndex:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentStateIndex:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentStateIndex:I

    :cond_2
    return-void
.end method

.method private updatePrivacyBoardForSettingsChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->updatePrivacyBoard(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V

    return-void
.end method

.method public clearTurnOnClickedFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mIsTurnOnClicked:Z

    return-void
.end method

.method public getPrivacyBoardStatus()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mPrivacyBoardStatus:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public onClickPrivacyBoard(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mPrivacyBoardStatus:Landroidx/lifecycle/X;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;->onClickPrivacyContent(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V

    return-void
.end method

.method public onClickTurnOn()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mIsTurnOnClicked:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;->getTurnedOnBoardStatus(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;)V

    return-void
.end method

.method public updatePrivacyBoard(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->goToNextState()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->updatePrivacyBoardCurrentState(Z)V

    return-void
.end method

.method public updatePrivacyBoardCurrentState(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mIsTurnOnClicked:Z

    const-string v1, "PrivacyBoardStateManager"

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mIsTurnOnClicked:Z

    const-string p0, "Skipping privacy board update due to turn on message"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    instance-of v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardInitialState;

    if-eqz v2, :cond_1

    const-string p0, "Skipping privacy board update due to initial state"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->goToNextState()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->mCurrentState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;-><init>(ILjava/lang/Object;Z)V

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;->getPrivacyBoardStatus(ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;)V

    return-void
.end method
