.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailUnwantedPagesHistoryModel;
.super Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsEnabled:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    return-void
.end method

.method private attachData(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mIsEnabled : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DetailUnwantedPagesHistoryModel"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v4, 0xa

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/utils/TimeUtil;->timestampToDateOnly(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "headerDate : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v10, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryHeaderView;

    add-int/lit8 v11, v4, 0x1

    invoke-direct {v10, v4, v8}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryHeaderView;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move v13, v11

    goto :goto_1

    :cond_0
    move v13, v4

    :goto_1
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v8, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;

    add-int/lit8 v9, v13, 0x1

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->isBlocked()Z

    move-result v14

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getTime()J

    move-result-wide v16

    move-object v12, v8

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;-><init>(IZLjava/lang/String;J)V

    invoke-virtual {v4, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v4, v9

    goto :goto_0

    :cond_1
    iput v6, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    const-string v1, "blockedCount : "

    invoke-static {v6, v1, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailUnwantedPagesHistoryModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySummaryView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailUnwantedPagesHistoryModel;->getSummary()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySummaryView;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailUnwantedPagesHistoryModel$1;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailUnwantedPagesHistoryModel$1;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailUnwantedPagesHistoryModel;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getConfirmCancelID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140c5f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfirmOkID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140c60

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140441

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemClickID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140c61

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;"
        }
    .end annotation

    const-string v0, "DetailUnwantedPagesHistoryModel"

    const-string v1, "getItemList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140c62

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "547"

    return-object p0
.end method

.method public getSecretModeSummary()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140dfb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1407fe

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12000c

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12000d

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public requestData()V
    .locals 8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsSecretMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->attachSecretModeView()V

    return-void

    :cond_0
    const-string v0, "requestData"

    const-string v1, "DetailUnwantedPagesHistoryModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mDateRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    new-instance v4, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3, v2}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->getBlockUnwantedWebpagesData(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    const-string v3, "updateChartDataUnwanted"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;->getFeatureEnabled()Z

    move-result v4

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsEnabled:Z

    if-ne v4, v5, :cond_1

    new-instance v4, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;->getFeatureEnabled()Z

    move-result v7

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;-><init>(JZLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateChartDataUnwanted list size : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailUnwantedPagesHistoryModel;->attachData(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public setBlockStatus(Z)V
    .locals 2

    const-string v0, "setBlockStatus : "

    const-string v1, "DetailUnwantedPagesHistoryModel"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->setBlockStatus(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockUnwantedWebpages(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailUnwantedPagesHistoryModel;->requestData()V

    return-void
.end method
