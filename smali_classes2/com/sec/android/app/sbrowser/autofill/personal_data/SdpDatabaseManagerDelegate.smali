.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mInitialized:Z

.field private mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;-><init>()V

    return-object v0
.end method

.method private addEngineIfNeeded()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object p0

    const-string v0, "SBrowserWebData"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->exists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->generateResetToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->getParam()Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    move-result-object p0

    invoke-virtual {v2, p0, v1, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p0, "SdpDatabaseManagerDelegate"

    const-string v0, "addEngineIfNeeded(): addEngine() successfully."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static generateResetToken()Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v3

    int-to-char v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmptyTables(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->getTuplesCount(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;

    return-object v0
.end method

.method private getNonSensitiveTables(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->isSensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getTuplesCount(Ljava/lang/String;)I
    .locals 4

    const-string v0, "SELECT guid FROM "

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw p1

    :cond_2
    :goto_1
    return v2
.end method

.method private isSensitive(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "main"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/sdp/SdpDatabase;->isSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private setSensitive(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    move v2, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "main"

    invoke-virtual {v2, v5, v6, v4, v3}, Lcom/samsung/android/knox/sdp/SdpDatabase;->setSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public initialize(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    const-string v0, "SdpDatabaseManagerDelegate"

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mInitialized:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->addEngineIfNeeded()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "SBrowserWebData"

    if-nez p1, :cond_2

    :try_start_1
    new-instance p1, Lcom/samsung/android/knox/sdp/SdpDatabase;

    invoke-direct {p1, v3}, Lcom/samsung/android/knox/sdp/SdpDatabase;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->getNonSensitiveTables(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-nez p2, :cond_3

    const-string p1, "initialize(): There is no non-sensitive table."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mInitialized:Z

    return v2

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->getEmptyTables(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-nez p2, :cond_4

    const-string p1, "initialize(): There are non-sensitive tables but they are not empty."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mInitialized:Z

    return v1

    :cond_4
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    move-result-object p2

    invoke-virtual {p2, v3, v3}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x2

    invoke-virtual {p2, v4, v5}, Lcom/samsung/android/knox/sdp/SdpDatabase;->updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;I)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->setSensitive(Ljava/util/Map;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mInitialized:Z

    const-string p1, "initialize(): setSensitive() was called."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->lock(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/knox/sdp/SdpDatabase;->updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "initialize(): "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mInitialized:Z

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "initialize(): mInitialized == "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mInitialized:Z

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mInitialized:Z

    return p0
.end method

.method public lock()Z
    .locals 5

    const-string v0, "lock(): result == "

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mInitialized:Z

    const/4 v2, 0x0

    const-string v3, "SdpDatabaseManagerDelegate"

    if-nez v1, :cond_0

    const-string p0, "lock(): mInitialized == false"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v1

    const-string v4, "SBrowserWebData"

    invoke-virtual {v1, v4}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->lock(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    invoke-virtual {v1, p0, v4}, Lcom/samsung/android/knox/sdp/SdpDatabase;->updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;I)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lock(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public unlock()Z
    .locals 5

    const-string v0, "SBrowserWebData"

    const-string v1, "unlock(): result == "

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mInitialized:Z

    const/4 v3, 0x0

    const-string v4, "SdpDatabaseManagerDelegate"

    if-nez v2, :cond_0

    const-string p0, "unlock(): mInitialized == false"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mSdpDB:Lcom/samsung/android/knox/sdp/SdpDatabase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/knox/sdp/SdpDatabase;->updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;I)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unlock(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
