.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBrightnessView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

.field private mGestureViewLayout:Landroid/view/View;

.field private final mSeekView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

.field private final mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createGestureVolumeView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createGestureBrightnessView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mBrightnessView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createGestureSeekView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mSeekView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    return-void
.end method


# virtual methods
.method public adjustGestureValue(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;FZ)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->adjustView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;F)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->VOLUME_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->adjustGestureValue(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->BRIGHTNESS_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mBrightnessView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->adjustGestureValue(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->SEEK_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_4

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->hideAll()V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mSeekView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;->adjustGestureValue(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public adjustView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;F)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->VOLUME_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->adjustView(F)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->BRIGHTNESS_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mBrightnessView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->adjustView(F)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mSeekView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;->adjustView(F)I

    move-result p0

    return p0
.end method

.method public hideAll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mBrightnessView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mSeekView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;->hide()V

    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mGestureViewLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    const v1, 0x7f0b072c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->initialize(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mBrightnessView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    const v1, 0x7f0b0723

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->initialize(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mSeekView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    const v0, 0x7f0b0728

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;->initialize(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mGestureViewLayout:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public show(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->VOLUME_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->showVolumeView()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->BRIGHTNESS_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->showBrightnessView()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->SEEK_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->showSeekView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public showBrightnessView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mGestureViewLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mSeekView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mBrightnessView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->show()V

    return-void
.end method

.method public showSeekView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mGestureViewLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mBrightnessView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mSeekView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;->show()V

    return-void
.end method

.method public showVolumeView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mGestureViewLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mBrightnessView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mSeekView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->show()V

    return-void
.end method

.method public uninitialized()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mVolumeView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->uninitialized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mBrightnessView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->uninitialized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mSeekView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureSeekView;->uninitialized()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureView;->mGestureViewLayout:Landroid/view/View;

    return-void
.end method
