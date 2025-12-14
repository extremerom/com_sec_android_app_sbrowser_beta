.class public Lcom/samsung/android/knox/sdp/SdpFileSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSdpFileSystem:Lcom/sec/enterprise/knox/sdp/SdpFileSystem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;

    invoke-direct {v0, p1, p2}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSdpFileSystem:Lcom/sec/enterprise/knox/sdp/SdpFileSystem;
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/NoClassDefFoundError;

    const-class p1, Landroid/content/Context;

    const-class p2, Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0x13

    const-class v0, Lcom/samsung/android/knox/sdp/SdpFileSystem;

    const-string v1, "SdpFileSystem"

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

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
.method public getUserDataDir()Ljava/io/File;
    .locals 4

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSdpFileSystem:Lcom/sec/enterprise/knox/sdp/SdpFileSystem;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->getUserDataDir()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const/4 v0, 0x0

    const/16 v1, 0x13

    const-class v2, Lcom/samsung/android/knox/sdp/SdpFileSystem;

    const-string v3, "getUserDataDir"

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSensitive(Ljava/io/File;)Z
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSdpFileSystem:Lcom/sec/enterprise/knox/sdp/SdpFileSystem;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->isSensitive(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Ljava/io/File;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 v0, 0x13

    const-class v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;

    const-string v2, "isSensitive"

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSensitive(Ljava/io/File;)Z
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSdpFileSystem:Lcom/sec/enterprise/knox/sdp/SdpFileSystem;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->setSensitive(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-class p1, Ljava/io/File;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const/16 v0, 0x13

    const-class v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;

    const-string v2, "setSensitive"

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
