.class public Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCallbackID:J

.field private mFilename:Ljava/lang/String;

.field private mFilesize:J

.field private mGuid:Ljava/lang/String;

.field private mIsOffTheRecord:Z

.field private mMimetype:Ljava/lang/String;

.field private mOriginalUrl:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mReferrer:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUrlChain:[Ljava/lang/String;

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mWeakReference:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mCallbackID:J

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mFilesize:J

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mMimetype:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/download/DownloadFileNameUtil;->getFileNameFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mReferrer:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrlChain()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mUrlChain:[Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mGuid:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mIsOffTheRecord:Z

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mOriginalUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public getCallbackID()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mCallbackID:J

    return-wide v0
.end method

.method public getDownloadGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mGuid:Ljava/lang/String;

    return-object p0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mFilename:Ljava/lang/String;

    return-object p0
.end method

.method public getFilesize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mFilesize:J

    return-wide v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mMimetype:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isOffTheRecord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mIsOffTheRecord:Z

    return p0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->mFilename:Ljava/lang/String;

    return-void
.end method
