.class public Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private mBuilder:LU0/o;

.field private mContext:Landroid/content/Context;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPrevSystemNightTheme:Z

.field private mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mPrevSystemNightTheme:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mCurrentLocale:Ljava/util/Locale;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->lambda$shutDownService$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->resumeAllPendingSaveAllDownloads(Ljava/util/HashSet;)V

    return-void
.end method

.method private buildActionIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    const p1, 0xf1b93

    const/high16 v1, 0xc000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private cleanSaveAllProgress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFiles(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setFilesToDownload(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedOffTheRecordItems(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOffTheRecordItems(I)V

    return-void
.end method

.method private createContentIntent()Landroid/app/PendingIntent;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->getPendingIntentForNotification(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "IsCompleted"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    const v1, 0xf1b93

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private createNotificationBuilder()LU0/o;
    .locals 3

    new-instance v0, LU0/o;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    const-string v2, "SBROWSER_DOWNLOADS_NOTIFICATION_CHANNEL"

    invoke-direct {v0, v1, v2}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f140499

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getResText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, LU0/o;->e:Ljava/lang/CharSequence;

    iget-object v1, v0, LU0/o;->z:Landroid/app/Notification;

    const v2, 0x7f080183

    iput v2, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    const v2, 0x7f0607fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, v0, LU0/o;->u:I

    const/4 v1, 0x1

    iput-boolean v1, v0, LU0/o;->s:Z

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, LU0/o;->f(IZ)V

    iput-boolean v1, v0, LU0/o;->k:Z

    iput v1, v0, LU0/o;->j:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->createContentIntent()Landroid/app/PendingIntent;

    move-result-object p0

    iput-object p0, v0, LU0/o;->g:Landroid/app/PendingIntent;

    const/16 p0, 0x8

    invoke-virtual {v0, p0, v1}, LU0/o;->f(IZ)V

    return-object v0
.end method

.method private varargs getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResText(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$shutDownService$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->stopForegroundService(Z)V

    return-void
.end method

.method private removeOffTheRecordItems()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOffTheRecordItems()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onTaskRemoved()V

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllTaskCompleted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showCompleteNotification(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFilesBackup()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showCompleteNotification(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationRunning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationPaused(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFilesBackup(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->cleanSaveAllProgress()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->shutDownService()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedOffTheRecordItems()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFiles(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    sub-int/2addr v1, v0

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setFilesToDownload(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOffTheRecordItems(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedOffTheRecordItems(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f120020

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f14048e

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getResText(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME_SAVE_ALL_IMAGES"

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private resumeAllPendingSaveAllDownloads(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->hasDownloadManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->setSaveAllProgressInstanceValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->resumeAfterRestart(Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->updateSaveAllSharedPrefs(Z)V

    return-void
.end method

.method private setSaveAllProgressInstanceValues()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "save_all_download_total"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setFilesToDownload(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "save_all_download_completed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFiles(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "save_all_download_off_the_record"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOffTheRecordItems(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "save_all_download_is_paused"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationPaused(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationPaused()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationRunning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "save_all_download_off_the_record_completed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedOffTheRecordItems(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "save_all_download_completed_backup"

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFilesBackup(I)V

    return-void
.end method

.method private showCompleteNotification(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12001c

    invoke-direct {p0, v2, p1, v1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LU0/o;->d(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    iget-object p1, p1, LU0/o;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0}, LU0/o;->g(IIZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    const-string v0, "100%"

    invoke-virtual {p1, v0}, LU0/o;->i(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    const-string v0, "SaveAllDownloads"

    iput-object v0, p1, LU0/o;->q:Ljava/lang/String;

    iget-object p1, p1, LU0/o;->z:Landroid/app/Notification;

    const v0, 0x7f08070b

    iput v0, p1, Landroid/app/Notification;->icon:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->updateSaveAllSharedPrefs(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showNotification()V

    return-void
.end method

.method private showNotification()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    invoke-virtual {v0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const v3, 0xf1b93

    if-lt v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot run service as foreground: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for notification channel "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " notification id 990099"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DownloadSaveAllImagesNotificationService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method private shutDownService()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllTaskCompleted()V

    return-void
.end method

.method public static startSaveAllNotificationService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v0

    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadsForegroundServiceUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private stopForegroundService(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadsForegroundServiceUtils;->stopForeground(Landroid/app/Service;I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private stopSaveAllOperation()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mInProgress"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadSaveAllImagesNotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationRunning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationPaused(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v0

    new-array v2, v1, [Ljava/lang/Object;

    const v4, 0x7f12001e

    invoke-direct {p0, v4, v0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f12001d

    invoke-direct {p0, v4, v0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v2

    const v4, 0x7f12001f

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v2, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v2, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v2, 0x7f140497

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getResText(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RETRY_SAVE_ALL_IMAGES"

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onOperationWaitToRetry()V

    move v1, v3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showCompleteNotification(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->shutDownService()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFilesBackup(I)V

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->cleanSaveAllProgress()V

    :cond_5
    return-void
.end method

.method private updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    iget-object v0, v0, LU0/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    const v1, 0x7f140488

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getResText(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL_SAVE_ALL_IMAGES"

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->buildActionIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x7f080713

    invoke-virtual {v0, v3, v1, v2}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE_SAVE_ALL_IMAGES"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    const v1, 0x7f080261

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->buildActionIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    const v1, 0x7f08024c

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->buildActionIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationRunning()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, LU0/o;->g(IIZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    iget-object p1, p1, LU0/o;->z:Landroid/app/Notification;

    const p2, 0x7f080183

    iput p2, p1, Landroid/app/Notification;->icon:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    invoke-virtual {p1, p2, p2, p2}, LU0/o;->g(IIZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationPaused()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    iget-object p1, p1, LU0/o;->z:Landroid/app/Notification;

    const p2, 0x7f080714

    iput p2, p1, Landroid/app/Notification;->icon:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    iget-object p1, p1, LU0/o;->z:Landroid/app/Notification;

    const p2, 0x7f08070b

    iput p2, p1, Landroid/app/Notification;->icon:I

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    invoke-virtual {p1, p3}, LU0/o;->d(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    const-string p2, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CLEAR_SAVE_ALL_IMAGES"

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->buildActionIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    iget-object p1, p1, LU0/o;->z:Landroid/app/Notification;

    iput-object p2, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showNotification()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemNightTheme(Landroid/content/res/Configuration;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mPrevSystemNightTheme:Z

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->removeOffTheRecordItems()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mPrevSystemNightTheme:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->updateSaveAllSharedPrefs(Z)V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "DownloadSaveAllImagesNotificationService"

    const-string v1, "On Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->createNotificationBuilder()LU0/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getInstance()Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setFilesToDownload(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOffTheRecordItems(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFiles(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedOffTheRecordItems(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationRunning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFilesBackup(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemNightTheme(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mPrevSystemNightTheme:Z

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->rescheduleDownloads()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const/4 p2, 0x0

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->rescheduleDownloads()V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStartCommand action : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadSaveAllImagesNotificationService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "is_off_the_record"

    const-string v4, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE_SAVE_ALL_IMAGES"

    const v5, 0x7f14048b

    const-string v6, "total_images_to_download"

    const-string v7, "/"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    move v1, p3

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "save_image_pause"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v8, "save_image_clear"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v8, "save_all_resume_all"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v8, "save_image_resume"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v8, "save_image_stop"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v8, "save_image_cancel"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v8, "save_all_start"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v0

    goto :goto_1

    :sswitch_7
    const-string v8, "save_image_success"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v1, p2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationRunning()Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_3

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationPaused(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationRunning(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p3, v1}, [Ljava/lang/Object;

    move-result-object p3

    const v1, 0x7f120020

    invoke-direct {p0, v1, p1, p3}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f14048e

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getResText(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME_SAVE_ALL_IMAGES"

    invoke-direct {p0, p3, v1, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFilesBackup(I)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->updateSaveAllSharedPrefs(Z)V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->shutDownService()V

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const-string p3, "save_all_download"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->stopForegroundService(Z)V

    goto/16 :goto_3

    :cond_a
    new-instance p2, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService$1;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;Ljava/util/HashSet;)V

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/sec/terrace/TerraceHelper;->initializeAsync(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    const-string p1, "NotEnoughStorage"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showStorageFullDialog(Landroid/content/Context;)Lm/l;

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationRunning(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationPaused(Z)V

    invoke-virtual {p1, v6, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p3, :cond_b

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->stopForegroundService(Z)V

    goto/16 :goto_3

    :cond_b
    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showCompleteNotification(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationRunning(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationPaused(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFilesBackup(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFiles(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setFilesToDownload(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->shutDownService()V

    goto/16 :goto_3

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getResText(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v4, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->stopSaveAllOperation()V

    goto/16 :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showCompleteNotification(I)V

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFilesBackup()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showCompleteNotification(I)V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationRunning(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationPaused(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFilesBackup(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->cleanSaveAllProgress()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->shutDownService()V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p1, v6, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "totalFiles:"

    invoke-static {v1, v6, v3}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v1, p3, :cond_e

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->stopForegroundService(Z)V

    goto/16 :goto_3

    :cond_e
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationRunning(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationPaused(Z)V

    const-string p3, "files_to_add"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->addOffTheRecordItems(I)V

    :cond_f
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->addFilesToDownload(I)V

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->getResText(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v4, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :pswitch_7
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationRunning()Z

    move-result p3

    if-nez p3, :cond_11

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationPaused()Z

    move-result p3

    if-nez p3, :cond_11

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->addCompletedFilesBackup()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showCompleteNotification(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->shutDownService()V

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->addCompletedOffTheRecordItems()V

    :cond_12
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->addCompletedFile()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result p3

    if-ne p1, p3, :cond_13

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showCompleteNotification(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationRunning(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setOperationPaused(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->setCompletedFilesBackup(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->cleanSaveAllProgress()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->shutDownService()V

    goto :goto_3

    :cond_13
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationPaused()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_3

    :cond_14
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result p3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v1

    invoke-virtual {p1, p3, v1, p2}, LU0/o;->g(IIZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, LU0/o;->d(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getProgressPercentage()I

    move-result p3

    int-to-float p3, p3

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mBuilder:LU0/o;

    invoke-virtual {p3, p1}, LU0/o;->i(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->updateSaveAllSharedPrefs(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->showNotification()V

    :cond_15
    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79254623 -> :sswitch_7
        -0x3da617fe -> :sswitch_6
        -0x30ceeea0 -> :sswitch_5
        -0x290b9398 -> :sswitch_4
        -0x16fb54ed -> :sswitch_3
        -0x8f94d11 -> :sswitch_2
        0x6b3dea7 -> :sswitch_1
        0x7664e50 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DownloadSaveAllImagesNotificationService"

    const-string v1, "onTaskRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->removeOffTheRecordItems()V

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

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

    const-string p2, "DownloadSaveAllImagesNotificationService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public rescheduleDownloads()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "save_all_download"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "save_all_resume_all"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->startSaveAllNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public updateSaveAllSharedPrefs(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationPaused()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "save_all_download_is_paused"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v2

    :goto_1
    const-string v3, "save_all_download_completed"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v2

    :goto_2
    const-string v3, "save_all_download_total"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOffTheRecordItems()I

    move-result v2

    :goto_3
    const-string v3, "save_all_download_off_the_record"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedOffTheRecordItems()I

    move-result v2

    :goto_4
    const-string v3, "save_all_download_off_the_record_completed"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getProgressPercentage()I

    move-result v2

    :goto_5
    const-string v3, "save_all_download_progress_percentage"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFilesBackup()I

    move-result v1

    :goto_6
    const-string p0, "save_all_download_completed_backup"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_7

    const/4 p0, 0x0

    goto :goto_7

    :cond_7
    new-instance p0, Ljava/util/HashSet;

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->getPendingSaveAllDownloadsMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_7
    const-string p1, "save_all_download"

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
