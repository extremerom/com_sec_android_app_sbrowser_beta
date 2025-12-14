.class public Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MYFILES_DOWNLOAD_INSERT_URI:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

.field private mNetworkChangeNotifier:Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://myfiles"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "download_history"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->MYFILES_DOWNLOAD_INSERT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    return-void
.end method

.method public static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->lambda$checkPermission$1(Landroid/content/SharedPreferences;Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->lambda$deleteTemporaryFilesIfRequired$0()V

    return-void
.end method

.method private getLastActivity()Landroid/app/Activity;
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v1, :cond_2

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isActiveNetworkMetered(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$checkPermission$1(Landroid/content/SharedPreferences;Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "pref_request_permission_storage"

    const/4 v0, 0x1

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    array-length p0, p3

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget p0, p3, p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$deleteTemporaryFilesIfRequired$0()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".org.chromium.Chromium"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->delete(Ljava/io/File;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_delete_temporary_files"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addAutoResumableDownload(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/download/DownloadManagerService;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mNetworkChangeNotifier:Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    new-instance v0, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;-><init>(Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mNetworkChangeNotifier:Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;

    :cond_0
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addCompletedSaveAllImageDownload(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 14

    const-string v0, "DownloadServiceHelper"

    const-string v1, "Add save all image to ADM id "

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v5, v2

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getBytesReceived()J

    move-result-wide v2

    :cond_2
    move-wide v8, v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v13

    invoke-virtual/range {v3 .. v13}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "Failed to add the image item to DownloadManager: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public checkPermission(Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isAtLeastRos()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_request_permission_storage"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->showPermissionAlert(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void

    :cond_1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/f;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/f;-><init>(Landroid/content/SharedPreferences;Ljava/lang/Runnable;)V

    invoke-static {p2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public clearDownloadResumeCount(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->getAutoResumeCountSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public deleteOldDBIfRequired(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "download_delete_old_db"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p1, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDeleteOldDb:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getAllDownloads(Z)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public deleteTemporaryFilesIfRequired()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "download_delete_temporary_files"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isAtLeastRos()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    new-instance p0, Ljava/lang/Thread;

    new-instance v0, LN4/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LN4/a;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public getAutoResumeCountSharedPreference()Landroid/content/SharedPreferences;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    const-string v0, "DownloadRetryCount"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getLastFocusedActivity()Landroid/app/Activity;
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->getLastActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt p0, v1, :cond_2

    instance-of p0, v0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_2

    move-object p0, v0

    check-cast p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getParentTask()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    if-eq v3, p0, :cond_3

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    :cond_4
    instance-of v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    if-nez v1, :cond_5

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    if-ne p0, v1, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    if-ne v2, p0, :cond_6

    return-object v1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public openContent(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 9

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v5

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->checkReadStoragePermissionAndOpenFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    return-void
.end method

.method public processDownloadRequest(Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getCallbackID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const-string p2, "application/vnd.oma.dd+xml"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getMimetype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/OmaDownloadController;->getInstance()Lcom/sec/android/app/sbrowser/download/OmaDownloadController;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/app/sbrowser/download/OmaDownloadController;->addMapping(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->setCurrentPreDownloadInfo(Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;)V

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->checkConditionsAndStartDownload(Landroid/app/Activity;)V

    return-void
.end method

.method public provideDownloadInfoToMyFiles(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "download_uri"

    const-string v3, "_data"

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getFilePathForUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "mime_type"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "date_added"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->MYFILES_DOWNLOAD_INSERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "DownloadServiceHelper"

    const-string v0, "Failed to insert into My Files DB"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public removeAutoResumableDownload(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->stopListenToConnectionChangeIfNotNeeded(Ljava/util/List;)V

    return-void
.end method

.method public showSnackBar(Landroid/app/Activity;I)V
    .locals 2

    if-eqz p1, :cond_1

    const v0, 0x7f140fcf

    if-ne p2, v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isAtLeastTos()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const p2, 0x7f140fd0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "DownloadServiceHelper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public stopListenToConnectionChangeIfNotNeeded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mNetworkChangeNotifier:Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;->destroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->mNetworkChangeNotifier:Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;

    :cond_0
    return-void
.end method

.method public updateDownloadResumeCount(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->getAutoResumeCountSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
