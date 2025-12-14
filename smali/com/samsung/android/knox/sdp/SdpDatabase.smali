.class public Lcom/samsung/android/knox/sdp/SdpDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSdpDatabase:Lcom/sec/enterprise/knox/sdp/SdpDatabase;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;

    invoke-direct {v0, p1}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpDatabase;->mSdpDatabase:Lcom/sec/enterprise/knox/sdp/SdpDatabase;
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/NoClassDefFoundError;

    const-class p1, Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 v0, 0x13

    const-class v1, Lcom/samsung/android/knox/sdp/SdpDatabase;

    const-string v2, "SdpDatabase"

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x8

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0

    :catch_2
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public isSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpDatabase;->mSdpDatabase:Lcom/sec/enterprise/knox/sdp/SdpDatabase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->isSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Landroid/database/sqlite/SQLiteDatabase;

    const-class p2, Ljava/lang/String;

    filled-new-array {p1, p2, p2, p2}, [Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0x13

    const-class p3, Lcom/samsung/android/knox/sdp/SdpDatabase;

    const-string p4, "isSensitive"

    invoke-static {p3, p4, p1, p2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpDatabase;->mSdpDatabase:Lcom/sec/enterprise/knox/sdp/SdpDatabase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->setSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Landroid/database/sqlite/SQLiteDatabase;

    const-class p2, Ljava/util/List;

    const-class p3, Ljava/lang/String;

    filled-new-array {p1, p3, p3, p2}, [Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0x13

    const-class p3, Lcom/samsung/android/knox/sdp/SdpDatabase;

    const-string p4, "setSensitive"

    invoke-static {p3, p4, p1, p2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x6

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method

.method public updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;I)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpDatabase;->mSdpDatabase:Lcom/sec/enterprise/knox/sdp/SdpDatabase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Landroid/database/sqlite/SQLiteDatabase;

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p1, p2}, [Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0x13

    const-class v0, Lcom/samsung/android/knox/sdp/SdpDatabase;

    const-string v1, "updateStateToDB"

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
