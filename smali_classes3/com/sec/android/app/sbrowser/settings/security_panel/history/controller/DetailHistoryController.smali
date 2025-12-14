.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;
.implements Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryObserver;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

.field private mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

.field private mPrefKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->lambda$onDataUpdated$0(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method private initModel(Landroid/app/Activity;)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sbrowser.settings.show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mPrefKey:Ljava/lang/String;

    const-string v2, "block_unwanted_webpages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailUnwantedPagesHistoryModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailUnwantedPagesHistoryModel;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mPrefKey:Ljava/lang/String;

    const-string v2, "block_popups"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mPrefKey:Ljava/lang/String;

    const-string v2, "anti_tracking_level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mPrefKey:Ljava/lang/String;

    const-string v2, "anti_tracking_secret_mode_level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mPrefKey:Ljava/lang/String;

    const-string v2, "safe_browsing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    goto :goto_3

    :cond_3
    const-string v1, "trackers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "tracker_counts"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v1, :cond_6

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->setDataFromIntent(Ljava/util/HashMap;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->requestData()V

    return-void
.end method

.method private synthetic lambda$onDataUpdated$0(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->isBlocked()Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->setListData(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V

    return-void
.end method

.method private showAllTrackers()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getTrackerList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getCountByTracker()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getSatLevel()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-class v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "view_all"

    const-string v5, "key"

    invoke-static {v2, v4, v5, v4}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "trackers"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "tracker_counts"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "sat_level"

    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sbrowser.settings.show_fragment_args"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isFromGlobalSetting(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addObserver()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->getInstance()Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->addObserver(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryObserver;)V

    return-void
.end method

.method public deleteItems(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->deleteItems(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public getConfirmCancelID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getConfirmCancelID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfirmOkID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getConfirmOkID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemClickID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getItemClickID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getNavigateUpID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getNavigateUpID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecretModeSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getSecretModeSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSortMode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getSortMode()I

    move-result p0

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasNoData()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->hasNoData()Z

    move-result p0

    return p0
.end method

.method public onActionHome()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onActionHome()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "anti_tracking_level"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->isSecretMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->hasNoData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->requestData()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->addObserver()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->initModel(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;)V

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->setControllerDelegate(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onCtrlAndAKeyPressed()V

    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onCtrlAndDKeyPressed()V

    return-void
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onCtrlAndMKeyPressed()V

    return-void
.end method

.method public onDataUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DetailHistoryController"

    const-string v1, "onDataUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    new-instance v1, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getListData(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel$Listener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onDestroy()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->removeObserver()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->addObserver()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onResume()V

    return-void
.end method

.method public onSatMoreClick()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->showAllTrackers()V

    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onShiftKeyPressed(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public removeObserver()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->getInstance()Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->removeObserver(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryObserver;)V

    return-void
.end method

.method public setBlockStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->setBlockStatus(Z)V

    return-void
.end method

.method public setPATStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->setPATStatus(Z)V

    return-void
.end method

.method public setSatLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->setSatLevel(I)V

    return-void
.end method

.method public setScreenID(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->setScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public sortBy(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->sortBy(I)V

    return-void
.end method
