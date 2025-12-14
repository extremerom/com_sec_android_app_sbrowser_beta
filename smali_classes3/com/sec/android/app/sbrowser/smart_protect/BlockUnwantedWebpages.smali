.class public Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected mDbHelper:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;

.field private mSkippableTestEntries:[Ljava/lang/String;

.field private mTestMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mTestMode:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mDbHelper:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->lambda$updateBlockUnwantedWebpagesDb$0([Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->launchSettings()Z

    return-void
.end method

.method private synthetic lambda$updateBlockUnwantedWebpagesDb$0([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->createBlockUnwantedWebpagesData([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->addHistory(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private launchSettings()Z
    .locals 6

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key"

    const-string v4, "block_unwanted_webpages"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_secretmode"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string v5, "end_date"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sbrowser.settings.show_fragment_args"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private showBlockUnwantedWebpagesDialog()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addHistory(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mDbHelper:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;->insertBlockedHistory(Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mDbHelper:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;->clearBlockUnwantedWebpagesHistory()Z

    return-void
.end method

.method public createBlockUnwantedWebpagesData([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;

    aget-object v2, p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesEnabled()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;-><init>(Ljava/lang/String;JZ)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getBlockUnwantedWebpagesData(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/smart_protect/data/BlockUnwantedWebpagesDTO;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mDbHelper:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;->getBlockUnwantedWebpagesData(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getBlockedCountsByDate(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mDbHelper:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;->getBlockedCountsByDate(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public isEntryMarkedToBeSkipped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mTestMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mSkippableTestEntries:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getSkippableEntryList()[Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    array-length p0, p0

    if-lez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public launchSettingsForTest()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->launchSettings()Z

    move-result p0

    return p0
.end method

.method public setDBHelper(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mDbHelper:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectDbHelper;

    return-void
.end method

.method public setEntryMarkedToBeSkipped([Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mSkippableTestEntries:[Ljava/lang/String;

    return-void
.end method

.method public setTestMode()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mTestMode:Z

    return-void
.end method

.method public showBlockUnwantedWebpagesDialogIfNeeded()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabUtils;->getCurrentTab(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getBlockUnwantedWebpagesAvailableStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesAllowedBefore()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getLastCommittedEntryIndex()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->isEntryMarkedToBeSkipped()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockUnwantedWebpages(Z)V

    :cond_2
    const-string v0, "BlockUnwantedWebpages"

    const-string v2, "onBackPressed : showBlockUnwantedWebpagesDialog"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->showBlockUnwantedWebpagesDialog()V

    :cond_3
    :goto_0
    return v1
.end method

.method public updateBlockUnwantedWebpagesDb()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabUtils;->getCurrentTab(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mTestMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mSkippableTestEntries:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getSkippableEntryList()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v3, 0x1b

    invoke-direct {v2, v3, p0, v0}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
