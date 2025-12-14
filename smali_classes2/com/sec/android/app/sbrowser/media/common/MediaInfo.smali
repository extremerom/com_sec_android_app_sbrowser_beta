.class public Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MediaInfo"


# instance fields
.field private mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

.field private mClosedCaptionStatus:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

.field private mClosedCaptionUrl:Ljava/lang/String;

.field private mCookies:Ljava/lang/String;

.field private mDimension:Ljava/lang/String;

.field private mDuration:I

.field private mIsMediaPlaying:Z

.field private mPageUrl:Ljava/lang/String;

.field private mPosition:I

.field private final mTitle:Ljava/lang/String;

.field private mVideoHeight:I

.field private mVideoRatioMode:I

.field private mVideoUrl:Ljava/lang/String;

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoRatioMode:I

    const-string v1, "videoUrl"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoUrl:Ljava/lang/String;

    const-string v1, "pageUrl"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mPageUrl:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mTitle:Ljava/lang/String;

    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mPosition:I

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mDuration:I

    const-string v0, "videoWidth"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoWidth:I

    const-string v0, "videoHeight"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoHeight:I

    const-string v0, "dimension"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mDimension:Ljava/lang/String;

    const-string v0, "cookies"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mCookies:Ljava/lang/String;

    const-string v0, "closedCaptionUrl"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClosedCaptionUrl:Ljava/lang/String;

    invoke-static {}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->values()[Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClosedCaptionUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->DISABLED:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->VISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_0
    const-string v2, "closedCaptionStatus"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClosedCaptionStatus:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    const-string v0, "videoRatioMode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoRatioMode:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoRatioMode:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mPageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mPosition:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mDuration:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getCookies()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mCookies:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getDimension()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mDimension:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoWidth:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoHeight:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClosedCaptionStatus()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClosedCaptionStatus:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClosedCaptionUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoRatioMode()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoRatioMode:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoRatioMode:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mTitle:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->verifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mPageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getCurrentPosition()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mPosition:I

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getDuration()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mDuration:I

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getCookies()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mCookies:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoWidth:I

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getVideoHeight()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoHeight:I

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getDimension()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mDimension:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getClosedCaptionStatus()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClosedCaptionStatus:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    return-void
.end method

.method public static isValid(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "videoUrl"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private verifyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const-string v0, "dailymotion.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "youtube.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    return-object p0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "videoUrl"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pageUrl"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "position"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "duration"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dimension"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getDimension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "videoWidth"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "videoHeight"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cookies"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getCookies()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClosedCaptionStatus()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "closedCaptionStatus"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "closedCaptionUrl"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "videoRatioMode"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoRatioMode()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getClient()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    return-object p0
.end method

.method public getClosedCaptionStatus()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getClosedCaptionStatus()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClosedCaptionStatus:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    :goto_0
    return-object p0
.end method

.method public getClosedCaptionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClosedCaptionUrl:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClosedCaptionUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getCookies()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getCookies()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mCookies:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getDimension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getDimension()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mDimension:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getDuration()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mDuration:I

    :goto_0
    return p0
.end method

.method public getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->NONE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    move-result-object p0

    return-object p0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getPlaybackRate()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0
.end method

.method public getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getCurrentPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mPosition:I

    :goto_0
    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoCapture(IILcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getVideoCapture(IILcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;)V

    :cond_0
    return-void
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getVideoHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoHeight:I

    :goto_0
    return p0
.end method

.method public getVideoRatioMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoRatioMode:I

    return p0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getVideoUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoUrl:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getVideoWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoWidth:I

    :goto_0
    return p0
.end method

.method public hasClosedCaption()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMSE()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isMuted()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->isMuted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mIsMediaPlaying:Z

    return p0
.end method

.method public isPrepared()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->isPrepared()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecycled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->registerListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V

    :cond_0
    return-void
.end method

.method public requestFullscreen()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->requestFullscreen()V

    :cond_0
    return-void
.end method

.method public setClient(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    return-void
.end method

.method public setClosedCaptionVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->setClosedCaptionVisibility(Z)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->VISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->INVISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClosedCaptionStatus:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mPosition:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mDuration:I

    return-void
.end method

.method public setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V

    :cond_0
    return-void
.end method

.method public setFullscreenFlexMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->setFullscreenFlexMode(ZZ)V

    :cond_0
    return-void
.end method

.method public setIsPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mIsMediaPlaying:Z

    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->setMuted(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackRate(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->setPlaybackRate(D)V

    :cond_0
    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoHeight:I

    return-void
.end method

.method public setVideoRatioMode(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->TAG:Ljava/lang/String;

    const-string v1, "setVideoRatioMode : "

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoRatioMode:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->setFullscreenVideoRatio(I)V

    :cond_0
    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mVideoWidth:I

    return-void
.end method

.method public unregisterListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->unregisterListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V

    :cond_0
    return-void
.end method
