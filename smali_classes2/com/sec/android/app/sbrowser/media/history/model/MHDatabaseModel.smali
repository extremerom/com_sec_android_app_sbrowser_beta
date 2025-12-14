.class public Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MHDatabaseModel"


# instance fields
.field private mClosedCaptionUrl:Ljava/lang/String;

.field private mCookies:Ljava/lang/String;

.field private mDefaultThumbnail:Landroid/graphics/Bitmap;

.field private mDefaultThumbnailRaw:[B

.field private mDimension:Ljava/lang/String;

.field private mDuration:I

.field private mHasClosedCaption:Z

.field private mHasVideo:Z

.field private mIndex:I

.field private mPageUrl:Ljava/lang/String;

.field private mPosition:I

.field private mPrivacy:Z

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mThumbnailRaw:[B

.field private mTitle:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;

.field private mVisitDate:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, -0x1

    iput p6, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mIndex:I

    const-string p6, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p6

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPageUrl:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p6

    :goto_1
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mVideoUrl:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p6

    :goto_2
    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPrivacy:Z

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mHasVideo:Z

    iput p9, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPosition:I

    iput p10, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDuration:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mVisitDate:J

    iput-boolean p11, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mHasClosedCaption:Z

    if-eqz p12, :cond_3

    goto :goto_3

    :cond_3
    move-object p12, p6

    :goto_3
    iput-object p12, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDimension:Ljava/lang/String;

    if-eqz p13, :cond_4

    goto :goto_4

    :cond_4
    move-object p13, p6

    :goto_4
    iput-object p13, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mCookies:Ljava/lang/String;

    if-eqz p14, :cond_5

    goto :goto_5

    :cond_5
    move-object p14, p6

    :goto_5
    iput-object p14, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mClosedCaptionUrl:Ljava/lang/String;

    return-void
.end method

.method public static createEmptyModel()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;
    .locals 16

    new-instance v15, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    const-string v13, ""

    const-string v14, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method

.method public static createModel(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;
    .locals 16

    new-instance v15, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPosition()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getDuration()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->hasClosedCaption()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getDimension()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getCookies()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->isMediaSourceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "youtube.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->findMobileUrlWithVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v15, v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setPageUrl(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v15, v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setVideoUrl(Ljava/lang/String;)V

    :cond_1
    return-object v15
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mVideoUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mVideoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPageUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDuration:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDuration:I

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "videoUrl"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pageUrl"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "position"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "duration"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isMSE"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->isMSE()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "hasClosedCaptions"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getHasClosedCaption()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "dimension"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDimension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "closedCaptionUrl"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getClosedCaptionUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mClosedCaptionUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getCookies()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mCookies:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDefaultThumbnailRaw:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->prepareThumbnailBitmapFromByteArray()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDimension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDimension:Ljava/lang/String;

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPageUrl:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDuration:I

    return p0
.end method

.method public getHasClosedCaption()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mHasClosedCaption:Z

    return p0
.end method

.method public getHasVideo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mHasVideo:Z

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mIndex:I

    return p0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPosition:I

    return p0
.end method

.method public getPrivacy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPrivacy:Z

    return p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mThumbnailRaw:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->prepareThumbnailBitmapFromByteArray()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mThumbnail:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mVideoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVisitDate()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mVisitDate:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isMSE()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getVideoUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public prepareThumbnailBitmapFromByteArray()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mThumbnailRaw:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->getBitmapFromByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mThumbnailRaw:[B

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDefaultThumbnailRaw:[B

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->getBitmapFromByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDefaultThumbnailRaw:[B

    :cond_1
    return-void
.end method

.method public setClosedCaptionUrl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mClosedCaptionUrl:Ljava/lang/String;

    return-void
.end method

.method public setDefaultThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultThumbnail([B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDefaultThumbnailRaw:[B

    return-void
.end method

.method public setDimension(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDimension:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mDuration:I

    return-void
.end method

.method public setHasClosedCaption(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mHasClosedCaption:Z

    return-void
.end method

.method public setHasVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mHasVideo:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mIndex:I

    return-void
.end method

.method public setPageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPageUrl:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPosition:I

    return-void
.end method

.method public setPrivacy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mPrivacy:Z

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setThumbnail([B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mThumbnailRaw:[B

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public setVisitDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->mVisitDate:J

    return-void
.end method
