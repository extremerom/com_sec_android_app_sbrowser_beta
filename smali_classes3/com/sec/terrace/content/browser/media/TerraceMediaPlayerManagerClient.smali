.class public Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;,
        Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;,
        Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;,
        Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;,
        Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VideRatio;
    }
.end annotation


# instance fields
.field private final mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    return-void
.end method


# virtual methods
.method public checkVideoVisible(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->checkVideoVisible(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;)V

    :cond_0
    return-void
.end method

.method public getClosedCaptionStatus()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getClosedCaptionStatus()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->DISABLED:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    :goto_0
    return-object p0
.end method

.method public getClosedCaptionUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCookies()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getCookies()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getCurrentPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDimension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getDimension()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getDuration()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->NONE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->values()[Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getExtensionContainerStatus(Ljava/lang/String;)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getImages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getImages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-nez p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getPlaybackRate()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getVideoCapture(IILcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getVideoCapture(IILcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;)V

    :cond_0
    return-void
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getVideoHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getVideoUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getVideoWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMuted()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->isMuted()Z

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

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrepared()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->isPrepared()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->registerListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V

    :cond_0
    return-void
.end method

.method public requestFullscreen()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->requestFullscreen()V

    :cond_0
    return-void
.end method

.method public setClosedCaptionVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->setClosedCaptionVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->setExtensionContainerStatus(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setFullscreenFlexMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->setFullscreenFlexMode(ZZ)V

    :cond_0
    return-void
.end method

.method public setFullscreenVideoRatio(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->setFullscreenVideoRatio(I)V

    :cond_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->setMuted(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackRate(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->setPlaybackRate(D)V

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->mClient:Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->unregisterListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V

    :cond_0
    return-void
.end method
