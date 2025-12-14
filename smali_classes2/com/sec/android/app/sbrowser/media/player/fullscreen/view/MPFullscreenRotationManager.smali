.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MPFullscreenRotationManager"


# instance fields
.field private final mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

.field private final mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;

.field private mPrevRotation:I

.field private mRotationManager:Lcom/sec/android/app/sbrowser/common/utils/RotationManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->mPrevRotation:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->mRotationManager:Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->addListener(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;)V

    return-void
.end method


# virtual methods
.method public onRotationChanged(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;)V
    .locals 1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->TAG:Ljava/lang/String;

    const-string v0, "onRotationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/IMPFullscreenMainView;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isIsInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onRotationChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public uninitialized()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->mRotationManager:Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->removeListener(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenRotationManager;->mRotationManager:Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    return-void
.end method
