.class public final Lcom/sec/terrace/browser/download/TerraceDownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;
    }
.end annotation


# instance fields
.field private final mBytesReceived:J

.field private final mContentDisposition:Ljava/lang/String;

.field private final mCookie:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mDownloadGuid:Ljava/lang/String;

.field private final mFeatureId:I

.field private final mFileName:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private final mHasUserGesture:Z

.field private final mIsDangerous:Z

.field private final mIsGETRequest:Z

.field private final mIsOffTheRecord:Z

.field private final mIsOfflinePage:Z

.field private final mIsParallelDownload:Z

.field private final mIsPaused:Z

.field private final mIsResumable:Z

.field private final mIsTransient:Z

.field private final mLastAccessTime:J

.field private final mLastInterruptReason:I

.field private final mMimeType:Ljava/lang/String;

.field private final mOriginalUrl:Ljava/lang/String;

.field private final mPercentCompleted:I

.field private final mReferrer:Ljava/lang/String;

.field private final mShouldBlockNotify:Z

.field private final mState:I

.field private final mTimeRemainingInMillis:J

.field private final mTotalBytes:J

.field private final mUrl:Lorg/chromium/url/GURL;

.field private final mUrlChain:[Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->B(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Lorg/chromium/url/GURL;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mUrl:Lorg/chromium/url/GURL;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->C(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mUrlChain:[Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->D(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mUserAgent:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->t(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->c(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mCookie:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->g(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->d(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mDescription:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->h(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->w(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mReferrer:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->u(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mOriginalUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->a(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mBytesReceived:J

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->A(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mTotalBytes:J

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->e(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mDownloadGuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->i(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mHasUserGesture:Z

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->k(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsGETRequest:Z

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->b(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mContentDisposition:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->v(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mPercentCompleted:I

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->z(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mTimeRemainingInMillis:J

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->p(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsResumable:Z

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->o(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsPaused:Z

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->l(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsOffTheRecord:Z

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->m(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsOfflinePage:Z

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->y(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mState:I

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->r(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mLastAccessTime:J

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->s(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mLastInterruptReason:I

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->x(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mShouldBlockNotify:Z

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->f(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mFeatureId:I

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->j(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsDangerous:Z

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->q(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsTransient:Z

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->n(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsParallelDownload:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;)V

    return-void
.end method

.method private static createDownloadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/GURL;Ljava/lang/String;JJZIIZZZZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;JJZIZ)Lcom/sec/terrace/browser/download/TerraceDownloadInfo;
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p1

    invoke-virtual {p3}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p4

    invoke-static {p4, v1, p1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadUtils;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    invoke-direct {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;-><init>()V

    move-wide v3, p5

    invoke-virtual {v2, p5, p6}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setBytesReceived(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v2

    move-wide v3, p7

    invoke-virtual {v2, p7, p8}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setTotalBytes(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v2

    move-object v3, p0

    invoke-virtual {v2, p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move-object v2, p2

    invoke-virtual {v0, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move/from16 v2, p13

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setHasUserGesture(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move v2, p9

    invoke-virtual {v0, p9}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsOffTheRecord(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move/from16 v2, p12

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsPaused(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move/from16 v2, p14

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsResumable(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move/from16 v2, p15

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsParallelDownload(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setOriginalUrl(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setPercentCompleted(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setReferrer(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move v1, p10

    invoke-virtual {v0, p10}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setState(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move-wide/from16 v1, p19

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setTimeRemainingInMillis(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move-wide/from16 v1, p21

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setLastAccessTime(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move/from16 v1, p23

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsDangerous(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move-object v1, p3

    invoke-virtual {v0, p3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setUrl(Lorg/chromium/url/GURL;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setUrlChain([Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move/from16 v1, p24

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setLastInterruptReason(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    move/from16 v1, p25

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setShouldBlockNotify(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mBytesReceived:J

    return-wide v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mContentDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mCookie:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mUrl:Lorg/chromium/url/GURL;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/components/url_formatter/UrlFormatter;->formatUrlForSecurityDisplay(Lorg/chromium/url/GURL;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mDownloadGuid:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureId()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mFeatureId:I

    return p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getIsDangerous()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsDangerous:Z

    return p0
.end method

.method public getIsParallelDownload()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsParallelDownload:Z

    return p0
.end method

.method public getIsTransient()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsTransient:Z

    return p0
.end method

.method public getLastAccessTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mLastAccessTime:J

    return-wide v0
.end method

.method public getLastInterruptReason()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mLastInterruptReason:I

    return p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mOriginalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPercentCompleted()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mPercentCompleted:I

    return p0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mReferrer:Ljava/lang/String;

    return-object p0
.end method

.method public getShouldBlockNotify()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mShouldBlockNotify:Z

    return p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mState:I

    return p0
.end method

.method public getTimeRemainingInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mTimeRemainingInMillis:J

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mUrl:Lorg/chromium/url/GURL;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUrlChain()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mUrlChain:[Ljava/lang/String;

    return-object p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method public hasUserGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mHasUserGesture:Z

    return p0
.end method

.method public isGETRequest()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsGETRequest:Z

    return p0
.end method

.method public isOffTheRecord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsOffTheRecord:Z

    return p0
.end method

.method public isOfflinePage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsOfflinePage:Z

    return p0
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsPaused:Z

    return p0
.end method

.method public isResumable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->mIsResumable:Z

    return p0
.end method
