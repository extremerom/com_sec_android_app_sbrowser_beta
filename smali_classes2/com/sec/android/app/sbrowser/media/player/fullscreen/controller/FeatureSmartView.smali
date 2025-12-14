.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureSmartView;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-void
.end method

.method private runSmartView()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->getInstance()Lcom/sec/android/app/sbrowser/media/common/WfdUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->startMirroring(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 0

    const p0, 0x7f0803e9

    return p0
.end method

.method public getSALoggingEventId()I
    .locals 0

    const p0, 0x7f140d1a

    return p0
.end method

.method public getTextResId()I
    .locals 0

    const p0, 0x7f1406fa

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

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isSmartViewSupported(Landroid/app/Activity;)Z

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

    const/4 p0, 0x6

    return p0
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureSmartView;->runSmartView()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->start()V

    return-void
.end method

.method public update()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateResource()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateVisibility()V

    return-void
.end method
