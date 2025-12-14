.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# instance fields
.field private mIsEditButtonEnabled:Ljava/lang/Boolean;

.field private final mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

.field private final mPrivacyBoardActiveStateListObserver:Landroidx/lifecycle/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Y;"
        }
    .end annotation
.end field

.field private final mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

.field private final mPrivacyBoardVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;

.field private final mPromotionRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

.field private final mPromotionStatus:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

.field private final mQuickAccessItems:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end field

.field private final mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

.field private final mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

.field private final mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardActiveStateListObserver:Landroidx/lifecycle/Y;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mIsEditButtonEnabled:Ljava/lang/Boolean;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPromotionStatus:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->itemMapFunction()Lsb/k;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/lifecycle/l0;->l(Landroidx/lifecycle/X;Lsb/k;)Landroidx/lifecycle/W;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessItems:Landroidx/lifecycle/S;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getFeaturesActiveStateList()Landroidx/lifecycle/W;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPromotionRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    return-void
.end method

.method public static synthetic b(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->lambda$itemMapFunction$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->updatePrivacyBoardFeaturesActiveStateList(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    return-object p0
.end method

.method private itemMapFunction()Lsb/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/k;"
        }
    .end annotation

    new-instance p0, LK9/f;

    const/16 v0, 0xf

    invoke-direct {p0, v0}, LK9/f;-><init>(I)V

    return-object p0
.end method

.method private static synthetic lambda$itemMapFunction$0(Ljava/util/List;)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private updatePrivacyBoardFeaturesActiveStateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearTurnOnClickedFlag()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->clearTurnOnClickedFlag()V

    return-void
.end method

.method public deleteQuickAccessItems(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "link"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "unifiedHome"

    invoke-static {v7, v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->createItemUrlWithFromIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->deleteItems(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->postValue(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string p1, "ContentsFeedViewModel"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    return-object p0
.end method

.method public getPrivacyBoardFeaturesActiveStateList()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getPrivacyBoardVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;

    return-object p0
.end method

.method public getPrivacyDashboardMessage()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->getPrivacyBoardStatus()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public getPromotionStatus()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPromotionStatus:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    return-object p0
.end method

.method public getQuickAccessItems()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessItems:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public getQuickAccessUIEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    return-object p0
.end method

.method public getTheme()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getThemeLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    return-object p0
.end method

.method public onCleared()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getFeaturesActiveStateList()Landroidx/lifecycle/W;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardActiveStateListObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->clear()V

    :cond_0
    return-void
.end method

.method public onClickPrivacyBoard(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->onClickPrivacyBoard(Landroid/content/Context;)V

    return-void
.end method

.method public onClickTurnOn()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->onClickTurnOn()V

    return-void
.end method

.method public onDismissAddDialog()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;->postValue(ILjava/lang/Object;)V

    return-void
.end method

.method public onPromotionClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPromotionRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->onPromotionClickFromMain()V

    return-void
.end method

.method public onShowAddDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->isItemFull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->postValue(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;->postValue(ILjava/lang/Object;)V

    return-void
.end method

.method public onShowRenameDialog(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unifiedHome"

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->createItemUrlWithFromIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;-><init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;->postValue(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onShowSettings(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mIsEditButtonEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->canEnterEditMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->postValue(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->setEditButton(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->postValue(I)V

    return-void
.end method

.method public renameQuickAccessItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEditButton(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mIsEditButtonEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public updatePrivacyDashboardMessage(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->updatePrivacyBoardCurrentState(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->updatePrivacyBoard(Z)V

    :goto_0
    return-void
.end method
