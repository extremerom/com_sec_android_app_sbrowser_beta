.class public Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mGuid:Ljava/lang/String;

.field private mIsOffTheRecord:Z

.field private mReferrer:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "invalid_guid"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mGuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mReferrer:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mIsOffTheRecord:Z

    return-void
.end method


# virtual methods
.method public getDownloadGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mGuid:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getIsOffTheRecord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mIsOffTheRecord:Z

    return p0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mReferrer:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setDownloadGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mGuid:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->mFileName:Ljava/lang/String;

    return-void
.end method
