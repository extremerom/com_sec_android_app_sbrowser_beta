.class public Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;


# instance fields
.field private mCompletedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCompletedFilesBackup:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCompletedOffTheRecord:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFilesToDownload:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mOffTheRecordItems:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mOperationPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOperationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mFilesToDownload:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedFilesBackup:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOperationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOperationPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOffTheRecordItems:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedOffTheRecord:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->sInstance:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->sInstance:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->sInstance:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addCompletedFile()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public addCompletedFilesBackup()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedFilesBackup:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method

.method public addCompletedOffTheRecordItems()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedOffTheRecord:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public addFilesToDownload(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mFilesToDownload:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public addOffTheRecordItems(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOffTheRecordItems:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public getCompletedFiles()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getCompletedFilesBackup()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedFilesBackup:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getCompletedOffTheRecordItems()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedOffTheRecord:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getFilesToDownload()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mFilesToDownload:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getOffTheRecordItems()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOffTheRecordItems:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getOperationPaused()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOperationPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getOperationRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOperationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getProgressPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mFilesToDownload:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public needToRetry()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOperationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOperationPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p0

    sub-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCompletedFiles(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setCompletedFilesBackup(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedFilesBackup:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setCompletedOffTheRecordItems(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mCompletedOffTheRecord:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setFilesToDownload(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mFilesToDownload:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setOffTheRecordItems(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOffTheRecordItems:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setOperationPaused(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOperationPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setOperationRunning(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->mOperationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
