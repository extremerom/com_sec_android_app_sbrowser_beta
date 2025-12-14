.class public Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/download/TerraceDownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBytesReceived:J

.field private mContentDisposition:Ljava/lang/String;

.field private mCookie:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDownloadGuid:Ljava/lang/String;

.field private mFeatureId:I

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mHasUserGesture:Z

.field private mIsDangerous:Z

.field private mIsGETRequest:Z

.field private mIsOffTheRecord:Z

.field private mIsOfflinePage:Z

.field private mIsParallelDownload:Z

.field private mIsPaused:Z

.field private mIsResumable:Z

.field private mIsTransient:Z

.field private mLastAccessTime:J

.field private mLastInterruptReason:I

.field private mMimeType:Ljava/lang/String;

.field private mOriginalUrl:Ljava/lang/String;

.field private mPercentCompleted:I

.field private mReferrer:Ljava/lang/String;

.field private mShouldBlockNotify:Z

.field private mState:I

.field private mTimeRemainingInMillis:J

.field private mTotalBytes:J

.field private mUrl:Lorg/chromium/url/GURL;

.field private mUrlChain:[Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mPercentCompleted:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsResumable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mState:I

    iput v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mFeatureId:I

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mTotalBytes:J

    return-wide v0
.end method

.method public static bridge synthetic B(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Lorg/chromium/url/GURL;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mUrl:Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public static bridge synthetic C(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mUrlChain:[Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mBytesReceived:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mContentDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mCookie:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mDownloadGuid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mFeatureId:I

    return p0
.end method

.method public static fromDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 4

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    invoke-direct {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;-><init>()V

    new-instance v1, Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setUrl(Lorg/chromium/url/GURL;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrlChain()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setUrlChain([Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setUserAgent(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setCookie(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setReferrer(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setOriginalUrl(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getBytesReceived()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setBytesReceived(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setTotalBytes(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->hasUserGesture()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setHasUserGesture(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getContentDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setContentDisposition(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isGETRequest()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsGETRequest(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getPercentCompleted()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setPercentCompleted(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTimeRemainingInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setTimeRemainingInMillis(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getIsDangerous()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsDangerous(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isResumable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsResumable(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsPaused(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsOffTheRecord(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOfflinePage()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsOfflinePage(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setState(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getLastAccessTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setLastAccessTime(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getIsTransient()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsTransient(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getIsParallelDownload()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsParallelDownload(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getShouldBlockNotify()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setShouldBlockNotify(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFeatureId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFeatureId(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    return-object v0
.end method

.method public static bridge synthetic g(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mHasUserGesture:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsDangerous:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsGETRequest:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsOffTheRecord:Z

    return p0
.end method

.method public static bridge synthetic m(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsOfflinePage:Z

    return p0
.end method

.method public static bridge synthetic n(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsParallelDownload:Z

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsPaused:Z

    return p0
.end method

.method public static bridge synthetic p(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsResumable:Z

    return p0
.end method

.method public static bridge synthetic q(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsTransient:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mLastAccessTime:J

    return-wide v0
.end method

.method public static bridge synthetic s(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mLastInterruptReason:I

    return p0
.end method

.method public static bridge synthetic t(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mOriginalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mPercentCompleted:I

    return p0
.end method

.method public static bridge synthetic w(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mReferrer:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mShouldBlockNotify:Z

    return p0
.end method

.method public static bridge synthetic y(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mState:I

    return p0
.end method

.method public static bridge synthetic z(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mTimeRemainingInMillis:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;I)V

    return-object v0
.end method

.method public setBytesReceived(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mBytesReceived:J

    return-object p0
.end method

.method public setContentDisposition(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mContentDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public setCookie(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mCookie:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setDownloadGuid(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mDownloadGuid:Ljava/lang/String;

    return-object p0
.end method

.method public setFeatureId(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mFeatureId:I

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public setHasUserGesture(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mHasUserGesture:Z

    return-object p0
.end method

.method public setIsDangerous(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsDangerous:Z

    return-object p0
.end method

.method public setIsGETRequest(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsGETRequest:Z

    return-object p0
.end method

.method public setIsOffTheRecord(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsOffTheRecord:Z

    return-object p0
.end method

.method public setIsOfflinePage(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsOfflinePage:Z

    return-object p0
.end method

.method public setIsParallelDownload(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsParallelDownload:Z

    return-object p0
.end method

.method public setIsPaused(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsPaused:Z

    return-object p0
.end method

.method public setIsResumable(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsResumable:Z

    return-object p0
.end method

.method public setIsTransient(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mIsTransient:Z

    return-object p0
.end method

.method public setLastAccessTime(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mLastAccessTime:J

    return-object p0
.end method

.method public setLastInterruptReason(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mLastInterruptReason:I

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginalUrl(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mOriginalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setPercentCompleted(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 2

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const-string p1, "TerraceDownloadInfo"

    const-string v1, "percentCompleted > 100"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mPercentCompleted:I

    return-object p0
.end method

.method public setReferrer(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mReferrer:Ljava/lang/String;

    return-object p0
.end method

.method public setShouldBlockNotify(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mShouldBlockNotify:Z

    return-object p0
.end method

.method public setState(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mState:I

    return-object p0
.end method

.method public setTimeRemainingInMillis(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mTimeRemainingInMillis:J

    return-object p0
.end method

.method public setTotalBytes(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mTotalBytes:J

    return-object p0
.end method

.method public setUrl(Lorg/chromium/url/GURL;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mUrl:Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public setUrlChain([Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mUrlChain:[Ljava/lang/String;

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method
