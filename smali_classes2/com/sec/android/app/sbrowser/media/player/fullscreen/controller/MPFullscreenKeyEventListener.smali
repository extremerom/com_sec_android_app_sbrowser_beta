.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPFullscreenKeyEventListener"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method private onExitFullscreen(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->exitFullscreenByUser(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showLockView()V

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x43

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private onKeyCodeEnter()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showMainView(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->pauseVideo()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startVideo()V

    :goto_0
    return-void
.end method

.method private onKeyCodeEscape(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showLockView()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->toggleMoreMenu()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->exitFullscreenByUser(Z)V

    :goto_0
    return-void
.end method

.method private onKeyCodeM(Landroid/view/KeyEvent;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showLockView()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->toggleMoreMenu()V

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->toggleMainView()V

    return-void
.end method

.method private onKeyCodeMediaPlay()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startVideo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->hideMainView(Z)V

    :cond_0
    return-void
.end method

.method private onKeyCodeMediaStopPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->pauseVideo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showMainView(Z)V

    :cond_0
    return-void
.end method

.method private onKeyCodeMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showLockView()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->toggleMoreMenu()V

    :goto_0
    return-void
.end method

.method private onKeyCodePower(Landroid/view/KeyEvent;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isLongPress(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->TAG:Ljava/lang/String;

    const-string p1, "Skip long press of POWER key."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setLock(Z)V

    return-void
.end method

.method private onKeyCodeTab(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaybackRatePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showMainView(Z)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onPreviousFocus()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onNextFocus()V

    :goto_0
    return-void
.end method

.method private requestSystemKeyEvent(IZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p0, p2}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private shouldIgnoreAction(II)Z
    .locals 1

    const/16 p0, 0x18

    const/4 v0, 0x0

    if-eq p2, p0, :cond_1

    const/16 p0, 0x19

    if-eq p2, p0, :cond_1

    const/16 p0, 0xa4

    if-eq p2, p0, :cond_1

    const/16 p0, 0x13

    if-eq p2, p0, :cond_1

    const/16 p0, 0x14

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private toggleLockState(Landroid/view/KeyEvent;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->toggleLockState()V

    :cond_0
    return-void
.end method

.method private toggleVideoPlayState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->pauseVideo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showMainView(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startVideo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->hideMainView(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleKeyEvent action = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleKeyEvent key code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isMainViewInitialized()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const-string p0, "MainView is not Initialized"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->shouldIgnoreAction(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x3

    if-eq v1, v0, :cond_11

    const/4 v0, 0x4

    if-eq v1, v0, :cond_f

    const/16 v0, 0x28

    if-eq v1, v0, :cond_e

    const/16 v0, 0x29

    if-eq v1, v0, :cond_d

    const/16 v0, 0x42

    const/4 v3, 0x0

    if-eq v1, v0, :cond_a

    const/16 v0, 0x43

    if-eq v1, v0, :cond_f

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_9

    const/16 v0, 0x52

    if-eq v1, v0, :cond_8

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_7

    const/16 v0, 0xa0

    if-eq v1, v0, :cond_a

    const/16 v0, 0xa4

    if-eq v1, v0, :cond_6

    const/16 v0, 0xab

    if-eq v1, v0, :cond_12

    const/16 v0, 0xbb

    if-eq v1, v0, :cond_10

    const/16 v0, 0x71

    if-eq v1, v0, :cond_12

    const/16 v0, 0x72

    if-eq v1, v0, :cond_12

    const/16 v0, 0x7e

    if-eq v1, v0, :cond_5

    const/16 v0, 0x7f

    if-eq v1, v0, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->toggleMainView()V

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onKeyCodeTab(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onKeyCodePower(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaybackRatePopupShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onNextSpeedFocus()V

    goto/16 :goto_0

    :cond_2
    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1, v4}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showMainView(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentPosition()I

    move-result p1

    add-int/lit16 p1, p1, 0x2710

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->seekTo(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaybackRatePopupShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onPreviousSpeedFocus()V

    goto/16 :goto_0

    :cond_3
    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1, v4}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showMainView(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentPosition()I

    move-result p1

    add-int/lit16 p1, p1, -0x2710

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->seekTo(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->keyVolumeDown()V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->keyVolumeUp()V

    goto :goto_0

    :cond_4
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onKeyCodeMediaStopPause()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onKeyCodeMediaPlay()V

    goto :goto_0

    :cond_6
    :pswitch_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->updateVolumeStatus()V

    return v3

    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onKeyCodeEscape(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onKeyCodeMenu()V

    goto :goto_0

    :cond_9
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->toggleVideoPlayState()V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->handleKey(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_c

    return v3

    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onKeyCodeEnter()V

    goto :goto_0

    :cond_d
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onKeyCodeM(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_e
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->toggleLockState(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_f
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isLongPress(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "Skip long press of BACK key."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_10
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onExitFullscreen(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->hasPipPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onExitFullscreen(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_12
    :goto_0
    :pswitch_b
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_9
        :pswitch_9
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x54
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onWindowFocusChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->TAG:Ljava/lang/String;

    const-string v0, "onWindowFocusChanged, request all system key events by lock."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->requestSystemKeyEventByLockState()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->releaseAllSystemKeyEvent()V

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->TAG:Ljava/lang/String;

    const-string p1, "onWindowFocusChanged, release all system key events."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public releaseAllSystemKeyEvent()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->TAG:Ljava/lang/String;

    const-string v1, "releaseAllSystemKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->requestSystemKeyEvent(IZ)V

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->requestSystemKeyEvent(IZ)V

    return-void
.end method

.method public requestSystemKeyEventByLockState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->requestSystemKeyEvent(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result v0

    const/16 v1, 0xbb

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->requestSystemKeyEvent(IZ)V

    return-void
.end method
