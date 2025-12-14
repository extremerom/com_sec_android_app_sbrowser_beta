.class public Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCompletedPopup:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedPopup;

.field private mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

.field private mIsSuccessful:Z

.field private mSuccessNotificationId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mCompletedPopup:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedPopup;

    return-void
.end method

.method private show(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZI)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mCompletedPopup:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedPopup;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedPopup;->showView(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZI)V

    return-void
.end method


# virtual methods
.method public recreateSnackbar(J)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mCompletedPopup:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedPopup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mIsSuccessful:Z

    iget v4, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mSuccessNotificationId:I

    move-wide v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedPopup;->recreateSnackbar(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZIJ)V

    return-void
.end method

.method public requestDownloadCompletedPopup(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "download_notification_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "mimetype"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "guid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "filepath"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "originalurl"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "referrer"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "filename"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "isOffRecord"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v9, "download_complete"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "system_download_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    new-instance p2, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    invoke-direct {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;-><init>()V

    invoke-virtual {p2, v6}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setOriginalUrl(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setReferrer(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsOffTheRecord(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p2

    new-instance v1, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {v1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-virtual {v1, v9, v10}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->setSystemDownloadId(J)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mIsSuccessful:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->mSuccessNotificationId:I

    invoke-direct {p0, p1, v1, v8, v0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->show(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZI)V

    return-void
.end method
