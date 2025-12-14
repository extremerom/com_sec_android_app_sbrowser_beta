.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# instance fields
.field private final mEmptyItemState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;

.field private final mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

.field private final mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->mEmptyItemState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;-><init>()V

    new-instance v4, Landroidx/lifecycle/W;

    invoke-direct {v4}, Landroidx/lifecycle/W;-><init>()V

    new-instance v5, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v4, v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;I)V

    invoke-virtual {v4, v6, v7}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v4, v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;I)V

    invoke-virtual {v4, v6, v7}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->addQuickAccessItemListSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;->addItemListSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->isEnabled()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;->addEnableStateSource(Landroidx/lifecycle/S;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->addQuickAccessStateSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->addMostVisitedStateSource(Landroidx/lifecycle/S;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->lambda$new$0(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->lambda$new$1(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;Ljava/util/List;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;->invoke(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase$ItemsListener;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;Ljava/util/List;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;->invoke(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase$ItemsListener;)V

    return-void
.end method


# virtual methods
.method public acquireOwner(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->acquireOwner(Landroid/content/Context;)V

    return-void
.end method

.method public getEditShortcutsEnabled()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->mEmptyItemState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;

    return-object p0
.end method

.method public getMainUIEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    return-object p0
.end method

.method public releaseOwner(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->releaseOwner(Landroid/content/Context;)V

    return-void
.end method

.method public setMainUIEvent(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(ILjava/lang/Object;)V

    return-void
.end method
