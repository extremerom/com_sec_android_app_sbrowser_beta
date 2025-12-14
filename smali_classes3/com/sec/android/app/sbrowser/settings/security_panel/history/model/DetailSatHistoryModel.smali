.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;
.super Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;
.source "SourceFile"


# instance fields
.field private mListFromIntent:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;",
            ">;"
        }
    .end annotation
.end field

.field private mSortMode:I

.field private mTrackerCounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackers:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsSecretMode:Z

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mSatLevel:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mSortMode:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackerCounts:Ljava/util/ArrayList;

    return-object p0
.end method

.method private attachData(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "trackerCount : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "DetailSatHistoryModel"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "trackerBlockedCount : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackers:I

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mSatLevel:I

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-le v1, v4, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    const/16 v7, 0xa

    move v8, v3

    :goto_3
    if-ge v8, v6, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v10, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v10, v7, v2, v12, v13}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;-><init>(IZLjava/lang/String;I)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v7, v11

    goto :goto_3

    :cond_3
    if-le v1, v4, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatMoreView;

    invoke-direct {v1, v7}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatMoreView;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f030008

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    const/4 v9, 0x2

    invoke-direct {v1, v9, v2, v7}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v7, v5

    const/4 v7, 0x3

    invoke-direct {v1, v7, v2, v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    const/4 v6, 0x4

    invoke-direct {v1, v6, v2, v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mSatLevel:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getPrivateAccessTokenPreference(Z)Z

    move-result v2

    invoke-direct {v1, v4, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;-><init>(IZ)V

    invoke-virtual {v0, v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x6

    goto :goto_4

    :cond_5
    move v0, v4

    move v4, v6

    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v2, v4, 0x1

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryEmptyView;

    add-int/lit8 v5, v0, 0x1

    const-string v6, ""

    invoke-direct {v3, v0, v6}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryEmptyView;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySummaryView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySummaryView;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$3;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->attachData(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public attachSecretModeView()V
    .locals 8

    const-string v0, "DetailSatHistoryModel"

    const-string v1, "attachSecretModeView - SAT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f030008

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    const/4 v7, 0x2

    invoke-direct {v1, v7, v2, v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryEmptyView;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryEmptyView;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->getInstance()Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->notifyDataUpdated()V

    return-void
.end method

.method public getConfirmCancelID()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfirmOkID()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCountByTracker()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "DetailSatHistoryModel"

    const-string v1, "getTrackerCounts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackerCounts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsSecretMode:Z

    if-nez v0, :cond_1

    const-string v0, "anti_tracking_secret_mode_level"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140446

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140447

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemClickID()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

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

    const-string v0, "DetailSatHistoryModel"

    const-string v1, "getItemList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140c47

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mPrefKey:Ljava/lang/String;

    const-string v0, "view_all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "545"

    return-object p0

    :cond_0
    const-string p0, "544"

    return-object p0
.end method

.method public getSecretModeSummary()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140dfc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSortMode()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSortMode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mSortMode:I

    const-string v2, "DetailSatHistoryModel"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mSortMode:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mSatLevel:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackers:I

    if-ne v1, v2, :cond_2

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14044c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14044b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14044a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackers:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->formattedTwoNumberString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackers:I

    if-ne v1, v2, :cond_5

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140452

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140451

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140450

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackers:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->formattedTwoNumberString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTrackerList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "DetailSatHistoryModel"

    const-string v1, "getTrackerList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isBlocked()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mSatLevel:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requestData()V
    .locals 8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsSecretMode:Z

    if-nez v0, :cond_1

    const-string v0, "anti_tracking_secret_mode_level"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackerList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackerCounts:Ljava/util/ArrayList;

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

    new-instance v2, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;

    invoke-direct {v2}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;-><init>()V

    new-instance v7, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;

    invoke-direct {v7, p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;Ljava/util/LinkedHashMap;)V

    invoke-virtual/range {v2 .. v7}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;->getAntiTrackingStats(JJLcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->attachSecretModeView()V

    return-void
.end method

.method public setDataFromIntent(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DetailSatHistoryModel"

    const-string v1, "setDataFromIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mListFromIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mListFromIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mListFromIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v8, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;-><init>(Ljava/lang/String;IJI)V

    invoke-virtual {v1, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mSortMode:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->sortBy(I)V

    return-void
.end method

.method public setPATStatus(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->setPATStatus(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->setPrivateAccessToken(ZZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivacySettingsReset(Z)V

    return-void
.end method

.method public setSatLevel(I)V
    .locals 4

    const-string v0, "setSatLevel : "

    const-string v1, "DetailSatHistoryModel"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->setSatLevel(I)V

    const-string v0, "Standard"

    const-string v1, "Strict"

    const-string v2, "Off"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "anti_tracking_secret_mode_level"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140c48

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140c46

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivacySettingsReset(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->getScreenID()Ljava/lang/String;

    move-result-object v2

    aget-object p1, v0, p1

    invoke-static {v2, v1, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->requestData()V

    return-void
.end method

.method public sortBy(I)V
    .locals 11

    const-string v0, "sortBy (mode) : "

    const-string v1, "DetailSatHistoryModel"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mSortMode:I

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mListFromIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mSatLevel:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mSortMode:I

    if-ne v4, v3, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$1;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v7, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getTrackerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getBlockedCount()I

    move-result v10

    invoke-direct {v7, v3, v1, v9, v10}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;-><init>(IZLjava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getBlockedCount()I

    move-result v3

    add-int/2addr v2, v3

    move v3, v8

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->mTrackers:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->getInstance()Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->notifyDataUpdated()V

    return-void
.end method
