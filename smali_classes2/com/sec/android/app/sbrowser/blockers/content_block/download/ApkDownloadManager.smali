.class public Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;
.super Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addInstalledPackageNameFromDirectDownload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->addInstalledPackageNameFromDirectDownload(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    const-string p0, ""

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersFileUtils;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getLastNotificationId(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getLastNotificationId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1

    new-instance p0, Landroid/content/ComponentName;

    const-class v0, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadService;

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0
.end method

.method public handleDefaultTurnOnBlocker(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isDefaultTurnOnEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ApkDownloadManager"

    const-string p1, "handleDefaultTurnOnBlocker flag is not enabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setSelectedPackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerEnabled(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initContentBlocker(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public sendSAEventLog(Ljava/lang/String;)V
    .locals 1

    const-string p0, "609"

    const-string v0, "6166"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastNotificationId(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getLastNotificationId(Landroid/content/Context;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setLastNotificationId(Landroid/content/Context;I)V

    return-void
.end method
