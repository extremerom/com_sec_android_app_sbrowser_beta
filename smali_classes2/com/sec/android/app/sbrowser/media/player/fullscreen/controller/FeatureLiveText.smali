.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureLiveText;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-void
.end method

.method private runExtractText()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->performTScanClick()V

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLiveTextViewVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080282

    goto :goto_0

    :cond_0
    const p0, 0x7f080281

    :goto_0
    return p0
.end method

.method public getSALoggingEventId()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLiveTextViewVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f140d00

    goto :goto_0

    :cond_0
    const p0, 0x7f140d0a

    :goto_0
    return p0
.end method

.method public getTextResId()I
    .locals 0

    const p0, 0x7f140744

    return p0
.end method

.method public getVisibility()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isContentFlexMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isProgressBarAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->shouldAddLiveText()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method public id()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureLiveText;->runExtractText()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->start()V

    return-void
.end method

.method public update()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateResource()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateVisibility()V

    return-void
.end method
