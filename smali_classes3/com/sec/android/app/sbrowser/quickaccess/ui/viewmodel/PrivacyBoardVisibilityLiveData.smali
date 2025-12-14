.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;
.super Landroidx/lifecycle/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/W;"
    }
.end annotation


# instance fields
.field private mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field private mIsEnabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/lifecycle/W;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->isEnabled()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/h;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->onEnableStateChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->onEditModeChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void
.end method

.method private onEditModeChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->updateValue()V

    return-void
.end method

.method private onEnableStateChanged(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->mIsEnabled:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->updateValue()V

    return-void
.end method

.method private setValueIfChanged(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateValue()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->setValueIfChanged(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->mIsEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->setValueIfChanged(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addEditModeSource(Landroidx/lifecycle/S;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/h;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method
