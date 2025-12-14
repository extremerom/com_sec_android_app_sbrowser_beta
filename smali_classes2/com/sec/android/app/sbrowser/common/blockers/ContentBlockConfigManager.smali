.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$LazyHolder;,
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;,
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;,
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateType;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

.field private mIsConfigUpdated:Z

.field private mIsInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;)Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mConfig:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mIsConfigUpdated:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->fetchConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    return-void
.end method

.method private configExists(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFileUtils;->getConfig(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getStatusMessage(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->installConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->parseConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V

    return-void
.end method

.method private fetchConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
    .locals 2
    .param p2    # Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ContentBlock.ConfigManager"

    const-string v1, "fetchConfig"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->updateApprovedList(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v0

    return-object v0
.end method

.method private getStatusMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const-string p0, "no updates"

    return-object p0

    :cond_0
    const-string p0, "update available"

    return-object p0

    :cond_1
    const-string p0, "update failed"

    return-object p0
.end method

.method private initializeInternal(Landroid/content/Context;Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
    .locals 2
    .param p3    # Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->configExists(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->fetchConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mIsInitialized:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;->onCompleted()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->installConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isNeedToUpdateConfigFile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "ContentBlock.ConfigManager"

    const-string p1, "We don\'t need to update config due to update period"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    return-void

    :cond_4
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mIsConfigUpdated:Z

    if-eqz p2, :cond_5

    return-void

    :cond_5
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mIsConfigUpdated:Z

    new-instance v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;)V

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private installConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
    .locals 2
    .param p2    # Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ContentBlock.ConfigManager"

    const-string v1, "installConfig"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    move-result-object p2

    new-instance v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$5;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parseConfig"

    const-string v1, "ContentBlock.ConfigManager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFileUtils;->getConfig(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$6;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;)V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mConfig:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    if-eqz v2, :cond_0

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerConfigBackup(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerConfigBackup(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mConfig:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    if-eqz p1, :cond_1

    const-string p1, "parseConfig: loading previously stored config"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mConfig:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_5

    :cond_2
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mIsInitialized:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;->invokeOnResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mConfig:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    return-object p0
.end method

.method public initialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
    .locals 2
    .param p2    # Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ContentBlock.ConfigManager"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->initializeInternal(Landroid/content/Context;Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    return-void
.end method

.method public initializeForMenu(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
    .locals 2
    .param p2    # Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ContentBlock.ConfigManager"

    const-string v1, "initializeForMenu"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->initializeInternal(Landroid/content/Context;Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    return-void
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->mIsInitialized:Z

    return p0
.end method
