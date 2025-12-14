.class public Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private mBasePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

.field private mFlowType:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mSource:Ljava/lang/String;

.field private mTargetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->lambda$onStartCommand$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic c(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->lambda$getFileSizes$5(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->lambda$getDbFileSize$4(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private deleteTempFolders()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v2, "/backup"

    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v3, "/restore"

    invoke-static {v1, v2, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "backup.zip"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "InstantBackupRestoreService"

    const-string v0, "backupListFile not exist!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->lambda$onStartCommand$2()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->lambda$onStartCommand$3()V

    return-void
.end method

.method private getCopyMode(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    const-string v1, "com.samsung.android.intent.action.REQUEST_INSTANT_SNAPSHOT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RESTORE"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mFlowType:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "com.samsung.android.intent.action.REQUEST_INSTANT_RESTORE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    :cond_2
    return-object v0
.end method

.method private getDbFileSize()Ljava/lang/Long;
    .locals 6

    const-string v2, "quickaccess.db"

    const-string v3, "media_history.db"

    const-string v0, "SBrowser.db"

    const-string v1, "intent_blocker.db"

    const-string v4, "SmartTabDelete.db"

    const-string v5, "SyncMetaInfo.db"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/pen/ocr/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/sdk/pen/ocr/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/backup/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/backup/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/backup/c;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method private getFileSizes()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string p0, "InstantBackupRestoreService"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SS[FileShare]"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lt9/c;->e(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/backup/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private getGrantedTargetPackage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SmartSwitch"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.sec.android.easyMover"

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.android.scloud"

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$getDbFileSize$4(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getFileSizes$5(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_cryptonito"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    const-string v0, "InstantBackupRestoreService"

    const-string v1, "Restore onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->onCompleteRestore()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private synthetic lambda$onStartCommand$1()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->enableBnRDocumentProvider(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->deleteTempFolders()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->makeSnapShotJson()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private synthetic lambda$onStartCommand$2()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->enableBnRDocumentProvider(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->restoreBackupData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->deleteTempFolders()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->initTerraceHelper(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onStartCommand$3()V
    .locals 2

    const-string v0, "InstantBackupRestoreService"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->enableBnRDocumentProvider(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->prepare()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private makeSnapShotJson()V
    .locals 14

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setMode(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)V

    new-instance v0, Lt9/b;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    const-string v2, "InstantBackupRestoreService"

    invoke-direct {v0, v1, v2}, Lt9/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lt9/c;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lt9/c;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v6, "/backup"

    invoke-static {v4, v5, v6}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "backuplist.json"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mBasePath:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->copyBackupFiles(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const-string v1, "makeSnapShotJson copyBackupFiles no data!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Lt9/b;->a(Landroid/content/Intent;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "creating snapshot file error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p0, v5, v5}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendSnapShotResponse(Ljava/lang/String;II)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->zipBackupFolder()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v0, "makeSnapShotJson zipBackupFolder failed!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p0, v7, v7}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendSnapShotResponse(Ljava/lang/String;II)V

    return-void

    :cond_2
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8}, Lt9/c;->e(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "_cryptonito"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "backup.zip"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-direct {p0, v6, v11, v9, v12}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->putJson(Lorg/json/JSONArray;Ljava/io/File;IZ)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_4
    const-string v9, "files"

    invoke-virtual {v4, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "RESTORE"

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mFlowType:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v9, "/"

    if-eqz v6, :cond_5

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "restore"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    :goto_2
    const-string v6, "root"

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11, v10}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->makeUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lt9/c;->h(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Lt9/b;->a(Landroid/content/Intent;Ljava/io/File;)I

    move-result v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] cpCount["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p0, v5, v5}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendSnapShotResponse(Ljava/lang/String;II)V

    return-void

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception while operating json : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p0, v7, v7}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendSnapShotResponse(Ljava/lang/String;II)V

    return-void
.end method

.method private makeUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->getGrantedTargetPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/backup/BnRDocumentProvider;->getGrantedSingleDocumentUri(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private onCompleteRestore()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->updateAllWidgetInstances(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mSource:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendInstantRestoreResponse(Ljava/lang/String;II)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private prepare()V
    .locals 24

    const-string v1, "InstantBackupRestoreService"

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setMode(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)V

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->getDbFileSize()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->getFileSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/sbrowser/backup/c;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sec/android/app/sbrowser/backup/c;-><init>(I)V

    invoke-interface {v5, v7, v8}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-int/lit8 v13, v4, 0x1

    add-long v16, v2, v8

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/backup/c;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/backup/c;-><init>(I)V

    invoke-interface {v0, v6, v2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-string v0, "Prepared %d(db:%d, file:%d) Files, Total size: %dB (db:%dB, file: %dB), Largest file size: %dB"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->getEstimatedCopyTime()J

    move-result-wide v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->getEstimatedZipTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v13}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->getEstimatedSerializeTime(I)J

    move-result-wide v2

    add-long v18, v0, v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->getEstimatedCopyTime()J

    move-result-wide v20

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-wide/from16 v14, v16

    invoke-virtual/range {v10 .. v23}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendPrepareResponse(IIIJJJJJ)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while preparing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v2

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v2 .. v15}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendPrepareResponse(IIIJJJJJ)V

    return-void
.end method

.method private putJson(Lorg/json/JSONArray;Ljava/io/File;IZ)V
    .locals 4

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p2}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->makeUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "path"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "rPath"

    invoke-virtual {v0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "modifiedAt"

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p2

    invoke-virtual {v1, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "type"

    const-string p3, "db"

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "metadata"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p0, "InstantBackupRestoreService"

    const-string p1, "putJson file size is 0"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private restoreBackupData()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setMode(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->preventSavingTabList(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->unzipBackupFile()Z

    move-result v0

    const-string v2, "InstantBackupRestoreService"

    if-nez v0, :cond_0

    const-string v0, "restoreBackupData unzipBackupFile failed!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v1}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendInstantRestoreResponse(Ljava/lang/String;II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v1}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->copyRestoreFiles(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "restoreBackupData copyRestoreFiles failed!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v1}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendInstantRestoreResponse(Ljava/lang/String;II)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->resetAccountData(Landroid/content/Context;)V

    return-void
.end method

.method private unzipBackupFile()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/restore/backup.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v2, "/restore"

    invoke-static {v1, p0, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->backupUnzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    return p0
.end method

.method private zipBackupFolder()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v2, "/backup"

    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "backup.zip"

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->backupZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/DataHelper;

    new-instance v1, Lcom/google/firebase/messaging/z;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/backup/DataHelper;-><init>(Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 p2, 0x1

    const/4 p3, 0x2

    const-string v0, "InstantBackupRestoreService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SOURCE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mSource:Ljava/lang/String;

    const-string v2, "TARGET_PACKAGE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mTargetPackage:Ljava/lang/String;

    const-string v2, "FLOW_TYPE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mFlowType:Ljava/lang/String;

    const-string v2, "delete"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mBasePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->getCopyMode(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->startForegroundInternal(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)V

    if-eqz v1, :cond_6

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "com.samsung.android.intent.action.NOTICE_INSTANT_TASK_CANCELED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v4, "com.samsung.android.intent.action.REQUEST_INSTANT_RESTORE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v4, "com.samsung.android.intent.action.REQUEST_PREPARE_SBROWSER"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, p3

    goto :goto_0

    :sswitch_3
    const-string v4, "com.samsung.android.intent.action.NOTICE_INSTANT_UPLOAD_DONE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    goto :goto_0

    :sswitch_4
    const-string v4, "com.samsung.android.intent.action.REQUEST_INSTANT_SNAPSHOT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->enableBnRDocumentProvider(Z)V

    if-eqz p1, :cond_5

    const-string p1, "delete is true, deleteTempFolders"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->deleteTempFolders()V

    :cond_5
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    :pswitch_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/b;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/backup/b;-><init>(Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :pswitch_2
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/sec/android/app/sbrowser/backup/b;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/backup/b;-><init>(Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;I)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->enableBnRDocumentProvider(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->deleteTempFolders()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    :pswitch_4
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/sec/android/app/sbrowser/backup/b;

    invoke-direct {p2, p0, v3}, Lcom/sec/android/app/sbrowser/backup/b;-><init>(Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;I)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_6
    const-string p0, "onReceive : intent action is NULL!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p3

    :catch_0
    const-string p0, "IOException while getting base path"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2cbe1068 -> :sswitch_4
        -0x24d50a9f -> :sswitch_3
        -0x90fcf3d -> :sswitch_2
        0x59eaa1a -> :sswitch_1
        0x70fed434 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startForegroundInternal(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    const v1, 0x7f1400d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    const v1, 0x7f1400cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    if-ne p1, v2, :cond_1

    const p1, 0x7f140825

    goto :goto_1

    :cond_1
    const p1, 0x7f140826

    :goto_1
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, LU0/o;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->mContext:Landroid/content/Context;

    const-string v2, "SBROWSER_BACKUP_RESTORE_NOTIFICATION_CHANNEL"

    invoke-direct {v0, v1, v2}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v0, LU0/o;->z:Landroid/app/Notification;

    const v2, 0x7f08070b

    iput v2, v1, Landroid/app/Notification;->icon:I

    invoke-static {p1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, LU0/o;->f:Ljava/lang/CharSequence;

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, LU0/o;->e(I)V

    const/16 p1, 0x8

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LU0/o;->f(IZ)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1, v1}, LU0/o;->f(IZ)V

    invoke-virtual {v0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p1

    const/16 v0, 0x322

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
