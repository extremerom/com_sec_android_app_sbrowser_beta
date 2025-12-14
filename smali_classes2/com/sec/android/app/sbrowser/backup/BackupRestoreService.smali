.class public Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private mAction:I

.field private mBackupFileSize:J

.field private mBasePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

.field private mErrorCode:I

.field private mFileShareHelper:Lt9/b;

.field private mIntent:Landroid/content/Intent;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:I

.field private mSavePath:Ljava/lang/String;

.field private mSecUtil:Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;

.field private mSource:Ljava/lang/String;

.field private mUriData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifyKey:I

.field mVerifyingReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;-><init>(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mVerifyingReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->onCompleteRestore()V

    return-void
.end method

.method private await()V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSource:Ljava/lang/String;

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendBackupResponse(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mAction:I

    return p0
.end method

.method private backup()J
    .locals 5

    const-string v0, "BackupRestoreService"

    const-string v1, "backup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->deleteTempFiles()V

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setMode(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_START:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setProgressStep(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->copyBackupFiles(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v3, v4}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    return-wide v1

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_FIRST_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setProgressStep(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->zipBackupFolder()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_SECOND_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setProgressStep(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->encryptAndCopyFile()J

    move-result-wide v0

    sget-object p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_FINAL:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setProgressStep(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;)V

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private copyAndDecryptFile()Z
    .locals 10

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSavePath:Ljava/lang/String;

    const-string v3, "/backup.enc"

    invoke-static {v1, v2, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mUriData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "Failed to copy encrypt file from designated path! : "

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "BackupRestoreService"

    const/4 v9, 0x1

    if-lez v3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mFileShareHelper:Lt9/b;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3, v2}, Lt9/b;->c(Landroid/content/Intent;Ljava/io/File;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    invoke-direct {p0, v9, v9, v5, v6}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    const-string p0, "Failed to copy encrypt file from designated path!"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v8}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v7

    :cond_0
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v9, v0, v5, v6}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    invoke-static {v0, v4, v8}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSecUtil:Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->decryptFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v9, v9, v5, v6}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    const-string p0, "Failed to decrypt file!"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    return v9
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Lcom/sec/android/app/sbrowser/backup/DataHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    return-object p0
.end method

.method private deleteTempFiles()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v2, "/backup"

    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v3, "/restore"

    invoke-static {v1, v2, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v4, "/backup.zip"

    invoke-static {v2, v3, v4}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v4, "/backup.enc"

    invoke-static {v3, p0, v4}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private encryptAndCopyFile()J
    .locals 10

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v3, "/backup.zip"

    invoke-static {v1, v2, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v4, "/backup.enc"

    invoke-static {v2, v3, v4}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSavePath:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSecUtil:Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->encryptFile(Ljava/io/File;)Z

    move-result v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const-string v8, "BackupRestoreService"

    const/4 v9, 0x1

    if-nez v3, :cond_0

    invoke-direct {p0, v9, v9, v4, v5}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    const-string p0, "Failed to encrypt zip file!"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mUriData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v3, "Failed to copy encrypted file to designated path: "

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mFileShareHelper:Lt9/b;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Lt9/b;->a(Landroid/content/Intent;Ljava/io/File;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    invoke-direct {p0, v9, v0, v4, v5}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    invoke-static {v0, v3, v8}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-wide v6

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v8}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-wide v6

    :cond_1
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v9, v0, v4, v5}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    invoke-static {v0, v3, v8}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-wide v6

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private executeBackup()V
    .locals 9

    iget v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mAction:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->backup()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "BackupRestoreService"

    const-string v3, "fileSize > 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->deleteTempFiles()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSource:Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mResult:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mErrorCode:I

    iget-wide v7, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBackupFileSize:J

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendBackupResponse(Ljava/lang/String;IIJ)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSource:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mVerifyKey:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->await()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->deleteTempFiles()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->executeBackup()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->requestVerifyToSmartSwitch()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->restore()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    return-void
.end method

.method private onCompleteRestore()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->updateAllWidgetInstances(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSource:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mResult:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mErrorCode:I

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBackupFileSize:J

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendRestoreResponse(Ljava/lang/String;IIJ)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private requestVerifyToSmartSwitch()V
    .locals 3

    const-string v0, "BackupRestoreService"

    const-string v1, "requestVerifyToSmartSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mVerifyKey:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.intent.action.RESPONSE_VERIFY_SBROWSER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mVerifyingReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSource:Ljava/lang/String;

    iget p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mVerifyKey:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendVerifyRequest(Ljava/lang/String;I)V

    return-void
.end method

.method private restore()Z
    .locals 5

    const-string v0, "BackupRestoreService"

    const-string v1, "restore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->deleteTempFiles()V

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setMode(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_START:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setProgressStep(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->preventSavingTabList(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->copyAndDecryptFile()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_FIRST_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setProgressStep(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->unzipBackupFile()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_SECOND_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setProgressStep(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->copyRestoreFiles(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v3, 0x0

    invoke-direct {p0, v1, v1, v3, v4}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->resetAccountData(Landroid/content/Context;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_FINAL:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->setProgressStep(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;)V

    return v1
.end method

.method private setResponse(IIJ)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mResult:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mErrorCode:I

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBackupFileSize:J

    return-void
.end method

.method private unzipBackupFile()Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v2, "/backup.zip"

    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v3, "/restore"

    invoke-static {v1, v2, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->backupUnzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    const-string p0, "BackupRestoreService"

    const-string v0, "Failed to unzip restore file!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    return v2
.end method

.method private verifySignature()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.sec.android.easyMover"

    const/high16 v2, 0x8000000

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    :goto_0
    const-string v1, "SHA-256"

    aget-object p0, p0, v0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/backup/FingerPrintUtil;->getFingerPrint(Ljava/lang/String;Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "34:DF:0E:7A:9F:1C:F1:89:2E:45:C0:56:B4:97:3C:D8:1C:CF:14:8A:40:50:D1:1A:EA:4A:C5:A6:5F:90:0A:42"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "verifySignature error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "BackupRestoreService"

    invoke-static {p0, v1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method private zipBackupFolder()Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v2, "/backup"

    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;

    const-string v3, "/"

    invoke-static {v1, v2, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backup.zip"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->backupZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    const-string p0, "BackupRestoreService"

    const-string v0, "Failed to zip backup folder!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    return v2
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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    new-instance v0, Lt9/b;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    const-string v2, "BackupRestoreService"

    invoke-direct {v0, v1, v2}, Lt9/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mFileShareHelper:Lt9/b;

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/DataHelper;

    new-instance v1, Lcom/google/firebase/messaging/z;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/backup/DataHelper;-><init>(Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mDataHelper:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "BackupRestoreService"

    const-string v0, "onStartCommand"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mIntent:Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_0

    const-string v0, "extra is null!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    return v4

    :cond_0
    const-string v5, "SAVE_PATH"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSavePath:Ljava/lang/String;

    const-string v5, "SOURCE"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSource:Ljava/lang/String;

    const-string v5, "ACTION"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mAction:I

    new-instance v5, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;

    const-string v7, "SESSION_KEY"

    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SECURITY_LEVEL"

    invoke-virtual {v3, v8, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;-><init>(Ljava/lang/String;I)V

    iput-object v5, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSecUtil:Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSource:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendBackupResponse(Ljava/lang/String;IIJ)V

    return v4

    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mFileShareHelper:Lt9/b;

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Lt9/b;->b(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mUriData:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getPathUris has no uris : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mUriData:Ljava/util/List;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "mUriData = "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mUriData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    invoke-direct {v1, v0, v0, v6, v7}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->setResponse(IIJ)V

    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_SBROWSER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    :goto_1
    :try_start_1
    iget-object v6, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mBasePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "MANUFACTURER"

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "OTHER_VND"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->setNeedToVerify(Z)V

    if-eqz v3, :cond_4

    const-string v6, "needToVerify"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->verifySignature()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v0, "signature not matched"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSource:Ljava/lang/String;

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendBackupResponse(Ljava/lang/String;IIJ)V

    return v4

    :cond_3
    const-string v6, "signature matched"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->startForegroundInternal(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    if-ne v0, v2, :cond_5

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;

    invoke-direct {v2, v1, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;-><init>(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;Z)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_5
    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_SBROWSER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$2;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$2;-><init>(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_6
    :goto_2
    return v4

    :catch_1
    const-string v3, "IOException while getting base path"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    if-ne v0, v2, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSource:Ljava/lang/String;

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendBackupResponse(Ljava/lang/String;IIJ)V

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v11

    iget-object v12, v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mSource:Ljava/lang/String;

    const-wide/16 v15, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendRestoreResponse(Ljava/lang/String;IIJ)V

    :goto_3
    return v4
.end method

.method public startForegroundInternal(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    const v1, 0x7f1400d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

    const v1, 0x7f1400cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mContext:Landroid/content/Context;

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

    const/16 v0, 0x321

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
