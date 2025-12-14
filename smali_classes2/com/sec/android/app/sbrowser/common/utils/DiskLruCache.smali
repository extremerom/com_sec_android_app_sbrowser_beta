.class public final Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;,
        Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;,
        Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;
    }
.end annotation


# instance fields
.field private final mAppVersion:I

.field private final mCleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mDirectory:Ljava/io/File;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mJournalFile:Ljava/io/File;

.field private final mJournalFileTmp:Ljava/io/File;

.field private mJournalWriter:Ljava/io/Writer;

.field private final mLruEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSize:J

.field private mRedundantOpCount:I

.field private mSize:J

.field private final mValueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mCleanupCallable:Ljava/util/concurrent/Callable;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mDirectory:Ljava/io/File;

    move v2, p2

    iput v2, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mAppVersion:I

    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalFile:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalFileTmp:Ljava/io/File;

    move/from16 v1, p3

    iput v1, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    move-wide/from16 v1, p4

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mMaxSize:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mDirectory:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    return p0
.end method

.method private declared-synchronized checkNotClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Z)V
    .locals 4

    const-string v0, "CLEAN "

    const-string v1, "REMOVE "

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object v3

    if-ne v3, p1, :cond_5

    if-eqz p2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->d(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->validateDirtyEntries(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-direct {p0, v2, p2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->processAndCleanEdit(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;Z)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mRedundantOpCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mRedundantOpCount:I

    const/4 p1, 0x0

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->e(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->d(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Z

    move-result p1

    const/16 v3, 0xa

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->b(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->b(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->f(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->b(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->i(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2
    iget-wide p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mSize:J

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mMaxSize:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mCleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mRedundantOpCount:I

    return-void
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->deleteContents(Ljava/io/File;)V

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->completeEdit(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Error, internal directory creation failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->trimToSize()V

    return-void
.end method

.method private isValidOperation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v5, "CLEAN"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq p0, v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v0, p0, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private journalRebuildRequired()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mRedundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    if-lez p2, :cond_0

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->openExistingCache(Ljava/io/File;IIJ)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v6}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->rebuildJournal()V

    return-object v6

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static openExistingCache(Ljava/io/File;IIJ)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
    .locals 7

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    :try_start_0
    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->readJournal()V

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->processJournal()V

    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p1, Ljava/io/FileWriter;

    iget-object p2, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalFile:Ljava/io/File;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 p2, 0x2000

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->delete()V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Journal file is corrupted."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Journal file does not exists."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processAndCleanEdit(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;Z)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    if-ge v0, v1, :cond_2

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->h(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->g(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v3, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)[J

    move-result-object v5

    aput-wide v1, v5, v0

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mSize:J

    sub-long/2addr v5, v3

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mSize:J

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processJournal()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :goto_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    if-ge v3, v2, :cond_0

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mSize:J

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mSize:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->e(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V

    :goto_2
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    if-ge v3, v2, :cond_2

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->g(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->h(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private readJournal()V
    .locals 9

    const-string v0, ", "

    const-string v1, "unexpected journal header: ["

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_0
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mAppVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    :goto_0
    :try_start_1
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->readJournalLine(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected journal line: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :cond_1
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "REMOVE"

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isValidOperation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    invoke-direct {v2, p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "CLEAN"

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isValidOperation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->f(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V

    const/4 p1, 0x0

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->e(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V

    invoke-static {v2, p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->j(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;[Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "DIRTY"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isValidOperation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    invoke-direct {p1, p0, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)V

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->e(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V

    return-void

    :cond_4
    const-string v0, "READ"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isValidOperation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unexpected journal line: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    :goto_0
    const/16 v0, 0x2000

    :try_start_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalFileTmp:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mAppVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object v5

    const/16 v6, 0xa

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLEAN "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->b(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->i(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v3

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DIRTY "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->b(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v2

    goto :goto_4

    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v1

    :try_start_9
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_6
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :goto_8
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method private trimToSize()V
    .locals 4

    :goto_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mSize:J

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mMaxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateDirtyEntries(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    if-ge v0, v1, :cond_1

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->h(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "edit didn\'t create file "

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 2

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "\r"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "keys must not contain spaces or newlines: \""

    const-string v1, "\""

    invoke-static {v0, p1, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->trimToSize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public delete()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->close()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mDirectory:Ljava/io/File;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized edit(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;
    .locals 5

    const-string v0, "DIRTY "

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->checkNotClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v3}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    monitor-exit p0

    return-object v2

    :cond_2
    :goto_0
    :try_start_2
    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    invoke-direct {v2, p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)V

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->e(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->checkNotClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->trimToSize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->checkNotClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    if-nez v0, :cond_1

    const-string p1, "DiskLruCache"

    const-string v0, "[get] entry is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :try_start_2
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->d(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "DiskLruCache"

    const-string v0, "[get] entry is not readable"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_3
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    new-array v2, v2, [Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_4
    iget v5, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    if-ge v4, v5, :cond_3

    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->g(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;

    const-string v4, "READ"

    invoke-virtual {v0, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mRedundantOpCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mRedundantOpCount:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mCleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_4
    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;

    invoke-direct {p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;-><init>([Ljava/io/InputStream;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_6
    const-string v0, "DiskLruCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[get] failed IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    if-ge v3, p1, :cond_5

    aget-object p1, v2, v3

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    monitor-exit p0

    return-object v1

    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mDirectory:Ljava/io/File;

    return-object p0
.end method

.method public isBitmapStored(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->checkNotClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    if-ge v1, v2, :cond_2

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->g(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->checkNotClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mValueCount:I

    if-ge v1, v2, :cond_3

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->g(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mSize:J

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mSize:J

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mRedundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mRedundantOpCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mJournalWriter:Ljava/io/Writer;

    const-string v2, "REMOVE"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mLruEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->mCleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return v1

    :cond_5
    :goto_1
    monitor-exit p0

    return v1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
