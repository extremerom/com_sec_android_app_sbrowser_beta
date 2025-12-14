.class public Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$LocalBinder;,
        Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mDownloadNotificationBuilder:Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

.field private mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

.field private final mDownloadsInProgress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumAutoResumptionAttemptLeft:I

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$LocalBinder;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadsInProgress:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mObservers:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mObservers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadPending(Ljava/lang/String;Ljava/lang/String;IZZI)V

    return-void
.end method

.method private buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private cancelNotificationIfInvalid(Landroid/content/Intent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadGuid"

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_id"

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    const-string v2, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eq p1, v3, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->cancelNotification(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private cancelOffTheRecordDownloads()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget v2, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadCanceled(Ljava/lang/String;)V

    iget v2, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->itemType:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->getServiceDelegate(I)Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;->cancelDownload(Ljava/lang/String;ZZ)V

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;->destroyServiceDelegate()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;->onDownloadCanceled(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getDownloadEntryFromIntent(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;
    .locals 10

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME_ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "DownloadGuid"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getDownloadSharedPreferenceEntry(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadNotificationBuilder:Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->getNotificationId(Ljava/lang/String;)I

    move-result v2

    const-string v0, "DownloadFileName"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->isActiveNetworkMetered(Landroid/content/Context;)Z

    move-result v4

    const-string p0, "DownloadIsOffTheRecord"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v3

    const-string p0, "DownloadIsOfflinePage"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    new-instance p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    :goto_0
    move v7, p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;-><init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V

    return-object p1
.end method

.method private handleDownloadOperation(Landroid/content/Intent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_UPDATE_SUMMARY_ICON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->updateSummaryIcon(Landroid/content/Context;Landroid/app/NotificationManager;ILandroid/util/Pair;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideDanglingSummaryNotification(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->hideSummaryNotificationIfNecessary(I)Z

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->cancelNotificationIfInvalid(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->getDownloadEntryFromIntent(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object v0

    const-string v3, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    iget v8, v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadPaused(Ljava/lang/String;Ljava/lang/String;ZIZIILcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->hideSummaryNotificationIfNecessary(I)Z

    goto :goto_0

    :cond_2
    const-string v3, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->isActiveNetworkMetered(Landroid/content/Context;)Z

    move-result v2

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    if-nez v3, :cond_3

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V

    goto :goto_0

    :cond_4
    const-string v3, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME_ALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->hasDownloadManagerService()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->hideSummaryNotificationIfNecessary(I)Z

    return v1

    :cond_6
    :goto_0
    new-instance v2, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;Landroid/content/Intent;)V

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/sec/terrace/TerraceHelper;->initializeAsync(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "NotEnoughStorage"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showStorageFullDialog(Landroid/content/Context;)Lm/l;

    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_1
    return v1
.end method

.method private notifyDownloadPending(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v16, p6

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadNotificationBuilder:Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    const/4 v15, 0x1

    const/16 v17, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v18, 0x0

    move-wide/from16 v10, v18

    invoke-virtual/range {v0 .. v17}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->updateActiveDownloadNotification(Ljava/lang/String;Ljava/lang/String;JJIJJIZZZII)V

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->startTrackingInProgressDownload(Ljava/lang/String;)V

    return-void
.end method

.method private rescheduleDownloads()V
    .locals 6

    const-string v0, "DownloadNotification"

    const-string v1, "cancel and reschedule download"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->getDownloadResumptionScheduler()Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->cancelTask()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-boolean v5, v4, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isAutoResumable:Z

    if-eqz v5, :cond_2

    iget-boolean v3, v4, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v1, v4

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNumAutoResumptionAttemptLeft:I

    if-lez p0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->getDownloadResumptionScheduler()Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->schedule(Z)V

    :cond_4
    return-void
.end method

.method private startTrackingInProgressDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadsInProgress:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->startForegroundInternal(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadsInProgress:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadsInProgress:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private stopTrackingInProgressDownload(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadsInProgress:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadsInProgress:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->stopForegroundInternal(Z)V

    :cond_0
    return-void
.end method

.method private updateResumptionAttemptLeft()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ResumptionAttemptLeft"

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNumAutoResumptionAttemptLeft:I

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelNotification(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "DownloadNotificationService"

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->removeSharedPreferenceEntry(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "Downloading"

    const v2, 0xf423f

    invoke-static {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hasDownloadNotifications(Landroid/app/NotificationManager;ILjava/lang/String;I)Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->stopTrackingInProgressDownload(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->updateSummaryIcon(Landroid/content/Context;Landroid/app/NotificationManager;ILandroid/util/Pair;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->hideSummaryNotificationIfNecessary(I)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideDanglingSummaryNotification(Landroid/content/Context;I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideCompletedSummaryNotificationIfNecessary(Landroid/content/Context;I)V

    return-void
.end method

.method public cancelSummaryNotification(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public getServiceDelegate(I)Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const-string p0, "Unrecognized intent type."

    const-string v0, "DownloadNotification"

    invoke-static {p1, p0, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    return-object p0
.end method

.method public hideSummaryNotificationIfNecessary(I)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadsInProgress:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "Downloading"

    const v3, 0xf423f

    invoke-static {v0, p1, v2, v3}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hasDownloadNotifications(Landroid/app/NotificationManager;ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->getSummaryNotification(Landroid/app/NotificationManager;I)Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->stopForegroundInternal(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->cancelSummaryNotification(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->stopForegroundInternal(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v0
.end method

.method public notifyDownloadCanceled(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getDownloadSharedPreferenceEntry(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "Downloading"

    const v2, 0xf423f

    const/4 v3, -0x1

    invoke-static {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hasDownloadNotifications(Landroid/app/NotificationManager;ILjava/lang/String;I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->stopTrackingInProgressDownload(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget v0, v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->cancelNotification(ILjava/lang/String;)V

    return-void
.end method

.method public notifyDownloadFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getDownloadSharedPreferenceEntry(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadNotificationBuilder:Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->getNotificationId(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    const-string v1, ""

    goto :goto_2

    :cond_3
    move-object v1, p2

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadNotificationBuilder:Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f14048a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f080712

    invoke-virtual {v2, v6, v1, v4, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildNotification(ILjava/lang/String;Ljava/lang/String;I)LU0/o;

    move-result-object v1

    const-string v7, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_FAILED_DISMISSED"

    const/4 v11, 0x0

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    invoke-static/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v4, v1, LU0/o;->z:Landroid/app/Notification;

    iput-object v2, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string v7, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_FAIL_CANCEL"

    const/4 v11, 0x0

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    invoke-static/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f140488

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v6, 0x1080038

    invoke-virtual {v1, v6, v4, v2}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v7, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME"

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "DownloadIsOffTheRecord"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f140497

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v6, 0x7f08024c

    invoke-virtual {v1, v6, v4, v2}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadNotificationBuilder:Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    invoke-virtual {v1}, LU0/o;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->updateNotification(ILandroid/app/Notification;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    new-instance v11, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v11

    move v4, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;-><init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {v1, v11}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->stopTrackingInProgressDownload(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8789"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyDownloadPaused(Ljava/lang/String;Ljava/lang/String;ZIZIILcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    if-nez p3, :cond_0

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-virtual {v7, v15, v2, v3}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadFailed(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    move-object/from16 v2, p2

    move/from16 v3, p4

    if-nez p8, :cond_1

    iget-object v0, v7, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v0, v15}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getDownloadSharedPreferenceEntry(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_1
    move-object/from16 v9, p8

    :goto_0
    const/4 v14, 0x1

    if-eqz v9, :cond_2

    iget-boolean v0, v9, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isAutoResumable:Z

    if-nez v0, :cond_2

    invoke-direct {v7, v15, v14}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->stopTrackingInProgressDownload(Ljava/lang/String;Z)V

    const/4 v0, -0x1

    move/from16 v1, p6

    if-ne v1, v0, :cond_3

    return-void

    :cond_2
    move/from16 v1, p6

    :cond_3
    if-nez v9, :cond_4

    const/4 v0, 0x0

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_4
    iget-boolean v0, v9, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    goto :goto_1

    :goto_2
    if-eqz p5, :cond_5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadPending(Ljava/lang/String;Ljava/lang/String;IZZI)V

    invoke-direct {v7, v15, v14}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->stopTrackingInProgressDownload(Ljava/lang/String;Z)V

    return-void

    :cond_5
    iget-object v8, v7, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadNotificationBuilder:Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    const/4 v0, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    move/from16 v13, p6

    move v1, v14

    move v14, v4

    move-object v2, v15

    move v15, v0

    invoke-virtual/range {v8 .. v15}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildPausedNotification(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;Ljava/lang/String;Ljava/lang/String;IIZZ)V

    invoke-direct {v7, v2, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->stopTrackingInProgressDownload(Ljava/lang/String;Z)V

    return-void
.end method

.method public notifyDownloadProgress(Ljava/lang/String;Ljava/lang/String;JJIJJIZZI)V
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v17, p15

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadNotificationBuilder:Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v16, -0x1

    invoke-virtual/range {v0 .. v17}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->updateActiveDownloadNotification(Ljava/lang/String;Ljava/lang/String;JJIJJIZZZII)V

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->startTrackingInProgressDownload(Ljava/lang/String;)V

    return-void
.end method

.method public notifyDownloadSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZI)I
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->startForegroundInternal(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadNotificationBuilder:Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildSuccessNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZI)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->removeNotificationForUpdate(I)V

    const/4 v2, 0x1

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->stopTrackingInProgressDownload(Ljava/lang/String;Z)V

    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadNotificationBuilder:Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ResumptionAttemptLeft"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNumAutoResumptionAttemptLeft:I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DownloadNotification"

    const-string v1, "onDestroy called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->updateNotificationsForShutdown()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->rescheduleDownloads()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string p2, "onStartCommand called"

    const-string p3, "DownloadNotification"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->startForegroundInternal(I)V

    const/4 v0, -0x1

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME_ALL"

    if-nez p1, :cond_0

    const-string p1, "onStartCommand intent is null"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->updateNotificationsForShutdown()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->handleDownloadOperation(Landroid/content/Intent;)Z

    move-result p1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->hideSummaryNotificationIfNecessary(I)Z

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v2, "com.sec.android.app.sbrowser.beta.download.ACTION_SUMMARY_FAIL_SAFE"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->hideSummaryNotificationIfNecessary(I)Z

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->isDownloadOperationIntent(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->handleDownloadOperation(Landroid/content/Intent;)Z

    move-result p3

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->getDownloadResumptionScheduler()Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadResumptionScheduler;->cancelTask()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNumAutoResumptionAttemptLeft:I

    if-lez p1, :cond_3

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNumAutoResumptionAttemptLeft:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->updateResumptionAttemptLeft()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNumAutoResumptionAttemptLeft:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->clearResumptionAttemptLeft()V

    :cond_3
    :goto_0
    move p1, p3

    goto :goto_2

    :cond_4
    :goto_1
    move p1, p2

    :goto_2
    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p2, 0x2

    :goto_3
    return p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DownloadNotification"

    const-string v1, "onTaskRemoved called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->isEveryActivityDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->cancelOffTheRecordDownloads()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->hideSummaryNotificationIfNecessary(I)Z

    :cond_0
    return-void
.end method

.method public onTimeout(II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Stopping service due to timeout with fgs type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadNotification"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public removeNotificationForUpdate(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "DownloadNotificationService"

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->updateSummaryIcon(Landroid/content/Context;Landroid/app/NotificationManager;ILandroid/util/Pair;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->hideSummaryNotificationIfNecessary(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideDanglingSummaryNotification(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeAllPendingDownloads()V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->hasDownloadManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadsInProgress:Ljava/util/List;

    iget-object v4, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->canResumeDownload(Landroid/content/Context;Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    iget-object v6, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    iget v7, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    iget-boolean v8, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isOfflinePage()Z

    move-result v9

    const/4 v10, -0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadPending(Ljava/lang/String;Ljava/lang/String;IZZI)V

    iget v3, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->itemType:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->getServiceDelegate(I)Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->buildDownloadItem()Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;->resumeDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)V

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;->destroyServiceDelegate()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public startForegroundInternal(I)V
    .locals 3

    const-string v0, "startForeground(), state : "

    const-string v1, "DownloadNotification"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f080183

    invoke-static {v0, p1, v2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildSummaryNotification(Landroid/content/Context;II)Landroid/app/Notification;

    move-result-object p1

    const v0, 0xf423f

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadsForegroundServiceUtils;->startForeground(Landroid/app/Service;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "startForeground() error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08070b

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildSummaryNotification(Landroid/content/Context;II)Landroid/app/Notification;

    move-result-object p1

    const v1, 0xf423e

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->updateSummaryIcon(Landroid/content/Context;Landroid/app/NotificationManager;ILandroid/util/Pair;)V

    :goto_0
    return-void
.end method

.method public stopForegroundInternal(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadsForegroundServiceUtils;->stopForeground(Landroid/app/Service;I)V

    return-void
.end method

.method public updateNotificationsForShutdown()V
    .locals 11

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->cancelOffTheRecordDownloads()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget v6, v10, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v10, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    iget-object v4, v10, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadPaused(Ljava/lang/String;Ljava/lang/String;ZIZIILcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method
