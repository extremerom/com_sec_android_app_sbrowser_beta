.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$LazyHolder;,
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;,
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ResultType;
    }
.end annotation


# instance fields
.field private mAAABlockList:Ljava/nio/ByteBuffer;

.field private mAAAMinLevelGC:I

.field private mDefaultContentBlockList:Ljava/nio/ByteBuffer;

.field private mFiltersDelimiterBuffer:Ljava/nio/ByteBuffer;

.field private mLoadedFilterSize:I

.field private mMaxFilterSize:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mAAAMinLevelGC:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mLoadedFilterSize:I

    return-void
.end method

.method private getContentBlockData(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7

    const-string v0, "getContentBlockData - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".contentBlocker.contentProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v3, "getKeyInfo"

    invoke-virtual {p1, v3, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const-string v4, "keyInfo"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "r"

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    if-gez v6, :cond_2

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    move-object v2, v5

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    move-object v2, v5

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    move-object v2, v5

    goto :goto_1

    :cond_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_2
    move-exception p0

    :goto_1
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_5

    :cond_3
    move-object v5, v2

    :goto_3
    :try_start_9
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_4
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_0

    const-string v3, "ContentBlock.FilterDataManager"

    if-eqz v1, :cond_7

    :try_start_b
    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->maybeFilterEncrypted(Ljava/nio/ByteBuffer;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "getContentBlockData keyInfo null and filters encrypted"

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": content block data obtained, buffer size = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is using deprecated data encryption, aborting."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_0

    :cond_8
    :goto_4
    return-object v2

    :goto_5
    if-eqz v1, :cond_9

    :try_start_c
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p2

    :try_start_d
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_7

    :cond_9
    :goto_6
    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_1

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    return-object v2
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    move-result-object v0

    return-object v0
.end method

.method private getInterfaceVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "com.samsung.android.sbrowser.contentBlocker.interfaceVersion"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getInterfaceVersion "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p0
.end method

.method private varargs getTotalSize([Ljava/nio/ByteBuffer;)I
    .locals 3

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private declared-synchronized initContentBlockerInternal(Landroid/content/Context;Ljava/util/ArrayList;Ljava/nio/ByteBuffer;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;)V
    .locals 10
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :try_start_0
    new-instance p1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;-><init>(I)V

    invoke-virtual {p4, p1}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;->invokeOnResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x1900000

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mMaxFilterSize:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x1e00000

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mMaxFilterSize:I

    :goto_0
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_6

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ContentBlock.FilterDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initContentBlockerInternal: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not yet installed, ignoring for now"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p1, v6}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->isAuthorizedInterface(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, p1, v6}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getContentBlockData(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "ContentBlock.FilterDataManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": initContentBlockerInternal failed. "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_4

    const-string v6, "filter data is null"

    goto :goto_2

    :cond_4
    const-string v6, "capacity == 0."

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "ContentBlock.FilterDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": initContentBlockerInternal failed. interfaceVersion error"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 p1, 0x0

    move v4, v0

    move v5, v4

    move v6, v5

    :goto_4
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_b

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    add-int/2addr v7, v5

    iget v9, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mMaxFilterSize:I

    if-le v7, v9, :cond_7

    const-string p2, "ContentBlock.FilterDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initContentBlockerInternal filtersSize is greater than mMaxFilterSize of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mMaxFilterSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :cond_7
    if-lez v6, :cond_8

    :try_start_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mFiltersDelimiterBuffer:Ljava/nio/ByteBuffer;

    filled-new-array {p1, v9}, [Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mergeFilter([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_5

    :catch_0
    move-exception v7

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    filled-new-array {p1, v8}, [Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mergeFilter([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_7

    :goto_6
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initContentBlockerInternal mergeFilter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;)V

    :goto_7
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    :goto_8
    if-eqz p3, :cond_d

    if-lez v6, :cond_c

    :try_start_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mFiltersDelimiterBuffer:Ljava/nio/ByteBuffer;

    filled-new-array {p1, p2}, [Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mergeFilter([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_9

    :catch_1
    move-exception p2

    goto :goto_a

    :cond_c
    :goto_9
    filled-new-array {p1, p3}, [Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mergeFilter([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/2addr v5, p2

    goto :goto_b

    :goto_a
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initContentBlockerInternal merge additional filter: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;)V

    :goto_b
    const-string p2, "ContentBlock.FilterDataManager"

    const-string p3, "initContentBlockerInternal additional filter merged"

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p2

    if-nez p2, :cond_e

    goto :goto_c

    :cond_e
    const-string p2, "ContentBlock.FilterDataManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initContentBlockerInternal success - mergedAppSize : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mergedFiltersCapacity : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Bytes"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;

    invoke-direct {p2, p1, v6, v3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;-><init>(Ljava/nio/ByteBuffer;ILjava/util/ArrayList;)V

    invoke-virtual {p4, p2}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;->invokeOnResult(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_f
    :goto_c
    :try_start_6
    const-string p1, "ContentBlock.FilterDataManager"

    const-string p2, "initContentBlockerInternal failed. mergedByteBuffer is null or capacity 0."

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;

    invoke-direct {p1, v0, v3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p4, p1}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;->invokeOnResult(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :goto_d
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method private initializeDelimiterIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mFiltersDelimiterBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$delim$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :try_start_0
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mFiltersDelimiterBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ContentBlock.FilterDataManager"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private maybeFilterEncrypted(Ljava/nio/ByteBuffer;)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    :cond_1
    move v0, p0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-gez v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method private varargs mergeFilter([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getTotalSize([Ljava/nio/ByteBuffer;)I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mergeFilter: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlock.FilterDataManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAdditionalContentBlockData(Landroid/content/Context;)Ljava/nio/ByteBuffer;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isSecretModePreferenceEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->isFullAntiAdblockAvoidanceEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    const-string v1, "anti_adblock_filters.txt"

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersFileUtils;->getFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "getAdditionalContentBlockData Exception: "

    const-string v2, "ContentBlock.FilterDataManager"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mAAABlockList:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mAAABlockList:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_2
    :goto_3
    :try_start_5
    const-string v0, "content_block/anti_adblock_filters.txt"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    const-string p1, "getAdditionalContentBlockData success"

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mAAABlockList:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    filled-new-array {v0, p1}, [Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mergeFilter([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_3
    return-object v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mAAABlockList:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLoadedFilterSize()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mLoadedFilterSize:I

    return p0
.end method

.method public initContentBlocker(Landroid/content/Context;Ljava/util/ArrayList;Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;I)V
    .locals 2
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;",
            "I)V"
        }
    .end annotation

    const-string v0, "ContentBlock.FilterDataManager"

    const-string v1, "initContentBlocker"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->initializeDelimiterIfNeeded()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;

    invoke-direct {v0, p0, p2, p5, p4}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;Ljava/util/ArrayList;ILcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->initContentBlockerInternal(Landroid/content/Context;Ljava/util/ArrayList;Ljava/nio/ByteBuffer;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;)V

    return-void
.end method

.method public initDefaultContentBlocker(Landroid/content/Context;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->initialize(Landroid/content/Context;Z)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mDefaultContentBlockList:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_0

    invoke-interface {p2, v1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;->onCompleted(Z)V

    return-void

    :cond_0
    const-string p1, "ContentBlock.FilterDataManager"

    const-string v0, "initDefaultContentBlocker"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->initDefaultContentBlocker(Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V

    return-void
.end method

.method public isAuthorizedInterface(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->initializeDelimiterIfNeeded()V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getInterfaceVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "API_1.0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "ContentBlock.FilterDataManager"

    const-string p1, "isAuthorizedInterface failed. check interfaceVersion."

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isFullAntiAdblockAvoidanceEnabled(Z)Z
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mAAAMinLevelGC:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mAAAMinLevelGC:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public resetContentBlocker()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->initialized()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ContentBlock.FilterDataManager"

    const-string v2, "resetContentBlocker"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->resetContentBlocker()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mLoadedFilterSize:I

    :cond_0
    return-void
.end method

.method public resetDefaultContentBlocker()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->defaultInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContentBlock.FilterDataManager"

    const-string v1, "resetDefaultContentBlocker"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->resetDefaultContentBlocker()V

    :cond_0
    return-void
.end method

.method public setAAABlockList(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mAAABlockList:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setAAAMinLevel(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mAAAMinLevelGC:I

    return-void
.end method

.method public setDefaultContentBlockList(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->mDefaultContentBlockList:Ljava/nio/ByteBuffer;

    return-void
.end method
