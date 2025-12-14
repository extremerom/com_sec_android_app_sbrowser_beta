.class public Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mApkFile:Ljava/io/File;

.field private mAppName:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->mApkFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->mDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->mSignature:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;-><init>(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;I)V

    return-object v0
.end method

.method public setApkFile(Ljava/io/File;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->mApkFile:Ljava/io/File;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->mDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->mSignature:Ljava/lang/String;

    return-object p0
.end method
