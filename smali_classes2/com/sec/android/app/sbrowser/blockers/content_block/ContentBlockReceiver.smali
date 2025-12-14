.class public Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static sUpdateTimeStamp:J


# instance fields
.field private mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->createSimpleClient()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->handleAppUpdate(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private handleAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAction action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentBlock.Receiver"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-string v3, "com.samsung.android.sbrowser.contentBlocker.ACTION_UPDATE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v3, "receiver_data_package_name"

    const-string v5, "content_blocker_update"

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->isValidContentBlockerPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->removeAppFromErrorPackageList(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->removeSelectedPackageName(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "content_blocker_app_update"

    const-string v3, "receiver_action_selected_app_removed"

    invoke-virtual {p0, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->resetContentBlocker()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerEnabled(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object p2

    invoke-virtual {p2, p1, v4}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initContentBlocker(Landroid/content/Context;I)V

    goto :goto_2

    :cond_2
    const-string p0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->isContentBlockerPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->sUpdateTimeStamp:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0xc8

    cmp-long p2, v9, v7

    if-gez p2, :cond_4

    sput-wide v5, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->sUpdateTimeStamp:J

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->mainLoopHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver$1;

    invoke-direct {v0, p0, p1, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver$1;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;Landroid/content/Context;Ljava/util/ArrayList;)V

    sget p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->FILTER_UPDATE_DELAY:I

    int-to-long v2, p0

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    const-string p0, "handleAction ignore update command"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    const/4 p0, 0x0

    :cond_6
    :goto_2
    invoke-static {p1}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    if-eqz p0, :cond_8

    invoke-static {p1}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Ll2/b;->c(Landroid/content/Intent;)V

    :cond_8
    const-string p0, "handleAction is finished"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleAppUpdate(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameFromPackageList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ContentBlock.Receiver"

    const-string p1, "handleAppUpdate not match between currentSelectedApp and selectedApp"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initContentBlocker(Landroid/content/Context;I)V

    return-void
.end method

.method private mainLoopHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private setNewExtensionFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->isValidContentBlockerPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBadgePackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->wasExtensionsVisitedOnce(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->hasNewBadgePackage(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setBadgePackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->initFilterAppList(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->isContentBlockerPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBadgePackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setBadgePackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerAppsInstalled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setIsNeverShowBanner(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, ""

    const-wide/16 v0, -0x1

    const-string p3, "0166"

    invoke-static {p0, p3, p2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->initFilterAppList(Landroid/content/Context;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private shouldHandleAction(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    const-string p0, "android.intent.extra.REPLACING"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private shouldHandleActionForSilentInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getInstalledPackageNamesFromDirectDownload(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerFeaturedDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerAvailableDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_7
    :goto_0
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "onReceive is called"

    const-string v1, "ContentBlock.Receiver"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->isSemEventDelegationManagerSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.sec.android.app.sbrowser.beta.pending_intent.ContentBlock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "action_origin"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "shouldHandleAction intent.getData() is null"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "packageName is empty"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->shouldHandleActionForSilentInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->shouldHandleAction(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "shouldHandleAction is false"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->setNewExtensionFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->handleAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const-string p0, "onReceive is finished"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onReceive : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
