.class public Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupCreator;->lambda$createSystemPopup$1(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Lcom/sec/terrace/browser/download/TerraceDownloadItem;Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupCreator;->lambda$createSystemPopup$0(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Lcom/sec/terrace/browser/download/TerraceDownloadItem;Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupCreator;->lambda$createSystemPopup$2(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/view/View;)V

    return-void
.end method

.method public static createSystemPopup(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZII)Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;
    .locals 4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1404a5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120022

    invoke-virtual {v1, v3, p3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-ne p3, p2, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/download/completed_info/a;

    invoke-direct {v2, v0, p1, p0, p4}, Lcom/sec/android/app/sbrowser/download/completed_info/a;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Lcom/sec/terrace/browser/download/TerraceDownloadItem;Landroid/app/Activity;I)V

    goto :goto_1

    :cond_1
    new-instance v2, LK6/a;

    const/16 p1, 0x8

    invoke-direct {v2, p1, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    :goto_1
    if-ne p3, p2, :cond_2

    const p1, 0x7f140491

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const p1, 0x7f14045e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f140468

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LK6/a;

    const/16 p1, 0x9

    invoke-direct {v2, p1, v0}, LK6/a;-><init>(ILjava/lang/Object;)V

    const p1, 0x7f140497

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance p2, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;

    invoke-direct {p2, p0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public static dismissCompleteNotification(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "DownloadNotificationService"

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideDanglingSummaryNotification(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$createSystemPopup$0(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Lcom/sec/terrace/browser/download/TerraceDownloadItem;Landroid/app/Activity;ILandroid/view/View;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v5

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getSystemDownloadId()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->checkReadStoragePermissionAndOpenFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupCreator;->dismissCompleteNotification(Landroid/content/Context;I)V

    return-void
.end method

.method private static synthetic lambda$createSystemPopup$1(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.sbrowser.beta.LAUNCH_DOWNLOAD_HISTORY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$createSystemPopup$2(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->retryDownload(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method
