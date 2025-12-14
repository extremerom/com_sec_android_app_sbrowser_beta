.class public Lcom/sec/android/app/sbrowser/common/sdp/SdpController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpHandler;,
        Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;,
        Lcom/sec/android/app/sbrowser/common/sdp/SdpController$UnlockViaTrustedTask;,
        Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;,
        Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;,
        Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;
    }
.end annotation


# static fields
.field private static sAlias:Ljava/lang/String; = "SBrowser"

.field private static volatile sInstance:Lcom/sec/android/app/sbrowser/common/sdp/SdpController; = null

.field private static sNameTag:Ljava/lang/String; = "SBrowser"

.field private static volatile sSdpEngine:Lcom/samsung/android/knox/sdp/core/SdpEngine;

.field private static final sSdpHandler:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpHandler;

.field private static volatile sSdpTrustedOperations:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

.field private static sShouldMigrateSdpData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpHandler;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpHandler:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sNameTag:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpTrustedOperations:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    return-object v0
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->generateResetToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static deleteAll(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$2;-><init>(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private disableUnlockViaTrusted()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sNameTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->deleteTokenFromTrusted(Ljava/lang/String;)Z

    const-string p0, "SdpController"

    const-string v0, "disableUnlockViaTrusted success"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic e()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->setSensitive()V

    return-void
.end method

.method public static bridge synthetic f(Landroid/os/Message;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->unlockViaTrustedInternal(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/knox/sdp/SdpDatabase;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->updateStateToDB(Lcom/samsung/android/knox/sdp/SdpDatabase;I)V

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

.method private getCurrentAlias()Ljava/lang/String;
    .locals 4

    const-string v0, "SBrowser"

    :try_start_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->myUserId()I

    move-result v1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    const-string v2, "SBrowser_"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->isUserIdForKnox(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "SBrowser_KNOX"

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->exists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getAlias error:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdpController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/sdp/SdpController;
    .locals 5

    const-string v0, "SdpController"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sInstance:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sInstance:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpEngine:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpEngine:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpTrustedOperations:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpTrustedOperations:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SdpEngine.getInstance() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sInstance:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpEngine:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sInstance:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    return-object v0

    :cond_4
    const-string v1, "SdpController initialize failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private isUserIdForKnox(I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpUtil;->getInstance()Lcom/samsung/android/knox/sdp/SdpUtil;

    move-result-object p0

    const-string v0, "SBrowser_KNOX"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isUserIdForKnox error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdpController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static lock()V
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpHandler:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v1, v2, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static lockInternal()V
    .locals 4

    const-string v0, "SdpController"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpEngine:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpEngine:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->lock(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/knox/sdp/SdpDatabase;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/sdp/SdpDatabase;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->updateStateToDB(Lcom/samsung/android/knox/sdp/SdpDatabase;I)V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lockInternal error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "SDP engine locked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static removeSecretDb(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->deleteAll(Landroid/content/Context;)V

    return-void
.end method

.method private static declared-synchronized setAlias(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized setNameTag(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sNameTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static setSensitive()V
    .locals 7

    const-string v0, "SdpController"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "SURL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "TITLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "TOUCH_ICON"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "url"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "description"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "dir_path"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "favicon"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v3, Lcom/samsung/android/knox/sdp/SdpDatabase;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/sdp/SdpDatabase;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SecretDatabaseHelper;->getInstance()Lcom/sec/android/app/sbrowser/common/sdp/SecretDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "BOOKMARKS"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v1}, Lcom/samsung/android/knox/sdp/SdpDatabase;->setSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SecretDatabaseHelper;->getInstance()Lcom/sec/android/app/sbrowser/common/sdp/SecretDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "READINGLIST"

    invoke-virtual {v3, v1, v6, v4, v2}, Lcom/samsung/android/knox/sdp/SdpDatabase;->setSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSensitive sdp error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSensitive sql error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static setShouldMigrateSdpData(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sShouldMigrateSdpData:Z

    return-void
.end method

.method public static shouldMigrateSdpData()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sShouldMigrateSdpData:Z

    return v0
.end method

.method public static unlockViaPassword(Ljava/lang/String;)I
    .locals 7

    const-string v0, "SdpController"

    const-string v1, "unlockViaPassword response error : "

    const-string v2, "unlockViaPassword response : "

    sget-object v3, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpHandler:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-virtual {v4, v5, p0}, Lcom/samsung/android/knox/sdp/internal/SdpEngineWrapper;->unlock(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->isOK()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->isOK()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lcom/samsung/android/knox/sdp/SdpDatabase;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/sdp/SdpDatabase;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->updateStateToDB(Lcom/samsung/android/knox/sdp/SdpDatabase;I)V

    const/4 p0, 0x1

    move v6, v3

    move v3, p0

    move p0, v6

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->getTimeout()I

    move-result p0
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_2

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unlockViaPassword error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move p0, v3

    :goto_1
    if-eqz v3, :cond_3

    const/4 p0, -0x1

    :cond_3
    const-string v1, "unlockViaPassword result : "

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static unlockViaTrusted(Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpHandler:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static unlockViaTrustedInternal(Landroid/os/Message;)V
    .locals 2

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$UnlockViaTrustedTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$UnlockViaTrustedTask;-><init>(Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;)V

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static updateStateToDB(Lcom/samsung/android/knox/sdp/SdpDatabase;I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SecretDatabaseHelper;->getInstance()Lcom/sec/android/app/sbrowser/common/sdp/SecretDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/sdp/SdpDatabase;->updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;I)Z

    return-void
.end method


# virtual methods
.method public addEngine(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$1;-><init>(Lcom/sec/android/app/sbrowser/common/sdp/SdpController;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p3, v1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$AddEngineTask;-><init>(Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;)V

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public changePassword(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sSdpEngine:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->setPassword(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "changePassword error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    return-object p0
.end method

.method public isEngineAdded()Z
    .locals 3

    const-string p0, "SdpController"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->exists(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isEngineAdded error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const-string v1, "isEngineAdded : "

    invoke-static {v1, p0, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isSdpSupported()Z
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isSdpSupported : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdpController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result p0

    return p0
.end method

.method public migrationToSdp(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$3;-><init>(Lcom/sec/android/app/sbrowser/common/sdp/SdpController;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p3, v1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;-><init>(Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;)V

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public removeEngine(Landroid/content/Context;)V
    .locals 4

    const-string v0, "SdpController"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/sdp/SdpFileSystem;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/sdp/SdpFileSystem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->disableUnlockViaTrusted()V

    new-instance p0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getUserDataDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/data"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "delete secret mode files"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->delete(Ljava/io/File;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->removeSecretDb(Landroid/content/Context;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->removeEngine(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "removeEngine error : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_2
    const-string p1, "remove engine : "

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCurrentAlias()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->getCurrentAlias()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->setAlias(Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    const-string v0, "SBrowser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "SBrowser_KNOX"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->setNameTag(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->setNameTag(Ljava/lang/String;)V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "current alias : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sAlias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sNameTag : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->sNameTag:Ljava/lang/String;

    const-string v1, "SdpController"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
