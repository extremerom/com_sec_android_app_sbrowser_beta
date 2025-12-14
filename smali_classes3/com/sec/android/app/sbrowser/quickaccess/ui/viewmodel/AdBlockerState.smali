.class Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;


# instance fields
.field private mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;->mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;->lambda$getPrivacyBoardStatus$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void
.end method

.method private createPrivacyBoardStatus(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setFeatureType(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setFeatureEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;->mResourceProvider:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->getAdBlockerWeekMessage(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->setCount(I)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;Z)V

    return-object p0
.end method

.method private isEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getPrivacyBoardStatus$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;->createPrivacyBoardStatus(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;->onResponse(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void
.end method


# virtual methods
.method public getPrivacyBoardStatus(ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;I)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getAdBlockerCount(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;)V

    return-void

    :cond_1
    :goto_0
    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;Z)V

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;->onResponse(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void
.end method

.method public getTurnedOnBoardStatus(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;)V
    .locals 0

    const-string p0, "AdBlockerState"

    const-string p1, "getTurnedOnBoardStatus"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
