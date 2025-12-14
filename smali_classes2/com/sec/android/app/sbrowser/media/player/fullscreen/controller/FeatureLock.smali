.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureLock;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f08041d

    goto :goto_0

    :cond_0
    const p0, 0x7f08041c

    :goto_0
    return p0
.end method

.method public getSALoggingEventId()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f140d1b

    goto :goto_0

    :cond_0
    const p0, 0x7f140d0e

    :goto_0
    return p0
.end method

.method public getTextResId()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f140743

    goto :goto_0

    :cond_0
    const p0, 0x7f14072d

    :goto_0
    return p0
.end method

.method public getVisibility()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public id()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setLock(Z)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->start()V

    return-void
.end method

.method public update()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateResource()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateVisibility()V

    return-void
.end method
