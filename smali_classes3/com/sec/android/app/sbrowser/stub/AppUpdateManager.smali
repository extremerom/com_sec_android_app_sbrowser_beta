.class public Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final sFileLock:Ljava/lang/Object;


# instance fields
.field private mConfigVersion:I

.field private mFakecurrentVersion:Ljava/lang/String;

.field private mForcedVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLowerForcedThanInstalled:Z

.field private mLowerRecommendedThanInstalled:Z

.field private mRecommendedVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->sFileLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;-><init>()V

    return-object v0
.end method

.method private checkForcedVersion(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mForcedVersions:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v1, v0}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v2, v3

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_1

    const-string p1, "AppUpdateManager"

    const-string v0, "checkForcedVersion : lower config"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mLowerForcedThanInstalled:Z

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mLowerForcedThanInstalled:Z

    return-void
.end method

.method private checkRecommendedVersion(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mRecommendedVersions:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v1, v0}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v2, v3

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_1

    const-string p1, "AppUpdateManager"

    const-string v0, "checkRecommendedVersion : lower config"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mLowerRecommendedThanInstalled:Z

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mLowerRecommendedThanInstalled:Z

    return-void
.end method

.method private static getConfigFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/update_versions.json"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    return-object v0
.end method

.method private loadData(Ljava/io/InputStream;)Z
    .locals 5

    const-string v0, "AppUpdateManager"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const-string v1, "get json done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->resetData()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->getVersion()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mConfigVersion:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->getRecommendedVersions()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mRecommendedVersions:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->getForcedVersions()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mForcedVersions:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->getFakeCurrentVerion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mFakecurrentVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->getTestCheck()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mTest:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Completed to load version "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "json load exception : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private writeFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string p0, "AppUpdateManager"

    const-string v0, "writeFile"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->sFileLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    const-string v0, "update_versions.json"

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public checkVersionValidity(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->checkForcedVersion(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->checkRecommendedVersion(Ljava/lang/String;)V

    return-void
.end method

.method public containsForced(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mForcedVersions:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsRecommend(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mRecommendedVersions:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getConfigTesting()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mTest:Ljava/lang/String;

    return-object p0
.end method

.method public getConfigVersion()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mConfigVersion:I

    return p0
.end method

.method public getFakeCurrentVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mFakecurrentVersion:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mFakecurrentVersion:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getForcedVersions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mForcedVersions:Ljava/util/List;

    return-object p0
.end method

.method public getRecommendedVersions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mRecommendedVersions:Ljava/util/List;

    return-object p0
.end method

.method public hasForcedVersionConfig()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mForcedVersions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mForcedVersions:Ljava/util/List;

    const-string v0, ""

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasLowerForcedConfig()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mLowerForcedThanInstalled:Z

    return p0
.end method

.method public hasLowerRecommendConfig()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mLowerRecommendedThanInstalled:Z

    return p0
.end method

.method public hasRecommendedVersionConfig()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mRecommendedVersions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mRecommendedVersions:Ljava/util/List;

    const-string v0, ""

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isConfigExists(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getConfigFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public loadData()Z
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->sFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getConfigFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "AppUpdateManager"

    const-string v1, "no readFile exists."

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->loadData(Ljava/io/InputStream;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return p0

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    :try_start_7
    const-string p0, "AppUpdateManager"

    const-string v1, "Failed to load"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public resetData()V
    .locals 3

    const-string v0, "AppUpdateManager"

    const-string v1, "resetData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mConfigVersion:I

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mTest:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mRecommendedVersions:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mForcedVersions:Ljava/util/List;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mFakecurrentVersion:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mLowerForcedThanInstalled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->mLowerRecommendedThanInstalled:Z

    return-void
.end method

.method public saveVersions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->writeFile(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->resetData()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->resetPrefsForUpdate()V

    return-void
.end method
