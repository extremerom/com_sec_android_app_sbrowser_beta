.class public Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# static fields
.field private static final sLock:Ljava/lang/Object;


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->lambda$openDownloadedContent$0(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZ)V

    return-void
.end method

.method private addDownloadIdMapping(JLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getContentUriFromDownloadManager(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 2

    const-string v0, "DownloadDelegate"

    const-string v1, "download"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "unable to get content URI from DownloadManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to get content URI from DownloadManager due to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "download_id_mappings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private isAllowed(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isHttpsUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isHttpUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$openDownloadedContent$0(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZ)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->getLaunchIntentFromDownloadId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->resolveIntent(Landroid/content/Intent;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->fireOpenIntentForDownload(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method private openDownloadedContent(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)V
    .locals 8

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v6

    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/sec/android/app/sbrowser/download/c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/c;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZ)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeDownloadIdMapping(Ljava/lang/String;)J
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v1, -0x1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-wide v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/DownloadManager;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->mContext:Landroid/content/Context;

    new-instance v3, LU0/u;

    invoke-direct {v3, v1}, LU0/u;-><init>(Landroid/content/Context;)V

    iget-object v1, v3, LU0/u;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v1

    xor-int/lit8 v10, v1, 0x1

    invoke-static/range {p4 .. p4}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    :goto_0
    move-object/from16 v3, p9

    goto :goto_3

    :cond_0
    if-eqz p10, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p7

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->isAllowed(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static/range {p7 .. p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v11, v1

    move-object/from16 v1, p8

    goto :goto_1

    :cond_2
    move-object/from16 v1, p8

    move-object v11, v4

    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->isAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {p8 .. p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v12, v1

    goto :goto_2

    :cond_3
    move-object v12, v4

    :goto_2
    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v12}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v1

    goto :goto_0

    :goto_3
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->addDownloadIdMapping(JLjava/lang/String;)V

    return-wide v1
.end method

.method public addCompletedDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Z
    .locals 13

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v4, v1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getBytesReceived()J

    move-result-wide v1

    :cond_1
    move-wide v7, v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v12

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->setSystemDownloadId(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_1
    const-string p1, "Failed to add the download item to DownloadManager: "

    const-string v1, "DownloadDelegate"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Failed to remove the unsuccessful download"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public broadcastDownloadSuccessful(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;I)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->notifyDownloadApkCompleted(Landroid/content/Context;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->removeNotification(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public handleAutoOpenAfterDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getSystemDownloadId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->openDownloadedContent(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)V

    return-void
.end method

.method public removeCompletedDownload(Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->removeDownloadIdMapping(Ljava/lang/String;)J

    move-result-wide v0

    if-eqz p2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->mContext:Landroid/content/Context;

    const-string p1, "download"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    const/4 p1, 0x1

    new-array p1, p1, [J

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->remove([J)I

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DownloadDelegate"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public showDownloadCompletePopup(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;ZJI)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download complete broadcast sent isComplete : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "download_complete_popup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filepath"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "originalurl"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "referrer"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mimetype"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "guid"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "download_notification_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p5, "isOffRecord"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v1

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p5, "download_complete"

    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p5, "system_download_id"

    invoke-virtual {v0, p5, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->mContext:Landroid/content/Context;

    invoke-static {p3}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object p3

    invoke-virtual {p3, v0}, Ll2/b;->c(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/download/OmaDownloadController;->isOmaMimeType(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    const-string p2, "8811"

    goto :goto_1

    :cond_1
    const-string p2, "8810"

    :goto_1
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide p4

    invoke-static {p0, p2, p3, p4, p5}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
