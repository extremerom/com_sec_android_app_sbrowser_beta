.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel;
.super Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockPopupsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsEnabled:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel;->attachData(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method private attachData(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 17
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

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/utils/TimeUtil;->timestampToDateOnly(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v9, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryHeaderView;

    add-int/lit8 v10, v3, 0x1

    invoke-direct {v9, v3, v7}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryHeaderView;-><init>(ILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move v12, v10

    goto :goto_1

    :cond_0
    move v12, v3

    :goto_1
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v7, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;

    add-int/lit8 v8, v12, 0x1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->isBlocked()Z

    move-result v13

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getTime()J

    move-result-wide v15

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;-><init>(IZLjava/lang/String;J)V

    invoke-virtual {v3, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v3, v8

    goto :goto_0

    :cond_1
    iput v5, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    const-string v1, "blockedCount : "

    const-string v2, "DetailPopupHistoryModel"

    invoke-static {v5, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySummaryView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel;->getSummary()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySummaryView;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel$2;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel$2;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getConfirmCancelID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140c65

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfirmOkID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140c66

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140442

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemClickID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140c67

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

    const-string v0, "DetailPopupHistoryModel"

    const-string v1, "getItemList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140c68

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "543"

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

    const v0, 0x7f1407fd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12000e

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

    const v1, 0x7f12000f

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
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mDateRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mDateRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v5

    new-instance v2, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;

    invoke-direct {v2}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;-><init>()V

    new-instance v7, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel$1;

    invoke-direct {v7, p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel$1;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-virtual/range {v2 .. v7}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;->getPopupBlockerStats(JJLcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;)V

    return-void
.end method

.method public setBlockStatus(Z)V
    .locals 3

    const-string v0, "setStatus : "

    const-string v1, "DetailPopupHistoryModel"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->setBlockStatus(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockPopups(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PREF_BLOCK_POPUPS event : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailPopupHistoryModel;->requestData()V

    return-void
.end method
