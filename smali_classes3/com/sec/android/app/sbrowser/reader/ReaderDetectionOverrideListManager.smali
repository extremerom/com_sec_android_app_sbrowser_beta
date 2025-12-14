.class Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# instance fields
.field private mIsNativeInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/reader/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;

    return-object v0
.end method

.method private loadReadabilityDetectionOverrideList()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/override_list.json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReaderHelper;->loadReadabilityDetectionOverrideList(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fetch()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "override_list"

    const-string v3, "ReaderDetection"

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->createFetch(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "ReaderDetectionOverrideListManager"

    const-string p1, "Error while fetching override list from GlobalConfig"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 2

    const-string v0, "ReaderDetectionOverrideListManager"

    const-string v1, "Successfully fetched override list from GlobalConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const-string v1, "override_list.json"

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;->mIsNativeInitialized:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;->loadReadabilityDetectionOverrideList()V

    :cond_0
    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;->mIsNativeInitialized:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;->loadReadabilityDetectionOverrideList()V

    return-void
.end method
