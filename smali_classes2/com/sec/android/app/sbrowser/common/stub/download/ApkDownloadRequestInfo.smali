.class public Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;
    }
.end annotation


# instance fields
.field private final mApkFile:Ljava/io/File;

.field private final mAppName:Ljava/lang/String;

.field private final mDownloadUrl:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mSignature:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->d(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->b(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mAppName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->c(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->e(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mSignature:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->a(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mApkFile:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;-><init>(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;
    .locals 5

    const-string v0, "packageName"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mDownloadUrl"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "apkFile"

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setAppName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setSignature(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setApkFile(Ljava/io/File;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getApkFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mApkFile:Ljava/io/File;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mSignature:Ljava/lang/String;

    return-object p0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appName"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mDownloadUrl"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signature"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->mApkFile:Ljava/io/File;

    if-eqz p0, :cond_0

    const-string v1, "apkFile"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
